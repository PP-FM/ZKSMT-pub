open Printf
open Ir

(* Optional alternative helper: print all trust rules and what they conclude. *)

(* Should be enabled by the --print-trust flag. *)

let print_cmd i (cmd : cmd) =
  if cmd.name <> "trust" then
    ()
  else
    (match cmd.result with
     | Eq (a, b) ->
       printf "\nstep %d: equality\n" i;
       printf "  %s\n" (str_of_expr a);
       printf "  %s\n" (str_of_expr b);
     | _ ->
       printf "\nstep %d: %s\n" i (str_of_expr cmd.result)
    )

let print_trust (fname : string) (prog : prog) =
  printf "printing trust rules for %s\n" fname;
  List.iteri print_cmd prog.cmd_list
