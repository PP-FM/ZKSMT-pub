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
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_x_available@1 () (Array Int Bool))
(declare-fun A@1 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun A@0 () (Array Int Bool))
(declare-fun Civl_linear_x_available@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_Proc_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon0_0_correct  (=> (and (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (or Civl_pc@0 true)) (and (= Civl_linear_x_available@1 ((_ map or) A@1 ((_ map or) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_x (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) i true) ((_ map (= (Int Int) Bool)) Civl_partition_x ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) A@1 ((_ map (= (Int Int) Bool)) Civl_partition_x ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (not (select A@1 i))) (=> (not (select A@1 i)) (and (=> (= (ControlFlow 0 9) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_x@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) i true) ((_ map (= (Int Int) Bool)) Civl_partition_x@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) A@0 ((_ map (= (Int Int) Bool)) Civl_partition_x@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (= Civl_linear_x_available@0 ((_ map or) A@0 ((_ map or) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 11) 9) anon0_0_correct) (=> (= (ControlFlow 0 11) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 11) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
