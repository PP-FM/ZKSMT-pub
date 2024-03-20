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
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_Incr2_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@2 x@0) (= x@2 (+ x@0 2))))) (=> (or false (or (= x@2 x@0) (= x@2 (+ x@0 2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@2 x@0))) (=> (=> false (= x@2 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 2)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (= x@2 (+ x@1 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 7) 6)) inline$AtomicIncr$1$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 8) 7) inline$AtomicIncr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(set-info :boogie-vc-id Civl_Incr4_1)
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_Incr4_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@2 x@0) (= x@2 (+ x@0 4))))) (=> (or false (or (= x@2 x@0) (= x@2 (+ x@0 4)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@2 x@0))) (=> (=> false (= x@2 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 4)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicIncr2$1$anon0_correct  (=> (= x@2 (+ x@1 2)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicIncr2$0$anon0_correct  (=> (and (= x@1 (+ x@0 2)) (= (ControlFlow 0 7) 6)) inline$AtomicIncr2$1$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 8) 7) inline$AtomicIncr2$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
