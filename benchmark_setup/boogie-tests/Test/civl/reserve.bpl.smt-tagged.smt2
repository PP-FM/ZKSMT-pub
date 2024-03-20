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
(declare-datatypes ((T@Bijection 0)) (((Bijection (|domain#Bijection| (Array Int Bool)) (|range#Bijection| (Array Int Bool)) (|tidToPtr#Bijection| (Array Int Int)) (|ptrToTid#Bijection| (Array Int Int)) ) ) ))
(declare-fun memLo () Int)
(declare-fun memHi () Int)
(declare-fun Identity () (Array Int Int))
(assert (< 0 memLo))
(assert (<= memLo memHi))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |3|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun freeSpace@4 () Int)
(declare-fun allocMap@4 () T@Bijection)
(declare-fun isFree@5 () (Array Int Bool))
(declare-fun Size_81 ((Array Int Bool)) Int)
(declare-fun freeSpace@2 () Int)
(declare-fun isFree@3 () (Array Int Bool))
(declare-fun allocMap@2 () T@Bijection)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i@1 () Int)
(declare-fun tid () Int)
(declare-fun i@0 () Int)
(declare-fun Civl_global_old_freeSpace@1 () Int)
(declare-fun Civl_global_old_allocMap@1 () T@Bijection)
(declare-fun Civl_global_old_isFree@1 () (Array Int Bool))
(declare-fun freeSpace@3 () Int)
(declare-fun allocMap@3 () T@Bijection)
(declare-fun isFree@4 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0 () Int)
(declare-fun isFree@1 () (Array Int Bool))
(declare-fun allocMap@1 () T@Bijection)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$atomic_AllocIfPtrFree$0$spaceFound@2 () Bool)
(declare-fun call0formal@X@0 () (Array Int Bool))
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@4| () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4| () T@Bijection)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@5| () T@Bijection)
(declare-fun isFree@2 () (Array Int Bool))
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@3| () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3| () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@3| () T@Bijection)
(declare-fun |Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap'| (T@Bijection) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@1| () T@Bijection)
(declare-fun Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr (Int) Bool)
(declare-fun inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr@1 () Int)
(declare-fun Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid (Int) Bool)
(declare-fun inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid@1 () Int)
(declare-fun Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap (T@Bijection) Bool)
(declare-fun inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap@1 () T@Bijection)
(declare-fun |Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@1| () Int)
(declare-fun |Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@1| () Int)
(declare-fun |Trigger_atomic_AllocIfPtrFree_ptr'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$ptr'@1| () Int)
(declare-fun |Trigger_atomic_AllocIfPtrFree_tid'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$tid'@1| () Int)
(declare-fun call0formal@X@0@@0 () (Array Int Bool))
(declare-fun call0formal@X@0@@1 () (Array Int Bool))
(declare-fun call1formal@x@0 () Int)
(declare-fun call0formal@X@0@@2 () (Array Int Bool))
(declare-fun |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2| () T@Bijection)
(declare-fun freeSpace@1 () Int)
(declare-fun isFree@0 () (Array Int Bool))
(declare-fun freeSpace@0 () Int)
(declare-fun allocMap@0 () T@Bijection)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun call0formal@X@0@@3 () (Array Int Bool))
(declare-fun call1formal@x@0@@0 () Int)
(declare-fun |Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap'| (T@Bijection) Bool)
(declare-fun |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@0| () T@Bijection)
(declare-fun Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$ptr (Int) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$ptr@0 () Int)
(declare-fun Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$tid (Int) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$tid@0 () Int)
(declare-fun Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap (T@Bijection) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap@0 () T@Bijection)
(declare-fun Trigger_atomic_DecrementFreeSpace_ptr (Int) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$ptr@0 () Int)
(declare-fun allocMap () T@Bijection)
(declare-fun freeSpace () Int)
(declare-fun isFree () (Array Int Bool))
(set-info :boogie-vc-id Civl_Malloc_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 36) (- 0 40)) (<= 0 freeSpace@4)) (=> (<= 0 freeSpace@4) (and (=> (= (ControlFlow 0 36) (- 0 39)) (and (forall ((tid@@0 Int) ) (!  (=> (select (|domain#Bijection| allocMap@4) tid@@0) (and (select (|range#Bijection| allocMap@4) (select (|tidToPtr#Bijection| allocMap@4) tid@@0)) (= (select (|ptrToTid#Bijection| allocMap@4) (select (|tidToPtr#Bijection| allocMap@4) tid@@0)) tid@@0)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr Int) ) (!  (=> (select (|range#Bijection| allocMap@4) ptr) (and (select (|domain#Bijection| allocMap@4) (select (|ptrToTid#Bijection| allocMap@4) ptr)) (= (select (|tidToPtr#Bijection| allocMap@4) (select (|ptrToTid#Bijection| allocMap@4) ptr)) ptr)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@1 Int) ) (!  (=> (select (|domain#Bijection| allocMap@4) tid@@1) (and (select (|range#Bijection| allocMap@4) (select (|tidToPtr#Bijection| allocMap@4) tid@@1)) (= (select (|ptrToTid#Bijection| allocMap@4) (select (|tidToPtr#Bijection| allocMap@4) tid@@1)) tid@@1)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@0 Int) ) (!  (=> (select (|range#Bijection| allocMap@4) ptr@@0) (and (select (|domain#Bijection| allocMap@4) (select (|ptrToTid#Bijection| allocMap@4) ptr@@0)) (= (select (|tidToPtr#Bijection| allocMap@4) (select (|ptrToTid#Bijection| allocMap@4) ptr@@0)) ptr@@0)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 36) (- 0 38)) (forall ((y Int) ) (!  (=> (select isFree@5 y) (and (<= memLo y) (< y memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
))) (=> (forall ((y@@0 Int) ) (!  (=> (select isFree@5 y@@0) (and (<= memLo y@@0) (< y@@0 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (= ((_ map and) (|range#Bijection| allocMap@4) ((_ map not) isFree@5)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@4) ((_ map not) isFree@5)) ((as const (Array Int Bool)) false)) (=> (= (ControlFlow 0 36) (- 0 35)) (= freeSpace@4 (Size_81 ((_ map and) isFree@5 ((_ map not) (|range#Bijection| allocMap@4))))))))))))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= freeSpace@4 freeSpace@2) (= isFree@5 isFree@3)) (and (= allocMap@4 allocMap@2) (= (ControlFlow 0 41) 36))) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) true) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 31) (- 0 30))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) true) (=> (= (ControlFlow 0 27) (- 0 26)) (=> false true)))))
(let ((anon6_Else_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 19) (- 0 24)) (and (and (and (<= memLo i@1) (< i@1 memHi)) (select (|domain#Bijection| allocMap@2) tid)) (<= i@1 (select (|tidToPtr#Bijection| allocMap@2) tid)))) (=> (and (and (and (<= memLo i@1) (< i@1 memHi)) (select (|domain#Bijection| allocMap@2) tid)) (<= i@1 (select (|tidToPtr#Bijection| allocMap@2) tid))) (and (=> (= (ControlFlow 0 19) (- 0 23)) (<= 0 freeSpace@2)) (=> (<= 0 freeSpace@2) (and (=> (= (ControlFlow 0 19) (- 0 22)) (and (forall ((tid@@2 Int) ) (!  (=> (select (|domain#Bijection| allocMap@2) tid@@2) (and (select (|range#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@2)) (= (select (|ptrToTid#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@2)) tid@@2)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@1 Int) ) (!  (=> (select (|range#Bijection| allocMap@2) ptr@@1) (and (select (|domain#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@1)) (= (select (|tidToPtr#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@1)) ptr@@1)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@3 Int) ) (!  (=> (select (|domain#Bijection| allocMap@2) tid@@3) (and (select (|range#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@3)) (= (select (|ptrToTid#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@3)) tid@@3)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@2 Int) ) (!  (=> (select (|range#Bijection| allocMap@2) ptr@@2) (and (select (|domain#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@2)) (= (select (|tidToPtr#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@2)) ptr@@2)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (forall ((y@@1 Int) ) (!  (=> (select isFree@3 y@@1) (and (<= memLo y@@1) (< y@@1 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
))) (=> (forall ((y@@2 Int) ) (!  (=> (select isFree@3 y@@2) (and (<= memLo y@@2) (< y@@2 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= ((_ map and) (|range#Bijection| allocMap@2) ((_ map not) isFree@3)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@2) ((_ map not) isFree@3)) ((as const (Array Int Bool)) false)) (=> (= (ControlFlow 0 19) (- 0 18)) (= freeSpace@2 (Size_81 ((_ map and) isFree@3 ((_ map not) (|range#Bijection| allocMap@2))))))))))))))))))
(let ((anon5_LoopDone_correct  (=> (and (<= memHi i@0) (= (ControlFlow 0 17) (- 0 16))) false)))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct  (=> (<= 0 Civl_global_old_freeSpace@1) (=> (and (and (and (forall ((tid@@4 Int) ) (!  (=> (select (|domain#Bijection| Civl_global_old_allocMap@1) tid@@4) (and (select (|range#Bijection| Civl_global_old_allocMap@1) (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) tid@@4)) (= (select (|ptrToTid#Bijection| Civl_global_old_allocMap@1) (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) tid@@4)) tid@@4)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@3 Int) ) (!  (=> (select (|range#Bijection| Civl_global_old_allocMap@1) ptr@@3) (and (select (|domain#Bijection| Civl_global_old_allocMap@1) (select (|ptrToTid#Bijection| Civl_global_old_allocMap@1) ptr@@3)) (= (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) (select (|ptrToTid#Bijection| Civl_global_old_allocMap@1) ptr@@3)) ptr@@3)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (forall ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y Int) ) (!  (=> (select Civl_global_old_isFree@1 inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y) (and (<= memLo inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y) (< inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y memHi)))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (= ((_ map and) (|range#Bijection| Civl_global_old_allocMap@1) ((_ map not) Civl_global_old_isFree@1)) ((as const (Array Int Bool)) false)) (= Civl_global_old_freeSpace@1 (Size_81 ((_ map and) Civl_global_old_isFree@1 ((_ map not) (|range#Bijection| Civl_global_old_allocMap@1))))))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (<= 0 freeSpace@3)) (=> (<= 0 freeSpace@3) (and (=> (= (ControlFlow 0 10) (- 0 13)) (and (forall ((tid@@5 Int) ) (!  (=> (select (|domain#Bijection| allocMap@3) tid@@5) (and (select (|range#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@5)) (= (select (|ptrToTid#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@5)) tid@@5)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@4 Int) ) (!  (=> (select (|range#Bijection| allocMap@3) ptr@@4) (and (select (|domain#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@4)) (= (select (|tidToPtr#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@4)) ptr@@4)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@6 Int) ) (!  (=> (select (|domain#Bijection| allocMap@3) tid@@6) (and (select (|range#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@6)) (= (select (|ptrToTid#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@6)) tid@@6)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@5 Int) ) (!  (=> (select (|range#Bijection| allocMap@3) ptr@@5) (and (select (|domain#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@5)) (= (select (|tidToPtr#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@5)) ptr@@5)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0 Int) ) (!  (=> (select isFree@4 inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0) (and (<= memLo inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0) (< inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0 memHi)))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1 Int) ) (!  (=> (select isFree@4 inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1) (and (<= memLo inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1) (< inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1 memHi)))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= ((_ map and) (|range#Bijection| allocMap@3) ((_ map not) isFree@4)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@3) ((_ map not) isFree@4)) ((as const (Array Int Bool)) false)) (=> (= (ControlFlow 0 10) (- 0 9)) (= freeSpace@3 (Size_81 ((_ map and) isFree@4 ((_ map not) (|range#Bijection| allocMap@3))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (and (and (and (<= memLo inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0) (< inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 memHi)) (select (|domain#Bijection| Civl_global_old_allocMap@1) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0)) (<= inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0))) (= (ControlFlow 0 8) (- 0 7))) (and (and (and (<= memLo inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0) (< inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 memHi)) (select (|domain#Bijection| allocMap@3) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0)) (<= inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 (select (|tidToPtr#Bijection| allocMap@3) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (not (select (|domain#Bijection| Civl_global_old_allocMap@1) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0)) (= (ControlFlow 0 5) (- 0 4))) (not (select (|domain#Bijection| allocMap@3) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0))))))
(let ((anon6_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= freeSpace@3 freeSpace@2) (=> (and (= Civl_global_old_isFree@1 isFree@1) (= Civl_global_old_freeSpace@1 freeSpace@2)) (=> (and (and (= Civl_global_old_allocMap@1 allocMap@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2)) (and (= allocMap@3 allocMap@2) (= isFree@4 isFree@3))) (and (and (and (=> (= (ControlFlow 0 34) 5) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct) (=> (= (ControlFlow 0 34) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 34) 8) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 10) inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct)))))))
(let ((anon6_Then_correct  (=> (and inline$atomic_AllocIfPtrFree$0$spaceFound@2 (= call0formal@X@0 (|range#Bijection| allocMap@2))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (= ((_ map and) call0formal@X@0 ((_ map not) isFree@3)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) call0formal@X@0 ((_ map not) isFree@3)) ((as const (Array Int Bool)) false)) (=> (= (Size_81 isFree@3) (+ (Size_81 call0formal@X@0) (Size_81 ((_ map and) isFree@3 ((_ map not) call0formal@X@0))))) (and (and (=> (= (ControlFlow 0 42) 31) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 42) 41) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 42) 34) anon6_Then_@2_Civl_NoninterferenceChecker_correct))))))))
(let ((anon6_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= freeSpace@3 freeSpace@2) (=> (and (= Civl_global_old_isFree@1 isFree@1) (= Civl_global_old_freeSpace@1 freeSpace@2)) (=> (and (and (= Civl_global_old_allocMap@1 allocMap@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2)) (and (= allocMap@3 allocMap@2) (= isFree@4 isFree@3))) (and (and (and (=> (= (ControlFlow 0 25) 5) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct) (=> (= (ControlFlow 0 25) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 25) 8) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct)) (=> (= (ControlFlow 0 25) 10) inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct)))))))
(let ((anon6_Else_correct  (=> (and (not inline$atomic_AllocIfPtrFree$0$spaceFound@2) (= i@1 (+ i@0 1))) (and (and (=> (= (ControlFlow 0 29) 19) anon6_Else_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 29) 25) anon6_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 29) 27) Civl_UnchangedChecker_correct)))))
(let ((inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon2_correct  (=> (and (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@4| (select (|tidToPtr#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4|) tid)) (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@5| (Bijection (store (|domain#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4|) tid false) (store (|range#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4|) |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@4| false) (|tidToPtr#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4|) (|ptrToTid#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4|)))) (and (= isFree@3 isFree@2) (= allocMap@2 |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@5|))) (and (=> (= (ControlFlow 0 45) 42) anon6_Then_correct) (=> (= (ControlFlow 0 45) 29) anon6_Else_correct)))))
(let ((inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Else_correct  (=> (not (select (|range#Bijection| allocMap@1) i@0)) (=> (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4| allocMap@1) (= (ControlFlow 0 47) 45)) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon2_correct))))
(let ((inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Then_correct  (=> (and (select (|range#Bijection| allocMap@1) i@0) (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@3| (select (|ptrToTid#Bijection| allocMap@1) i@0))) (=> (and (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3| (select (|tidToPtr#Bijection| allocMap@1) tid)) (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@3| (Bijection (|domain#Bijection| allocMap@1) (|range#Bijection| allocMap@1) (store (store (|tidToPtr#Bijection| allocMap@1) tid i@0) |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@3| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3|) (store (store (|ptrToTid#Bijection| allocMap@1) i@0 tid) |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@3|)))) (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@4| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@3|) (= (ControlFlow 0 46) 45))) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon2_correct))))
(let ((inline$atomic_AllocIfPtrFree$0$anon2_Then_correct  (=> (and inline$atomic_AllocIfPtrFree$0$spaceFound@2 (= isFree@2 (store isFree@1 i@0 false))) (and (=> (= (ControlFlow 0 48) 46) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Then_correct) (=> (= (ControlFlow 0 48) 47) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Else_correct)))))
(let ((inline$atomic_AllocIfPtrFree$0$anon2_Else_correct  (=> (not inline$atomic_AllocIfPtrFree$0$spaceFound@2) (=> (and (= isFree@3 isFree@1) (= allocMap@2 allocMap@1)) (and (=> (= (ControlFlow 0 44) 42) anon6_Then_correct) (=> (= (ControlFlow 0 44) 29) anon6_Else_correct))))))
(let ((inline$atomic_AllocIfPtrFree$0$anon0_correct  (=> (|Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap'| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@1|) (=> (and (and (and (Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr@1) (Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid@1)) (and (Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap@1) (|Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr'| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@1|))) (and (and (|Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid'| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@1|) (|Trigger_atomic_AllocIfPtrFree_ptr'| |inline$atomic_AllocIfPtrFree$0$ptr'@1|)) (and (|Trigger_atomic_AllocIfPtrFree_tid'| |inline$atomic_AllocIfPtrFree$0$tid'@1|) (= inline$atomic_AllocIfPtrFree$0$spaceFound@2 (select isFree@1 i@0))))) (and (=> (= (ControlFlow 0 49) 48) inline$atomic_AllocIfPtrFree$0$anon2_Then_correct) (=> (= (ControlFlow 0 49) 44) inline$atomic_AllocIfPtrFree$0$anon2_Else_correct))))))
(let ((anon5_LoopBody_correct  (=> (and (and (and (< i@0 memHi) (= (+ (Size_81 (store isFree@1 i@0 false)) 1) (Size_81 (store isFree@1 i@0 true)))) (and (= call0formal@X@0@@0 (|range#Bijection| allocMap@1)) (= (+ (Size_81 (store call0formal@X@0@@0 i@0 false)) 1) (Size_81 (store call0formal@X@0@@0 i@0 true))))) (and (and (= call0formal@X@0@@1 (|range#Bijection| allocMap@1)) (= call1formal@x@0 (select (|tidToPtr#Bijection| allocMap@1) tid))) (and (= (+ (Size_81 (store call0formal@X@0@@1 call1formal@x@0 false)) 1) (Size_81 (store call0formal@X@0@@1 call1formal@x@0 true))) (= call0formal@X@0@@2 (|range#Bijection| allocMap@1))))) (and (=> (= (ControlFlow 0 50) (- 0 55)) (= ((_ map and) call0formal@X@0@@2 ((_ map not) isFree@1)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) call0formal@X@0@@2 ((_ map not) isFree@1)) ((as const (Array Int Bool)) false)) (=> (= (Size_81 isFree@1) (+ (Size_81 call0formal@X@0@@2) (Size_81 ((_ map and) isFree@1 ((_ map not) call0formal@X@0@@2))))) (and (=> (= (ControlFlow 0 50) (- 0 54)) (=> (select isFree@1 i@0) (select (|domain#Bijection| allocMap@1) tid))) (=> (=> (select isFree@1 i@0) (select (|domain#Bijection| allocMap@1) tid)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (select (|domain#Bijection| allocMap@1) tid)) (=> (select (|domain#Bijection| allocMap@1) tid) (and (=> (= (ControlFlow 0 50) (- 0 52)) (or (select isFree@1 i@0) (and (<= memLo (+ i@0 1)) (< (+ i@0 1) memHi)))) (=> (or (select isFree@1 i@0) (and (<= memLo (+ i@0 1)) (< (+ i@0 1) memHi))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (and (<= memLo i@0) (< i@0 memHi))) (=> (and (<= memLo i@0) (< i@0 memHi)) (=> (= (ControlFlow 0 50) 49) inline$atomic_AllocIfPtrFree$0$anon0_correct)))))))))))))))
(let ((anon5_LoopHead_correct  (=> (and (and (and (and (<= memLo i@0) (< i@0 memHi)) (select (|domain#Bijection| allocMap@1) tid)) (<= i@0 (select (|tidToPtr#Bijection| allocMap@1) tid))) (and (and (and (or false true) (<= 0 freeSpace@2)) (and (forall ((tid@@7 Int) ) (!  (=> (select (|domain#Bijection| allocMap@1) tid@@7) (and (select (|range#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid@@7)) (= (select (|ptrToTid#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid@@7)) tid@@7)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@6 Int) ) (!  (=> (select (|range#Bijection| allocMap@1) ptr@@6) (and (select (|domain#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr@@6)) (= (select (|tidToPtr#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr@@6)) ptr@@6)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (and (and (forall ((y@@3 Int) ) (!  (=> (select isFree@1 y@@3) (and (<= memLo y@@3) (< y@@3 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (= ((_ map and) (|range#Bijection| allocMap@1) ((_ map not) isFree@1)) ((as const (Array Int Bool)) false))) (and (= freeSpace@2 (Size_81 ((_ map and) isFree@1 ((_ map not) (|range#Bijection| allocMap@1))))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))))) (and (=> (= (ControlFlow 0 56) 17) anon5_LoopDone_correct) (=> (= (ControlFlow 0 56) 50) anon5_LoopBody_correct)))))
(let ((anon0$1_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 57) (- 0 63)) (and (and (and (<= memLo memLo) (< memLo memHi)) (select (|domain#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid)) (<= memLo (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid)))) (=> (and (and (and (<= memLo memLo) (< memLo memHi)) (select (|domain#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid)) (<= memLo (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid))) (and (=> (= (ControlFlow 0 57) (- 0 62)) (<= 0 freeSpace@1)) (=> (<= 0 freeSpace@1) (and (=> (= (ControlFlow 0 57) (- 0 61)) (and (forall ((tid@@8 Int) ) (!  (=> (select (|domain#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid@@8) (and (select (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid@@8)) (= (select (|ptrToTid#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid@@8)) tid@@8)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@7 Int) ) (!  (=> (select (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ptr@@7) (and (select (|domain#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|ptrToTid#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ptr@@7)) (= (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|ptrToTid#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ptr@@7)) ptr@@7)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@9 Int) ) (!  (=> (select (|domain#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid@@9) (and (select (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid@@9)) (= (select (|ptrToTid#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid@@9)) tid@@9)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@8 Int) ) (!  (=> (select (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ptr@@8) (and (select (|domain#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|ptrToTid#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ptr@@8)) (= (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (select (|ptrToTid#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ptr@@8)) ptr@@8)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 57) (- 0 60)) (forall ((y@@4 Int) ) (!  (=> (select isFree@0 y@@4) (and (<= memLo y@@4) (< y@@4 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
))) (=> (forall ((y@@5 Int) ) (!  (=> (select isFree@0 y@@5) (and (<= memLo y@@5) (< y@@5 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (= ((_ map and) (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ((_ map not) isFree@0)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) ((_ map not) isFree@0)) ((as const (Array Int Bool)) false)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (= freeSpace@1 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|)))))) (=> (= freeSpace@1 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|))))) (=> (= (ControlFlow 0 57) 56) anon5_LoopHead_correct)))))))))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= freeSpace@3 freeSpace@1) (=> (and (= Civl_global_old_isFree@1 isFree@0) (= Civl_global_old_freeSpace@1 freeSpace@0)) (=> (and (and (= Civl_global_old_allocMap@1 allocMap@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0)) (and (= allocMap@3 |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) (= isFree@4 isFree@0))) (and (and (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct) (=> (= (ControlFlow 0 15) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct)) (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0$1_correct  (=> (= call0formal@X@0@@3 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|)))) (=> (and (= call1formal@x@0@@0 (select (|tidToPtr#Bijection| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2|) tid)) (= (+ (Size_81 (store call0formal@X@0@@3 call1formal@x@0@@0 false)) 1) (Size_81 (store call0formal@X@0@@3 call1formal@x@0@@0 true)))) (and (and (=> (= (ControlFlow 0 64) 57) anon0$1_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 64) 15) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 64) 2) Civl_RefinementChecker_correct))))))
(let ((inline$atomic_DecrementFreeSpace$0$anon0_correct  (=> (and (|Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap'| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@0|) (Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$ptr inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$ptr@0)) (=> (and (and (and (Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$tid inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$tid@0) (Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap@0)) (and (Trigger_atomic_DecrementFreeSpace_ptr inline$atomic_DecrementFreeSpace$0$ptr@0) (< 0 freeSpace@0))) (and (and (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) inline$atomic_DecrementFreeSpace$0$ptr@0) (= freeSpace@1 (- freeSpace@0 1))) (and (= |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2| (Bijection (store (|domain#Bijection| allocMap@0) tid true) (store (|range#Bijection| allocMap@0) inline$atomic_DecrementFreeSpace$0$ptr@0 true) (store (|tidToPtr#Bijection| allocMap@0) tid inline$atomic_DecrementFreeSpace$0$ptr@0) (store (|ptrToTid#Bijection| allocMap@0) inline$atomic_DecrementFreeSpace$0$ptr@0 tid))) (= (ControlFlow 0 65) 64)))) anon0$1_correct))))
(let ((anon0_correct  (=> (and (and (and (not (select (|domain#Bijection| allocMap@0) tid)) (<= 0 freeSpace@0)) (and (forall ((tid@@10 Int) ) (!  (=> (select (|domain#Bijection| allocMap@0) tid@@10) (and (select (|range#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@10)) (= (select (|ptrToTid#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@10)) tid@@10)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@9 Int) ) (!  (=> (select (|range#Bijection| allocMap@0) ptr@@9) (and (select (|domain#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@9)) (= (select (|tidToPtr#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@9)) ptr@@9)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (and (and (forall ((y@@6 Int) ) (!  (=> (select isFree@0 y@@6) (and (<= memLo y@@6) (< y@@6 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (= ((_ map and) (|range#Bijection| allocMap@0) ((_ map not) isFree@0)) ((as const (Array Int Bool)) false))) (and (= freeSpace@0 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))))) (and (=> (= (ControlFlow 0 66) (- 0 71)) (forall ((ptr@@10 Int) ) (!  (=> (< 0 freeSpace@0) (=> (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) ptr@@10) (and (<= memLo ptr@@10) (< ptr@@10 memHi))))
 :qid |unknown.0:0|
 :skolemid |6|
))) (=> (forall ((ptr@@11 Int) ) (!  (=> (< 0 freeSpace@0) (=> (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) ptr@@11) (and (<= memLo ptr@@11) (< ptr@@11 memHi))))
 :qid |unknown.0:0|
 :skolemid |6|
)) (and (=> (= (ControlFlow 0 66) (- 0 70)) (forall ((ptr@@12 Int) ) (!  (=> (< 0 freeSpace@0) (=> (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) ptr@@12) (not (select (|range#Bijection| allocMap@0) ptr@@12))))
 :qid |unknown.0:0|
 :skolemid |7|
))) (=> (forall ((ptr@@13 Int) ) (!  (=> (< 0 freeSpace@0) (=> (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) ptr@@13) (not (select (|range#Bijection| allocMap@0) ptr@@13))))
 :qid |unknown.0:0|
 :skolemid |7|
)) (and (=> (= (ControlFlow 0 66) (- 0 69)) (forall ((ptr@@14 Int) ) (!  (=> (< 0 freeSpace@0) (=> (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) ptr@@14) (not (select (|domain#Bijection| allocMap@0) tid))))
 :qid |unknown.0:0|
 :skolemid |8|
))) (=> (forall ((ptr@@15 Int) ) (!  (=> (< 0 freeSpace@0) (=> (select ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))) ptr@@15) (not (select (|domain#Bijection| allocMap@0) tid))))
 :qid |unknown.0:0|
 :skolemid |8|
)) (and (=> (= (ControlFlow 0 66) (- 0 68)) (=> (< 0 freeSpace@0) (= freeSpace@0 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))))))) (=> (=> (< 0 freeSpace@0) (= freeSpace@0 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0)))))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (=> (< 0 freeSpace@0) (not (select (|domain#Bijection| allocMap@0) tid)))) (=> (=> (< 0 freeSpace@0) (not (select (|domain#Bijection| allocMap@0) tid))) (=> (= (ControlFlow 0 66) 65) inline$atomic_DecrementFreeSpace$0$anon0_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (not (select (|domain#Bijection| allocMap) tid)) (<= 0 freeSpace)) (and (forall ((tid@@11 Int) ) (!  (=> (select (|domain#Bijection| allocMap) tid@@11) (and (select (|range#Bijection| allocMap) (select (|tidToPtr#Bijection| allocMap) tid@@11)) (= (select (|ptrToTid#Bijection| allocMap) (select (|tidToPtr#Bijection| allocMap) tid@@11)) tid@@11)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@16 Int) ) (!  (=> (select (|range#Bijection| allocMap) ptr@@16) (and (select (|domain#Bijection| allocMap) (select (|ptrToTid#Bijection| allocMap) ptr@@16)) (= (select (|tidToPtr#Bijection| allocMap) (select (|ptrToTid#Bijection| allocMap) ptr@@16)) ptr@@16)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (and (and (forall ((y@@7 Int) ) (!  (=> (select isFree y@@7) (and (<= memLo y@@7) (< y@@7 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (= ((_ map and) (|range#Bijection| allocMap) ((_ map not) isFree)) ((as const (Array Int Bool)) false))) (and (= freeSpace (Size_81 ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))))) (= (ControlFlow 0 72) 66)))) anon0_correct)))
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
(declare-datatypes ((T@Bijection 0)) (((Bijection (|domain#Bijection| (Array Int Bool)) (|range#Bijection| (Array Int Bool)) (|tidToPtr#Bijection| (Array Int Int)) (|ptrToTid#Bijection| (Array Int Int)) ) ) ))
(declare-fun memLo () Int)
(declare-fun memHi () Int)
(declare-fun Identity () (Array Int Int))
(assert (< 0 memLo))
(assert (<= memLo memHi))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |3|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun freeSpace@2 () Int)
(declare-fun allocMap@1 () T@Bijection)
(declare-fun isFree@2 () (Array Int Bool))
(declare-fun Size_81 ((Array Int Bool)) Int)
(declare-fun freeSpace@4 () Int)
(declare-fun allocMap@3 () T@Bijection)
(declare-fun isFree@4 () (Array Int Bool))
(declare-fun freeSpace@1 () Int)
(declare-fun isFree@1 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_freeSpace@1 () Int)
(declare-fun Civl_global_old_allocMap@1 () T@Bijection)
(declare-fun Civl_global_old_isFree@1 () (Array Int Bool))
(declare-fun freeSpace@3 () Int)
(declare-fun allocMap@2 () T@Bijection)
(declare-fun isFree@3 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun call0formal@X@0 () (Array Int Bool))
(declare-fun inline$atomic_Reclaim$0$ptr@1 () Int)
(declare-fun freeSpace@0 () Int)
(declare-fun allocMap@0 () T@Bijection)
(declare-fun isFree@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun freeSpace () Int)
(declare-fun allocMap () T@Bijection)
(declare-fun isFree () (Array Int Bool))
(set-info :boogie-vc-id Civl_Collect_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48) (let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) true) (=> (= (ControlFlow 0 36) (- 0 35)) (=> false true)))))
(let ((anon2_LoopBody$1_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 29) (- 0 33)) (<= 0 freeSpace@2)) (=> (<= 0 freeSpace@2) (and (=> (= (ControlFlow 0 29) (- 0 32)) (and (forall ((tid Int) ) (!  (=> (select (|domain#Bijection| allocMap@1) tid) (and (select (|range#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid)) (= (select (|ptrToTid#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid)) tid)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr Int) ) (!  (=> (select (|range#Bijection| allocMap@1) ptr) (and (select (|domain#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr)) (= (select (|tidToPtr#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr)) ptr)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@0 Int) ) (!  (=> (select (|domain#Bijection| allocMap@1) tid@@0) (and (select (|range#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid@@0)) (= (select (|ptrToTid#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid@@0)) tid@@0)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@0 Int) ) (!  (=> (select (|range#Bijection| allocMap@1) ptr@@0) (and (select (|domain#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr@@0)) (= (select (|tidToPtr#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr@@0)) ptr@@0)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((y Int) ) (!  (=> (select isFree@2 y) (and (<= memLo y) (< y memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
))) (=> (forall ((y@@0 Int) ) (!  (=> (select isFree@2 y@@0) (and (<= memLo y@@0) (< y@@0 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= ((_ map and) (|range#Bijection| allocMap@1) ((_ map not) isFree@2)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@1) ((_ map not) isFree@2)) ((as const (Array Int Bool)) false)) (=> (= (ControlFlow 0 29) (- 0 28)) (= freeSpace@2 (Size_81 ((_ map and) isFree@2 ((_ map not) (|range#Bijection| allocMap@1))))))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 22) (- 0 26)) (<= 0 freeSpace@4)) (=> (<= 0 freeSpace@4) (and (=> (= (ControlFlow 0 22) (- 0 25)) (and (forall ((tid@@1 Int) ) (!  (=> (select (|domain#Bijection| allocMap@3) tid@@1) (and (select (|range#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@1)) (= (select (|ptrToTid#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@1)) tid@@1)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@1 Int) ) (!  (=> (select (|range#Bijection| allocMap@3) ptr@@1) (and (select (|domain#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@1)) (= (select (|tidToPtr#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@1)) ptr@@1)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@2 Int) ) (!  (=> (select (|domain#Bijection| allocMap@3) tid@@2) (and (select (|range#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@2)) (= (select (|ptrToTid#Bijection| allocMap@3) (select (|tidToPtr#Bijection| allocMap@3) tid@@2)) tid@@2)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@2 Int) ) (!  (=> (select (|range#Bijection| allocMap@3) ptr@@2) (and (select (|domain#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@2)) (= (select (|tidToPtr#Bijection| allocMap@3) (select (|ptrToTid#Bijection| allocMap@3) ptr@@2)) ptr@@2)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((y@@1 Int) ) (!  (=> (select isFree@4 y@@1) (and (<= memLo y@@1) (< y@@1 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
))) (=> (forall ((y@@2 Int) ) (!  (=> (select isFree@4 y@@2) (and (<= memLo y@@2) (< y@@2 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (= ((_ map and) (|range#Bijection| allocMap@3) ((_ map not) isFree@4)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@3) ((_ map not) isFree@4)) ((as const (Array Int Bool)) false)) (=> (= (ControlFlow 0 22) (- 0 21)) (= freeSpace@4 (Size_81 ((_ map and) isFree@4 ((_ map not) (|range#Bijection| allocMap@3))))))))))))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= allocMap@3 allocMap@1) (= freeSpace@4 freeSpace@1)) (and (= isFree@4 isFree@1) (= (ControlFlow 0 27) 22))) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 17) (- 0 19)) true) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 17) (- 0 16))) Civl_ok@0))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct  (=> (<= 0 Civl_global_old_freeSpace@1) (=> (and (and (and (forall ((tid@@3 Int) ) (!  (=> (select (|domain#Bijection| Civl_global_old_allocMap@1) tid@@3) (and (select (|range#Bijection| Civl_global_old_allocMap@1) (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) tid@@3)) (= (select (|ptrToTid#Bijection| Civl_global_old_allocMap@1) (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) tid@@3)) tid@@3)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@3 Int) ) (!  (=> (select (|range#Bijection| Civl_global_old_allocMap@1) ptr@@3) (and (select (|domain#Bijection| Civl_global_old_allocMap@1) (select (|ptrToTid#Bijection| Civl_global_old_allocMap@1) ptr@@3)) (= (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) (select (|ptrToTid#Bijection| Civl_global_old_allocMap@1) ptr@@3)) ptr@@3)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (forall ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y Int) ) (!  (=> (select Civl_global_old_isFree@1 inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y) (and (<= memLo inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y) (< inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y memHi)))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (= ((_ map and) (|range#Bijection| Civl_global_old_allocMap@1) ((_ map not) Civl_global_old_isFree@1)) ((as const (Array Int Bool)) false)) (= Civl_global_old_freeSpace@1 (Size_81 ((_ map and) Civl_global_old_isFree@1 ((_ map not) (|range#Bijection| Civl_global_old_allocMap@1))))))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (<= 0 freeSpace@3)) (=> (<= 0 freeSpace@3) (and (=> (= (ControlFlow 0 10) (- 0 13)) (and (forall ((tid@@4 Int) ) (!  (=> (select (|domain#Bijection| allocMap@2) tid@@4) (and (select (|range#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@4)) (= (select (|ptrToTid#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@4)) tid@@4)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@4 Int) ) (!  (=> (select (|range#Bijection| allocMap@2) ptr@@4) (and (select (|domain#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@4)) (= (select (|tidToPtr#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@4)) ptr@@4)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@5 Int) ) (!  (=> (select (|domain#Bijection| allocMap@2) tid@@5) (and (select (|range#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@5)) (= (select (|ptrToTid#Bijection| allocMap@2) (select (|tidToPtr#Bijection| allocMap@2) tid@@5)) tid@@5)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@5 Int) ) (!  (=> (select (|range#Bijection| allocMap@2) ptr@@5) (and (select (|domain#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@5)) (= (select (|tidToPtr#Bijection| allocMap@2) (select (|ptrToTid#Bijection| allocMap@2) ptr@@5)) ptr@@5)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0 Int) ) (!  (=> (select isFree@3 inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0) (and (<= memLo inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0) (< inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@0 memHi)))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1 Int) ) (!  (=> (select isFree@3 inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1) (and (<= memLo inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1) (< inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$y@@1 memHi)))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= ((_ map and) (|range#Bijection| allocMap@2) ((_ map not) isFree@3)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@2) ((_ map not) isFree@3)) ((as const (Array Int Bool)) false)) (=> (= (ControlFlow 0 10) (- 0 9)) (= freeSpace@3 (Size_81 ((_ map and) isFree@3 ((_ map not) (|range#Bijection| allocMap@2))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (and (and (and (<= memLo inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0) (< inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 memHi)) (select (|domain#Bijection| Civl_global_old_allocMap@1) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0)) (<= inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 (select (|tidToPtr#Bijection| Civl_global_old_allocMap@1) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0))) (= (ControlFlow 0 8) (- 0 7))) (and (and (and (<= memLo inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0) (< inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 memHi)) (select (|domain#Bijection| allocMap@2) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0)) (<= inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$i@0 (select (|tidToPtr#Bijection| allocMap@2) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$tid@0)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (not (select (|domain#Bijection| Civl_global_old_allocMap@1) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0)) (= (ControlFlow 0 5) (- 0 4))) (not (select (|domain#Bijection| allocMap@2) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$tid@0))))))
(let ((anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct  (=> (= isFree@3 isFree@2) (=> (and (= freeSpace@3 freeSpace@2) (= allocMap@2 allocMap@1)) (=> (and (and (= Civl_global_old_isFree@1 isFree@1) (= Civl_global_old_freeSpace@1 freeSpace@1)) (and (= Civl_global_old_allocMap@1 allocMap@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (=> (= (ControlFlow 0 34) 5) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct) (=> (= (ControlFlow 0 34) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 34) 8) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 10) inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct)))))))
(let ((anon2_LoopBody$1_correct  (=> (and (= call0formal@X@0 ((_ map and) isFree@2 ((_ map not) (|range#Bijection| allocMap@1)))) (= (+ (Size_81 (store call0formal@X@0 inline$atomic_Reclaim$0$ptr@1 false)) 1) (Size_81 (store call0formal@X@0 inline$atomic_Reclaim$0$ptr@1 true)))) (and (and (=> (= (ControlFlow 0 38) 29) anon2_LoopBody$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 38) 34) anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 38) 36) Civl_UnchangedChecker_correct)))))
(let ((inline$atomic_Reclaim$0$anon0_correct  (=> (and (and (and (and (<= memLo inline$atomic_Reclaim$0$ptr@1) (< inline$atomic_Reclaim$0$ptr@1 memHi)) (not (select isFree@1 inline$atomic_Reclaim$0$ptr@1))) (= freeSpace@2 (+ freeSpace@1 1))) (and (= isFree@2 (store isFree@1 inline$atomic_Reclaim$0$ptr@1 true)) (= (ControlFlow 0 39) 38))) anon2_LoopBody$1_correct)))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= isFree@3 isFree@1) (=> (and (= freeSpace@3 freeSpace@1) (= allocMap@2 allocMap@1)) (=> (and (and (= Civl_global_old_isFree@1 isFree@1) (= Civl_global_old_freeSpace@1 freeSpace@1)) (and (= Civl_global_old_allocMap@1 allocMap@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (=> (= (ControlFlow 0 20) 5) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct) (=> (= (ControlFlow 0 20) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 8) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct)) (=> (= (ControlFlow 0 20) 10) inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct)))))))
(let ((anon2_LoopHead_correct  (=> (and (and (and (or false true) (<= 0 freeSpace@1)) (and (forall ((tid@@6 Int) ) (!  (=> (select (|domain#Bijection| allocMap@1) tid@@6) (and (select (|range#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid@@6)) (= (select (|ptrToTid#Bijection| allocMap@1) (select (|tidToPtr#Bijection| allocMap@1) tid@@6)) tid@@6)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@6 Int) ) (!  (=> (select (|range#Bijection| allocMap@1) ptr@@6) (and (select (|domain#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr@@6)) (= (select (|tidToPtr#Bijection| allocMap@1) (select (|ptrToTid#Bijection| allocMap@1) ptr@@6)) ptr@@6)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (and (and (forall ((y@@3 Int) ) (!  (=> (select isFree@1 y@@3) (and (<= memLo y@@3) (< y@@3 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (= ((_ map and) (|range#Bijection| allocMap@1) ((_ map not) isFree@1)) ((as const (Array Int Bool)) false))) (and (= freeSpace@1 (Size_81 ((_ map and) isFree@1 ((_ map not) (|range#Bijection| allocMap@1))))) (= Civl_linear_tid_available@2 ((as const (Array Int Bool)) false))))) (and (and (and (=> (= (ControlFlow 0 40) 39) inline$atomic_Reclaim$0$anon0_correct) (=> (= (ControlFlow 0 40) 17) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 40) 27) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 40) 20) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 41) (- 0 46)) (<= 0 freeSpace@0)) (=> (<= 0 freeSpace@0) (and (=> (= (ControlFlow 0 41) (- 0 45)) (and (forall ((tid@@7 Int) ) (!  (=> (select (|domain#Bijection| allocMap@0) tid@@7) (and (select (|range#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@7)) (= (select (|ptrToTid#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@7)) tid@@7)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@7 Int) ) (!  (=> (select (|range#Bijection| allocMap@0) ptr@@7) (and (select (|domain#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@7)) (= (select (|tidToPtr#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@7)) ptr@@7)))
 :qid |reservebpl.33:13|
 :skolemid |1|
)))) (=> (and (forall ((tid@@8 Int) ) (!  (=> (select (|domain#Bijection| allocMap@0) tid@@8) (and (select (|range#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@8)) (= (select (|ptrToTid#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@8)) tid@@8)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@8 Int) ) (!  (=> (select (|range#Bijection| allocMap@0) ptr@@8) (and (select (|domain#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@8)) (= (select (|tidToPtr#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@8)) ptr@@8)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 41) (- 0 44)) (forall ((y@@4 Int) ) (!  (=> (select isFree@0 y@@4) (and (<= memLo y@@4) (< y@@4 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
))) (=> (forall ((y@@5 Int) ) (!  (=> (select isFree@0 y@@5) (and (<= memLo y@@5) (< y@@5 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 41) (- 0 43)) (= ((_ map and) (|range#Bijection| allocMap@0) ((_ map not) isFree@0)) ((as const (Array Int Bool)) false))) (=> (= ((_ map and) (|range#Bijection| allocMap@0) ((_ map not) isFree@0)) ((as const (Array Int Bool)) false)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (= freeSpace@0 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0)))))) (=> (= freeSpace@0 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))))) (=> (= (ControlFlow 0 41) 40) anon2_LoopHead_correct)))))))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= isFree@3 isFree@0) (=> (and (= freeSpace@3 freeSpace@0) (= allocMap@2 allocMap@0)) (=> (and (and (= Civl_global_old_isFree@1 isFree@0) (= Civl_global_old_freeSpace@1 freeSpace@0)) (and (= Civl_global_old_allocMap@1 allocMap@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))) (and (and (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_proc_Malloc_1$0$L0_correct) (=> (= (ControlFlow 0 15) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_impl_Malloc_1$0$L0_correct)) (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_yield_YieldInvariant$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (<= 0 freeSpace@0) (=> (and (forall ((tid@@9 Int) ) (!  (=> (select (|domain#Bijection| allocMap@0) tid@@9) (and (select (|range#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@9)) (= (select (|ptrToTid#Bijection| allocMap@0) (select (|tidToPtr#Bijection| allocMap@0) tid@@9)) tid@@9)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@9 Int) ) (!  (=> (select (|range#Bijection| allocMap@0) ptr@@9) (and (select (|domain#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@9)) (= (select (|tidToPtr#Bijection| allocMap@0) (select (|ptrToTid#Bijection| allocMap@0) ptr@@9)) ptr@@9)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (=> (and (and (forall ((y@@6 Int) ) (!  (=> (select isFree@0 y@@6) (and (<= memLo y@@6) (< y@@6 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (= ((_ map and) (|range#Bijection| allocMap@0) ((_ map not) isFree@0)) ((as const (Array Int Bool)) false))) (and (= freeSpace@0 (Size_81 ((_ map and) isFree@0 ((_ map not) (|range#Bijection| allocMap@0))))) (= Civl_linear_tid_available@0 ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 47) 41) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 47) 15) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 47) 2) Civl_RefinementChecker_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (<= 0 freeSpace) (=> (and (forall ((tid@@10 Int) ) (!  (=> (select (|domain#Bijection| allocMap) tid@@10) (and (select (|range#Bijection| allocMap) (select (|tidToPtr#Bijection| allocMap) tid@@10)) (= (select (|ptrToTid#Bijection| allocMap) (select (|tidToPtr#Bijection| allocMap) tid@@10)) tid@@10)))
 :qid |reservebpl.28:13|
 :skolemid |0|
)) (forall ((ptr@@10 Int) ) (!  (=> (select (|range#Bijection| allocMap) ptr@@10) (and (select (|domain#Bijection| allocMap) (select (|ptrToTid#Bijection| allocMap) ptr@@10)) (= (select (|tidToPtr#Bijection| allocMap) (select (|ptrToTid#Bijection| allocMap) ptr@@10)) ptr@@10)))
 :qid |reservebpl.33:13|
 :skolemid |1|
))) (=> (and (and (forall ((y@@7 Int) ) (!  (=> (select isFree y@@7) (and (<= memLo y@@7) (< y@@7 memHi)))
 :qid |reservebpl.42:18|
 :skolemid |2|
)) (= ((_ map and) (|range#Bijection| allocMap) ((_ map not) isFree)) ((as const (Array Int Bool)) false))) (and (= freeSpace (Size_81 ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))))) (= (ControlFlow 0 48) 47))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
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
(declare-datatypes ((T@Bijection 0)) (((Bijection (|domain#Bijection| (Array Int Bool)) (|range#Bijection| (Array Int Bool)) (|tidToPtr#Bijection| (Array Int Int)) (|ptrToTid#Bijection| (Array Int Int)) ) ) ))
(declare-fun memLo () Int)
(declare-fun memHi () Int)
(declare-fun Identity () (Array Int Int))
(assert (< 0 memLo))
(assert (<= memLo memHi))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |3|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun |Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap'| (T@Bijection) Bool)
(declare-fun |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@0| () T@Bijection)
(declare-fun Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$ptr (Int) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$ptr@0 () Int)
(declare-fun Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$tid (Int) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$tid@0 () Int)
(declare-fun Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap (T@Bijection) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap@0 () T@Bijection)
(declare-fun Trigger_atomic_DecrementFreeSpace_ptr (Int) Bool)
(declare-fun inline$atomic_DecrementFreeSpace$0$ptr@0 () Int)
(declare-fun freeSpace () Int)
(declare-fun isFree () (Array Int Bool))
(declare-fun allocMap () T@Bijection)
(declare-fun freeSpace@0 () Int)
(declare-fun |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2| () T@Bijection)
(declare-fun Size_81 ((Array Int Bool)) Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_DecrementFreeSpace)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_DecrementFreeSpace$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_DecrementFreeSpace$0$anon0_correct  (=> (and (|Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap'| |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@0|) (Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$ptr inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$ptr@0)) (=> (and (and (and (Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$tid inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$tid@0) (Trigger_atomic_DecrementFreeSpace_inline$Reserve$0$allocMap inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap@0)) (and (Trigger_atomic_DecrementFreeSpace_ptr inline$atomic_DecrementFreeSpace$0$ptr@0) (< 0 freeSpace))) (and (and (select ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))) inline$atomic_DecrementFreeSpace$0$ptr@0) (= freeSpace@0 (- freeSpace 1))) (and (= |inline$atomic_DecrementFreeSpace$0$inline$Reserve$0$allocMap'@2| (Bijection (store (|domain#Bijection| allocMap) tid true) (store (|range#Bijection| allocMap) inline$atomic_DecrementFreeSpace$0$ptr@0 true) (store (|tidToPtr#Bijection| allocMap) tid inline$atomic_DecrementFreeSpace$0$ptr@0) (store (|ptrToTid#Bijection| allocMap) inline$atomic_DecrementFreeSpace$0$ptr@0 tid))) (= (ControlFlow 0 3) 2)))) inline$atomic_DecrementFreeSpace$0$Return_correct))))
(let ((inline$atomic_DecrementFreeSpace$0$Entry_correct  (=> (and (forall ((ptr Int) ) (!  (=> (< 0 freeSpace) (=> (select ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))) ptr) (and (<= memLo ptr) (< ptr memHi))))
 :qid |unknown.0:0|
 :skolemid |6|
)) (forall ((ptr@@0 Int) ) (!  (=> (< 0 freeSpace) (=> (select ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))) ptr@@0) (not (select (|range#Bijection| allocMap) ptr@@0))))
 :qid |unknown.0:0|
 :skolemid |7|
))) (=> (and (and (forall ((ptr@@1 Int) ) (!  (=> (< 0 freeSpace) (=> (select ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))) ptr@@1) (not (select (|domain#Bijection| allocMap) tid))))
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (< 0 freeSpace) (= freeSpace (Size_81 ((_ map and) isFree ((_ map not) (|range#Bijection| allocMap))))))) (and (=> (< 0 freeSpace) (not (select (|domain#Bijection| allocMap) tid))) (= (ControlFlow 0 4) 3))) inline$atomic_DecrementFreeSpace$0$anon0_correct))))
inline$atomic_DecrementFreeSpace$0$Entry_correct))))
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
(declare-datatypes ((T@Bijection 0)) (((Bijection (|domain#Bijection| (Array Int Bool)) (|range#Bijection| (Array Int Bool)) (|tidToPtr#Bijection| (Array Int Int)) (|ptrToTid#Bijection| (Array Int Int)) ) ) ))
(declare-fun memLo () Int)
(declare-fun memHi () Int)
(declare-fun Identity () (Array Int Int))
(assert (< 0 memLo))
(assert (<= memLo memHi))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |3|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3| () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'| () T@Bijection)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@3| () T@Bijection)
(declare-fun allocMap () T@Bijection)
(declare-fun ptr () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@2| () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@2| () Int)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@2| () T@Bijection)
(declare-fun inline$atomic_AllocIfPtrFree$0$spaceFound@1 () Bool)
(declare-fun isFree@0 () (Array Int Bool))
(declare-fun isFree () (Array Int Bool))
(declare-fun |Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap'| (T@Bijection) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@0| () T@Bijection)
(declare-fun Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr (Int) Bool)
(declare-fun inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr@0 () Int)
(declare-fun Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid (Int) Bool)
(declare-fun inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid@0 () Int)
(declare-fun Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap (T@Bijection) Bool)
(declare-fun inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap@0 () T@Bijection)
(declare-fun |Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@0| () Int)
(declare-fun |Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@0| () Int)
(declare-fun |Trigger_atomic_AllocIfPtrFree_ptr'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$ptr'@0| () Int)
(declare-fun |Trigger_atomic_AllocIfPtrFree_tid'| (Int) Bool)
(declare-fun |inline$atomic_AllocIfPtrFree$0$tid'@0| () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_AllocIfPtrFree)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((inline$atomic_AllocIfPtrFree$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon2_correct  (=> (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3| (select (|tidToPtr#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'|) tid)) (=> (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@3| (Bijection (store (|domain#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'|) tid false) (store (|range#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'|) |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@3| false) (|tidToPtr#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'|) (|ptrToTid#Bijection| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'|))) (= (ControlFlow 0 4) 2)) inline$atomic_AllocIfPtrFree$0$Return_correct))))
(let ((inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Else_correct  (=> (and (not (select (|range#Bijection| allocMap) ptr)) (= (ControlFlow 0 6) 4)) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon2_correct)))
(let ((inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Then_correct  (=> (select (|range#Bijection| allocMap) ptr) (=> (and (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@2| (select (|ptrToTid#Bijection| allocMap) ptr)) (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@2| (select (|tidToPtr#Bijection| allocMap) tid))) (and (= |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@2| (Bijection (|domain#Bijection| allocMap) (|range#Bijection| allocMap) (store (store (|tidToPtr#Bijection| allocMap) tid ptr) |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@2| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@2|) (store (store (|ptrToTid#Bijection| allocMap) ptr tid) |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@2| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@2|))) (= (ControlFlow 0 5) 4))) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon2_correct))))
(let ((inline$atomic_AllocIfPtrFree$0$anon2_Then_correct  (=> (and inline$atomic_AllocIfPtrFree$0$spaceFound@1 (= isFree@0 (store isFree ptr false))) (and (=> (= (ControlFlow 0 7) 5) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$anon3_Else_correct)))))
(let ((inline$atomic_AllocIfPtrFree$0$anon2_Else_correct  (=> (and (not inline$atomic_AllocIfPtrFree$0$spaceFound@1) (= (ControlFlow 0 3) 2)) inline$atomic_AllocIfPtrFree$0$Return_correct)))
(let ((inline$atomic_AllocIfPtrFree$0$anon0_correct  (=> (|Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap'| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap'@0|) (=> (and (and (and (Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr@0) (Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid@0)) (and (Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$allocMap inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$allocMap@0) (|Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$ptr'| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$ptr'@0|))) (and (and (|Trigger_atomic_AllocIfPtrFree_inline$Alloc$0$tid'| |inline$atomic_AllocIfPtrFree$0$inline$Alloc$0$tid'@0|) (|Trigger_atomic_AllocIfPtrFree_ptr'| |inline$atomic_AllocIfPtrFree$0$ptr'@0|)) (and (|Trigger_atomic_AllocIfPtrFree_tid'| |inline$atomic_AllocIfPtrFree$0$tid'@0|) (= inline$atomic_AllocIfPtrFree$0$spaceFound@1 (select isFree ptr))))) (and (=> (= (ControlFlow 0 8) 7) inline$atomic_AllocIfPtrFree$0$anon2_Then_correct) (=> (= (ControlFlow 0 8) 3) inline$atomic_AllocIfPtrFree$0$anon2_Else_correct))))))
(let ((inline$atomic_AllocIfPtrFree$0$Entry_correct  (=> (=> (select isFree ptr) (select (|domain#Bijection| allocMap) tid)) (=> (and (select (|domain#Bijection| allocMap) tid) (or (select isFree ptr) (and (<= memLo (+ ptr 1)) (< (+ ptr 1) memHi)))) (=> (and (and (<= memLo ptr) (< ptr memHi)) (= (ControlFlow 0 9) 8)) inline$atomic_AllocIfPtrFree$0$anon0_correct)))))
inline$atomic_AllocIfPtrFree$0$Entry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
