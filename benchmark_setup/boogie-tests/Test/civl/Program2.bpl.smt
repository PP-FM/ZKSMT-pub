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
(declare-fun x@7 () Int)
(declare-fun x@5 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0 () Int)
(declare-fun x@6 () Int)
(declare-fun x@4 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@3 () Int)
(declare-fun x@2 () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@2 () Bool)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_p_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (>= x@7 8))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= x@7 x@5) (= (ControlFlow 0 18) 17)) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> Civl_pc@1 true)) (=> (=> Civl_pc@1 true) (=> (and (and (= Civl_pc@3  (=> true Civl_pc@1)) (= Civl_ok@2  (or true Civl_ok@1))) (= (ControlFlow 0 12) (- 0 11))) Civl_ok@2))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct  (=> (and (>= Civl_global_old_x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0) (= (ControlFlow 0 6) (- 0 5))) (>= x@6 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@6 x@5) (= Civl_global_old_x@0 x@4)) (and (=> (= (ControlFlow 0 15) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct) (=> (= (ControlFlow 0 15) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicIncr$2$anon0_correct  (=> (= x@5 (+ x@4 1)) (and (and (=> (= (ControlFlow 0 19) 12) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 19) 18) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 19) 15) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (>= x@3 x@3)) (=> (>= x@3 x@3) (=> (>= x@4 x@3) (=> (and (or Civl_pc@1 true) (= (ControlFlow 0 20) 19)) inline$AtomicIncr$2$anon0_correct)))))))
(let ((anon0_1$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@6 x@3) (= Civl_global_old_x@0 x@2)) (and (=> (= (ControlFlow 0 9) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct) (=> (= (ControlFlow 0 9) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@6 x@1) (= Civl_global_old_x@0 x@0)) (and (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@2 true)))))
(let ((anon0_1$1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@2 Civl_pc@0) (= (ControlFlow 0 10) 2)) Civl_RefinementChecker_correct)))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (= x@3 (+ x@2 1)) (and (and (=> (= (ControlFlow 0 22) 20) anon0_0_correct) (=> (= (ControlFlow 0 22) 9) anon0_1$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 22) 10) anon0_1$1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_1_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (>= x@1 x@1)) (=> (>= x@1 x@1) (=> (>= x@2 x@1) (=> (and (or Civl_pc@0 true) (= (ControlFlow 0 23) 22)) inline$AtomicIncr$1$anon0_correct)))))))
(let ((anon0$1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@2 false) (= (ControlFlow 0 4) 2)) Civl_RefinementChecker_correct)))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (= x@1 (+ x@0 1)) (and (and (=> (= (ControlFlow 0 25) 23) anon0_1_correct) (=> (= (ControlFlow 0 25) 8) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 25) 4) anon0$1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (>= x@0 5) (= (ControlFlow 0 26) 25)) inline$AtomicIncr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= x@@0 5) (= (ControlFlow 0 27) 26)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
