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
(declare-fun x@1 () Int)
(declare-fun x@@0 () Int)
(declare-fun second_n () Int)
(declare-fun first_n () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSlowAdd_AtomicSlowAdd)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSlowAdd$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (+ x@@0 second_n) first_n))))))
(let ((inline$AtomicSlowAdd$1$anon0_correct  (=> (and (= x@1 (+ x@0 second_n)) (= (ControlFlow 0 3) 2)) inline$AtomicSlowAdd$1$Return_correct)))
(let ((inline$AtomicSlowAdd$0$anon0_correct  (=> (and (= x@0 (+ x@@0 first_n)) (= (ControlFlow 0 4) 3)) inline$AtomicSlowAdd$1$anon0_correct)))
(let ((inline$AtomicSlowAdd$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$AtomicSlowAdd$0$anon0_correct)))
inline$AtomicSlowAdd$0$Entry_correct)))))
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
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun n () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i@0 () Int)
(declare-fun i@1 () Int)
(declare-fun x@2 () Int)
(set-info :boogie-vc-id Civl_SlowAdd_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (or false (or (= x@1 x@0) (= x@1 (+ x@0 n))))) (=> (or false (or (= x@1 x@0) (= x@1 (+ x@0 n)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> false (= x@1 x@0))) (=> (=> false (= x@1 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@1 x@0) false)) (= Civl_ok@0  (or (= x@1 (+ x@0 n)) false))) (= (ControlFlow 0 7) (- 0 6))) Civl_ok@0)))))))
(let ((anon3_LoopDone_correct  (=> (<= n i@0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= i@0 n)) (=> (= i@0 n) (and (=> (= (ControlFlow 0 11) 7) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 10) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon3_LoopBody$1_correct  (=> (= i@1 (+ i@0 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= i@1 n)) (=> (<= i@1 n) (=> (= (ControlFlow 0 2) (- 0 1)) (= x@2 (+ x@0 i@1))))))))
(let ((inline$AtomicIncX$0$anon0_correct  (=> (and (= x@2 (+ x@1 1)) (= (ControlFlow 0 4) 2)) anon3_LoopBody$1_correct)))
(let ((anon3_LoopBody_correct  (=> (and (< i@0 n) (= (ControlFlow 0 5) 4)) inline$AtomicIncX$0$anon0_correct)))
(let ((anon3_LoopHead_correct  (=> (and (<= i@0 n) (= x@1 (+ x@0 i@0))) (and (=> (= (ControlFlow 0 13) 11) anon3_LoopDone_correct) (=> (= (ControlFlow 0 13) 5) anon3_LoopBody_correct)))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (<= 0 n)) (=> (<= 0 n) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= x@0 (+ x@0 0))) (=> (= x@0 (+ x@0 0)) (=> (= (ControlFlow 0 14) 13) anon3_LoopHead_correct)))))))
(let ((anon0_correct  (=> (and (>= n 0) (= (ControlFlow 0 17) 14)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= n 0) (= (ControlFlow 0 18) 17)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)