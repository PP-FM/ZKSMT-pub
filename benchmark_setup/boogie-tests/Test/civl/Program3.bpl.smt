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
(declare-fun second_val () Int)
(declare-fun first_val () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicIncr_AtomicIncr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncr$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (+ x@@0 second_val) first_val))))))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (and (= x@1 (+ x@0 second_val)) (= (ControlFlow 0 3) 2)) inline$AtomicIncr$1$Return_correct)))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@0 (+ x@@0 first_val)) (= (ControlFlow 0 4) 3)) inline$AtomicIncr$1$anon0_correct)))
(let ((inline$AtomicIncr$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$AtomicIncr$0$anon0_correct)))
inline$AtomicIncr$0$Entry_correct)))))
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
(declare-fun x@3 () Int)
(declare-fun x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@2 () Int)
(declare-fun x@1 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_p_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (>= x@3 8))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct  (=> (and (>= x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0) (= (ControlFlow 0 6) (- 0 5))) (>= x@3 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicIncr$2$anon0_correct  (=> (= x@3 (+ x@2 1)) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct)))))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (and (= x@2 (+ x@1 1)) (= (ControlFlow 0 11) 10)) inline$AtomicIncr$2$anon0_correct)))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 12) 11)) inline$AtomicIncr$1$anon0_correct)))
(let ((anon0_correct  (=> (and (>= x@0 5) (= (ControlFlow 0 13) 12)) inline$AtomicIncr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= x@@0 5) (= (ControlFlow 0 14) 13)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-fun x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0 () Int)
(declare-fun x@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_q_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct  (=> (and (>= x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0) (= (ControlFlow 0 6) (- 0 5))) (>= x@1 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (= x@1 (+ x@0 3)) (and (and (=> (= (ControlFlow 0 8) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct)) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 9) 8) inline$AtomicIncr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
