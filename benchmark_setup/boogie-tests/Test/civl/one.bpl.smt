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
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_B_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= 5 5))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_B_1$0$L0_correct  (=> (and (= x@0 5) (= (ControlFlow 0 6) (- 0 5))) (= 5 5))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_proc_B_1$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
