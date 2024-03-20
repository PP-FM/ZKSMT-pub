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
(declare-fun c () Int)
(declare-fun c@1 () Int)
(declare-fun c@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_P_V)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$V$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (> (+ c 1) 0) (= c@1 (- (+ c 1) 1)))))))
(let ((inline$V$0$anon0_correct  (=> (and (= c@1 (+ c@0 1)) (= (ControlFlow 0 3) 2)) inline$V$0$Return_correct)))
(let ((inline$P$0$anon0_correct  (=> (> c 0) (=> (and (= c@0 (- c 1)) (= (ControlFlow 0 4) 3)) inline$V$0$anon0_correct))))
(let ((inline$P$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$P$0$anon0_correct)))
inline$P$0$Entry_correct)))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun c@4 () Int)
(declare-fun c@3 () Int)
(declare-fun c@2 () Int)
(declare-fun c@1 () Int)
(declare-fun c@0 () Int)
(set-info :boogie-vc-id Civl_Thread_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$V$1$anon0_correct  (=> (= c@4 (+ c@3 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$V$0$anon0_correct  (=> (and (= c@3 (+ c@2 1)) (= (ControlFlow 0 7) 6)) inline$V$1$anon0_correct)))
(let ((inline$P$1$anon0_correct  (=> (> c@1 0) (=> (and (= c@2 (- c@1 1)) (= (ControlFlow 0 8) 7)) inline$V$0$anon0_correct))))
(let ((inline$P$0$anon0_correct  (=> (> c@0 0) (=> (and (= c@1 (- c@0 1)) (= (ControlFlow 0 9) 8)) inline$P$1$anon0_correct))))
(let ((anon0_correct  (=> (= (ControlFlow 0 10) 9) inline$P$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
