open Maps

let usage_msg =
  "usage: dune exe ./driver.exe -- [--ir] [--time] [--rt-lax] [--rt-dbg] [--ult] [--ultchk] <filename>"

let str_to_file (fname : string) (s : string) : unit =
  let f = open_out fname in
  output_string f s;
  close_out f

let identify_trust_step
    (cmd : Binary_untyped.cmd) (result : Binary_untyped.expr) =
  if cmd.name = "trust" then
    Printf.printf "\n  %s\n" (Binary_untyped.noindent_str_of_expr result)
  else
    ()

(* Check & print unverified trust steps. *)
let identify_trust_steps
    (prog : Binary_untyped.prog) (hyp_results : Binary_untyped.expr list) =
  List.iter2 identify_trust_step prog.cmd_list hyp_results

exception ArgError of string

(* All flags begin with -, last argument should be a filenmae. *)
let rec read_args
  (args : string list)
  : StrSet.t * string =
  match args with
  | [] ->
    raise (ArgError usage_msg)
  | filename :: [] -> StrSet.empty, filename
  | head :: tail ->
    if String.length head > 0 && String.get head 0 = '-' then
      let set, fname = read_args tail in
      StrSet.add head set, fname
    else
      raise (ArgError usage_msg)

let parse_args () =
  let flag_set, fname = read_args (List.tl (Array.to_list Sys.argv)) in
  flag_set, fname

(*
let print_progress flag phase a =
  (if flag then
     Printf.fprintf stderr "finished: %s\n" phase
  );
  a

let print_progress_sc flag phase =
  if flag then
    Printf.fprintf stderr "finished: %s\n" phase *)

let create_micro_benchmark (name, prog) =
  let sgn = Ir_checker.tycheck prog in
  let table = Layout.pass Resolute.rule_codes sgn prog in
  let path = Printf.sprintf "../microbenchmark/%s.zksmt" name in
  let str = Printf.sprintf "%s\n" (Table.str_of_prog table) in
  str_to_file path str

let main () =
  if Array.get Sys.argv 1 = "--microbenchmark" then
    List.iter create_micro_benchmark Microbenchmark.micro_programs
  else
    (* Parse command line arguments *)
    let flag_set, fname = parse_args () in
    let remove_trust_lax = StrSet.mem "--rt-lax" flag_set in
    let remove_trust_debug = StrSet.mem "--rt-dbg" flag_set in
    let stop_at_ir = StrSet.mem "--ir" flag_set in
    let print_timing = StrSet.mem "--time" flag_set in
    let reverse_layout = StrSet.mem "--rev" flag_set in
    let input_lfsc_res = StrSet.mem "--lfsc-res" flag_set in
    let input_resolute = StrSet.mem "--res" flag_set in
    let metrics = StrSet.mem "--metrics" flag_set in
    let binary_cong_flag = StrSet.mem "--bcong" flag_set in
    let print_trust = StrSet.mem "--print-trust" flag_set in
    let res_list = StrSet.mem "--res-list" flag_set in
    let rc_in_prog_print = StrSet.mem "--reschk-dbg" flag_set in
    let res_cpp = StrSet.mem "--res-cpp" flag_set in
    let res_earlyty = StrSet.mem "--res-ety" flag_set in
    let deterministic = not (StrSet.mem "--rand" flag_set) in
    let wisa = StrSet.mem "--wisa" flag_set in
    Maps.print_timing_info := print_timing;
    Binary_transform.euf_cong_flag := binary_cong_flag;
    Resolute_checker.in_prog_print := rc_in_prog_print || res_earlyty;

    if input_resolute then
      let start_prog = Lexing.from_channel (open_in fname) in
      update_time "startup";
      let after_parse = Resolute_parser.fullproof Resolute_lexer.read start_prog in
      update_time "parse";
      let after_prelim = Resolute_prelim.pass after_parse in
      update_time "prelim";
      if (StrSet.mem "--res-pie" flag_set) then
        (
          print_endline "start pie print\n";
          Resolute_raw.pie_proof after_prelim;
          print_endline "finished pie print")
      else
        (*let after_ivar_sort = Resolute_ivar_sort.pass after_prelim in
          update_time "ivar sort"; *)
        let after_unraw = Resolute_unraw.pass after_prelim in
        update_time "unraw";
        let after_resolute_listify = Resolute_listify.listify after_unraw in
        update_time "resolute listify";
        if res_list then
          print_endline (Resolute.str_of_prog after_resolute_listify)
        else
          (
            Metrics.print_metrics_flag metrics Resolute.metrics after_resolute_listify
              fname "RESOLUTE";
            (* Used to store RESOLUTE rule counts *)
            (*(
              let name =
                fname
                |> String.split_on_char '/'
                |> List.rev
                |> List.hd
                |> Printf.sprintf "../benchmark_setup/rule_count/%s.txt" in
              let content = Printf.sprintf "%d\n"
                  (List.length after_resolute_listify.cmd_list) in
              str_to_file name content
              ); *)
            if res_earlyty then
              let _ = Resolute_checker.infer_prog after_resolute_listify in
              print_endline "earlyty finished"
            else
              let after_resolute_boolcong =
                Resolute_boolcong.pass after_resolute_listify in
              update_time "resolute boolcong";
              let resolute_rules = Resolute_checker.infer_prog after_resolute_boolcong in
              update_time "resolute check";
              let after_resolute_compile =
                Resolute_compile.compile after_resolute_boolcong resolute_rules in
              update_time "resolute compile";
              Metrics.print_metrics_flag metrics Ir.metrics after_resolute_compile
                fname "RESOLUTE -> VIPC (before lia compile)";
              let after_lia_compile =
                Resolute_lia_compile.pass after_resolute_compile in
              update_time "resolute lia compile";
              Metrics.print_metrics_flag metrics Ir.metrics after_lia_compile
                fname "RESOLUTE -> VIPC (after lia compile)";
              let after_memoize =
                Resolute_optimize.memoize after_lia_compile in
              update_time "resolute memoize";
              Metrics.print_metrics_flag metrics Ir.metrics after_memoize
                fname "RESOLUTE -> VIPC (after memoize)";
              let after_deadcode =
                Resolute_optimize.deadcode after_memoize in
              update_time "resolute deadcode";
              Metrics.print_metrics_flag metrics Ir.metrics after_deadcode
                fname "RESOLUTE -> VIPC (after deadcode)";
              if (not res_cpp) then
                (if not metrics then
             (*Ir.get_max_list 0 after_deadcode.cmd_list*)
               Ir.fprint_prog stdout after_deadcode
                   (*print_endline (Ir.str_of_prog after_deadcode)*)
                )
              else
                let sgn =
                  (if not wisa then
                     Ir_checker.tycheck after_deadcode
                   else
                     Ir_checker.tycheck_wisa after_deadcode)
                in
                update_time "ir checker";
                (if wisa then
                  Layout.wisa := true);
                let table = Layout.pass Resolute.rule_codes sgn after_deadcode in
                update_time "resolute layout";
                let table = Sort.pass table deterministic in
                update_time "sort";
                (*Table_typing.integrate table*)
                (if not metrics then
                   Table.fprint_prog stdout table
                )
          )
    else
      let start_prog = Lexing.from_channel (open_in fname) in
      update_time "startup";
      let after_parse = Parser.derivation Lexer.read start_prog in
      update_time "parse";
      let after_inline_temp = Inline_temp.pass after_parse in
      update_time "inline temp";
      let after_identify_scope = Identify_scope.pass after_inline_temp in
      update_time "identify scope";
      let after_inline_let = Inline_let.pass after_identify_scope in
      update_time "inline let";
      let after_binary_transform = Binary_transform.establish_pass after_inline_let in
      update_time "binary transform";
      let after_process_scope_single =
        Process_scope_single.pass after_binary_transform in
      update_time "process scope single";
      let prog = Listify.listify after_process_scope_single in
      update_time "listify";
      let hyp_results = Type_inference.infer_pass prog in
      update_time "type inference";
      (*identify_trust_steps prog hyp_results;*)
      (*print_endline (Binary_transform.str_of_inferred_prog prog hyp_results);*)
      (*Nary_op_tests.nary_op_check hyp_results;*)
      let nary_prog = Nary_transform.convert_prog prog hyp_results in
      update_time "nary transform";
      if print_trust then
        Print_trust.print_trust fname nary_prog
      else
        let nary_prog =
          Remove_trust.pass nary_prog remove_trust_debug (not remove_trust_lax) in
        update_time "remove trust";
        match stop_at_ir, input_lfsc_res with
        | true, _ ->
          Metrics.print_metrics_flag metrics Ir.metrics nary_prog fname "LSFC";
          (if not metrics then
             print_endline (Ir.str_of_prog nary_prog)
          )
        (*
    | false, true ->
      let resolute_proof = Resolute_conv.turn_prog nary_prog in
      update_time "resolute conv";
      let after_deadcode = Resolute_deadcode.elim resolute_proof in
      update_time "resolute deadcode";
      Resolute_checker.check after_deadcode;
      update_time "resolute check";
      print_endline "resolute check succeeded" *)
        | false, true ->
          let resolute_proof = Resolute_conv.turn_prog nary_prog in
          update_time "resolute conv";
          Metrics.print_metrics_flag metrics Resolute.metrics resolute_proof
            fname
            "LFSC -> RESOLUTE";
          let after_deadcode = Resolute_deadcode.elim resolute_proof in
          Metrics.print_metrics_flag metrics
            Resolute.metrics after_deadcode fname
            "LFSC -> RESOLUTE (deadcode)";
          (if not metrics then
             print_endline (Resolute.str_of_prog after_deadcode)
          )
      (*
      update_time "resolute deadcode";
      let resolute_rules = Resolute_checker.infer_prog after_deadcode in
      update_time "resolute check";
      let after_resolute_compile =
        Resolute_compile.compile after_deadcode resolute_rules in
      update_time "resolute compile";
      Metrics.print_metrics (Ir.metrics after_resolute_compile)
        fname
        "LFSC -> RESOLUTE -> VIPC" *)
        | false, false ->
          (* TODO: add back in *)
          Metrics.print_metrics_flag metrics Ir.metrics nary_prog fname "LSFC";
          if stop_at_ir then
            (if not metrics then
               print_endline "flag";
             (*Ir.get_max_list 0 nary_prog.cmd_list*)
               (*Ir.fprint_prog stdout nary_prog*)
            )
            (**(if not metrics then
               print_endline (Ir.str_of_prog nary_prog)
               )*)
          else
            let sgn = Ir_checker.tycheck nary_prog in
            update_time "ir checker";
            let table = Layout.pass Expect.rule_codes sgn nary_prog in
            match reverse_layout with
            | true -> Reverse_layout.run_check nary_prog.vars table
            | false -> print_endline (Table.str_of_prog table)

let () =
  (**Printexc.record_backtrace true;
     Printexc.print main ()*)
  main()
