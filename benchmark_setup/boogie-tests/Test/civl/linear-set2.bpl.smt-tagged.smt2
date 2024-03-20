(set-logic AUFLIA)
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
(declare-sort T@X 0)
(declare-fun xls () (Array T@X Bool))
(declare-fun inline$AtomicSplitLow$0$xls1@0 () (Array T@X Bool))
(declare-fun inline$AtomicSplitLow$0$xls2@0 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@0 () (Array T@X Bool))
(declare-fun x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 () (Array T@X Bool))
(declare-fun nil () T@X)
(declare-fun xls1 () (Array T@X Bool))
(declare-fun xls2 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Split_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (= xls ((_ map or) inline$AtomicSplitLow$0$xls1@0 inline$AtomicSplitLow$0$xls2@0)) (not (= inline$AtomicSplitLow$0$xls1@0 ((as const (Array T@X Bool)) false)))) (not (= inline$AtomicSplitLow$0$xls2@0 ((as const (Array T@X Bool)) false)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
))) (and (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (= x@0 42))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true))) (=> (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (=> (= (ControlFlow 0 10) (- 0 9)) (= x@0 42)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (= x@0 0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false))))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= x@0 0))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= inline$AtomicSplitLow$0$xls1@0 xls1) (= inline$AtomicSplitLow$0$xls2@0 xls2)))) (=> (=> false (and (= inline$AtomicSplitLow$0$xls1@0 xls1) (= inline$AtomicSplitLow$0$xls2@0 xls2))) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (and (= inline$AtomicSplitLow$0$xls1@0 xls1) (= inline$AtomicSplitLow$0$xls2@0 xls2)) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicSplitLow$0$anon0_correct  (=> (and (and (= xls ((_ map or) inline$AtomicSplitLow$0$xls1@0 inline$AtomicSplitLow$0$xls2@0)) (= ((_ map and) inline$AtomicSplitLow$0$xls1@0 inline$AtomicSplitLow$0$xls2@0) ((as const (Array T@X Bool)) false))) (and (not (= inline$AtomicSplitLow$0$xls1@0 ((as const (Array T@X Bool)) false))) (not (= inline$AtomicSplitLow$0$xls2@0 ((as const (Array T@X Bool)) false))))) (and (and (and (and (=> (= (ControlFlow 0 14) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct)) (=> (= (ControlFlow 0 14) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)) (=> (= (ControlFlow 0 14) 13) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array T@X Bool)) false))) (= Civl_linear_x_available@0 ((_ map or) xls ((as const (Array T@X Bool)) false)))) (= (ControlFlow 0 15) 14)) inline$AtomicSplitLow$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocateLow$0$xls@0 () T@X)
(declare-fun nil () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@0 () (Array T@X Bool))
(declare-fun x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 () (Array T@X Bool))
(declare-fun xls () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun unallocated@1 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Allocate_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (not (= inline$AtomicAllocateLow$0$xls@0 nil)))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
))) (and (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (= x@0 42))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true))) (=> (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (=> (= (ControlFlow 0 10) (- 0 9)) (= x@0 42)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (= x@0 0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false))))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= x@0 0))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= inline$AtomicAllocateLow$0$xls@0 xls))) (=> (=> false (= inline$AtomicAllocateLow$0$xls@0 xls)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= inline$AtomicAllocateLow$0$xls@0 xls) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$xls@0 nil)) (select unallocated@0 inline$AtomicAllocateLow$0$xls@0)) (= unallocated@1 (store unallocated@0 inline$AtomicAllocateLow$0$xls@0 false))) (and (and (and (and (=> (= (ControlFlow 0 14) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct)) (=> (= (ControlFlow 0 14) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)) (=> (= (ControlFlow 0 14) 13) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array T@X Bool)) false))) (= Civl_linear_x_available@0 ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 15) 14)) inline$AtomicAllocateLow$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-fun Civl_pc@5 () Bool)
(declare-fun Civl_pc@7 () Bool)
(declare-fun Civl_ok@6 () Bool)
(declare-fun Civl_ok@5 () Bool)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 () T@X)
(declare-fun Civl_linear_tid_available@7 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@7 () (Array T@X Bool))
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@7 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 () (Array T@X Bool))
(declare-fun nil () T@X)
(declare-fun x@6 () Int)
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@6 () (Array T@X Bool))
(declare-fun Civl_pc@4 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun |tidls'| () T@X)
(declare-fun call3formal@Civl_0_xls@0 () T@X)
(declare-fun unallocated@6 () (Array T@X Bool))
(declare-fun call5formal@Civl_0_xls2@0 () (Array T@X Bool))
(declare-fun x@5 () Int)
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@5 () (Array T@X Bool))
(declare-fun x@4 () Int)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@4 () (Array T@X Bool))
(declare-fun x@3 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@3 () (Array T@X Bool))
(declare-fun x@2 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@2 () (Array T@X Bool))
(declare-fun x@1 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@1 () (Array T@X Bool))
(declare-fun x@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@6 () Bool)
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun unallocated@5 () (Array T@X Bool))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun call3formal@Civl_0_xls@0@@0 () T@X)
(declare-fun unallocated@4 () (Array T@X Bool))
(declare-fun call4formal@Civl_0_xls1@0 () (Array T@X Bool))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun unallocated@3 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun |xls'| () (Array T@X Bool))
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 39) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) true) (and (=> (= (ControlFlow 0 24) (- 0 25)) (=> Civl_pc@5 true)) (=> (=> Civl_pc@5 true) (=> (and (and (= Civl_pc@7  (=> true Civl_pc@5)) (= Civl_ok@6  (or true Civl_ok@5))) (= (ControlFlow 0 24) (- 0 23))) Civl_ok@6))))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
))) (and (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (= Civl_global_old_x@0 42))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true))) (=> (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (=> (= (ControlFlow 0 10) (- 0 9)) (= x@7 42)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (= Civl_global_old_x@0 0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false))))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= x@7 0))))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 x@6) (= Civl_global_old_x@0 x@6)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@6) (= Civl_linear_x_available@7 Civl_linear_x_available@6))) (and (and (=> (= (ControlFlow 0 27) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 27) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 27) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@5  (=> true Civl_pc@4)) (= Civl_ok@5  (or true Civl_ok@4))) (=> (and (and (or Civl_pc@5 true) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@6 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
))) (and (= Civl_linear_tid_available@6 ((_ map or) unallocated@6 ((_ map or) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0 true) ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false))))) (= Civl_linear_x_available@6 ((_ map or) call5formal@Civl_0_xls2@0 ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (and (not (= call3formal@Civl_0_xls@0 nil)) (not (= call5formal@Civl_0_xls2@0 ((as const (Array T@X Bool)) false))))) (=> (and (not (= call3formal@Civl_0_xls@0 nil)) (not (= call5formal@Civl_0_xls2@0 ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 28) 24) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 28) 27) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 x@5) (= Civl_global_old_x@0 x@5)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@5) (= Civl_linear_x_available@7 Civl_linear_x_available@5))) (and (and (=> (= (ControlFlow 0 21) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 21) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0_2_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 x@4) (= Civl_global_old_x@0 x@4)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@4) (= Civl_linear_x_available@7 Civl_linear_x_available@4))) (and (and (=> (= (ControlFlow 0 19) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 19) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0_3_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 x@3) (= Civl_global_old_x@0 x@3)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@3) (= Civl_linear_x_available@7 Civl_linear_x_available@3))) (and (and (=> (= (ControlFlow 0 17) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 17) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0_4_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 x@2) (= Civl_global_old_x@0 x@2)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@2) (= Civl_linear_x_available@7 Civl_linear_x_available@2))) (and (and (=> (= (ControlFlow 0 15) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 15) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0_5_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 x@1) (= Civl_global_old_x@0 x@1)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@1) (= Civl_linear_x_available@7 Civl_linear_x_available@1))) (and (and (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 13) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@7 42) (= Civl_global_old_x@0 x@0)) (and (= Civl_linear_tid_available@7 Civl_linear_tid_available@0) (= Civl_linear_x_available@7 Civl_linear_x_available@0))) (and (and (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@6 true)))))
(let ((anon0_1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@6 Civl_pc@4) (= (ControlFlow 0 22) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_1_correct  (=> (and (and (and (= Civl_pc@4  (=> true Civl_pc@3)) (= Civl_ok@4  (or true Civl_ok@3))) (and (not (= call3formal@Civl_0_xls@0 nil)) (or Civl_pc@4 true))) (and (and (= Civl_linear_tid_available@5 ((_ map or) unallocated@5 ((_ map or) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0 true) ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false))))) (= Civl_linear_x_available@5 ((_ map or) call5formal@Civl_0_xls2@0 ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@5 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)))) (and (and (=> (= (ControlFlow 0 30) 28) anon0_0_correct) (=> (= (ControlFlow 0 30) 21) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 22) anon0_1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_2_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@6 Civl_pc@3) (= (ControlFlow 0 20) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_2_correct  (=> (and (and (and (= Civl_pc@3  (=> true Civl_pc@2)) (= Civl_ok@3  (or true Civl_ok@2))) (or Civl_pc@3 true)) (and (and (exists ((Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@4 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (exists ((Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) call4formal@Civl_0_xls1@0 ((_ map (= (Int Int) Bool)) Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) call5formal@Civl_0_xls2@0 ((_ map (= (Int Int) Bool)) Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
))) (and (= Civl_linear_tid_available@4 ((_ map or) unallocated@4 ((_ map or) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0@@0 true) ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false))))) (= Civl_linear_x_available@4 ((_ map or) call5formal@Civl_0_xls2@0 ((_ map or) call4formal@Civl_0_xls1@0 ((as const (Array T@X Bool)) false))))))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (not (= call3formal@Civl_0_xls@0@@0 nil)) (not (= call4formal@Civl_0_xls1@0 ((as const (Array T@X Bool)) false))))) (=> (and (not (= call3formal@Civl_0_xls@0@@0 nil)) (not (= call4formal@Civl_0_xls1@0 ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 31) 30) anon0_1_correct) (=> (= (ControlFlow 0 31) 19) anon0_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 31) 20) anon0_2_@2_Civl_RefinementChecker_correct)))))))
(let ((anon0_3_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@6 Civl_pc@2) (= (ControlFlow 0 18) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_3_correct  (=> (and (and (and (= Civl_pc@2  (=> true Civl_pc@1)) (= Civl_ok@2  (or true Civl_ok@1))) (and (not (= call3formal@Civl_0_xls@0@@0 nil)) (or Civl_pc@2 true))) (and (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@3 ((_ map or) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0@@0 true) ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false))))) (= Civl_linear_x_available@3 ((_ map or) call5formal@Civl_0_xls2@0 ((_ map or) call4formal@Civl_0_xls1@0 ((as const (Array T@X Bool)) false))))) (and (exists ((Civl_partition_tid@@2 (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call3formal@Civl_0_xls@0@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@3 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (exists ((Civl_partition_x@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) call4formal@Civl_0_xls1@0 ((_ map (= (Int Int) Bool)) Civl_partition_x@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) call5formal@Civl_0_xls2@0 ((_ map (= (Int Int) Bool)) Civl_partition_x@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
))))) (and (and (=> (= (ControlFlow 0 33) 31) anon0_2_correct) (=> (= (ControlFlow 0 33) 17) anon0_3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 33) 18) anon0_3_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_4_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@6 Civl_pc@1) (= (ControlFlow 0 16) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_4_correct  (=> (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (=> (and (and (and (and (= |xls'| ((_ map or) call4formal@Civl_0_xls1@0 call5formal@Civl_0_xls2@0)) (not (= call4formal@Civl_0_xls1@0 ((as const (Array T@X Bool)) false)))) (not (= call5formal@Civl_0_xls2@0 ((as const (Array T@X Bool)) false)))) (or Civl_pc@1 true)) (and (and (= Civl_linear_tid_available@2 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false)))) (= Civl_linear_x_available@2 ((_ map or) call5formal@Civl_0_xls2@0 ((_ map or) call4formal@Civl_0_xls1@0 ((as const (Array T@X Bool)) false))))) (and (exists ((Civl_partition_tid@@3 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (exists ((Civl_partition_x@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) call4formal@Civl_0_xls1@0 ((_ map (= (Int Int) Bool)) Civl_partition_x@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) call5formal@Civl_0_xls2@0 ((_ map (= (Int Int) Bool)) Civl_partition_x@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
))))) (and (and (=> (= (ControlFlow 0 34) 33) anon0_3_correct) (=> (= (ControlFlow 0 34) 15) anon0_4_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 16) anon0_4_@2_Civl_RefinementChecker_correct))))))
(let ((anon0_5_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@6 Civl_pc@0) (= (ControlFlow 0 14) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_5_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (= |xls'| ((as const (Array T@X Bool)) true))) (=> (= |xls'| ((as const (Array T@X Bool)) true)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (= 42 42)) (=> (= 42 42) (=> (and (or Civl_pc@0 true) (exists ((Civl_partition_tid@@4 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@4 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@4 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
))) (=> (and (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false)))) (= Civl_linear_x_available@1 ((_ map or) |xls'| ((as const (Array T@X Bool)) false)))) (and (= |xls'| ((as const (Array T@X Bool)) true)) (= x@1 42))) (and (and (=> (= (ControlFlow 0 35) 34) anon0_4_correct) (=> (= (ControlFlow 0 35) 13) anon0_5_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 35) 14) anon0_5_@2_Civl_RefinementChecker_correct)))))))))))
(let ((anon0$1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@6 false) (= (ControlFlow 0 4) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@5 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@5 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@5 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (not (= |tidls'| nil)) (= |xls'| ((as const (Array T@X Bool)) true))) (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false)))) (= Civl_linear_x_available@0 ((_ map or) |xls'| ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 38) 35) anon0_5_correct) (=> (= (ControlFlow 0 38) 12) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 38) 4) anon0$1_@2_Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= |tidls'| nil)) (= |xls'| ((as const (Array T@X Bool)) true))) (= (ControlFlow 0 39) 38)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
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
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@3 () (Array T@X Bool))
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@3 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 () (Array T@X Bool))
(declare-fun nil () T@X)
(declare-fun x@2 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@2 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun |tidls'| () T@X)
(declare-fun |xls'| () (Array T@X Bool))
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun x@1 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@1 () (Array T@X Bool))
(declare-fun x@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_linear_x_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@2 () Bool)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun l@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_thread_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 16) (- 0 18)) true) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> Civl_pc@1 true)) (=> (=> Civl_pc@1 true) (=> (and (and (= Civl_pc@3  (=> true Civl_pc@1)) (= Civl_ok@2  (or true Civl_ok@1))) (= (ControlFlow 0 16) (- 0 15))) Civl_ok@2))))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
))) (and (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (= Civl_global_old_x@0 42))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true))) (=> (= inline$Civl_NoninterferenceChecker_impl_main_1$0$xls@0 ((as const (Array T@X Bool)) true)) (=> (= (ControlFlow 0 10) (- 0 9)) (= x@3 42)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_x_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_thread_1$0$Civl_partition_x ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (= Civl_global_old_x@0 0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false))))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$tidls@0 nil)) (not (= inline$Civl_NoninterferenceChecker_impl_thread_1$0$xls@0 ((as const (Array T@X Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= x@3 0))))))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@3 x@2) (= Civl_global_old_x@0 x@2)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@2) (= Civl_linear_x_available@3 Civl_linear_x_available@2))) (and (and (=> (= (ControlFlow 0 19) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 19) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false))))) (=> (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= 0 0)) (=> (= 0 0) (=> (and (and (and (or Civl_pc@1 true) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
))) (and (= Civl_linear_tid_available@2 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false)))) (= Civl_linear_x_available@2 ((_ map or) |xls'| ((as const (Array T@X Bool)) false))))) (and (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false)))) (= x@2 0))) (and (=> (= (ControlFlow 0 20) 16) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 19) anon0_0$1_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon0_1$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@3 0) (= Civl_global_old_x@0 x@1)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@1) (= Civl_linear_x_available@3 Civl_linear_x_available@1))) (and (and (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 13) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@3 x@0) (= Civl_global_old_x@0 x@0)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@0) (= Civl_linear_x_available@3 Civl_linear_x_available@0))) (and (and (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_impl_thread_1$0$L0_correct) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) inline$Civl_NoninterferenceChecker_impl_main_1$0$L0_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@2 true)))))
(let ((anon0_1$1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@2 Civl_pc@0) (= (ControlFlow 0 14) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_1_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false))))) (=> (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false)))) (=> (and (or Civl_pc@0 true) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
))) (=> (and (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false)))) (= Civl_linear_x_available@1 ((_ map or) |xls'| ((as const (Array T@X Bool)) false)))) (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 23) 20) anon0_0_correct) (=> (= (ControlFlow 0 23) 13) anon0_1$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 14) anon0_1$1_@2_Civl_RefinementChecker_correct)))))))))
(let ((anon0$1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@2 false) (= (ControlFlow 0 4) 2)) Civl_RefinementChecker_correct)))
(let ((inline$AtomicLock$0$anon0_correct  (=> (= l@0 nil) (and (and (=> (= (ControlFlow 0 25) 23) anon0_1_correct) (=> (= (ControlFlow 0 25) 12) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 25) 4) anon0$1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false)))) (=> (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) |tidls'| true) ((as const (Array T@X Bool)) false)))) (= Civl_linear_x_available@0 ((_ map or) |xls'| ((as const (Array T@X Bool)) false)))) (= (ControlFlow 0 26) 25)) inline$AtomicLock$0$anon0_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= |tidls'| nil)) (not (= |xls'| ((as const (Array T@X Bool)) false)))) (= (ControlFlow 0 27) 26)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-sort T@X 0)
(declare-fun inline$AtomicSplitLow$0$xls1@0 () (Array T@X Bool))
(declare-fun inline$AtomicSplitLow$0$xls2@0 () (Array T@X Bool))
(declare-fun xls () (Array T@X Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSplitLow)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicSplitLow$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) inline$AtomicSplitLow$0$xls1@0 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) inline$AtomicSplitLow$0$xls2@0 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((_ map (ite (Bool Int Int) Int)) xls ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicSplitLow$0$anon0_correct  (=> (= xls ((_ map or) inline$AtomicSplitLow$0$xls1@0 inline$AtomicSplitLow$0$xls2@0)) (=> (and (and (= ((_ map and) inline$AtomicSplitLow$0$xls1@0 inline$AtomicSplitLow$0$xls2@0) ((as const (Array T@X Bool)) false)) (not (= inline$AtomicSplitLow$0$xls1@0 ((as const (Array T@X Bool)) false)))) (and (not (= inline$AtomicSplitLow$0$xls2@0 ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 3) 2))) inline$AtomicSplitLow$0$Return_correct))))
(let ((inline$AtomicSplitLow$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicSplitLow$0$anon0_correct)))
inline$AtomicSplitLow$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocateLow$0$xls@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun unallocated () (Array T@X Bool))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocateLow)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocateLow$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocateLow$0$xls@0 true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$xls@0 nil)) (select unallocated inline$AtomicAllocateLow$0$xls@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocateLow$0$xls@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocateLow$0$Return_correct)))
(let ((inline$AtomicAllocateLow$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocateLow$0$anon0_correct)))
inline$AtomicAllocateLow$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
