(set-logic ALIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Trigger_FOO_x (Int) Bool)
(declare-fun inline$FOO$0$x@0 () Int)
(declare-fun arr () (Array Int Int))
(set-info :boogie-vc-id Civl_P_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$FOO$0$anon0_correct  (=> (Trigger_FOO_x inline$FOO$0$x@0) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (forall ((x@@0 Int) ) (! (= (select arr x@@0) 1)
 :qid |assertnotfirst3bpl.5:29|
 :skolemid |0|
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((x@@1 Int) ) (! (= (select arr x@@1) 1)
 :qid |unknown.0:0|
 :skolemid |4|
))) (=> (forall ((x@@2 Int) ) (! (= (select arr x@@2) 1)
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (= (ControlFlow 0 7) 6) inline$FOO$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((x@@3 Int) ) (! (= (select arr x@@3) 1)
 :qid |assertnotfirst3bpl.5:29|
 :skolemid |0|
)) (= (ControlFlow 0 9) 7)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
