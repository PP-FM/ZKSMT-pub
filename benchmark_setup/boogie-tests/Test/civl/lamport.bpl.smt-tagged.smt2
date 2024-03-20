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
(declare-fun ind_inv ((Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun safety ((Array Int Bool) (Array Int Int)) Bool)
(declare-fun x_inv ((Array Int Bool) (Array Int Int)) Bool)
(declare-fun Trigger (Int) Bool)
(declare-fun in_range (Int) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun N () Int)
(assert (forall ((done (Array Int Bool)) (y (Array Int Int)) (x (Array Int Int)) ) (! (= (ind_inv done y x)  (and (safety done y) (x_inv done x)))
 :qid |lamportbpl.113:18|
 :skolemid |6|
 :pattern ( (ind_inv done y x))
)))
(assert (forall ((done@@0 (Array Int Bool)) (y@@0 (Array Int Int)) ) (! (= (safety done@@0 y@@0)  (=> (forall ((i Int) ) (!  (=> (in_range i) (select done@@0 i))
 :qid |lamportbpl.96:11|
 :skolemid |1|
 :pattern ( (Trigger i))
 :pattern ( (in_range i))
)) (exists ((i@@0 Int) ) (!  (and (in_range i@@0) (= (select y@@0 i@@0) 1))
 :qid |lamportbpl.98:11|
 :skolemid |2|
))))
 :qid |lamportbpl.94:17|
 :skolemid |3|
 :pattern ( (safety done@@0 y@@0))
)))
(assert (forall ((done@@1 (Array Int Bool)) (x@@0 (Array Int Int)) ) (! (= (x_inv done@@1 x@@0) (forall ((i@@1 Int) ) (!  (=> (and (in_range i@@1) (select done@@1 i@@1)) (= (select x@@0 i@@1) 1))
 :qid |lamportbpl.106:11|
 :skolemid |4|
)))
 :qid |lamportbpl.104:16|
 :skolemid |5|
 :pattern ( (x_inv done@@1 x@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (forall ((i@@2 Int) ) (! (= (Trigger i@@2) true)
 :qid |lamportbpl.122:18|
 :skolemid |7|
 :pattern ( (Trigger i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (in_range i@@3)  (and (<= 0 i@@3) (< i@@3 N)))
 :qid |lamportbpl.87:19|
 :skolemid |0|
 :pattern ( (in_range i@@3))
)))
(assert (>= N 1))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun done@0 () (Array Int Bool))
(declare-fun y@0 () (Array Int Int))
(declare-fun x@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i@0 () Int)
(declare-fun i@1 () Int)
(declare-fun done@@2 () (Array Int Bool))
(declare-fun y@@1 () (Array Int Int))
(declare-fun x@@2 () (Array Int Int))
(set-info :boogie-vc-id Civl_Main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (ind_inv done@0 y@0 x@0))))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_ind_inv$0$L0_correct  (=> (and (ind_inv done@0 y@0 x@0) (= (ControlFlow 0 13) (- 0 12))) (ind_inv done@0 y@0 x@0))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct  (=> (and (= (select x@0 inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0) 1) (ind_inv done@0 y@0 x@0)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (= (select x@0 inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0) 1)) (=> (= (select x@0 inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0) 1) (=> (= (ControlFlow 0 9) (- 0 8)) (ind_inv done@0 y@0 x@0)))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) true) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 5) (- 0 4))) Civl_ok@0))))))
(let ((anon2_LoopDone_correct  (=> (<= N i@0) (and (and (and (and (=> (= (ControlFlow 0 16) 5) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 16) 9) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 13) inline$Civl_NoninterferenceChecker_yield_yield_ind_inv$0$L0_correct)) (=> (= (ControlFlow 0 16) 15) GeneratedUnifiedExit_correct)))))
(let ((anon2_LoopBody_correct  (=> (< i@0 N) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ind_inv done@0 y@0 x@0)) (=> (ind_inv done@0 y@0 x@0) (=> (and (= i@1 (+ i@0 1)) (= (ControlFlow 0 2) (- 0 1))) (ind_inv done@0 y@0 x@0)))))))
(let ((anon2_LoopHead_correct  (=> (ind_inv done@0 y@0 x@0) (and (=> (= (ControlFlow 0 17) 16) anon2_LoopDone_correct) (=> (= (ControlFlow 0 17) 2) anon2_LoopBody_correct)))))
(let ((anon0_correct  (=> (ind_inv done@0 y@0 x@0) (and (=> (= (ControlFlow 0 18) (- 0 20)) (Trigger 0)) (=> (Trigger 0) (and (=> (= (ControlFlow 0 18) (- 0 19)) (ind_inv done@0 y@0 x@0)) (=> (ind_inv done@0 y@0 x@0) (=> (= (ControlFlow 0 18) 17) anon2_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (ind_inv done@@2 y@@1 x@@2) (= (ControlFlow 0 21) 18)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-fun ind_inv ((Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun safety ((Array Int Bool) (Array Int Int)) Bool)
(declare-fun x_inv ((Array Int Bool) (Array Int Int)) Bool)
(declare-fun Trigger (Int) Bool)
(declare-fun in_range (Int) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun N () Int)
(assert (forall ((done (Array Int Bool)) (y (Array Int Int)) (x (Array Int Int)) ) (! (= (ind_inv done y x)  (and (safety done y) (x_inv done x)))
 :qid |lamportbpl.113:18|
 :skolemid |6|
 :pattern ( (ind_inv done y x))
)))
(assert (forall ((done@@0 (Array Int Bool)) (y@@0 (Array Int Int)) ) (! (= (safety done@@0 y@@0)  (=> (forall ((i Int) ) (!  (=> (in_range i) (select done@@0 i))
 :qid |lamportbpl.96:11|
 :skolemid |1|
 :pattern ( (Trigger i))
 :pattern ( (in_range i))
)) (exists ((i@@0 Int) ) (!  (and (in_range i@@0) (= (select y@@0 i@@0) 1))
 :qid |lamportbpl.98:11|
 :skolemid |2|
))))
 :qid |lamportbpl.94:17|
 :skolemid |3|
 :pattern ( (safety done@@0 y@@0))
)))
(assert (forall ((done@@1 (Array Int Bool)) (x@@0 (Array Int Int)) ) (! (= (x_inv done@@1 x@@0) (forall ((i@@1 Int) ) (!  (=> (and (in_range i@@1) (select done@@1 i@@1)) (= (select x@@0 i@@1) 1))
 :qid |lamportbpl.106:11|
 :skolemid |4|
)))
 :qid |lamportbpl.104:16|
 :skolemid |5|
 :pattern ( (x_inv done@@1 x@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (forall ((i@@2 Int) ) (! (= (Trigger i@@2) true)
 :qid |lamportbpl.122:18|
 :skolemid |7|
 :pattern ( (Trigger i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (in_range i@@3)  (and (<= 0 i@@3) (< i@@3 N)))
 :qid |lamportbpl.87:19|
 :skolemid |0|
 :pattern ( (in_range i@@3))
)))
(assert (>= N 1))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun done@4 () (Array Int Bool))
(declare-fun y@4 () (Array Int Int))
(declare-fun x@4 () (Array Int Int))
(declare-fun done@2 () (Array Int Bool))
(declare-fun y@2 () (Array Int Int))
(declare-fun x@2 () (Array Int Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_done@0 () (Array Int Bool))
(declare-fun Civl_global_old_y@0 () (Array Int Int))
(declare-fun Civl_global_old_x@0 () (Array Int Int))
(declare-fun done@3 () (Array Int Bool))
(declare-fun y@3 () (Array Int Int))
(declare-fun x@3 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0 () Int)
(declare-fun y@1 () (Array Int Int))
(declare-fun done@1 () (Array Int Bool))
(declare-fun i@@4 () Int)
(declare-fun x@1 () (Array Int Int))
(declare-fun done@0 () (Array Int Bool))
(declare-fun y@0 () (Array Int Int))
(declare-fun x@0 () (Array Int Int))
(declare-fun done@@2 () (Array Int Bool))
(declare-fun y@@1 () (Array Int Int))
(declare-fun x@@2 () (Array Int Int))
(set-info :boogie-vc-id Civl_Proc_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (ind_inv done@4 y@4 x@4))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= done@4 done@2) (= y@4 y@2)) (and (= x@4 x@2) (= (ControlFlow 0 18) 17))) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 12) (- 0 11))) Civl_ok@1))))))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_ind_inv$0$L0_correct  (=> (and (ind_inv Civl_global_old_done@0 Civl_global_old_y@0 Civl_global_old_x@0) (= (ControlFlow 0 9) (- 0 8))) (ind_inv done@3 y@3 x@3))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct  (=> (and (= (select Civl_global_old_x@0 inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0) 1) (ind_inv Civl_global_old_done@0 Civl_global_old_y@0 Civl_global_old_x@0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (select x@3 inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0) 1)) (=> (= (select x@3 inline$Civl_NoninterferenceChecker_impl_Proc_1$0$i@0) 1) (=> (= (ControlFlow 0 5) (- 0 4)) (ind_inv done@3 y@3 x@3)))))))
(let ((anon0_0$2_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@3 x@2) (= y@3 y@2)) (=> (and (and (= done@3 done@2) (= Civl_global_old_x@0 x@2)) (and (= Civl_global_old_y@0 y@1) (= Civl_global_old_done@0 done@1))) (and (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct) (=> (= (ControlFlow 0 15) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 9) inline$Civl_NoninterferenceChecker_yield_yield_ind_inv$0$L0_correct))))))
(let ((anon0_0$2_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (Trigger (mod (- i@@4 1) N))) (=> (Trigger (mod (- i@@4 1) N)) (and (and (=> (= (ControlFlow 0 19) 12) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 19) 18) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 19) 15) anon0_0$2_@2_Civl_NoninterferenceChecker_correct))))))
(let ((inline$mark_done$0$anon0_correct  (=> (and (= done@2 (store done@1 i@@4 true)) (= (ControlFlow 0 21) 19)) anon0_0$2_correct)))
(let ((inline$atomic_update_y$0$anon0_correct  (=> (and (= y@2 (store y@1 i@@4 (select x@2 (mod (- i@@4 1) N)))) (= (ControlFlow 0 22) 21)) inline$mark_done$0$anon0_correct)))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (= (select x@1 i@@4) 1)) (=> (= (select x@1 i@@4) 1) (and (=> (= (ControlFlow 0 23) (- 0 24)) (ind_inv done@0 y@0 x@1)) (=> (ind_inv done@0 y@0 x@1) (=> (and (and (or Civl_pc@0 true) (= (select x@2 i@@4) 1)) (and (ind_inv done@1 y@1 x@2) (= (ControlFlow 0 23) 22))) inline$atomic_update_y$0$anon0_correct))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (= x@3 x@1) (= y@3 y@0)) (=> (and (and (= done@3 done@0) (= Civl_global_old_x@0 x@0)) (and (= Civl_global_old_y@0 y@0) (= Civl_global_old_done@0 done@0))) (and (and (=> (= (ControlFlow 0 10) 5) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) inline$Civl_NoninterferenceChecker_yield_yield_ind_inv$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((inline$atomic_update_x$0$anon0_correct  (=> (= x@1 (store x@0 i@@4 1)) (and (and (=> (= (ControlFlow 0 26) 23) anon0_0_correct) (=> (= (ControlFlow 0 26) 10) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (ind_inv done@0 y@0 x@0) (= (ControlFlow 0 27) 26)) inline$atomic_update_x$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (ind_inv done@@2 y@@1 x@@2) (= (ControlFlow 0 28) 27)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
