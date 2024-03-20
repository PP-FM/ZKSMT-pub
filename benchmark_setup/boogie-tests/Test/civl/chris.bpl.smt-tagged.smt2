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
(set-info :boogie-vc-id Civl_Havoc_1)
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_Recover_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@0 x@0) (= x@0 x@0)))) (=> (or false (or (= x@0 x@0) (= x@0 x@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@0 x@0))) (=> (=> false (= x@0 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@0 x@0) false)) (= Civl_ok@0  (or (= x@0 x@0) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (= x@0 5) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(set-info :boogie-vc-id Civl_P_1)
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
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_Havoc_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_P_2$0$L1_correct  (=> (and (= x@0 5) (= (ControlFlow 0 8) (- 0 7))) (= x@0 5))))
(let ((inline$Civl_NoninterferenceChecker_proc_P_2$0$L0_correct  (=> (and (= x@0 5) (= (ControlFlow 0 6) (- 0 5))) (= x@0 5))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@0 x@0) (= x@0 x@0)))) (=> (or false (or (= x@0 x@0) (= x@0 x@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@0 x@0))) (=> (=> false (= x@0 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@0 x@0) false)) (= Civl_ok@0  (or (= x@0 x@0) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_proc_P_2$0$L0_correct)) (=> (= (ControlFlow 0 10) 8) inline$Civl_NoninterferenceChecker_proc_P_2$0$L1_correct)) (=> (= (ControlFlow 0 10) 9) Civl_NoninterferenceChecker$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
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
(declare-fun x@4 () Int)
(declare-fun x@2 () Int)
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@3 () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_P_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (= x@4 5))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= x@4 x@2) (= (ControlFlow 0 13) 12)) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_P_2$0$L1_correct  (=> (and (= Civl_global_old_x@0 5) (= (ControlFlow 0 5) (- 0 4))) (= x@3 5))))
(let ((inline$Civl_NoninterferenceChecker_proc_P_2$0$L0_correct  (=> (and (= Civl_global_old_x@0 5) (= (ControlFlow 0 3) (- 0 2))) (= x@3 5))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@3 x@2) (= Civl_global_old_x@0 x@2)) (and (and (=> (= (ControlFlow 0 10) 3) inline$Civl_NoninterferenceChecker_proc_P_2$0$L0_correct) (=> (= (ControlFlow 0 10) 5) inline$Civl_NoninterferenceChecker_proc_P_2$0$L1_correct)) (=> (= (ControlFlow 0 10) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (= x@2 5) (and (and (=> (= (ControlFlow 0 14) 9) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 13) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 14) 10) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@3 x@1) (= Civl_global_old_x@0 x@1)) (and (and (=> (= (ControlFlow 0 8) 3) inline$Civl_NoninterferenceChecker_proc_P_2$0$L0_correct) (=> (= (ControlFlow 0 8) 5) inline$Civl_NoninterferenceChecker_proc_P_2$0$L1_correct)) (=> (= (ControlFlow 0 8) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@3 x@0) (= Civl_global_old_x@0 x@0)) (and (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_proc_P_2$0$L0_correct) (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_proc_P_2$0$L1_correct)) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (= x@0 5) (and (and (and (=> (= (ControlFlow 0 15) 7) anon0_@2_Civl_NoninterferenceChecker_correct) (=> (= (ControlFlow 0 15) 1) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 15) 14) anon0_0_correct)) (=> (= (ControlFlow 0 15) 8) anon0_1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= x@@0 5) (= (ControlFlow 0 16) 15)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
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
(declare-fun x@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_P_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (= x@3 5))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= x@3 x@1) (= (ControlFlow 0 19) 18)) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) true) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 13) (- 0 12))) Civl_ok@1))))))
(let ((inline$Civl_NoninterferenceChecker_impl_P_3$0$L0_correct  (=> (and (= Civl_global_old_x@0 5) (= (ControlFlow 0 10) (- 0 9))) (= x@2 5))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_P_3$0$L1_correct  (=> (and (= Civl_global_old_x@0 5) (= (ControlFlow 0 7) (- 0 6))) (= x@2 5))))
(let ((inline$Civl_NoninterferenceChecker_proc_P_3$0$L0_correct  (=> (and (= Civl_global_old_x@0 5) (= (ControlFlow 0 5) (- 0 4))) (= x@2 5))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@2 x@1) (= Civl_global_old_x@0 x@1)) (and (and (and (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_proc_P_3$0$L0_correct) (=> (= (ControlFlow 0 16) 7) inline$Civl_NoninterferenceChecker_proc_P_3$0$L1_correct)) (=> (= (ControlFlow 0 16) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 10) inline$Civl_NoninterferenceChecker_impl_P_3$0$L0_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (= x@0 5)) (=> (= x@0 5) (=> (and (or Civl_pc@0 true) (= x@1 5)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= x@1 5)) (=> (= x@1 5) (and (and (=> (= (ControlFlow 0 20) 13) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 19) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 20) 16) anon0_0$1_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@2 x@0) (= Civl_global_old_x@0 x@0)) (and (and (and (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_proc_P_3$0$L0_correct) (=> (= (ControlFlow 0 11) 7) inline$Civl_NoninterferenceChecker_proc_P_3$0$L1_correct)) (=> (= (ControlFlow 0 11) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_impl_P_3$0$L0_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (= x@0 5) (and (and (=> (= (ControlFlow 0 23) 20) anon0_0_correct) (=> (= (ControlFlow 0 23) 11) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 2) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= x@@0 5) (= (ControlFlow 0 24) 23)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
