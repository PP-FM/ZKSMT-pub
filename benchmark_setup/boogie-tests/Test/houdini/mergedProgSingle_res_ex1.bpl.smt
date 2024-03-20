(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id _v2.Eval)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id _v2.Eval_loop_anon3_LoopHead)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id _v1.Eval)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id _v1.Eval_loop_anon3_LoopHead)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _houdini_Eval_control_flag_0 () Bool)
(declare-fun _v1.control_flag () Int)
(declare-fun _v2.control_flag () Int)
(declare-fun _v1.x () Int)
(declare-fun _v2.x () Int)
(declare-fun _v1.control_flag@4 () Int)
(declare-fun _v2.control_flag@4 () Int)
(declare-fun _houdini_Eval_result_1 () Bool)
(declare-fun _v1.result@0 () Int)
(declare-fun _v2.result@0 () Int)
(declare-fun _v1.control_flag@1 () Int)
(declare-fun call3formal@out_result@0 () Int)
(declare-fun _v2.control_flag@1 () Int)
(declare-fun call3formal@out_result@0@@0 () Int)
(declare-fun _houdini_Eval_loop_anon3_LoopHead_control_flag_2 () Bool)
(declare-fun _v1.control_flag@3 () Int)
(declare-fun _v2.control_flag@3 () Int)
(declare-fun _houdini_Eval_loop_anon3_LoopHead_out_result_3 () Bool)
(declare-fun call6formal@_v1.out_result@0 () Int)
(declare-fun call8formal@_v2.out_result@0 () Int)
(declare-fun _houdini_Eval_loop_anon3_LoopHead_out_x_4 () Bool)
(declare-fun call7formal@_v1.out_x@0 () Int)
(declare-fun call9formal@_v2.out_x@0 () Int)
(declare-fun _v1.control_flag@0 () Int)
(declare-fun _v2.control_flag@0 () Int)
(declare-fun call4formal@out_x@0 () Int)
(declare-fun call4formal@out_x@0@@0 () Int)
(declare-fun _v2.control_UIF (Int Int) Int)
(set-info :boogie-vc-id MS_Check__v1.Eval___v2.Eval)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) true) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> _houdini_Eval_control_flag_0 (=> (and (= _v1.control_flag _v2.control_flag) (= _v1.x _v2.x)) (= _v1.control_flag@4 _v2.control_flag@4)))) (=> (=> _houdini_Eval_control_flag_0 (=> (and (= _v1.control_flag _v2.control_flag) (= _v1.x _v2.x)) (= _v1.control_flag@4 _v2.control_flag@4))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> _houdini_Eval_result_1 (=> (= _v1.x _v2.x) (= _v1.result@0 _v2.result@0)))))))))
(let ((MS_L_meet_0_correct  (=> (= _v1.control_flag@4 _v1.control_flag@1) (=> (and (and (= _v1.result@0 call3formal@out_result@0) (= _v2.control_flag@4 _v2.control_flag@1)) (and (= _v2.result@0 call3formal@out_result@0@@0) (= (ControlFlow 0 7) 4))) GeneratedUnifiedExit_correct))))
(let ((MS_L_not_taken_0_correct  (=> (and (not (and true true)) (= (ControlFlow 0 9) 7)) MS_L_meet_0_correct)))
(let ((MS_L_taken_0_correct  (=> (and (and (and true true) (=> _houdini_Eval_loop_anon3_LoopHead_control_flag_2 (=> (and (= 0 0) (= _v1.x _v2.x)) (= _v1.control_flag@3 _v2.control_flag@3)))) (and (and (=> _houdini_Eval_loop_anon3_LoopHead_out_result_3 (=> (and (= 0 0) (= _v1.x _v2.x)) (= call6formal@_v1.out_result@0 call8formal@_v2.out_result@0))) (=> _houdini_Eval_loop_anon3_LoopHead_out_x_4 (=> (= _v1.x _v2.x) (= call7formal@_v1.out_x@0 call9formal@_v2.out_x@0)))) (and (= _v1.control_flag@3 _v1.control_flag@0) (= _v2.control_flag@3 _v2.control_flag@0)))) (=> (and (and (and (and (= call3formal@out_result@0 call6formal@_v1.out_result@0) (= call4formal@out_x@0 call7formal@_v1.out_x@0)) (= call3formal@out_result@0@@0 call8formal@_v2.out_result@0)) (= call4formal@out_x@0@@0 call9formal@_v2.out_x@0)) (= (ControlFlow 0 8) 7)) MS_L_meet_0_correct))))
(let ((inline$_v2.Eval$0$anon3_LoopDone_correct  (=> (and (>= 0 call4formal@out_x@0@@0) (= _v2.control_flag@1 (_v2.control_UIF _v2.control_flag@0 2))) (and (=> (= (ControlFlow 0 10) 8) MS_L_taken_0_correct) (=> (= (ControlFlow 0 10) 9) MS_L_not_taken_0_correct)))))
(let ((inline$_v2.Eval$0$anon3_LoopBody_correct true))
(let ((inline$_v1.Eval$0$anon3_LoopDone_correct  (=> (and (>= 0 call4formal@out_x@0) (= _v1.control_flag@1 (_v2.control_UIF _v1.control_flag@0 2))) (and (=> (= (ControlFlow 0 11) 10) inline$_v2.Eval$0$anon3_LoopDone_correct) (=> (= (ControlFlow 0 11) 2) inline$_v2.Eval$0$anon3_LoopBody_correct)))))
(let ((inline$_v1.Eval$0$anon3_LoopBody_correct true))
(let ((START_correct  (and (=> (= (ControlFlow 0 12) 11) inline$_v1.Eval$0$anon3_LoopDone_correct) (=> (= (ControlFlow 0 12) 1) inline$_v1.Eval$0$anon3_LoopBody_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) START_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 4) (- 5))))
(check-sat)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _houdini_Eval_loop_anon3_LoopHead_control_flag_2 () Bool)
(declare-fun _v1.control_flag () Int)
(declare-fun _v2.control_flag () Int)
(declare-fun _v1.in_x () Int)
(declare-fun _v2.in_x () Int)
(declare-fun _v1.control_flag@2 () Int)
(declare-fun _v2.control_flag@2 () Int)
(declare-fun _houdini_Eval_loop_anon3_LoopHead_out_result_3 () Bool)
(declare-fun _v1.in_result () Int)
(declare-fun _v2.in_result () Int)
(declare-fun inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@2 () Int)
(declare-fun inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@3 () Int)
(declare-fun _houdini_Eval_loop_anon3_LoopHead_out_x_4 () Bool)
(declare-fun inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@2 () Int)
(declare-fun inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@2 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_1_done@0 () Bool)
(declare-fun _v2.Eval_loop_anon3_LoopHead_2_done@0 () Bool)
(declare-fun _v1.Eval_loop_anon3_LoopHead_in_1_2@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_in_2_2@0 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_in_1_1@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_in_2_1@0 () Int)
(declare-fun _v1.control_flag@3 () Int)
(declare-fun _v2.control_flag@3 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_in_1_0@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_in_2_0@0 () Int)
(declare-fun call6formal@_v1.out_result@0 () Int)
(declare-fun call8formal@_v2.out_result@0 () Int)
(declare-fun call7formal@_v1.out_x@0 () Int)
(declare-fun call9formal@_v2.out_x@0 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_out_1_2@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_out_2_2@0 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_out_1_0@0 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_out_1_1@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_out_2_0@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_out_2_1@0 () Int)
(declare-fun _v2.control_flag@0 () Int)
(declare-fun _v2.control_UIF (Int Int) Int)
(declare-fun inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@1 () Int)
(declare-fun inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@1 () Int)
(declare-fun inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@2 () Int)
(declare-fun _v2.control_flag@1 () Int)
(declare-fun call4formal@out_x@0 () Int)
(declare-fun call3formal@out_result@0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_in_2_0 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_in_2_1 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_in_2_2 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_out_2_2 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_out_2_1 () Int)
(declare-fun _v2.Eval_loop_anon3_LoopHead_out_2_0 () Int)
(declare-fun _v1.control_flag@0 () Int)
(declare-fun inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@1 () Int)
(declare-fun inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@1 () Int)
(declare-fun _v1.control_flag@1 () Int)
(declare-fun call4formal@out_x@0@@0 () Int)
(declare-fun call3formal@out_result@0@@0 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_in_1_0 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_in_1_1 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_in_1_2 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_out_1_2 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_out_1_1 () Int)
(declare-fun _v1.Eval_loop_anon3_LoopHead_out_1_0 () Int)
(set-info :boogie-vc-id MS_Check__v1.Eval_loop_anon3_LoopHead___v2.Eval_loop_anon3_LoopHead)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((MS_L_meet_0_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> _houdini_Eval_loop_anon3_LoopHead_control_flag_2 (=> (and (= _v1.control_flag _v2.control_flag) (= _v1.in_x _v2.in_x)) (= _v1.control_flag@2 _v2.control_flag@2)))) (=> (=> _houdini_Eval_loop_anon3_LoopHead_control_flag_2 (=> (and (= _v1.control_flag _v2.control_flag) (= _v1.in_x _v2.in_x)) (= _v1.control_flag@2 _v2.control_flag@2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> _houdini_Eval_loop_anon3_LoopHead_out_result_3 (=> (and (= _v1.in_result _v2.in_result) (= _v1.in_x _v2.in_x)) (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@2 inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@3)))) (=> (=> _houdini_Eval_loop_anon3_LoopHead_out_result_3 (=> (and (= _v1.in_result _v2.in_result) (= _v1.in_x _v2.in_x)) (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@2 inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@3))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> _houdini_Eval_loop_anon3_LoopHead_out_x_4 (=> (= _v1.in_x _v2.in_x) (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@2 inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@2)))))))))))
(let ((MS_L_not_taken_0_correct  (=> (and (not (and _v1.Eval_loop_anon3_LoopHead_1_done@0 _v2.Eval_loop_anon3_LoopHead_2_done@0)) (= (ControlFlow 0 7) 2)) MS_L_meet_0_correct)))
(let ((MS_L_taken_0_correct  (=> (and (and (and _v1.Eval_loop_anon3_LoopHead_1_done@0 _v2.Eval_loop_anon3_LoopHead_2_done@0) (=> _houdini_Eval_loop_anon3_LoopHead_control_flag_2 (=> (and (= _v1.Eval_loop_anon3_LoopHead_in_1_2@0 _v2.Eval_loop_anon3_LoopHead_in_2_2@0) (= _v1.Eval_loop_anon3_LoopHead_in_1_1@0 _v2.Eval_loop_anon3_LoopHead_in_2_1@0)) (= _v1.control_flag@3 _v2.control_flag@3)))) (and (and (=> _houdini_Eval_loop_anon3_LoopHead_out_result_3 (=> (and (= _v1.Eval_loop_anon3_LoopHead_in_1_0@0 _v2.Eval_loop_anon3_LoopHead_in_2_0@0) (= _v1.Eval_loop_anon3_LoopHead_in_1_1@0 _v2.Eval_loop_anon3_LoopHead_in_2_1@0)) (= call6formal@_v1.out_result@0 call8formal@_v2.out_result@0))) (=> _houdini_Eval_loop_anon3_LoopHead_out_x_4 (=> (= _v1.Eval_loop_anon3_LoopHead_in_1_1@0 _v2.Eval_loop_anon3_LoopHead_in_2_1@0) (= call7formal@_v1.out_x@0 call9formal@_v2.out_x@0)))) (and (= _v1.control_flag@3 _v1.Eval_loop_anon3_LoopHead_out_1_2@0) (= _v2.control_flag@3 _v2.Eval_loop_anon3_LoopHead_out_2_2@0)))) (=> (and (and (and (and (= _v1.Eval_loop_anon3_LoopHead_out_1_0@0 call6formal@_v1.out_result@0) (= _v1.Eval_loop_anon3_LoopHead_out_1_1@0 call7formal@_v1.out_x@0)) (= _v2.Eval_loop_anon3_LoopHead_out_2_0@0 call8formal@_v2.out_result@0)) (= _v2.Eval_loop_anon3_LoopHead_out_2_1@0 call9formal@_v2.out_x@0)) (= (ControlFlow 0 6) 2)) MS_L_meet_0_correct))))
(let ((inline$_v2.Eval_loop_anon3_LoopHead$0$Return_correct  (and (=> (= (ControlFlow 0 8) 6) MS_L_taken_0_correct) (=> (= (ControlFlow 0 8) 7) MS_L_not_taken_0_correct))))
(let ((inline$_v2.Eval_loop_anon3_LoopHead$0$anon3_LoopBody_correct  (=> (> _v2.in_x 0) (=> (and (= _v2.control_flag@0 (_v2.control_UIF _v2.control_flag 1)) (= inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@1 (+ _v2.in_result _v2.in_x))) (=> (and (and (= inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@1 (- _v2.in_x 1)) (= _v2.Eval_loop_anon3_LoopHead_in_2_0@0 inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@2)) (and (= _v2.Eval_loop_anon3_LoopHead_in_2_1@0 inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@1) (= _v2.Eval_loop_anon3_LoopHead_in_2_2@0 _v2.control_flag@0))) (=> (and (and (and (= _v2.Eval_loop_anon3_LoopHead_out_2_2@0 _v2.control_flag@1) (= _v2.Eval_loop_anon3_LoopHead_out_2_1@0 call4formal@out_x@0)) (and (= _v2.Eval_loop_anon3_LoopHead_out_2_0@0 call3formal@out_result@0) (= _v2.Eval_loop_anon3_LoopHead_2_done@0 true))) (and (and (= inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@3 call3formal@out_result@0) (= inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@2 call4formal@out_x@0)) (and (= _v2.control_flag@2 _v2.control_flag@1) (= (ControlFlow 0 10) 8)))) inline$_v2.Eval_loop_anon3_LoopHead$0$Return_correct))))))
(let ((inline$_v2.Eval_loop_anon3_LoopHead$0$anon3_LoopDone_correct  (=> (and (and (>= 0 _v2.in_x) (= _v2.Eval_loop_anon3_LoopHead_in_2_0@0 _v2.Eval_loop_anon3_LoopHead_in_2_0)) (and (= _v2.Eval_loop_anon3_LoopHead_in_2_1@0 _v2.Eval_loop_anon3_LoopHead_in_2_1) (= _v2.Eval_loop_anon3_LoopHead_in_2_2@0 _v2.Eval_loop_anon3_LoopHead_in_2_2))) (=> (and (and (and (= _v2.Eval_loop_anon3_LoopHead_out_2_2@0 _v2.Eval_loop_anon3_LoopHead_out_2_2) (= _v2.Eval_loop_anon3_LoopHead_out_2_1@0 _v2.Eval_loop_anon3_LoopHead_out_2_1)) (and (= _v2.Eval_loop_anon3_LoopHead_out_2_0@0 _v2.Eval_loop_anon3_LoopHead_out_2_0) (= _v2.Eval_loop_anon3_LoopHead_2_done@0 false))) (and (and (= inline$_v2.Eval_loop_anon3_LoopHead$0$out_result@3 _v2.in_result) (= inline$_v2.Eval_loop_anon3_LoopHead$0$out_x@2 _v2.in_x)) (and (= _v2.control_flag@2 _v2.control_flag) (= (ControlFlow 0 9) 8)))) inline$_v2.Eval_loop_anon3_LoopHead$0$Return_correct))))
(let ((inline$_v1.Eval_loop_anon3_LoopHead$0$Return_correct  (and (=> (= (ControlFlow 0 11) 9) inline$_v2.Eval_loop_anon3_LoopHead$0$anon3_LoopDone_correct) (=> (= (ControlFlow 0 11) 10) inline$_v2.Eval_loop_anon3_LoopHead$0$anon3_LoopBody_correct))))
(let ((inline$_v1.Eval_loop_anon3_LoopHead$0$anon3_LoopBody_correct  (=> (> _v1.in_x 0) (=> (and (= _v1.control_flag@0 (_v2.control_UIF _v1.control_flag 1)) (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@1 (+ _v1.in_result _v1.in_x))) (=> (and (and (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@1 (- _v1.in_x 1)) (= _v1.Eval_loop_anon3_LoopHead_in_1_0@0 inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@1)) (and (= _v1.Eval_loop_anon3_LoopHead_in_1_1@0 inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@1) (= _v1.Eval_loop_anon3_LoopHead_in_1_2@0 _v1.control_flag@0))) (=> (and (and (and (= _v1.Eval_loop_anon3_LoopHead_out_1_2@0 _v1.control_flag@1) (= _v1.Eval_loop_anon3_LoopHead_out_1_1@0 call4formal@out_x@0@@0)) (and (= _v1.Eval_loop_anon3_LoopHead_out_1_0@0 call3formal@out_result@0@@0) (= _v1.Eval_loop_anon3_LoopHead_1_done@0 true))) (and (and (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@2 call3formal@out_result@0@@0) (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@2 call4formal@out_x@0@@0)) (and (= _v1.control_flag@2 _v1.control_flag@1) (= (ControlFlow 0 13) 11)))) inline$_v1.Eval_loop_anon3_LoopHead$0$Return_correct))))))
(let ((inline$_v1.Eval_loop_anon3_LoopHead$0$anon3_LoopDone_correct  (=> (and (and (>= 0 _v1.in_x) (= _v1.Eval_loop_anon3_LoopHead_in_1_0@0 _v1.Eval_loop_anon3_LoopHead_in_1_0)) (and (= _v1.Eval_loop_anon3_LoopHead_in_1_1@0 _v1.Eval_loop_anon3_LoopHead_in_1_1) (= _v1.Eval_loop_anon3_LoopHead_in_1_2@0 _v1.Eval_loop_anon3_LoopHead_in_1_2))) (=> (and (and (and (= _v1.Eval_loop_anon3_LoopHead_out_1_2@0 _v1.Eval_loop_anon3_LoopHead_out_1_2) (= _v1.Eval_loop_anon3_LoopHead_out_1_1@0 _v1.Eval_loop_anon3_LoopHead_out_1_1)) (and (= _v1.Eval_loop_anon3_LoopHead_out_1_0@0 _v1.Eval_loop_anon3_LoopHead_out_1_0) (= _v1.Eval_loop_anon3_LoopHead_1_done@0 false))) (and (and (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_result@2 _v1.in_result) (= inline$_v1.Eval_loop_anon3_LoopHead$0$out_x@2 _v1.in_x)) (and (= _v1.control_flag@2 _v1.control_flag) (= (ControlFlow 0 12) 11)))) inline$_v1.Eval_loop_anon3_LoopHead$0$Return_correct))))
(let ((START_correct  (and (=> (= (ControlFlow 0 14) 12) inline$_v1.Eval_loop_anon3_LoopHead$0$anon3_LoopDone_correct) (=> (= (ControlFlow 0 14) 13) inline$_v1.Eval_loop_anon3_LoopHead$0$anon3_LoopBody_correct))))
START_correct)))))))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
