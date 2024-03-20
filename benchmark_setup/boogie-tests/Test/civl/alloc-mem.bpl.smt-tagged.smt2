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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_Alloc$0$l@1 () T@lmap)
(declare-fun pool@1 () T@lmap)
(declare-fun inline$atomic_Alloc$1$l@1 () T@lmap)
(declare-fun Trigger_atomic_Alloc_m ((Array Int Int)) Bool)
(declare-fun pool () T@lmap)
(declare-fun inline$atomic_Alloc$1$i@0 () Int)
(declare-fun inline$atomic_Alloc$0$i@0 () Int)
(declare-fun inline$atomic_Alloc$1$m@0 () (Array Int Int))
(declare-fun pool@0 () T@lmap)
(declare-fun inline$atomic_Alloc$0$m@0 () (Array Int Int))
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_Alloc_atomic_Alloc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Alloc$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$atomic_Alloc$0$l@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom inline$atomic_Alloc$0$l@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom inline$atomic_Alloc$1$l@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom pool@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
))) (exists ((|Civl_second_m#0| (Array Int Int)) (|Civl_first_m#0| (Array Int Int)) ) (!  (and (and (and (and (select (dom pool) inline$atomic_Alloc$1$i@0) (select (dom (Remove pool inline$atomic_Alloc$1$i@0)) inline$atomic_Alloc$0$i@0)) (= inline$atomic_Alloc$1$l@1 (Add (Empty |Civl_second_m#0|) inline$atomic_Alloc$1$i@0))) (= pool@1 (Remove (Remove pool inline$atomic_Alloc$1$i@0) inline$atomic_Alloc$0$i@0))) (= inline$atomic_Alloc$0$l@1 (Add (Empty |Civl_first_m#0|) inline$atomic_Alloc$0$i@0)))
 :qid |unknown.0:0|
 :skolemid |9|
 :pattern ( (Trigger_atomic_Alloc_m |Civl_second_m#0|) (Trigger_atomic_Alloc_m |Civl_first_m#0|))
))))))
(let ((inline$atomic_Alloc$1$anon0_correct  (=> (Trigger_atomic_Alloc_m inline$atomic_Alloc$1$m@0) (=> (and (and (select (dom pool@0) inline$atomic_Alloc$1$i@0) (= pool@1 (Remove pool@0 inline$atomic_Alloc$1$i@0))) (and (= inline$atomic_Alloc$1$l@1 (Add (Empty inline$atomic_Alloc$1$m@0) inline$atomic_Alloc$1$i@0)) (= (ControlFlow 0 3) 2))) inline$atomic_Alloc$1$Return_correct))))
(let ((inline$atomic_Alloc$0$anon0_correct  (=> (Trigger_atomic_Alloc_m inline$atomic_Alloc$0$m@0) (=> (and (and (select (dom pool) inline$atomic_Alloc$0$i@0) (= pool@0 (Remove pool inline$atomic_Alloc$0$i@0))) (and (= inline$atomic_Alloc$0$l@1 (Add (Empty inline$atomic_Alloc$0$m@0) inline$atomic_Alloc$0$i@0)) (= (ControlFlow 0 4) 3))) inline$atomic_Alloc$1$anon0_correct))))
(let ((inline$atomic_Alloc$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_Alloc$0$anon0_correct)))
inline$atomic_Alloc$0$Entry_correct)))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_Alloc$0$l@1 () T@lmap)
(declare-fun pool@1 () T@lmap)
(declare-fun Trigger_atomic_Alloc_m ((Array Int Int)) Bool)
(declare-fun pool () T@lmap)
(declare-fun second_i () Int)
(declare-fun inline$atomic_Alloc$0$i@0 () Int)
(declare-fun pool@0 () T@lmap)
(declare-fun inline$atomic_Alloc$0$m@0 () (Array Int Int))
(declare-fun second_l () T@lmap)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_Alloc_atomic_Free)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Free$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$atomic_Alloc$0$l@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$atomic_Alloc$0$l@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
))) (exists ((|Civl_first_m#0| (Array Int Int)) ) (!  (and (and (select (dom (Add pool second_i)) inline$atomic_Alloc$0$i@0) (= pool@1 (Remove (Add pool second_i) inline$atomic_Alloc$0$i@0))) (= inline$atomic_Alloc$0$l@1 (Add (Empty |Civl_first_m#0|) inline$atomic_Alloc$0$i@0)))
 :qid |unknown.0:0|
 :skolemid |13|
 :pattern ( (Trigger_atomic_Alloc_m |Civl_first_m#0|))
))))))
(let ((inline$atomic_Free$0$anon0_correct  (=> (and (= pool@1 (Add pool@0 second_i)) (= (ControlFlow 0 3) 2)) inline$atomic_Free$0$Return_correct)))
(let ((inline$atomic_Alloc$0$anon0_correct  (=> (Trigger_atomic_Alloc_m inline$atomic_Alloc$0$m@0) (=> (and (and (select (dom pool) inline$atomic_Alloc$0$i@0) (= pool@0 (Remove pool inline$atomic_Alloc$0$i@0))) (and (= inline$atomic_Alloc$0$l@1 (Add (Empty inline$atomic_Alloc$0$m@0) inline$atomic_Alloc$0$i@0)) (= (ControlFlow 0 4) 3))) inline$atomic_Free$0$anon0_correct))))
(let ((inline$atomic_Alloc$0$Entry_correct  (=> (exists ((Civl_partition_mem@@1 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom second_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (select (dom second_l) second_i) (= (ControlFlow 0 5) 4)) inline$atomic_Alloc$0$anon0_correct))))
inline$atomic_Alloc$0$Entry_correct)))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun pool@1 () T@lmap)
(declare-fun pool () T@lmap)
(declare-fun second_i () Int)
(declare-fun first_i () Int)
(declare-fun pool@0 () T@lmap)
(declare-fun first_l () T@lmap)
(declare-fun second_l () T@lmap)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_Free_atomic_Free)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Free$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= pool@1 (Add (Add pool second_i) first_i))))))
(let ((inline$atomic_Free$1$anon0_correct  (=> (and (= pool@1 (Add pool@0 second_i)) (= (ControlFlow 0 3) 2)) inline$atomic_Free$1$Return_correct)))
(let ((inline$atomic_Free$0$anon0_correct  (=> (and (= pool@0 (Add pool first_i)) (= (ControlFlow 0 4) 3)) inline$atomic_Free$1$anon0_correct)))
(let ((inline$atomic_Free$0$Entry_correct  (=> (and (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom first_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom second_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom pool) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (select (dom first_l) first_i)) (and (select (dom second_l) second_i) (= (ControlFlow 0 5) 4))) inline$atomic_Free$0$anon0_correct)))
inline$atomic_Free$0$Entry_correct)))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@2 () (Array Int Bool))
(declare-fun pool@2 () T@lmap)
(declare-fun unallocated@4 () (Array Int Bool))
(declare-fun pool@4 () T@lmap)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun pool@1 () T@lmap)
(declare-fun Civl_global_old_unallocated@1 () (Array Int Bool))
(declare-fun Civl_global_old_pool@1 () T@lmap)
(declare-fun unallocated@3 () (Array Int Bool))
(declare-fun pool@3 () T@lmap)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0 () T@lmap)
(declare-fun Civl_linear_mem_available@4 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0 () Int)
(declare-fun Civl_global_old_mem@1 () (Array Int Int))
(declare-fun mem@3 () (Array Int Int))
(declare-fun mem@2 () (Array Int Int))
(declare-fun Civl_linear_mem_available@3 () (Array Int Bool))
(declare-fun call3formal@Civl_0_l@0 () T@lmap)
(declare-fun call4formal@Civl_0_i@0 () Int)
(declare-fun mem@1 () (Array Int Int))
(declare-fun Civl_linear_mem_available@2 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(declare-fun mem@0 () (Array Int Int))
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(declare-fun pool () T@lmap)
(set-info :boogie-vc-id Civl_Main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((x@@4 Int) ) (!  (=> (select unallocated@2 x@@4) (select (dom pool@2) x@@4))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (forall ((x@@5 Int) ) (!  (=> (select unallocated@4 x@@5) (select (dom pool@4) x@@5))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (= unallocated@4 unallocated@1) (=> (and (= pool@4 pool@1) (= (ControlFlow 0 15) 14)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (forall ((x@@6 Int) ) (!  (=> (select Civl_global_old_unallocated@1 x@@6) (select (dom Civl_global_old_pool@1) x@@6))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 7) (- 0 6))) (forall ((x@@7 Int) ) (!  (=> (select unallocated@3 x@@7) (select (dom pool@3) x@@7))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_mem_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (forall ((x@@8 Int) ) (!  (=> (select Civl_global_old_unallocated@1 x@@8) (select (dom Civl_global_old_pool@1) x@@8))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select Civl_global_old_mem@1 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((x@@9 Int) ) (!  (=> (select unallocated@3 x@@9) (select (dom pool@3) x@@9))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@10 Int) ) (!  (=> (select unallocated@3 x@@10) (select (dom pool@3) x@@10))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 3) (- 0 2)) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@3 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@3 pool@2) (=> (and (= mem@3 mem@2) (= unallocated@3 unallocated@2)) (=> (and (and (= Civl_global_old_pool@1 pool@2) (= Civl_global_old_mem@1 mem@2)) (and (= Civl_global_old_unallocated@1 unallocated@2) (= Civl_linear_mem_available@4 Civl_linear_mem_available@3))) (and (and (=> (= (ControlFlow 0 18) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 18) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 19) (- 0 22)) (forall ((x@@11 Int) ) (!  (=> (select unallocated@1 x@@11) (select (dom pool@1) x@@11))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@12 Int) ) (!  (=> (select unallocated@1 x@@12) (select (dom pool@1) x@@12))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (forall ((x@@13 Int) ) (!  (=> (select unallocated@2 x@@13) (select (dom pool@2) x@@13))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (= (select (q@map call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (select mem@2 call4formal@Civl_0_i@0))) (and (= Civl_linear_mem_available@3 ((_ map or) (dom pool@2) ((_ map or) (dom call3formal@Civl_0_l@0) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom call3formal@Civl_0_l@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@2) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (forall ((x@@14 Int) ) (!  (=> (select unallocated@2 x@@14) (select (dom pool@2) x@@14))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@15 Int) ) (!  (=> (select unallocated@2 x@@15) (select (dom pool@2) x@@15))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (select (dom call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (= (select (q@map call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (select mem@2 call4formal@Civl_0_i@0)))) (=> (and (select (dom call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (= (select (q@map call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (select mem@2 call4formal@Civl_0_i@0))) (and (and (=> (= (ControlFlow 0 19) 17) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 19) 18) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 19) 10) Civl_UnchangedChecker_correct))))))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@3 pool@1) (=> (and (= mem@3 mem@1) (= unallocated@3 unallocated@1)) (=> (and (and (= Civl_global_old_pool@1 pool@1) (= Civl_global_old_mem@1 mem@1)) (and (= Civl_global_old_unallocated@1 unallocated@1) (= Civl_linear_mem_available@4 Civl_linear_mem_available@2))) (and (and (=> (= (ControlFlow 0 12) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 12) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@3 pool@1) (=> (and (= mem@3 mem@1) (= unallocated@3 unallocated@1)) (=> (and (and (= Civl_global_old_pool@1 pool@1) (= Civl_global_old_mem@1 mem@1)) (and (= Civl_global_old_unallocated@1 unallocated@1) (= Civl_linear_mem_available@4 Civl_linear_mem_available@2))) (and (and (=> (= (ControlFlow 0 9) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 9) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopHead_correct  (=> (and (forall ((x@@16 Int) ) (!  (=> (select unallocated@1 x@@16) (select (dom pool@1) x@@16))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= Civl_linear_mem_available@2 ((_ map or) (dom pool@1) ((as const (Array Int Bool)) false)))) (and (and (and (and (and (=> (= (ControlFlow 0 23) 19) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 23) 9) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 10) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 23) 11) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 23) 15) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 23) 12) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((x@@17 Int) ) (!  (=> (select unallocated@0 x@@17) (select (dom pool@0) x@@17))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@18 Int) ) (!  (=> (select unallocated@0 x@@18) (select (dom pool@0) x@@18))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 24) 23) anon2_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@3 pool@0) (=> (and (= mem@3 mem@0) (= unallocated@3 unallocated@0)) (=> (and (and (= Civl_global_old_pool@1 pool@0) (= Civl_global_old_mem@1 mem@0)) (and (= Civl_global_old_unallocated@1 unallocated@0) (= Civl_linear_mem_available@4 Civl_linear_mem_available@0))) (and (and (=> (= (ControlFlow 0 8) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 8) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 8) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (forall ((x@@19 Int) ) (!  (=> (select unallocated@0 x@@19) (select (dom pool@0) x@@19))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 26) 24) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 26) 8) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((x@@20 Int) ) (!  (=> (select unallocated x@@20) (select (dom pool) x@@20))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 27) 26)) anon0_correct)))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@7 () (Array Int Bool))
(declare-fun pool@7 () T@lmap)
(declare-fun unallocated@9 () (Array Int Bool))
(declare-fun pool@9 () T@lmap)
(declare-fun unallocated@3 () (Array Int Bool))
(declare-fun pool@3 () T@lmap)
(declare-fun Civl_global_old_unallocated@1 () (Array Int Bool))
(declare-fun Civl_global_old_pool@1 () T@lmap)
(declare-fun unallocated@8 () (Array Int Bool))
(declare-fun pool@8 () T@lmap)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0 () T@lmap)
(declare-fun Civl_linear_mem_available@9 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0 () Int)
(declare-fun Civl_global_old_mem@1 () (Array Int Int))
(declare-fun mem@8 () (Array Int Int))
(declare-fun mem@7 () (Array Int Int))
(declare-fun Civl_linear_mem_available@8 () (Array Int Bool))
(declare-fun |call6formal@Civl_0_l'@0| () T@lmap)
(declare-fun call4formal@Civl_0_i@0 () Int)
(declare-fun unallocated@6 () (Array Int Bool))
(declare-fun pool@6 () T@lmap)
(declare-fun |call6formal@Civl_0_l'@0@@0| () T@lmap)
(declare-fun mem@6 () (Array Int Int))
(declare-fun Civl_linear_mem_available@7 () (Array Int Bool))
(declare-fun unallocated@5 () (Array Int Bool))
(declare-fun pool@5 () T@lmap)
(declare-fun mem@5 () (Array Int Int))
(declare-fun Civl_linear_mem_available@6 () (Array Int Bool))
(declare-fun unallocated@4 () (Array Int Bool))
(declare-fun pool@4 () T@lmap)
(declare-fun call3formal@Civl_0_l@0 () T@lmap)
(declare-fun mem@4 () (Array Int Int))
(declare-fun Civl_linear_mem_available@5 () (Array Int Bool))
(declare-fun mem@3 () (Array Int Int))
(declare-fun Civl_linear_mem_available@4 () (Array Int Bool))
(declare-fun unallocated@2 () (Array Int Bool))
(declare-fun pool@2 () T@lmap)
(declare-fun mem@2 () (Array Int Int))
(declare-fun Civl_linear_mem_available@2 () (Array Int Bool))
(declare-fun pool@1 () T@lmap)
(declare-fun mem@1 () (Array Int Int))
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun Civl_linear_mem_available@1 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(declare-fun mem@0 () (Array Int Int))
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun i@@1 () Int)
(declare-fun local_in () T@lmap)
(declare-fun unallocated () (Array Int Bool))
(declare-fun pool () T@lmap)
(declare-fun mem () (Array Int Int))
(set-info :boogie-vc-id Civl_Thread_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 45) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (forall ((x@@4 Int) ) (!  (=> (select unallocated@7 x@@4) (select (dom pool@7) x@@4))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (forall ((x@@5 Int) ) (!  (=> (select unallocated@9 x@@5) (select (dom pool@9) x@@5))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (= unallocated@9 unallocated@3) (=> (and (= pool@9 pool@3) (= (ControlFlow 0 17) 16)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (forall ((x@@6 Int) ) (!  (=> (select Civl_global_old_unallocated@1 x@@6) (select (dom Civl_global_old_pool@1) x@@6))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 7) (- 0 6))) (forall ((x@@7 Int) ) (!  (=> (select unallocated@8 x@@7) (select (dom pool@8) x@@7))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_mem_available@9 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (forall ((x@@8 Int) ) (!  (=> (select Civl_global_old_unallocated@1 x@@8) (select (dom Civl_global_old_pool@1) x@@8))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select Civl_global_old_mem@1 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((x@@9 Int) ) (!  (=> (select unallocated@8 x@@9) (select (dom pool@8) x@@9))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@10 Int) ) (!  (=> (select unallocated@8 x@@10) (select (dom pool@8) x@@10))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 3) (- 0 2)) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@8 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@7) (=> (and (= mem@8 mem@7) (= unallocated@8 unallocated@7)) (=> (and (and (= Civl_global_old_pool@1 pool@7) (= Civl_global_old_mem@1 mem@7)) (and (= Civl_global_old_unallocated@1 unallocated@7) (= Civl_linear_mem_available@9 Civl_linear_mem_available@8))) (and (and (=> (= (ControlFlow 0 23) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 23) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 23) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (select (dom |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0)) (=> (select (dom |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((x@@11 Int) ) (!  (=> (select unallocated@6 x@@11) (select (dom pool@6) x@@11))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@12 Int) ) (!  (=> (select unallocated@6 x@@12) (select (dom pool@6) x@@12))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (forall ((x@@13 Int) ) (!  (=> (select unallocated@7 x@@13) (select (dom pool@7) x@@13))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (= Civl_linear_mem_available@8 ((_ map or) (dom pool@7) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@7) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
))) (and (and (=> (= (ControlFlow 0 24) 22) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 24) 23) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 12) Civl_UnchangedChecker_correct))))))))))
(let ((anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@6) (=> (and (= mem@8 mem@6) (= unallocated@8 unallocated@6)) (=> (and (and (= Civl_global_old_pool@1 pool@6) (= Civl_global_old_mem@1 mem@6)) (and (= Civl_global_old_unallocated@1 unallocated@6) (= Civl_linear_mem_available@9 Civl_linear_mem_available@7))) (and (and (=> (= (ControlFlow 0 20) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 20) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_1_correct  (and (=> (= (ControlFlow 0 27) (- 0 29)) (forall ((x@@14 Int) ) (!  (=> (select unallocated@5 x@@14) (select (dom pool@5) x@@14))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@15 Int) ) (!  (=> (select unallocated@5 x@@15) (select (dom pool@5) x@@15))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (select (dom |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (= (select (q@map |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (select mem@5 call4formal@Civl_0_i@0)))) (=> (and (select (dom |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (= (select (q@map |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (select mem@5 call4formal@Civl_0_i@0))) (=> (forall ((x@@16 Int) ) (!  (=> (select unallocated@6 x@@16) (select (dom pool@6) x@@16))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (= Civl_linear_mem_available@7 ((_ map or) (dom pool@6) ((_ map or) (dom |call6formal@Civl_0_l'@0|) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false))))) (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom |call6formal@Civl_0_l'@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom pool@6) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
))) (and (and (=> (= (ControlFlow 0 27) 24) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 27) 20) anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 27) 12) Civl_UnchangedChecker_correct))))))))))
(let ((anon2_LoopBody_2_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@5) (=> (and (= mem@8 mem@5) (= unallocated@8 unallocated@5)) (=> (and (and (= Civl_global_old_pool@1 pool@5) (= Civl_global_old_mem@1 mem@5)) (and (= Civl_global_old_unallocated@1 unallocated@5) (= Civl_linear_mem_available@9 Civl_linear_mem_available@6))) (and (and (=> (= (ControlFlow 0 19) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 19) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_2_correct  (and (=> (= (ControlFlow 0 30) (- 0 32)) (forall ((x@@17 Int) ) (!  (=> (select unallocated@4 x@@17) (select (dom pool@4) x@@17))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@18 Int) ) (!  (=> (select unallocated@4 x@@18) (select (dom pool@4) x@@18))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (and (select (dom call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (= (select (q@map call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (select mem@4 call4formal@Civl_0_i@0)))) (=> (and (select (dom call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (= (select (q@map call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (select mem@4 call4formal@Civl_0_i@0))) (=> (forall ((x@@19 Int) ) (!  (=> (select unallocated@5 x@@19) (select (dom pool@5) x@@19))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (= (select (q@map |call6formal@Civl_0_l'@0|) call4formal@Civl_0_i@0) (select mem@5 call4formal@Civl_0_i@0))) (and (= Civl_linear_mem_available@6 ((_ map or) (dom pool@5) ((_ map or) (dom |call6formal@Civl_0_l'@0|) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false))))) (exists ((Civl_partition_mem@@1 (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom |call6formal@Civl_0_l'@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom pool@5) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)))) (and (and (=> (= (ControlFlow 0 30) 27) anon2_LoopBody_1_correct) (=> (= (ControlFlow 0 30) 19) anon2_LoopBody_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 12) Civl_UnchangedChecker_correct))))))))))
(let ((anon2_LoopBody_3_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@4) (=> (and (= mem@8 mem@4) (= unallocated@8 unallocated@4)) (=> (and (and (= Civl_global_old_pool@1 pool@4) (= Civl_global_old_mem@1 mem@4)) (and (= Civl_global_old_unallocated@1 unallocated@4) (= Civl_linear_mem_available@9 Civl_linear_mem_available@5))) (and (and (=> (= (ControlFlow 0 18) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 18) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_3_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (forall ((x@@20 Int) ) (!  (=> (select unallocated@3 x@@20) (select (dom pool@3) x@@20))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@21 Int) ) (!  (=> (select unallocated@3 x@@21) (select (dom pool@3) x@@21))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (forall ((x@@22 Int) ) (!  (=> (select unallocated@4 x@@22) (select (dom pool@4) x@@22))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (= (select (q@map call3formal@Civl_0_l@0) call4formal@Civl_0_i@0) (select mem@4 call4formal@Civl_0_i@0))) (and (= Civl_linear_mem_available@5 ((_ map or) (dom pool@4) ((_ map or) (dom call3formal@Civl_0_l@0) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false))))) (exists ((Civl_partition_mem@@2 (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom call3formal@Civl_0_l@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom pool@4) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@2 ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)))) (and (and (=> (= (ControlFlow 0 33) 30) anon2_LoopBody_2_correct) (=> (= (ControlFlow 0 33) 18) anon2_LoopBody_3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 33) 12) Civl_UnchangedChecker_correct))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@3) (=> (and (= mem@8 mem@3) (= unallocated@8 unallocated@3)) (=> (and (and (= Civl_global_old_pool@1 pool@3) (= Civl_global_old_mem@1 mem@3)) (and (= Civl_global_old_unallocated@1 unallocated@3) (= Civl_linear_mem_available@9 Civl_linear_mem_available@4))) (and (and (=> (= (ControlFlow 0 14) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 14) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@3) (=> (and (= mem@8 mem@3) (= unallocated@8 unallocated@3)) (=> (and (and (= Civl_global_old_pool@1 pool@3) (= Civl_global_old_mem@1 mem@3)) (and (= Civl_global_old_unallocated@1 unallocated@3) (= Civl_linear_mem_available@9 Civl_linear_mem_available@4))) (and (and (=> (= (ControlFlow 0 11) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 11) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopHead_correct  (=> (exists ((Civl_partition_mem@@3 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@3 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@3) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@3 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (forall ((x@@23 Int) ) (!  (=> (select unallocated@3 x@@23) (select (dom pool@3) x@@23))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= Civl_linear_mem_available@4 ((_ map or) (dom pool@3) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false))))) (and (and (and (and (and (=> (= (ControlFlow 0 35) 33) anon2_LoopBody_3_correct) (=> (= (ControlFlow 0 35) 11) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 35) 12) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 35) 13) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 35) 17) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 35) 14) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct))))))
(let ((anon0_0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((x@@24 Int) ) (!  (=> (select unallocated@2 x@@24) (select (dom pool@2) x@@24))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@25 Int) ) (!  (=> (select unallocated@2 x@@25) (select (dom pool@2) x@@25))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 36) 35) anon2_LoopHead_correct)))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@2) (=> (and (= mem@8 mem@2) (= unallocated@8 unallocated@2)) (=> (and (and (= Civl_global_old_pool@1 pool@2) (= Civl_global_old_mem@1 mem@2)) (and (= Civl_global_old_unallocated@1 unallocated@2) (= Civl_linear_mem_available@9 Civl_linear_mem_available@2))) (and (and (=> (= (ControlFlow 0 10) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 10) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@1) (=> (and (= mem@8 mem@1) (= unallocated@8 unallocated@1)) (=> (and (and (= Civl_global_old_pool@1 pool@1) (= Civl_global_old_mem@1 mem@1)) (and (= Civl_global_old_unallocated@1 unallocated@1) (= Civl_linear_mem_available@9 Civl_linear_mem_available@1))) (and (and (=> (= (ControlFlow 0 9) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 9) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= pool@8 pool@0) (=> (and (= mem@8 mem@0) (= unallocated@8 unallocated@0)) (=> (and (and (= Civl_global_old_pool@1 pool@0) (= Civl_global_old_mem@1 mem@0)) (and (= Civl_global_old_unallocated@1 unallocated@0) (= Civl_linear_mem_available@9 Civl_linear_mem_available@0))) (and (and (=> (= (ControlFlow 0 8) 3) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct) (=> (= (ControlFlow 0 8) 5) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 8) 7) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((x@@26 Int) ) (!  (=> (select unallocated@1 x@@26) (select (dom pool@1) x@@26))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@27 Int) ) (!  (=> (select unallocated@1 x@@27) (select (dom pool@1) x@@27))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (and (select (dom |call6formal@Civl_0_l'@0@@0|) i@@1) (= (select (q@map |call6formal@Civl_0_l'@0@@0|) i@@1) (select mem@1 i@@1)))) (=> (and (select (dom |call6formal@Civl_0_l'@0@@0|) i@@1) (= (select (q@map |call6formal@Civl_0_l'@0@@0|) i@@1) (select mem@1 i@@1))) (=> (forall ((x@@28 Int) ) (!  (=> (select unallocated@2 x@@28) (select (dom pool@2) x@@28))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (= Civl_linear_mem_available@2 ((_ map or) (dom pool@2) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_mem@@4 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@4 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@2) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@4 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
))) (and (and (=> (= (ControlFlow 0 38) 36) anon0_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 38) 10) anon0_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 38) 1) Civl_RefinementChecker_correct))))))))))
(let ((anon0_1_correct  (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((x@@29 Int) ) (!  (=> (select unallocated@0 x@@29) (select (dom pool@0) x@@29))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@30 Int) ) (!  (=> (select unallocated@0 x@@30) (select (dom pool@0) x@@30))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (and (select (dom local_in) i@@1) (= (select (q@map local_in) i@@1) (select mem@0 i@@1)))) (=> (and (select (dom local_in) i@@1) (= (select (q@map local_in) i@@1) (select mem@0 i@@1))) (=> (forall ((x@@31 Int) ) (!  (=> (select unallocated@1 x@@31) (select (dom pool@1) x@@31))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom |call6formal@Civl_0_l'@0@@0|) i@@1) (= (select (q@map |call6formal@Civl_0_l'@0@@0|) i@@1) (select mem@1 i@@1))) (and (= Civl_linear_mem_available@1 ((_ map or) (dom pool@1) ((_ map or) (dom |call6formal@Civl_0_l'@0@@0|) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_mem@@5 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom |call6formal@Civl_0_l'@0@@0|) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@5 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@5 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)))) (and (and (=> (= (ControlFlow 0 41) 38) anon0_0_correct) (=> (= (ControlFlow 0 41) 9) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 41) 1) Civl_RefinementChecker_correct))))))))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_mem@@6 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom local_in) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@6 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@6 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (forall ((x@@32 Int) ) (!  (=> (select unallocated@0 x@@32) (select (dom pool@0) x@@32))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (and (and (select (dom local_in) i@@1) (= (select (q@map local_in) i@@1) (select mem@0 i@@1))) (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((_ map or) (dom local_in) ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 44) 41) anon0_1_correct) (=> (= (ControlFlow 0 44) 8) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 44) 1) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (forall ((x@@33 Int) ) (!  (=> (select unallocated x@@33) (select (dom pool) x@@33))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom local_in) i@@1) (= (select (q@map local_in) i@@1) (select mem i@@1))) (= (ControlFlow 0 45) 44)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun pool@1 () T@lmap)
(declare-fun inline$AllocLinear$0$l@1 () T@lmap)
(declare-fun inline$atomic_PickAddr$0$i@0 () Int)
(declare-fun mem@0 () (Array Int Int))
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0 () Int)
(declare-fun l () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated () (Array Int Bool))
(declare-fun pool () T@lmap)
(set-info :boogie-vc-id Civl_Alloc_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((x@@4 Int) ) (!  (=> (select unallocated@1 x@@4) (select (dom pool@1) x@@4))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@5 Int) ) (!  (=> (select unallocated@1 x@@5) (select (dom pool@1) x@@5))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 12) (- 0 11)) (and (select (dom inline$AllocLinear$0$l@1) inline$atomic_PickAddr$0$i@0) (= (select (q@map inline$AllocLinear$0$l@1) inline$atomic_PickAddr$0$i@0) (select mem@0 inline$atomic_PickAddr$0$i@0))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (forall ((x@@6 Int) ) (!  (=> (select unallocated@0 x@@6) (select (dom pool@0) x@@6))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((x@@7 Int) ) (!  (=> (select unallocated@1 x@@7) (select (dom pool@1) x@@7))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_mem_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (forall ((x@@8 Int) ) (!  (=> (select unallocated@0 x@@8) (select (dom pool@0) x@@8))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((x@@9 Int) ) (!  (=> (select unallocated@1 x@@9) (select (dom pool@1) x@@9))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@10 Int) ) (!  (=> (select unallocated@1 x@@10) (select (dom pool@1) x@@10))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= pool@1 pool@0) (exists ((|Civl_m#0| (Array Int Int)) ) (!  (and (and (select (dom pool@0) inline$atomic_PickAddr$0$i@0) (= pool@1 (Remove pool@0 inline$atomic_PickAddr$0$i@0))) (= inline$AllocLinear$0$l@1 (Add (Empty |Civl_m#0|) inline$atomic_PickAddr$0$i@0)))
 :qid |unknown.0:0|
 :skolemid |32|
))))) (=> (or false (or (= pool@1 pool@0) (exists ((|Civl_m#0@@0| (Array Int Int)) ) (!  (and (and (select (dom pool@0) inline$atomic_PickAddr$0$i@0) (= pool@1 (Remove pool@0 inline$atomic_PickAddr$0$i@0))) (= inline$AllocLinear$0$l@1 (Add (Empty |Civl_m#0@@0|) inline$atomic_PickAddr$0$i@0)))
 :qid |unknown.0:0|
 :skolemid |32|
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= pool@1 pool@0) (and (= inline$AllocLinear$0$l@1 l) (= inline$atomic_PickAddr$0$i@0 i@@1))))) (=> (=> false (and (= pool@1 pool@0) (and (= inline$AllocLinear$0$l@1 l) (= inline$atomic_PickAddr$0$i@0 i@@1)))) (=> (and (and (= Civl_pc@0  (=> (= pool@1 pool@0) false)) (= Civl_ok@0  (or (exists ((|Civl_m#0@@1| (Array Int Int)) ) (!  (and (and (select (dom pool@0) inline$atomic_PickAddr$0$i@0) (= pool@1 (Remove pool@0 inline$atomic_PickAddr$0$i@0))) (= inline$AllocLinear$0$l@1 (Add (Empty |Civl_m#0@@1|) inline$atomic_PickAddr$0$i@0)))
 :qid |unknown.0:0|
 :skolemid |32|
)) (and (and (= inline$AllocLinear$0$l@1 l) (= inline$atomic_PickAddr$0$i@0 i@@1)) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AllocLinear$0$anon0_correct  (=> (and (= pool@1 (Remove pool@0 inline$atomic_PickAddr$0$i@0)) (= inline$AllocLinear$0$l@1 (Add (Empty mem@0) inline$atomic_PickAddr$0$i@0))) (and (and (and (and (=> (= (ControlFlow 0 14) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 6) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct)) (=> (= (ControlFlow 0 14) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 10) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 14) 12) GeneratedUnifiedExit_correct)))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (select (dom pool@0) inline$atomic_PickAddr$0$i@0)) (=> (select (dom pool@0) inline$atomic_PickAddr$0$i@0) (=> (= (ControlFlow 0 15) 14) inline$AllocLinear$0$anon0_correct)))))
(let ((inline$atomic_PickAddr$0$anon0_correct  (=> (select unallocated@0 inline$atomic_PickAddr$0$i@0) (=> (and (= unallocated@1 (store unallocated@0 inline$atomic_PickAddr$0$i@0 false)) (= (ControlFlow 0 17) 15)) anon0$1_correct))))
(let ((anon0_correct  (=> (forall ((x@@11 Int) ) (!  (=> (select unallocated@0 x@@11) (select (dom pool@0) x@@11))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 18) 17)) inline$atomic_PickAddr$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((x@@12 Int) ) (!  (=> (select unallocated x@@12) (select (dom pool) x@@12))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 19) 18)) anon0_correct)))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun pool@1 () T@lmap)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0 () Int)
(declare-fun mem@0 () (Array Int Int))
(declare-fun i@@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun l () T@lmap)
(declare-fun unallocated () (Array Int Bool))
(declare-fun pool () T@lmap)
(set-info :boogie-vc-id Civl_Free_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((x@@4 Int) ) (!  (=> (select unallocated@1 x@@4) (select (dom pool@1) x@@4))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (forall ((x@@5 Int) ) (!  (=> (select unallocated@0 x@@5) (select (dom pool@0) x@@5))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((x@@6 Int) ) (!  (=> (select unallocated@1 x@@6) (select (dom pool@1) x@@6))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_mem_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (forall ((x@@7 Int) ) (!  (=> (select unallocated@0 x@@7) (select (dom pool@0) x@@7))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((x@@8 Int) ) (!  (=> (select unallocated@1 x@@8) (select (dom pool@1) x@@8))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@9 Int) ) (!  (=> (select unallocated@1 x@@9) (select (dom pool@1) x@@9))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= pool@1 pool@0) (= pool@1 (Add pool@0 i@@1))))) (=> (or false (or (= pool@1 pool@0) (= pool@1 (Add pool@0 i@@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= pool@1 pool@0))) (=> (=> false (= pool@1 pool@0)) (=> (and (and (= Civl_pc@0  (=> (= pool@1 pool@0) false)) (= Civl_ok@0  (or (= pool@1 (Add pool@0 i@@1)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$atomic_ReturnAddr$0$anon0_correct  (=> (= unallocated@1 (store unallocated@0 i@@1 true)) (and (and (and (and (=> (= (ControlFlow 0 13) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct)) (=> (= (ControlFlow 0 13) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 13) 12) GeneratedUnifiedExit_correct)))))
(let ((inline$FreeLinear$0$anon0_correct  (=> (and (= pool@1 (Add pool@0 i@@1)) (= (ControlFlow 0 14) 13)) inline$atomic_ReturnAddr$0$anon0_correct)))
(let ((anon0_correct  (=> (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (=> (and (and (select (dom l) i@@1) (forall ((x@@10 Int) ) (!  (=> (select unallocated@0 x@@10) (select (dom pool@0) x@@10))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom l) i@@1) (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((_ map or) (dom l) ((as const (Array Int Bool)) false)))))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (select (dom l) i@@1)) (=> (select (dom l) i@@1) (=> (= (ControlFlow 0 15) 14) inline$FreeLinear$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (select (dom l) i@@1) (=> (and (forall ((x@@11 Int) ) (!  (=> (select unallocated x@@11) (select (dom pool) x@@11))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 17) 15)) anon0_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0 () Int)
(declare-fun mem@0 () (Array Int Int))
(declare-fun inline$atomic_ReadLow$0$o@1 () Int)
(declare-fun l () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun o () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated () (Array Int Bool))
(declare-fun pool () T@lmap)
(declare-fun mem () (Array Int Int))
(set-info :boogie-vc-id Civl_Read_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((x@@4 Int) ) (!  (=> (select unallocated@0 x@@4) (select (dom pool@0) x@@4))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (forall ((x@@5 Int) ) (!  (=> (select unallocated@0 x@@5) (select (dom pool@0) x@@5))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((x@@6 Int) ) (!  (=> (select unallocated@0 x@@6) (select (dom pool@0) x@@6))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_mem_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (forall ((x@@7 Int) ) (!  (=> (select unallocated@0 x@@7) (select (dom pool@0) x@@7))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((x@@8 Int) ) (!  (=> (select unallocated@0 x@@8) (select (dom pool@0) x@@8))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@9 Int) ) (!  (=> (select unallocated@0 x@@9) (select (dom pool@0) x@@9))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= pool@0 pool@0) (and (= inline$atomic_ReadLow$0$o@1 (select (q@map l) i@@1)) (= pool@0 pool@0))))) (=> (or false (or (= pool@0 pool@0) (and (= inline$atomic_ReadLow$0$o@1 (select (q@map l) i@@1)) (= pool@0 pool@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= pool@0 pool@0) (= inline$atomic_ReadLow$0$o@1 o)))) (=> (=> false (and (= pool@0 pool@0) (= inline$atomic_ReadLow$0$o@1 o))) (=> (and (and (= Civl_pc@0  (=> (= pool@0 pool@0) false)) (= Civl_ok@0  (or (and (= inline$atomic_ReadLow$0$o@1 (select (q@map l) i@@1)) (= pool@0 pool@0)) (and (= inline$atomic_ReadLow$0$o@1 o) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$atomic_ReadLow$0$anon0_correct  (=> (= inline$atomic_ReadLow$0$o@1 (select mem@0 i@@1)) (and (and (and (and (=> (= (ControlFlow 0 13) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct)) (=> (= (ControlFlow 0 13) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 13) 12) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (forall ((x@@10 Int) ) (!  (=> (select unallocated@0 x@@10) (select (dom pool@0) x@@10))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (and (and (and (select (dom l) i@@1) (= (select (q@map l) i@@1) (select mem@0 i@@1))) (select (dom l) i@@1)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((_ map or) (dom l) ((as const (Array Int Bool)) false)))) (= (ControlFlow 0 14) 13))) inline$atomic_ReadLow$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (forall ((x@@11 Int) ) (!  (=> (select unallocated x@@11) (select (dom pool) x@@11))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom l) i@@1) (= (select (q@map l) i@@1) (select mem i@@1))) (= (ControlFlow 0 15) 14)) anon0_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(declare-fun |inline$WriteLinear$0$l'@1| () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun mem@1 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0 () Int)
(declare-fun mem@0 () (Array Int Int))
(declare-fun l () T@lmap)
(declare-fun o () Int)
(declare-fun |l'| () T@lmap)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated () (Array Int Bool))
(declare-fun pool () T@lmap)
(declare-fun mem () (Array Int Int))
(set-info :boogie-vc-id Civl_Write_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((x@@4 Int) ) (!  (=> (select unallocated@0 x@@4) (select (dom pool@0) x@@4))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@5 Int) ) (!  (=> (select unallocated@0 x@@5) (select (dom pool@0) x@@5))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 12) (- 0 11)) (and (select (dom |inline$WriteLinear$0$l'@1|) i@@1) (= (select (q@map |inline$WriteLinear$0$l'@1|) i@@1) (select mem@1 i@@1))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (forall ((x@@6 Int) ) (!  (=> (select unallocated@0 x@@6) (select (dom pool@0) x@@6))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((x@@7 Int) ) (!  (=> (select unallocated@0 x@@7) (select (dom pool@0) x@@7))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_mem_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (forall ((x@@8 Int) ) (!  (=> (select unallocated@0 x@@8) (select (dom pool@0) x@@8))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@0 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((x@@9 Int) ) (!  (=> (select unallocated@0 x@@9) (select (dom pool@0) x@@9))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (forall ((x@@10 Int) ) (!  (=> (select unallocated@0 x@@10) (select (dom pool@0) x@@10))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (select (dom inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (= (select (q@map inline$Civl_NoninterferenceChecker_yield_YieldMem$0$l@0) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0) (select mem@1 inline$Civl_NoninterferenceChecker_yield_YieldMem$0$i@0)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= pool@0 pool@0) (and (= |inline$WriteLinear$0$l'@1| (cons (dom l) (store (q@map l) i@@1 o))) (= pool@0 pool@0))))) (=> (or false (or (= pool@0 pool@0) (and (= |inline$WriteLinear$0$l'@1| (cons (dom l) (store (q@map l) i@@1 o))) (= pool@0 pool@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= pool@0 pool@0) (= |inline$WriteLinear$0$l'@1| |l'|)))) (=> (=> false (and (= pool@0 pool@0) (= |inline$WriteLinear$0$l'@1| |l'|))) (=> (and (and (= Civl_pc@0  (=> (= pool@0 pool@0) false)) (= Civl_ok@0  (or (and (= |inline$WriteLinear$0$l'@1| (cons (dom l) (store (q@map l) i@@1 o))) (= pool@0 pool@0)) (and (= |inline$WriteLinear$0$l'@1| |l'|) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$WriteLinear$0$anon0_correct  (=> (= |inline$WriteLinear$0$l'@1| (cons (dom l) (store (q@map l) i@@1 o))) (and (and (and (and (=> (= (ControlFlow 0 14) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 6) inline$Civl_NoninterferenceChecker_yield_YieldMem$0$L0_correct)) (=> (= (ControlFlow 0 14) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 10) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 14) 12) GeneratedUnifiedExit_correct)))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (select (dom l) i@@1)) (=> (select (dom l) i@@1) (=> (= (ControlFlow 0 15) 14) inline$WriteLinear$0$anon0_correct)))))
(let ((inline$atomic_WriteLow$0$anon0_correct  (=> (and (= mem@1 (store mem@0 i@@1 o)) (= (ControlFlow 0 17) 15)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (forall ((x@@11 Int) ) (!  (=> (select unallocated@0 x@@11) (select (dom pool@0) x@@11))
 :qid |allocmembpl.24:11|
 :skolemid |5|
))) (=> (and (and (and (select (dom l) i@@1) (= (select (q@map l) i@@1) (select mem@0 i@@1))) (select (dom l) i@@1)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((_ map or) (dom l) ((as const (Array Int Bool)) false)))) (= (ControlFlow 0 18) 17))) inline$atomic_WriteLow$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (forall ((x@@12 Int) ) (!  (=> (select unallocated x@@12) (select (dom pool) x@@12))
 :qid |allocmembpl.24:11|
 :skolemid |5|
)) (=> (and (and (select (dom l) i@@1) (= (select (q@map l) i@@1) (select mem i@@1))) (= (ControlFlow 0 19) 18)) anon0_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$atomic_Alloc$0$l@2 () T@lmap)
(declare-fun inline$atomic_Alloc$0$i@1 () Int)
(declare-fun Trigger_atomic_Alloc_m ((Array Int Int)) Bool)
(declare-fun inline$atomic_Alloc$0$m@1 () (Array Int Int))
(declare-fun pool@1 () T@lmap)
(declare-fun pool@2 () T@lmap)
(declare-fun Civl_linear_mem_available@2 () (Array Int Bool))
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun pool@0 () T@lmap)
(set-info :boogie-vc-id Civl_Main_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) true) (=> (= (ControlFlow 0 11) (- 0 10)) (=> false true)))))
(let ((anon2_LoopBody$1_@2_anon2_LoopHead_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon2_LoopBody$1_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (select (dom inline$atomic_Alloc$0$l@2) inline$atomic_Alloc$0$i@1)) (=> (select (dom inline$atomic_Alloc$0$l@2) inline$atomic_Alloc$0$i@1) (and (and (=> (= (ControlFlow 0 13) 9) anon2_LoopBody$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 13) 11) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 13) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$atomic_Alloc$0$anon0_correct  (=> (Trigger_atomic_Alloc_m inline$atomic_Alloc$0$m@1) (=> (and (and (select (dom pool@1) inline$atomic_Alloc$0$i@1) (= pool@2 (Remove pool@1 inline$atomic_Alloc$0$i@1))) (and (= inline$atomic_Alloc$0$l@2 (Add (Empty inline$atomic_Alloc$0$m@1) inline$atomic_Alloc$0$i@1)) (= (ControlFlow 0 15) 13))) anon2_LoopBody$1_correct))))
(let ((anon2_LoopHead_correct  (=> (and (or false true) (= Civl_linear_mem_available@2 ((_ map or) (dom pool@1) ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 16) 15) inline$atomic_Alloc$0$anon0_correct) (=> (= (ControlFlow 0 16) 6) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 16) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((as const (Array Int Bool)) false))) (and (and (=> (= (ControlFlow 0 17) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 17) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 16) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun pool@3 () T@lmap)
(declare-fun pool@2 () T@lmap)
(declare-fun inline$atomic_Alloc$0$i@1 () Int)
(declare-fun inline$atomic_Read$1$o@2 () Int)
(declare-fun |inline$atomic_Write$1$l'@2| () T@lmap)
(declare-fun inline$atomic_Alloc$0$l@2 () T@lmap)
(declare-fun Trigger_atomic_Alloc_m ((Array Int Int)) Bool)
(declare-fun inline$atomic_Alloc$0$m@1 () (Array Int Int))
(declare-fun pool@1 () T@lmap)
(declare-fun |inline$atomic_Write$0$l'@1| () T@lmap)
(declare-fun Civl_linear_mem_available@2 () (Array Int Bool))
(declare-fun inline$atomic_Read$0$o@1 () Int)
(declare-fun i@@1 () Int)
(declare-fun local_in () T@lmap)
(declare-fun pool@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_Thread_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 33) (let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) true) (=> (= (ControlFlow 0 11) (- 0 10)) (=> false true)))))
(let ((anon2_LoopBody$4_@2_anon2_LoopHead_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$atomic_Free$0$anon0_correct  (=> (= pool@3 (Add pool@2 inline$atomic_Alloc$0$i@1)) (and (and (=> (= (ControlFlow 0 13) 9) anon2_LoopBody$4_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 13) 11) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 13) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody$3_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (= inline$atomic_Read$1$o@2 42)) (=> (= inline$atomic_Read$1$o@2 42) (and (=> (= (ControlFlow 0 14) (- 0 15)) (select (dom |inline$atomic_Write$1$l'@2|) inline$atomic_Alloc$0$i@1)) (=> (select (dom |inline$atomic_Write$1$l'@2|) inline$atomic_Alloc$0$i@1) (=> (= (ControlFlow 0 14) 13) inline$atomic_Free$0$anon0_correct)))))))
(let ((inline$atomic_Read$1$anon0_correct  (=> (and (= inline$atomic_Read$1$o@2 (select (q@map |inline$atomic_Write$1$l'@2|) inline$atomic_Alloc$0$i@1)) (= (ControlFlow 0 17) 14)) anon2_LoopBody$3_correct)))
(let ((anon2_LoopBody$2_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (select (dom |inline$atomic_Write$1$l'@2|) inline$atomic_Alloc$0$i@1)) (=> (select (dom |inline$atomic_Write$1$l'@2|) inline$atomic_Alloc$0$i@1) (=> (= (ControlFlow 0 18) 17) inline$atomic_Read$1$anon0_correct)))))
(let ((inline$atomic_Write$1$anon0_correct  (=> (and (= |inline$atomic_Write$1$l'@2| (cons (dom inline$atomic_Alloc$0$l@2) (store (q@map inline$atomic_Alloc$0$l@2) inline$atomic_Alloc$0$i@1 42))) (= (ControlFlow 0 20) 18)) anon2_LoopBody$2_correct)))
(let ((anon2_LoopBody$1_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (select (dom inline$atomic_Alloc$0$l@2) inline$atomic_Alloc$0$i@1)) (=> (select (dom inline$atomic_Alloc$0$l@2) inline$atomic_Alloc$0$i@1) (=> (= (ControlFlow 0 21) 20) inline$atomic_Write$1$anon0_correct)))))
(let ((inline$atomic_Alloc$0$anon0_correct  (=> (Trigger_atomic_Alloc_m inline$atomic_Alloc$0$m@1) (=> (and (and (select (dom pool@1) inline$atomic_Alloc$0$i@1) (= pool@2 (Remove pool@1 inline$atomic_Alloc$0$i@1))) (and (= inline$atomic_Alloc$0$l@2 (Add (Empty inline$atomic_Alloc$0$m@1) inline$atomic_Alloc$0$i@1)) (= (ControlFlow 0 23) 21))) anon2_LoopBody$1_correct))))
(let ((anon2_LoopHead_correct  (=> (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom |inline$atomic_Write$0$l'@1|) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)) (=> (and (or false true) (= Civl_linear_mem_available@2 ((_ map or) (dom pool@1) ((_ map or) (dom |inline$atomic_Write$0$l'@1|) ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 24) 23) inline$atomic_Alloc$0$anon0_correct) (=> (= (ControlFlow 0 24) 6) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 24) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (= inline$atomic_Read$0$o@1 42)) (=> (= inline$atomic_Read$0$o@1 42) (and (and (=> (= (ControlFlow 0 25) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 25) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 25) 24) anon2_LoopHead_correct))))))
(let ((inline$atomic_Read$0$anon0_correct  (=> (and (= inline$atomic_Read$0$o@1 (select (q@map |inline$atomic_Write$0$l'@1|) i@@1)) (= (ControlFlow 0 27) 25)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (select (dom |inline$atomic_Write$0$l'@1|) i@@1)) (=> (select (dom |inline$atomic_Write$0$l'@1|) i@@1) (=> (= (ControlFlow 0 28) 27) inline$atomic_Read$0$anon0_correct)))))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= |inline$atomic_Write$0$l'@1| (cons (dom local_in) (store (q@map local_in) i@@1 42))) (= (ControlFlow 0 30) 28)) anon0$1_correct)))
(let ((anon0_correct  (=> (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom local_in) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom pool@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> (and (select (dom local_in) i@@1) (= Civl_linear_mem_available@0 ((_ map or) (dom pool@0) ((_ map or) (dom local_in) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (select (dom local_in) i@@1)) (=> (select (dom local_in) i@@1) (=> (= (ControlFlow 0 31) 30) inline$atomic_Write$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (select (dom local_in) i@@1) (= (ControlFlow 0 33) 31)) anon0_correct)))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_Alloc$0$l@1 () T@lmap)
(declare-fun pool@0 () T@lmap)
(declare-fun pool () T@lmap)
(declare-fun Trigger_atomic_Alloc_m ((Array Int Int)) Bool)
(declare-fun inline$atomic_Alloc$0$m@0 () (Array Int Int))
(declare-fun inline$atomic_Alloc$0$i@0 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Alloc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Alloc$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom inline$atomic_Alloc$0$l@1) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom pool@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (dom pool) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_Alloc$0$anon0_correct  (=> (Trigger_atomic_Alloc_m inline$atomic_Alloc$0$m@0) (=> (and (and (select (dom pool) inline$atomic_Alloc$0$i@0) (= pool@0 (Remove pool inline$atomic_Alloc$0$i@0))) (and (= inline$atomic_Alloc$0$l@1 (Add (Empty inline$atomic_Alloc$0$m@0) inline$atomic_Alloc$0$i@0)) (= (ControlFlow 0 3) 2))) inline$atomic_Alloc$0$Return_correct))))
(let ((inline$atomic_Alloc$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$atomic_Alloc$0$anon0_correct)))
inline$atomic_Alloc$0$Entry_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun pool@0 () T@lmap)
(declare-fun l () T@lmap)
(declare-fun pool () T@lmap)
(declare-fun i@@1 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Free)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Free$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom pool@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom pool) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_Free$0$anon0_correct  (=> (and (= pool@0 (Add pool i@@1)) (= (ControlFlow 0 3) 2)) inline$atomic_Free$0$Return_correct)))
(let ((inline$atomic_Free$0$Entry_correct  (=> (and (select (dom l) i@@1) (= (ControlFlow 0 4) 3)) inline$atomic_Free$0$anon0_correct)))
inline$atomic_Free$0$Entry_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l () T@lmap)
(declare-fun inline$atomic_Read$0$o@1 () Int)
(declare-fun i@@1 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Read)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Read$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom l) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_Read$0$anon0_correct  (=> (and (= inline$atomic_Read$0$o@1 (select (q@map l) i@@1)) (= (ControlFlow 0 3) 2)) inline$atomic_Read$0$Return_correct)))
(let ((inline$atomic_Read$0$Entry_correct  (=> (and (select (dom l) i@@1) (= (ControlFlow 0 4) 3)) inline$atomic_Read$0$anon0_correct)))
inline$atomic_Read$0$Entry_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$atomic_Write$0$l'@1| () T@lmap)
(declare-fun l () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun o () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom |inline$atomic_Write$0$l'@1|) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom l) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= |inline$atomic_Write$0$l'@1| (cons (dom l) (store (q@map l) i@@1 o))) (= (ControlFlow 0 3) 2)) inline$atomic_Write$0$Return_correct)))
(let ((inline$atomic_Write$0$Entry_correct  (=> (and (select (dom l) i@@1) (= (ControlFlow 0 4) 3)) inline$atomic_Write$0$anon0_correct)))
inline$atomic_Write$0$Entry_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AllocLinear$0$l@1 () T@lmap)
(declare-fun pool@0 () T@lmap)
(declare-fun pool () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun mem () (Array Int Int))
(set-info :boogie-vc-id Civl_LinearityChecker_AllocLinear)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AllocLinear$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom inline$AllocLinear$0$l@1) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom pool@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (dom pool) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AllocLinear$0$anon0_correct  (=> (= pool@0 (Remove pool i@@1)) (=> (and (= inline$AllocLinear$0$l@1 (Add (Empty mem) i@@1)) (= (ControlFlow 0 3) 2)) inline$AllocLinear$0$Return_correct))))
(let ((inline$AllocLinear$0$Entry_correct  (=> (and (select (dom pool) i@@1) (= (ControlFlow 0 4) 3)) inline$AllocLinear$0$anon0_correct)))
inline$AllocLinear$0$Entry_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun pool@0 () T@lmap)
(declare-fun l () T@lmap)
(declare-fun pool () T@lmap)
(declare-fun i@@1 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_FreeLinear)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$FreeLinear$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom pool@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom pool) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$FreeLinear$0$anon0_correct  (=> (and (= pool@0 (Add pool i@@1)) (= (ControlFlow 0 3) 2)) inline$FreeLinear$0$Return_correct)))
(let ((inline$FreeLinear$0$Entry_correct  (=> (and (select (dom l) i@@1) (= (ControlFlow 0 4) 3)) inline$FreeLinear$0$anon0_correct)))
inline$FreeLinear$0$Entry_correct))))
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
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun Add (T@lmap Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun Empty ((Array Int Int)) T@lmap)
(assert (forall ((x T@lmap) (i Int) ) (!  (and (= (dom (Remove x i)) (store (dom x) i false)) (= (q@map (Remove x i)) (q@map x)))
 :qid |allocmembpl.20:15|
 :skolemid |4|
)))
(assert (forall ((x@@0 T@lmap) (i@@0 Int) ) (!  (and (= (dom (Add x@@0 i@@0)) (store (dom x@@0) i@@0 true)) (= (q@map (Add x@@0 i@@0)) (q@map x@@0)))
 :qid |allocmembpl.17:15|
 :skolemid |3|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |6|
)))
(assert (forall ((x@@2 T@lmap) ) (! (= (cons (dom x@@2) (q@map x@@2)) x@@2)
 :qid |allocmembpl.11:15|
 :skolemid |1|
 :pattern ( (dom x@@2))
 :pattern ( (q@map x@@2))
)))
(assert (forall ((m (Array Int Int)) ) (! (= (Empty m) (cons ((as const (Array Int Bool)) false) m))
 :qid |allocmembpl.14:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@3 y)) x@@3) (= (q@map (cons x@@3 y)) y))
 :qid |allocmembpl.10:15|
 :skolemid |0|
 :pattern ( (cons x@@3 y))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$WriteLinear$0$l'@1| () T@lmap)
(declare-fun l () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun o () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_WriteLinear)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$WriteLinear$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom |inline$WriteLinear$0$l'@1|) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom l) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$WriteLinear$0$anon0_correct  (=> (and (= |inline$WriteLinear$0$l'@1| (cons (dom l) (store (q@map l) i@@1 o))) (= (ControlFlow 0 3) 2)) inline$WriteLinear$0$Return_correct)))
(let ((inline$WriteLinear$0$Entry_correct  (=> (and (select (dom l) i@@1) (= (ControlFlow 0 4) 3)) inline$WriteLinear$0$anon0_correct)))
inline$WriteLinear$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
