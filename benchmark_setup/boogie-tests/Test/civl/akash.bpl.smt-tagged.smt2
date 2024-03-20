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
(declare-fun inline$AtomicAllocateLow$0$xls@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@0 () (Array Int Bool))
(declare-fun h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@0 () (Array Int Bool))
(declare-fun g@0 () Int)
(declare-fun xl () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun unallocated@1 () (Array Int Bool))
(set-info :boogie-vc-id Civl_Allocate_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (not (= inline$AtomicAllocateLow$0$xls@0 0)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (= h@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 8) (- 0 7))) (and (= h@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_1_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (and (and (= g@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 6) (- 0 5))) (and (= g@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= inline$AtomicAllocateLow$0$xls@0 xl))) (=> (=> false (= inline$AtomicAllocateLow$0$xls@0 xl)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= inline$AtomicAllocateLow$0$xls@0 xl) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (not (= inline$AtomicAllocateLow$0$xls@0 0)) (=> (and (select unallocated@0 inline$AtomicAllocateLow$0$xls@0) (= unallocated@1 (store unallocated@0 inline$AtomicAllocateLow$0$xls@0 false))) (and (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 12) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 11) GeneratedUnifiedExit_correct))))))
(let ((anon0_correct  (=> (and (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array Int Bool)) false))) (= Civl_linear_1_available@0 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@0 ((as const (Array Int Bool)) false))) (= (ControlFlow 0 13) 12)) inline$AtomicAllocateLow$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
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
(declare-fun Civl_pc@6 () Bool)
(declare-fun tid_in () Int)
(declare-fun Civl_pc@8 () Bool)
(declare-fun Civl_ok@7 () Bool)
(declare-fun Civl_ok@6 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 () Int)
(declare-fun Civl_linear_tid_available@8 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@8 () (Array Int Bool))
(declare-fun Civl_global_old_h@0 () Int)
(declare-fun h@8 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@8 () (Array Int Bool))
(declare-fun Civl_global_old_g@0 () Int)
(declare-fun g@8 () Int)
(declare-fun g@7 () Int)
(declare-fun h@7 () Int)
(declare-fun Civl_linear_tid_available@7 () (Array Int Bool))
(declare-fun Civl_linear_1_available@7 () (Array Int Bool))
(declare-fun Civl_linear_2_available@7 () (Array Int Bool))
(declare-fun Civl_pc@5 () Bool)
(declare-fun Civl_ok@5 () Bool)
(declare-fun call3formal@Civl_0_xl@0 () Int)
(declare-fun unallocated@7 () (Array Int Bool))
(declare-fun y () (Array Int Bool))
(declare-fun g@6 () Int)
(declare-fun h@6 () Int)
(declare-fun Civl_linear_tid_available@6 () (Array Int Bool))
(declare-fun Civl_linear_1_available@6 () (Array Int Bool))
(declare-fun Civl_linear_2_available@6 () (Array Int Bool))
(declare-fun g@5 () Int)
(declare-fun h@5 () Int)
(declare-fun Civl_linear_tid_available@5 () (Array Int Bool))
(declare-fun Civl_linear_1_available@5 () (Array Int Bool))
(declare-fun Civl_linear_2_available@5 () (Array Int Bool))
(declare-fun g@4 () Int)
(declare-fun h@4 () Int)
(declare-fun Civl_linear_tid_available@4 () (Array Int Bool))
(declare-fun Civl_linear_1_available@4 () (Array Int Bool))
(declare-fun Civl_linear_2_available@4 () (Array Int Bool))
(declare-fun g@3 () Int)
(declare-fun h@3 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun Civl_linear_1_available@3 () (Array Int Bool))
(declare-fun Civl_linear_2_available@3 () (Array Int Bool))
(declare-fun g@2 () Int)
(declare-fun h@2 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun Civl_linear_1_available@2 () (Array Int Bool))
(declare-fun Civl_linear_2_available@2 () (Array Int Bool))
(declare-fun g@1 () Int)
(declare-fun h@1 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun Civl_linear_1_available@1 () (Array Int Bool))
(declare-fun Civl_linear_2_available@1 () (Array Int Bool))
(declare-fun h@0 () Int)
(declare-fun g@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@0 () (Array Int Bool))
(declare-fun Civl_pc@7 () Bool)
(declare-fun Civl_old_tid_out@0 () Int)
(declare-fun Civl_pc@4 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun unallocated@6 () (Array Int Bool))
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun unallocated@5 () (Array Int Bool))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun unallocated@4 () (Array Int Bool))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun call3formal@Civl_0_xl@0@@0 () Int)
(declare-fun unallocated@3 () (Array Int Bool))
(declare-fun x@@0 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated@2 () (Array Int Bool))
(declare-fun tid_out () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_A_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 40) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) true) (and (=> (= (ControlFlow 0 24) (- 0 25)) (=> Civl_pc@6 (= tid_in tid_in))) (=> (=> Civl_pc@6 (= tid_in tid_in)) (=> (and (and (= Civl_pc@8  (=> true Civl_pc@6)) (= Civl_ok@7  (or true (and (= tid_in tid_in) Civl_ok@6)))) (= (ControlFlow 0 24) (- 0 23))) Civl_ok@7))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (= Civl_global_old_h@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 8) (- 0 7))) (and (= h@8 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_1_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (and (and (= Civl_global_old_g@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 6) (- 0 5))) (and (= g@8 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@7) (=> (and (= h@8 h@7) (= Civl_global_old_g@0 g@7)) (=> (and (and (= Civl_global_old_h@0 h@7) (= Civl_linear_tid_available@8 Civl_linear_tid_available@7)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@7) (= Civl_linear_2_available@8 Civl_linear_2_available@7))) (and (and (=> (= (ControlFlow 0 27) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 27) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 27) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@6  (=> true Civl_pc@5)) (= Civl_ok@6  (or true (and (= tid_in tid_in) Civl_ok@5)))) (and (not (= call3formal@Civl_0_xl@0 0)) (or Civl_pc@6 true))) (=> (and (and (and (= Civl_linear_tid_available@7 ((_ map or) unallocated@7 ((_ map or) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_xl@0 true) ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false))))) (= Civl_linear_1_available@7 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@7 ((_ map or) y ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_xl@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) unallocated@7 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (not (= y ((as const (Array Int Bool)) false)))) (=> (not (= y ((as const (Array Int Bool)) false))) (and (=> (= (ControlFlow 0 28) 24) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 28) 27) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@6) (=> (and (= h@8 h@6) (= Civl_global_old_g@0 g@6)) (=> (and (and (= Civl_global_old_h@0 h@6) (= Civl_linear_tid_available@8 Civl_linear_tid_available@6)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@6) (= Civl_linear_2_available@8 Civl_linear_2_available@6))) (and (and (=> (= (ControlFlow 0 21) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 21) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 21) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_2_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@5) (=> (and (= h@8 h@5) (= Civl_global_old_g@0 g@5)) (=> (and (and (= Civl_global_old_h@0 h@5) (= Civl_linear_tid_available@8 Civl_linear_tid_available@5)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@5) (= Civl_linear_2_available@8 Civl_linear_2_available@5))) (and (and (=> (= (ControlFlow 0 19) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 19) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 19) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_3$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@4) (=> (and (= h@8 0) (= Civl_global_old_g@0 g@4)) (=> (and (and (= Civl_global_old_h@0 h@4) (= Civl_linear_tid_available@8 Civl_linear_tid_available@4)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@4) (= Civl_linear_2_available@8 Civl_linear_2_available@4))) (and (and (=> (= (ControlFlow 0 17) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 17) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 17) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_4_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@3) (=> (and (= h@8 h@3) (= Civl_global_old_g@0 g@3)) (=> (and (and (= Civl_global_old_h@0 h@3) (= Civl_linear_tid_available@8 Civl_linear_tid_available@3)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@3) (= Civl_linear_2_available@8 Civl_linear_2_available@3))) (and (and (=> (= (ControlFlow 0 15) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 15) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_5_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@2) (=> (and (= h@8 h@2) (= Civl_global_old_g@0 g@2)) (=> (and (and (= Civl_global_old_h@0 h@2) (= Civl_linear_tid_available@8 Civl_linear_tid_available@2)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@2) (= Civl_linear_2_available@8 Civl_linear_2_available@2))) (and (and (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 13) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 13) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_6_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 g@1) (=> (and (= h@8 h@1) (= Civl_global_old_g@0 g@1)) (=> (and (and (= Civl_global_old_h@0 h@1) (= Civl_linear_tid_available@8 Civl_linear_tid_available@1)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@1) (= Civl_linear_2_available@8 Civl_linear_2_available@1))) (and (and (=> (= (ControlFlow 0 11) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 11) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 11) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@8 0) (=> (and (= h@8 h@0) (= Civl_global_old_g@0 g@0)) (=> (and (and (= Civl_global_old_h@0 h@0) (= Civl_linear_tid_available@8 Civl_linear_tid_available@0)) (and (= Civl_linear_1_available@8 Civl_linear_1_available@0) (= Civl_linear_2_available@8 Civl_linear_2_available@0))) (and (and (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 10) 8) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 10) 9) Civl_NoninterferenceChecker$1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@7 (= tid_in Civl_old_tid_out@0))))))
(let ((anon0_1_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 Civl_pc@5) (=> (and (= Civl_old_tid_out@0 tid_in) (= (ControlFlow 0 22) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_1_correct  (=> (and (and (and (= Civl_pc@5  (=> true Civl_pc@4)) (= Civl_ok@5  (or true (and (= tid_in tid_in) Civl_ok@4)))) (and (or Civl_pc@5 true) (exists ((Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@6 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)))) (and (and (= Civl_linear_tid_available@6 ((_ map or) unallocated@6 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@6 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@6 ((_ map or) y ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 30) 28) anon0_0_correct) (=> (= (ControlFlow 0 30) 21) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 22) anon0_1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_2_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 Civl_pc@4) (=> (and (= Civl_old_tid_out@0 tid_in) (= (ControlFlow 0 20) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_2_correct  (=> (and (= Civl_pc@4  (=> true Civl_pc@3)) (= Civl_ok@4  (or true (and (= tid_in tid_in) Civl_ok@3)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (= 0 0) (= y ((as const (Array Int Bool)) true)))) (=> (and (= 0 0) (= y ((as const (Array Int Bool)) true))) (=> (and (or Civl_pc@4 true) (exists ((Civl_partition_tid@@1 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@5 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
))) (=> (and (and (and (= Civl_linear_tid_available@5 ((_ map or) unallocated@5 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@5 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@5 ((_ map or) y ((as const (Array Int Bool)) false)))) (and (= h@5 0) (= y ((as const (Array Int Bool)) true)))) (and (and (=> (= (ControlFlow 0 31) 30) anon0_1_correct) (=> (= (ControlFlow 0 31) 19) anon0_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 31) 20) anon0_2_@2_Civl_RefinementChecker_correct)))))))))
(let ((anon0_3$1_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 Civl_pc@3) (=> (and (= Civl_old_tid_out@0 tid_in) (= (ControlFlow 0 18) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_3_correct  (=> (and (and (and (= Civl_pc@3  (=> true Civl_pc@2)) (= Civl_ok@3  (or true (and (= tid_in tid_in) Civl_ok@2)))) (and (or Civl_pc@3 true) (exists ((Civl_partition_tid@@2 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@4 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)))) (and (and (= Civl_linear_tid_available@4 ((_ map or) unallocated@4 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@4 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@4 ((_ map or) y ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 33) 31) anon0_2_correct) (=> (= (ControlFlow 0 33) 17) anon0_3$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 33) 18) anon0_3$1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_4_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 Civl_pc@2) (=> (and (= Civl_old_tid_out@0 tid_in) (= (ControlFlow 0 16) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_4_correct  (=> (and (and (= Civl_pc@2  (=> true Civl_pc@1)) (= Civl_ok@2  (or true (and (= tid_in tid_in) Civl_ok@1)))) (and (not (= call3formal@Civl_0_xl@0@@0 0)) (or Civl_pc@2 true))) (=> (and (and (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@3 ((_ map or) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_xl@0@@0 true) ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false))))) (= Civl_linear_1_available@3 ((_ map or) x@@0 ((as const (Array Int Bool)) false)))) (= Civl_linear_2_available@3 ((_ map or) y ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid@@3 (Array Int Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_xl@0@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) unallocated@3 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (not (= x@@0 ((as const (Array Int Bool)) false)))) (=> (not (= x@@0 ((as const (Array Int Bool)) false))) (and (and (=> (= (ControlFlow 0 34) 33) anon0_3_correct) (=> (= (ControlFlow 0 34) 15) anon0_4_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 16) anon0_4_@2_Civl_RefinementChecker_correct))))))))
(let ((anon0_5_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 Civl_pc@1) (=> (and (= Civl_old_tid_out@0 tid_in) (= (ControlFlow 0 14) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_5_correct  (=> (and (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true (and (= tid_in tid_in) Civl_ok@0)))) (and (or Civl_pc@1 true) (exists ((Civl_partition_tid@@4 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@4 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@4 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |33|
)))) (and (and (= Civl_linear_tid_available@2 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@2 ((_ map or) x@@0 ((as const (Array Int Bool)) false)))) (= Civl_linear_2_available@2 ((_ map or) y ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 36) 34) anon0_4_correct) (=> (= (ControlFlow 0 36) 13) anon0_5_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 36) 14) anon0_5_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_6_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 Civl_pc@0) (=> (and (= Civl_old_tid_out@0 tid_in) (= (ControlFlow 0 12) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_6_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= tid_in tid_out) false)))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (and (= 0 0) (= x@@0 ((as const (Array Int Bool)) true)))) (=> (and (= 0 0) (= x@@0 ((as const (Array Int Bool)) true))) (=> (and (or Civl_pc@0 true) (exists ((Civl_partition_tid@@5 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@5 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@5 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |32|
))) (=> (and (and (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@1 ((_ map or) x@@0 ((as const (Array Int Bool)) false)))) (= Civl_linear_2_available@1 ((_ map or) y ((as const (Array Int Bool)) false)))) (and (= g@1 0) (= x@@0 ((as const (Array Int Bool)) true)))) (and (and (=> (= (ControlFlow 0 37) 36) anon0_5_correct) (=> (= (ControlFlow 0 37) 11) anon0_6_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 37) 12) anon0_6_@2_Civl_RefinementChecker_correct)))))))))
(let ((anon0$1_@2_Civl_RefinementChecker_correct  (=> (= Civl_pc@7 false) (=> (and (= Civl_old_tid_out@0 tid_out) (= (ControlFlow 0 4) 2)) Civl_RefinementChecker_correct))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@6 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@6 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@6 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (= x@@0 ((as const (Array Int Bool)) true)) (= y ((as const (Array Int Bool)) true))) (=> (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@0 ((_ map or) x@@0 ((as const (Array Int Bool)) false)))) (= Civl_linear_2_available@0 ((_ map or) y ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 39) 37) anon0_6_correct) (=> (= (ControlFlow 0 39) 10) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 39) 4) anon0$1_@2_Civl_RefinementChecker_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= x@@0 ((as const (Array Int Bool)) true)) (=> (and (= y ((as const (Array Int Bool)) true)) (= (ControlFlow 0 40) 39)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
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
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_h@0 () Int)
(declare-fun h@2 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_g@0 () Int)
(declare-fun g@2 () Int)
(declare-fun h@1 () Int)
(declare-fun g@1 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun Civl_linear_1_available@1 () (Array Int Bool))
(declare-fun Civl_linear_2_available@1 () (Array Int Bool))
(declare-fun tid_in () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun x_in () (Array Int Bool))
(declare-fun h@0 () Int)
(declare-fun g@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@0 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_B_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) true) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (= Civl_global_old_h@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 7) (- 0 6))) (and (= h@2 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_1_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (and (and (= Civl_global_old_g@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 5) (- 0 4))) (and (= g@2 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))))))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@2 2) (=> (and (= h@2 h@1) (= Civl_global_old_g@0 g@1)) (=> (and (and (= Civl_global_old_h@0 h@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (= Civl_linear_1_available@2 Civl_linear_1_available@1) (= Civl_linear_2_available@2 Civl_linear_2_available@1))) (and (and (=> (= (ControlFlow 0 14) 5) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 14) 7) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 14) 8) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_0_correct  (=> (and (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (or Civl_pc@0 true) (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |37|
)))) (and (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@1 ((_ map or) x_in ((as const (Array Int Bool)) false)))) (= Civl_linear_2_available@1 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 15) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 14) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@2 1) (=> (and (= h@2 h@0) (= Civl_global_old_g@0 g@0)) (=> (and (and (= Civl_global_old_h@0 h@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)) (and (= Civl_linear_1_available@2 Civl_linear_1_available@0) (= Civl_linear_2_available@2 Civl_linear_2_available@0))) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 9) 7) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 9) 8) Civl_NoninterferenceChecker$1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (not (= x_in ((as const (Array Int Bool)) false)))) (=> (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@0 ((_ map or) x_in ((as const (Array Int Bool)) false)))) (= Civl_linear_2_available@0 ((as const (Array Int Bool)) false))) (and (and (=> (= (ControlFlow 0 16) 15) anon0_0_correct) (=> (= (ControlFlow 0 16) 9) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 16) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= x_in ((as const (Array Int Bool)) false))) (= (ControlFlow 0 17) 16)) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_h@0 () Int)
(declare-fun h@2 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_g@0 () Int)
(declare-fun g@2 () Int)
(declare-fun g@1 () Int)
(declare-fun h@1 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun Civl_linear_1_available@1 () (Array Int Bool))
(declare-fun Civl_linear_2_available@1 () (Array Int Bool))
(declare-fun tid_in () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun y_in () (Array Int Bool))
(declare-fun g@0 () Int)
(declare-fun h@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun Civl_linear_1_available@0 () (Array Int Bool))
(declare-fun Civl_linear_2_available@0 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_C_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) true) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (and (and (= Civl_global_old_h@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 7) (- 0 6))) (and (= h@2 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((as const (Array Int Bool)) true)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_A_1$0$tid_out@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_1_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (exists ((inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_A_1$0$y@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_2_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_A_1$0$Civl_partition_2@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (and (and (= Civl_global_old_g@0 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))) (= (ControlFlow 0 5) (- 0 4))) (and (= g@2 0) (= inline$Civl_NoninterferenceChecker_impl_A_1$0$x@0 ((as const (Array Int Bool)) true))))))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@2 g@1) (=> (and (= h@2 2) (= Civl_global_old_g@0 g@1)) (=> (and (and (= Civl_global_old_h@0 h@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (= Civl_linear_1_available@2 Civl_linear_1_available@1) (= Civl_linear_2_available@2 Civl_linear_2_available@1))) (and (and (=> (= (ControlFlow 0 14) 5) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 14) 7) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 14) 8) Civl_NoninterferenceChecker$1_correct)))))))
(let ((anon0_0_correct  (=> (and (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (or Civl_pc@0 true) (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |38|
)))) (and (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@1 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@1 ((_ map or) y_in ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 15) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 14) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@2 g@0) (=> (and (= h@2 1) (= Civl_global_old_g@0 g@0)) (=> (and (and (= Civl_global_old_h@0 h@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)) (and (= Civl_linear_1_available@2 Civl_linear_1_available@0) (= Civl_linear_2_available@2 Civl_linear_2_available@0))) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_impl_A_1$0$L0_correct) (=> (= (ControlFlow 0 9) 7) inline$Civl_NoninterferenceChecker_impl_A_1$0$L1_correct)) (=> (= (ControlFlow 0 9) 8) Civl_NoninterferenceChecker$1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid_in true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
)) (not (= y_in ((as const (Array Int Bool)) false)))) (=> (and (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid_in true) ((as const (Array Int Bool)) false)))) (= Civl_linear_1_available@0 ((as const (Array Int Bool)) false))) (= Civl_linear_2_available@0 ((_ map or) y_in ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 16) 15) anon0_0_correct) (=> (= (ControlFlow 0 16) 9) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 16) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= y_in ((as const (Array Int Bool)) false))) (= (ControlFlow 0 17) 16)) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicAllocateLow$0$xls@0 () Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocateLow)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocateLow$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) inline$AtomicAllocateLow$0$xls@0 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$xls@0 0)) (select unallocated inline$AtomicAllocateLow$0$xls@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocateLow$0$xls@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocateLow$0$Return_correct)))
(let ((inline$AtomicAllocateLow$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocateLow$0$anon0_correct)))
inline$AtomicAllocateLow$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
