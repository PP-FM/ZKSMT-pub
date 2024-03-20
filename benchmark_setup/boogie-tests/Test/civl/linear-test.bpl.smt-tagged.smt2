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
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@@0 () Int)
(declare-fun y () Int)
(declare-fun Civl_linear_A_available@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_foo_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_A (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) x@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_A ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) y true) ((_ map (= (Int Int) Bool)) Civl_partition_A ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (= Civl_linear_A_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) y true) ((_ map or) (store ((as const (Array Int Bool)) false) x@@0 true) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (= x@@0 y))) (=> (not (= x@@0 y)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
