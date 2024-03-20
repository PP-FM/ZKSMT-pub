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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () Int)
(declare-fun second_tid () Int)
(declare-fun first_tid () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLockAcquire_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockAcquire$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock 0) (= second_tid 0)) (= second_tid first_tid))))))
(let ((inline$AtomicLockAcquire$1$anon0_correct  (=> (and (= first_tid 0) (= (ControlFlow 0 3) 2)) inline$AtomicLockAcquire$1$Return_correct)))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 4) 3)) inline$AtomicLockAcquire$1$anon0_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 5) 4))) inline$AtomicLockAcquire$0$anon0_correct)))
inline$AtomicLockAcquire$0$Entry_correct)))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () Int)
(declare-fun lock () Int)
(declare-fun second_tid () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLockAcquire_AtomicLockRelease)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockRelease$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= 0 0) (= 0 first_tid))))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 3) 2)) inline$AtomicLockRelease$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (and (and (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid)) (= lock second_tid)) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 4) 3))) inline$AtomicLockAcquire$0$anon0_correct))))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_tid () Int)
(declare-fun first_tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicLockRelease_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockAcquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))))))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 4) 2)) inline$AtomicLockAcquire$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (and (= lock first_tid) (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 5) 4))) inline$AtomicLockAcquire$0$anon0_correct))))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_tid () Int)
(declare-fun first_tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReadCollectorPhaseLocked_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockAcquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))))))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 4) 2)) inline$AtomicLockAcquire$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (and (= lock first_tid) (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 5) 4))) inline$AtomicLockAcquire$0$anon0_correct))))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_tid () Int)
(declare-fun first_tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReadCollectorPhaseUnlocked_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockAcquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (not (= second_tid first_tid)))) (=> (=> true (not (= second_tid first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))))))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 4) 2)) inline$AtomicLockAcquire$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (not (= lock first_tid)) (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 5) 4))) inline$AtomicLockAcquire$0$anon0_correct))))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(declare-fun second_tid () Int)
(declare-fun first_tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicSetCollectorPhase_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$AtomicLockAcquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= collectorPhase collectorPhaseDelayed))) (=> (=> true (= collectorPhase collectorPhaseDelayed)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))))))))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 5) 2)) inline$AtomicLockAcquire$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (= collectorPhase collectorPhaseDelayed)) (=> (and (and (= lock first_tid) (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 6) 5))) inline$AtomicLockAcquire$0$anon0_correct))))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_tid () Int)
(declare-fun first_tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicBarrier_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockAcquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))))))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 4) 2)) inline$AtomicLockAcquire$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (= lock first_tid) (or (and (<= 1 first_tid) (<= first_tid numMutators)) (= first_tid GcTid))) (and (or (and (<= 1 second_tid) (<= second_tid numMutators)) (= second_tid GcTid)) (= (ControlFlow 0 5) 4))) inline$AtomicLockAcquire$0$anon0_correct))))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@3 () Int)
(declare-fun lock@1 () Int)
(declare-fun collectorPhase@1 () Int)
(declare-fun collectorPhaseDelayed@1 () Int)
(declare-fun tid () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun lock@2 () Int)
(declare-fun Mem@6 () (Array Int Int))
(declare-fun lock@6 () Int)
(declare-fun StoreBufferPresent@3 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@3 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@3 () Int)
(declare-fun collectorPhaseDelayed@3 () Int)
(declare-fun StoreBufferVal@1 () (Array Int (Array Int Int)))
(declare-fun Mem@4 () (Array Int Int))
(declare-fun lock@4 () Int)
(declare-fun StoreBufferPresent@1 () (Array Int (Array Int Bool)))
(declare-fun Mem@1 () (Array Int Int))
(declare-fun Mem@3 () (Array Int Int))
(declare-fun Civl_global_old_Mem@1 () (Array Int Int))
(declare-fun Civl_global_old_lock@1 () Int)
(declare-fun Civl_global_old_StoreBufferPresent@1 () (Array Int (Array Int Bool)))
(declare-fun Civl_global_old_StoreBufferVal@1 () (Array Int (Array Int Int)))
(declare-fun Civl_global_old_collectorPhase@1 () Int)
(declare-fun Civl_global_old_collectorPhaseDelayed@1 () Int)
(declare-fun Mem@5 () (Array Int Int))
(declare-fun lock@5 () Int)
(declare-fun StoreBufferPresent@2 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@2 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@2 () Int)
(declare-fun collectorPhaseDelayed@2 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$AtomicLockCAS$0$status@2 () Bool)
(declare-fun Mem@2 () (Array Int Int))
(declare-fun Mem@0 () (Array Int Int))
(declare-fun lock@0 () Int)
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@0 () Int)
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_LockAcquire_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 58) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 37) (- 0 39)) (or false (or (and (and (= lock@3 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (and (and (= lock@1 0) (= lock@3 tid)) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1))))) (=> (or false (or (and (and (= lock@3 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (and (and (= lock@1 0) (= lock@3 tid)) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> false (and (and (= lock@3 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)))) (=> (=> false (and (and (= lock@3 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1))) (=> (and (and (= Civl_pc@0  (=> (and (and (= lock@3 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) false)) (= Civl_ok@0  (or (and (and (and (= lock@1 0) (= lock@3 tid)) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) false))) (= (ControlFlow 0 37) (- 0 36))) Civl_ok@0)))))))
(let ((anon3_LoopDone_@2_Civl_ReturnChecker_correct  (=> (and (= lock@3 lock@1) (= (ControlFlow 0 44) 37)) Civl_ReturnChecker_correct)))
(let ((anon4_Then_@2_Civl_ReturnChecker_correct  (=> (and (= lock@3 lock@2) (= (ControlFlow 0 40) 37)) Civl_ReturnChecker_correct)))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 27) (- 0 33)) (or (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@3 i) lockAddr)) (= (select (select StoreBufferVal@3 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@6 i@@0) (= (select StoreBufferPresent@3 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@3 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@3 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@2) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))) (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)))) (and (=> (= (ControlFlow 0 27) (- 0 32)) (or (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@3 i@@3) lockAddr)) (= (select (select StoreBufferVal@3 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@6 i@@4) (= (select StoreBufferPresent@3 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@3 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@3 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@6) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@3 i@@7) lockAddr)) (= (select (select StoreBufferVal@3 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |29|
)))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (or (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@3 i@@8) lockAddr)) (= (select (select StoreBufferVal@3 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@6 i@@9) (= (select StoreBufferPresent@3 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@3 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@3 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@11) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@6 i@@12) (= (select StoreBufferPresent@3 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |30|
)))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (or (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@3 i@@13) lockAddr)) (= (select (select StoreBufferVal@3 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@6 i@@14) (= (select StoreBufferPresent@3 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@3 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@3 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@16) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@3 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@3 i@@18) lockAddr)) (= (select (select StoreBufferVal@3 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@6 i@@19) (= (select StoreBufferPresent@3 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@3 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@3 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@21) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@3 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@22) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |31|
)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@3 i@@23) lockAddr)) (= (select (select StoreBufferVal@3 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@6 i@@24) (= (select StoreBufferPresent@3 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@3 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@3 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@26) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr)))) (=> (= (ControlFlow 0 27) (- 0 26)) (and (and (and (and (and (= (= (select Mem@6 lockAddr) 0) (= lock@6 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@3 i@@27) lockAddr)) (= (select (select StoreBufferVal@3 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@6 i@@28) (= (select StoreBufferPresent@3 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@6 collectorPhaseAddr) collectorPhase@3) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@3 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@3 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@30) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@6 collectorPhaseAddr))))))))))))
(let ((Civl_UnifiedReturn_correct  (=> (= StoreBufferVal@3 StoreBufferVal@1) (=> (and (= Mem@6 Mem@4) (= collectorPhaseDelayed@3 collectorPhaseDelayed@1)) (=> (and (and (= collectorPhase@3 collectorPhase@1) (= lock@6 lock@4)) (and (= StoreBufferPresent@3 StoreBufferPresent@1) (= (ControlFlow 0 34) 27))) GeneratedUnifiedExit_correct)))))
(let ((anon3_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (= Mem@4 Mem@1) (=> (and (= lock@4 lock@1) (= (ControlFlow 0 45) 34)) Civl_UnifiedReturn_correct))))
(let ((anon4_Then_@2_Civl_UnifiedReturn_correct  (=> (= Mem@4 Mem@3) (=> (and (= lock@4 lock@2) (= (ControlFlow 0 35) 34)) Civl_UnifiedReturn_correct))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (and (= lock@2 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1))) (=> (and (and (= lock@2 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (=> (= (ControlFlow 0 22) (- 0 21)) (=> false true))))))
(let ((anon4_Else_@2_anon3_LoopHead_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@1 i@@31) lockAddr)) (= (select (select StoreBufferVal@1 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@2 i@@32) (= (select StoreBufferPresent@1 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@1 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@1 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@34) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))) (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select StoreBufferPresent@1 i@@35) lockAddr)) (= (select (select StoreBufferVal@1 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= lock@2 i@@36) (= (select StoreBufferPresent@1 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select StoreBufferPresent@1 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select StoreBufferPresent@1 i@@38) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@38) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@1 i@@39) lockAddr)) (= (select (select StoreBufferVal@1 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |26|
)))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@40 Int) ) (!  (=> (and (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (select (select StoreBufferPresent@1 i@@40) lockAddr)) (= (select (select StoreBufferVal@1 i@@40) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@41 Int) ) (!  (=> (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (or (= lock@2 i@@41) (= (select StoreBufferPresent@1 i@@41) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@42 Int) ) (!  (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@1 i@@42) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent@1 i@@43) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@43) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock@2 i@@44) (= (select StoreBufferPresent@1 i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |27|
)))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@45 Int) ) (!  (=> (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent@1 i@@45) lockAddr)) (= (select (select StoreBufferVal@1 i@@45) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@46 Int) ) (!  (=> (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (or (= lock@2 i@@46) (= (select StoreBufferPresent@1 i@@46) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@47 Int) ) (!  (and (or (and (<= 1 i@@47) (<= i@@47 numMutators)) (= i@@47 GcTid)) (select (select StoreBufferPresent@1 i@@47) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@48 Int) ) (!  (=> (and (or (and (<= 1 i@@48) (<= i@@48 numMutators)) (= i@@48 GcTid)) (select (select StoreBufferPresent@1 i@@48) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@48) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@49 Int) ) (!  (and (or (and (<= 1 i@@49) (<= i@@49 numMutators)) (= i@@49 GcTid)) (select (select StoreBufferPresent@1 i@@49) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@50 Int) ) (!  (=> (and (or (and (<= 1 i@@50) (<= i@@50 numMutators)) (= i@@50 GcTid)) (select (select StoreBufferPresent@1 i@@50) lockAddr)) (= (select (select StoreBufferVal@1 i@@50) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@51 Int) ) (!  (=> (or (and (<= 1 i@@51) (<= i@@51 numMutators)) (= i@@51 GcTid)) (or (= lock@2 i@@51) (= (select StoreBufferPresent@1 i@@51) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@52 Int) ) (!  (and (or (and (<= 1 i@@52) (<= i@@52 numMutators)) (= i@@52 GcTid)) (select (select StoreBufferPresent@1 i@@52) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@53 Int) ) (!  (=> (and (or (and (<= 1 i@@53) (<= i@@53 numMutators)) (= i@@53 GcTid)) (select (select StoreBufferPresent@1 i@@53) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@53) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))) (forall ((i@@54 Int) ) (!  (=> (and (or (and (<= 1 i@@54) (<= i@@54 numMutators)) (= i@@54 GcTid)) (select (select StoreBufferPresent@1 i@@54) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@54) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |28|
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@55 Int) ) (!  (=> (and (or (and (<= 1 i@@55) (<= i@@55 numMutators)) (= i@@55 GcTid)) (select (select StoreBufferPresent@1 i@@55) lockAddr)) (= (select (select StoreBufferVal@1 i@@55) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@56 Int) ) (!  (=> (or (and (<= 1 i@@56) (<= i@@56 numMutators)) (= i@@56 GcTid)) (or (= lock@2 i@@56) (= (select StoreBufferPresent@1 i@@56) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@57 Int) ) (!  (and (or (and (<= 1 i@@57) (<= i@@57 numMutators)) (= i@@57 GcTid)) (select (select StoreBufferPresent@1 i@@57) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@58 Int) ) (!  (=> (and (or (and (<= 1 i@@58) (<= i@@58 numMutators)) (= i@@58 GcTid)) (select (select StoreBufferPresent@1 i@@58) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@58) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr)))) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@59 Int) ) (!  (=> (and (or (and (<= 1 i@@59) (<= i@@59 numMutators)) (= i@@59 GcTid)) (select (select StoreBufferPresent@1 i@@59) lockAddr)) (= (select (select StoreBufferVal@1 i@@59) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@60 Int) ) (!  (=> (or (and (<= 1 i@@60) (<= i@@60 numMutators)) (= i@@60 GcTid)) (or (= lock@2 i@@60) (= (select StoreBufferPresent@1 i@@60) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@1) (exists ((i@@61 Int) ) (!  (and (or (and (<= 1 i@@61) (<= i@@61 numMutators)) (= i@@61 GcTid)) (select (select StoreBufferPresent@1 i@@61) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@62 Int) ) (!  (=> (and (or (and (<= 1 i@@62) (<= i@@62 numMutators)) (= i@@62 GcTid)) (select (select StoreBufferPresent@1 i@@62) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@62) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@3 collectorPhaseAddr))))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Civl_global_old_Mem@1 lockAddr) 0) (= Civl_global_old_lock@1 0)) (forall ((i@@63 Int) ) (!  (=> (and (or (and (<= 1 i@@63) (<= i@@63 numMutators)) (= i@@63 GcTid)) (select (select Civl_global_old_StoreBufferPresent@1 i@@63) lockAddr)) (= (select (select Civl_global_old_StoreBufferVal@1 i@@63) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@64 Int) ) (!  (=> (or (and (<= 1 i@@64) (<= i@@64 numMutators)) (= i@@64 GcTid)) (or (= Civl_global_old_lock@1 i@@64) (= (select Civl_global_old_StoreBufferPresent@1 i@@64) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Civl_global_old_Mem@1 collectorPhaseAddr) Civl_global_old_collectorPhase@1) (exists ((i@@65 Int) ) (!  (and (or (and (<= 1 i@@65) (<= i@@65 numMutators)) (= i@@65 GcTid)) (select (select Civl_global_old_StoreBufferPresent@1 i@@65) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@66 Int) ) (!  (=> (and (or (and (<= 1 i@@66) (<= i@@66 numMutators)) (= i@@66 GcTid)) (select (select Civl_global_old_StoreBufferPresent@1 i@@66) collectorPhaseAddr)) (= (select (select Civl_global_old_StoreBufferVal@1 i@@66) collectorPhaseAddr) Civl_global_old_collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= Civl_global_old_collectorPhaseDelayed@1 (select Civl_global_old_Mem@1 collectorPhaseAddr))) (= (ControlFlow 0 10) (- 0 9))) (and (and (and (and (and (= (= (select Mem@5 lockAddr) 0) (= lock@5 0)) (forall ((i@@67 Int) ) (!  (=> (and (or (and (<= 1 i@@67) (<= i@@67 numMutators)) (= i@@67 GcTid)) (select (select StoreBufferPresent@2 i@@67) lockAddr)) (= (select (select StoreBufferVal@2 i@@67) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@68 Int) ) (!  (=> (or (and (<= 1 i@@68) (<= i@@68 numMutators)) (= i@@68 GcTid)) (or (= lock@5 i@@68) (= (select StoreBufferPresent@2 i@@68) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@5 collectorPhaseAddr) collectorPhase@2) (exists ((i@@69 Int) ) (!  (and (or (and (<= 1 i@@69) (<= i@@69 numMutators)) (= i@@69 GcTid)) (select (select StoreBufferPresent@2 i@@69) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@70 Int) ) (!  (=> (and (or (and (<= 1 i@@70) (<= i@@70 numMutators)) (= i@@70 GcTid)) (select (select StoreBufferPresent@2 i@@70) collectorPhaseAddr)) (= (select (select StoreBufferVal@2 i@@70) collectorPhaseAddr) collectorPhase@2))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@2 (select Mem@5 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select Civl_global_old_StoreBufferPresent@1 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 8) (- 0 7))) (select (select StoreBufferPresent@2 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select Civl_global_old_StoreBufferPresent@1 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 5) (- 0 4))) (not (select (select StoreBufferPresent@2 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= StoreBufferVal@2 StoreBufferVal@1) (=> (and (and (= StoreBufferPresent@2 StoreBufferPresent@1) (= lock@5 lock@1)) (and (= collectorPhase@2 collectorPhase@1) (= collectorPhaseDelayed@2 collectorPhaseDelayed@1))) (=> (and (and (and (= Civl_global_old_Mem@1 Mem@1) (= Civl_global_old_StoreBufferVal@1 StoreBufferVal@1)) (and (= Civl_global_old_StoreBufferPresent@1 StoreBufferPresent@1) (= Civl_global_old_lock@1 lock@1))) (and (and (= Civl_global_old_collectorPhase@1 collectorPhase@1) (= Civl_global_old_collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@2) (= Mem@5 Mem@1)))) (and (and (and (=> (= (ControlFlow 0 46) 5) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct) (=> (= (ControlFlow 0 46) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 46) 8) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 46) 10) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)))))))
(let ((anon3_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 47) 44) anon3_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 47) 45) anon3_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 47) 46) anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= StoreBufferVal@2 StoreBufferVal@1) (=> (and (and (= StoreBufferPresent@2 StoreBufferPresent@1) (= lock@5 lock@2)) (and (= collectorPhase@2 collectorPhase@1) (= collectorPhaseDelayed@2 collectorPhaseDelayed@1))) (=> (and (and (and (= Civl_global_old_Mem@1 Mem@1) (= Civl_global_old_StoreBufferVal@1 StoreBufferVal@1)) (and (= Civl_global_old_StoreBufferPresent@1 StoreBufferPresent@1) (= Civl_global_old_lock@1 lock@1))) (and (and (= Civl_global_old_collectorPhase@1 collectorPhase@1) (= Civl_global_old_collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@2) (= Mem@5 Mem@3)))) (and (and (and (=> (= (ControlFlow 0 25) 5) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct) (=> (= (ControlFlow 0 25) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 25) 8) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 25) 10) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)))))))
(let ((anon4_Then_correct  (=> inline$AtomicLockCAS$0$status@2 (and (and (=> (= (ControlFlow 0 41) 40) anon4_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 41) 35) anon4_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 41) 25) anon4_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= StoreBufferVal@2 StoreBufferVal@1) (=> (and (and (= StoreBufferPresent@2 StoreBufferPresent@1) (= lock@5 lock@2)) (and (= collectorPhase@2 collectorPhase@1) (= collectorPhaseDelayed@2 collectorPhaseDelayed@1))) (=> (and (and (and (= Civl_global_old_Mem@1 Mem@1) (= Civl_global_old_StoreBufferVal@1 StoreBufferVal@1)) (and (= Civl_global_old_StoreBufferPresent@1 StoreBufferPresent@1) (= Civl_global_old_lock@1 lock@1))) (and (and (= Civl_global_old_collectorPhase@1 collectorPhase@1) (= Civl_global_old_collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@2) (= Mem@5 Mem@3)))) (and (and (and (=> (= (ControlFlow 0 20) 5) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct) (=> (= (ControlFlow 0 20) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 8) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 20) 10) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)))))))
(let ((anon4_Else_correct  (=> (not inline$AtomicLockCAS$0$status@2) (and (and (=> (= (ControlFlow 0 24) 13) anon4_Else_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 24) 20) anon4_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 22) Civl_UnchangedChecker_correct)))))
(let ((inline$AtomicLockCAS$0$anon3_Else_correct  (=> (= Mem@3 Mem@1) (=> (and (= lock@2 lock@1) (= inline$AtomicLockCAS$0$status@2 false)) (and (=> (= (ControlFlow 0 43) 41) anon4_Then_correct) (=> (= (ControlFlow 0 43) 24) anon4_Else_correct))))))
(let ((inline$AtomicLockCAS$0$anon3_Then_correct  (=> (= (select Mem@1 lockAddr) 0) (=> (and (and (= Mem@2 (store Mem@1 lockAddr 1)) (= Mem@3 Mem@2)) (and (= lock@2 tid) (= inline$AtomicLockCAS$0$status@2 true))) (and (=> (= (ControlFlow 0 42) 41) anon4_Then_correct) (=> (= (ControlFlow 0 42) 24) anon4_Else_correct))))))
(let ((anon3_LoopHead_correct  (=> (or false (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid))) (=> (and (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@1 0)) (forall ((i@@71 Int) ) (!  (=> (and (or (and (<= 1 i@@71) (<= i@@71 numMutators)) (= i@@71 GcTid)) (select (select StoreBufferPresent@1 i@@71) lockAddr)) (= (select (select StoreBufferVal@1 i@@71) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@72 Int) ) (!  (=> (or (and (<= 1 i@@72) (<= i@@72 numMutators)) (= i@@72 GcTid)) (or (= lock@1 i@@72) (= (select StoreBufferPresent@1 i@@72) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@1) (exists ((i@@73 Int) ) (!  (and (or (and (<= 1 i@@73) (<= i@@73 numMutators)) (= i@@73 GcTid)) (select (select StoreBufferPresent@1 i@@73) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@74 Int) ) (!  (=> (and (or (and (<= 1 i@@74) (<= i@@74 numMutators)) (= i@@74 GcTid)) (select (select StoreBufferPresent@1 i@@74) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@74) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 48) 47) anon3_LoopDone_correct) (=> (= (ControlFlow 0 48) 42) inline$AtomicLockCAS$0$anon3_Then_correct)) (=> (= (ControlFlow 0 48) 43) inline$AtomicLockCAS$0$anon3_Else_correct))))))
(let ((anon0_@2_anon3_LoopHead_correct  (and (=> (= (ControlFlow 0 49) (- 0 56)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@75 Int) ) (!  (=> (and (or (and (<= 1 i@@75) (<= i@@75 numMutators)) (= i@@75 GcTid)) (select (select StoreBufferPresent@0 i@@75) lockAddr)) (= (select (select StoreBufferVal@0 i@@75) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@76 Int) ) (!  (=> (or (and (<= 1 i@@76) (<= i@@76 numMutators)) (= i@@76 GcTid)) (or (= lock@0 i@@76) (= (select StoreBufferPresent@0 i@@76) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@77 Int) ) (!  (and (or (and (<= 1 i@@77) (<= i@@77 numMutators)) (= i@@77 GcTid)) (select (select StoreBufferPresent@0 i@@77) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@78 Int) ) (!  (=> (and (or (and (<= 1 i@@78) (<= i@@78 numMutators)) (= i@@78 GcTid)) (select (select StoreBufferPresent@0 i@@78) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@78) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 49) (- 0 55)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@79 Int) ) (!  (=> (and (or (and (<= 1 i@@79) (<= i@@79 numMutators)) (= i@@79 GcTid)) (select (select StoreBufferPresent@0 i@@79) lockAddr)) (= (select (select StoreBufferVal@0 i@@79) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@80 Int) ) (!  (=> (or (and (<= 1 i@@80) (<= i@@80 numMutators)) (= i@@80 GcTid)) (or (= lock@0 i@@80) (= (select StoreBufferPresent@0 i@@80) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@81 Int) ) (!  (and (or (and (<= 1 i@@81) (<= i@@81 numMutators)) (= i@@81 GcTid)) (select (select StoreBufferPresent@0 i@@81) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@82 Int) ) (!  (=> (and (or (and (<= 1 i@@82) (<= i@@82 numMutators)) (= i@@82 GcTid)) (select (select StoreBufferPresent@0 i@@82) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@82) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@83 Int) ) (!  (=> (and (or (and (<= 1 i@@83) (<= i@@83 numMutators)) (= i@@83 GcTid)) (select (select StoreBufferPresent@0 i@@83) lockAddr)) (= (select (select StoreBufferVal@0 i@@83) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |23|
)))) (and (=> (= (ControlFlow 0 49) (- 0 54)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@84 Int) ) (!  (=> (and (or (and (<= 1 i@@84) (<= i@@84 numMutators)) (= i@@84 GcTid)) (select (select StoreBufferPresent@0 i@@84) lockAddr)) (= (select (select StoreBufferVal@0 i@@84) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@85 Int) ) (!  (=> (or (and (<= 1 i@@85) (<= i@@85 numMutators)) (= i@@85 GcTid)) (or (= lock@0 i@@85) (= (select StoreBufferPresent@0 i@@85) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@86 Int) ) (!  (and (or (and (<= 1 i@@86) (<= i@@86 numMutators)) (= i@@86 GcTid)) (select (select StoreBufferPresent@0 i@@86) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@87 Int) ) (!  (=> (and (or (and (<= 1 i@@87) (<= i@@87 numMutators)) (= i@@87 GcTid)) (select (select StoreBufferPresent@0 i@@87) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@87) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@88 Int) ) (!  (=> (or (and (<= 1 i@@88) (<= i@@88 numMutators)) (= i@@88 GcTid)) (or (= lock@0 i@@88) (= (select StoreBufferPresent@0 i@@88) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |24|
)))) (and (=> (= (ControlFlow 0 49) (- 0 53)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@89 Int) ) (!  (=> (and (or (and (<= 1 i@@89) (<= i@@89 numMutators)) (= i@@89 GcTid)) (select (select StoreBufferPresent@0 i@@89) lockAddr)) (= (select (select StoreBufferVal@0 i@@89) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@90 Int) ) (!  (=> (or (and (<= 1 i@@90) (<= i@@90 numMutators)) (= i@@90 GcTid)) (or (= lock@0 i@@90) (= (select StoreBufferPresent@0 i@@90) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@91 Int) ) (!  (and (or (and (<= 1 i@@91) (<= i@@91 numMutators)) (= i@@91 GcTid)) (select (select StoreBufferPresent@0 i@@91) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@92 Int) ) (!  (=> (and (or (and (<= 1 i@@92) (<= i@@92 numMutators)) (= i@@92 GcTid)) (select (select StoreBufferPresent@0 i@@92) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@92) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@93 Int) ) (!  (and (or (and (<= 1 i@@93) (<= i@@93 numMutators)) (= i@@93 GcTid)) (select (select StoreBufferPresent@0 i@@93) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 49) (- 0 52)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@94 Int) ) (!  (=> (and (or (and (<= 1 i@@94) (<= i@@94 numMutators)) (= i@@94 GcTid)) (select (select StoreBufferPresent@0 i@@94) lockAddr)) (= (select (select StoreBufferVal@0 i@@94) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@95 Int) ) (!  (=> (or (and (<= 1 i@@95) (<= i@@95 numMutators)) (= i@@95 GcTid)) (or (= lock@0 i@@95) (= (select StoreBufferPresent@0 i@@95) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@96 Int) ) (!  (and (or (and (<= 1 i@@96) (<= i@@96 numMutators)) (= i@@96 GcTid)) (select (select StoreBufferPresent@0 i@@96) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@97 Int) ) (!  (=> (and (or (and (<= 1 i@@97) (<= i@@97 numMutators)) (= i@@97 GcTid)) (select (select StoreBufferPresent@0 i@@97) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@97) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@98 Int) ) (!  (=> (and (or (and (<= 1 i@@98) (<= i@@98 numMutators)) (= i@@98 GcTid)) (select (select StoreBufferPresent@0 i@@98) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@98) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |25|
)))) (and (=> (= (ControlFlow 0 49) (- 0 51)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@99 Int) ) (!  (=> (and (or (and (<= 1 i@@99) (<= i@@99 numMutators)) (= i@@99 GcTid)) (select (select StoreBufferPresent@0 i@@99) lockAddr)) (= (select (select StoreBufferVal@0 i@@99) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@100 Int) ) (!  (=> (or (and (<= 1 i@@100) (<= i@@100 numMutators)) (= i@@100 GcTid)) (or (= lock@0 i@@100) (= (select StoreBufferPresent@0 i@@100) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@101 Int) ) (!  (and (or (and (<= 1 i@@101) (<= i@@101 numMutators)) (= i@@101 GcTid)) (select (select StoreBufferPresent@0 i@@101) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@102 Int) ) (!  (=> (and (or (and (<= 1 i@@102) (<= i@@102 numMutators)) (= i@@102 GcTid)) (select (select StoreBufferPresent@0 i@@102) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@102) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@103 Int) ) (!  (=> (and (or (and (<= 1 i@@103) (<= i@@103 numMutators)) (= i@@103 GcTid)) (select (select StoreBufferPresent@0 i@@103) lockAddr)) (= (select (select StoreBufferVal@0 i@@103) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@104 Int) ) (!  (=> (or (and (<= 1 i@@104) (<= i@@104 numMutators)) (= i@@104 GcTid)) (or (= lock@0 i@@104) (= (select StoreBufferPresent@0 i@@104) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@105 Int) ) (!  (and (or (and (<= 1 i@@105) (<= i@@105 numMutators)) (= i@@105 GcTid)) (select (select StoreBufferPresent@0 i@@105) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@106 Int) ) (!  (=> (and (or (and (<= 1 i@@106) (<= i@@106 numMutators)) (= i@@106 GcTid)) (select (select StoreBufferPresent@0 i@@106) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@106) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (=> (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@107 Int) ) (!  (=> (and (or (and (<= 1 i@@107) (<= i@@107 numMutators)) (= i@@107 GcTid)) (select (select StoreBufferPresent@0 i@@107) lockAddr)) (= (select (select StoreBufferVal@0 i@@107) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@108 Int) ) (!  (=> (or (and (<= 1 i@@108) (<= i@@108 numMutators)) (= i@@108 GcTid)) (or (= lock@0 i@@108) (= (select StoreBufferPresent@0 i@@108) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@109 Int) ) (!  (and (or (and (<= 1 i@@109) (<= i@@109 numMutators)) (= i@@109 GcTid)) (select (select StoreBufferPresent@0 i@@109) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@110 Int) ) (!  (=> (and (or (and (<= 1 i@@110) (<= i@@110 numMutators)) (= i@@110 GcTid)) (select (select StoreBufferPresent@0 i@@110) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@110) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (=> (= (ControlFlow 0 49) 48) anon3_LoopHead_correct)))))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= StoreBufferVal@2 StoreBufferVal@0) (=> (and (and (= StoreBufferPresent@2 StoreBufferPresent@0) (= lock@5 lock@0)) (and (= collectorPhase@2 collectorPhase@0) (= collectorPhaseDelayed@2 collectorPhaseDelayed@0))) (=> (and (and (and (= Civl_global_old_Mem@1 Mem@0) (= Civl_global_old_StoreBufferVal@1 StoreBufferVal@0)) (and (= Civl_global_old_StoreBufferPresent@1 StoreBufferPresent@0) (= Civl_global_old_lock@1 lock@0))) (and (and (= Civl_global_old_collectorPhase@1 collectorPhase@0) (= Civl_global_old_collectorPhaseDelayed@1 collectorPhaseDelayed@0)) (and (= Civl_linear_tid_available@3 Civl_linear_tid_available@0) (= Mem@5 Mem@0)))) (and (and (and (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct) (=> (= (ControlFlow 0 11) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 8) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= lock@0 0) (= lock@0 tid)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= lock@0 0) (= lock@0 tid)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))))))
(let ((anon0_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@111 Int) ) (!  (=> (and (or (and (<= 1 i@@111) (<= i@@111 numMutators)) (= i@@111 GcTid)) (select (select StoreBufferPresent@0 i@@111) lockAddr)) (= (select (select StoreBufferVal@0 i@@111) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@112 Int) ) (!  (=> (or (and (<= 1 i@@112) (<= i@@112 numMutators)) (= i@@112 GcTid)) (or (= lock@0 i@@112) (= (select StoreBufferPresent@0 i@@112) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@113 Int) ) (!  (and (or (and (<= 1 i@@113) (<= i@@113 numMutators)) (= i@@113 GcTid)) (select (select StoreBufferPresent@0 i@@113) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@114 Int) ) (!  (=> (and (or (and (<= 1 i@@114) (<= i@@114 numMutators)) (= i@@114 GcTid)) (select (select StoreBufferPresent@0 i@@114) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@114) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 57) 49) anon0_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 57) 11) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 57) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@115 Int) ) (!  (=> (and (or (and (<= 1 i@@115) (<= i@@115 numMutators)) (= i@@115 GcTid)) (select (select StoreBufferPresent i@@115) lockAddr)) (= (select (select StoreBufferVal i@@115) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@116 Int) ) (!  (=> (or (and (<= 1 i@@116) (<= i@@116 numMutators)) (= i@@116 GcTid)) (or (= lock i@@116) (= (select StoreBufferPresent i@@116) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@117 Int) ) (!  (and (or (and (<= 1 i@@117) (<= i@@117 numMutators)) (= i@@117 GcTid)) (select (select StoreBufferPresent i@@117) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@118 Int) ) (!  (=> (and (or (and (<= 1 i@@118) (<= i@@118 numMutators)) (= i@@118 GcTid)) (select (select StoreBufferPresent i@@118) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@118) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (= (ControlFlow 0 58) 57)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mem@4 () (Array Int Int))
(declare-fun lock@3 () Int)
(declare-fun StoreBufferPresent@5 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@4 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@3 () Int)
(declare-fun collectorPhaseDelayed@3 () Int)
(declare-fun tid () Int)
(declare-fun collectorPhaseDelayed@1 () Int)
(declare-fun collectorPhase@1 () Int)
(declare-fun StoreBufferPresent@3 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@2 () (Array Int (Array Int Int)))
(declare-fun Mem@2 () (Array Int Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun lock@1 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_Mem@0 () (Array Int Int))
(declare-fun Civl_global_old_lock@0 () Int)
(declare-fun Civl_global_old_StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun Civl_global_old_StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun Civl_global_old_collectorPhase@0 () Int)
(declare-fun Civl_global_old_collectorPhaseDelayed@0 () Int)
(declare-fun Mem@3 () (Array Int Int))
(declare-fun lock@2 () Int)
(declare-fun StoreBufferPresent@4 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@3 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@2 () Int)
(declare-fun collectorPhaseDelayed@2 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun Mem@1 () (Array Int Int))
(declare-fun StoreBufferPresent@2 () (Array Int (Array Int Bool)))
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun lock@0 () Int)
(declare-fun collectorPhase@0 () Int)
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun Mem@0 () (Array Int Int))
(declare-fun StoreBufferPresent@1 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@1 () (Array Int (Array Int Int)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_LockRelease_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 41) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 18) (- 0 25)) (or (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@5 i) lockAddr)) (= (select (select StoreBufferVal@4 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@3 i@@0) (= (select StoreBufferPresent@5 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@5 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@5 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@2) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)))) (and (=> (= (ControlFlow 0 18) (- 0 24)) (or (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@5 i@@3) lockAddr)) (= (select (select StoreBufferVal@4 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@3 i@@4) (= (select StoreBufferPresent@5 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@5 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@5 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@6) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@5 i@@7) lockAddr)) (= (select (select StoreBufferVal@4 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |35|
)))) (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@5 i@@8) lockAddr)) (= (select (select StoreBufferVal@4 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@3 i@@9) (= (select StoreBufferPresent@5 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@5 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@5 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@11) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@3 i@@12) (= (select StoreBufferPresent@5 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |36|
)))) (and (=> (= (ControlFlow 0 18) (- 0 22)) (or (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@5 i@@13) lockAddr)) (= (select (select StoreBufferVal@4 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@3 i@@14) (= (select StoreBufferPresent@5 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@5 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@5 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@16) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@5 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@5 i@@18) lockAddr)) (= (select (select StoreBufferVal@4 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@3 i@@19) (= (select StoreBufferPresent@5 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@5 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@5 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@21) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@5 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@22) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |37|
)))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@5 i@@23) lockAddr)) (= (select (select StoreBufferVal@4 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@3 i@@24) (= (select StoreBufferPresent@5 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@5 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@5 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@26) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@5 i@@27) lockAddr)) (= (select (select StoreBufferVal@4 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@3 i@@28) (= (select StoreBufferPresent@5 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@5 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@5 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@30) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr)))) (=> (and (and (and (and (and (= (= (select Mem@4 lockAddr) 0) (= lock@3 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@5 i@@31) lockAddr)) (= (select (select StoreBufferVal@4 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@3 i@@32) (= (select StoreBufferPresent@5 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@4 collectorPhaseAddr) collectorPhase@3) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@5 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@5 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@4 i@@34) collectorPhaseAddr) collectorPhase@3))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@3 (select Mem@4 collectorPhaseAddr))) (=> (= (ControlFlow 0 18) (- 0 17)) (not (select (select StoreBufferPresent@5 tid) lockAddr)))))))))))))
(let ((Civl_UnifiedReturn_correct  (=> (= collectorPhaseDelayed@3 collectorPhaseDelayed@1) (=> (and (= collectorPhase@3 collectorPhase@1) (= lock@3 0)) (=> (and (and (= StoreBufferPresent@5 StoreBufferPresent@3) (= StoreBufferVal@4 StoreBufferVal@2)) (and (= Mem@4 Mem@2) (= (ControlFlow 0 26) 18))) GeneratedUnifiedExit_correct)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) (or Civl_pc@0 (or (and (and (= 0 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (and (= 0 0) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1))))) (=> (or Civl_pc@0 (or (and (and (= 0 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) (and (and (= 0 0) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> Civl_pc@0 (and (and (= 0 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)))) (=> (=> Civl_pc@0 (and (and (= 0 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1))) (=> (and (and (= Civl_pc@1  (=> (and (and (= 0 lock@1) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) Civl_pc@0)) (= Civl_ok@1  (or (and (and (= 0 0) (= collectorPhase@1 collectorPhase@1)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@1)) Civl_ok@0))) (= (ControlFlow 0 13) (- 0 12))) Civl_ok@1)))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Civl_global_old_Mem@0 lockAddr) 0) (= Civl_global_old_lock@0 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select Civl_global_old_StoreBufferPresent@0 i@@35) lockAddr)) (= (select (select Civl_global_old_StoreBufferVal@0 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= Civl_global_old_lock@0 i@@36) (= (select Civl_global_old_StoreBufferPresent@0 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Civl_global_old_Mem@0 collectorPhaseAddr) Civl_global_old_collectorPhase@0) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select Civl_global_old_StoreBufferPresent@0 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select Civl_global_old_StoreBufferPresent@0 i@@38) collectorPhaseAddr)) (= (select (select Civl_global_old_StoreBufferVal@0 i@@38) collectorPhaseAddr) Civl_global_old_collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= Civl_global_old_collectorPhaseDelayed@0 (select Civl_global_old_Mem@0 collectorPhaseAddr))) (= (ControlFlow 0 10) (- 0 9))) (and (and (and (and (and (= (= (select Mem@3 lockAddr) 0) (= lock@2 0)) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@4 i@@39) lockAddr)) (= (select (select StoreBufferVal@3 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@40 Int) ) (!  (=> (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (or (= lock@2 i@@40) (= (select StoreBufferPresent@4 i@@40) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@3 collectorPhaseAddr) collectorPhase@2) (exists ((i@@41 Int) ) (!  (and (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (select (select StoreBufferPresent@4 i@@41) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@42 Int) ) (!  (=> (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@4 i@@42) collectorPhaseAddr)) (= (select (select StoreBufferVal@3 i@@42) collectorPhaseAddr) collectorPhase@2))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@2 (select Mem@3 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select Civl_global_old_StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 8) (- 0 7))) (select (select StoreBufferPresent@4 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select Civl_global_old_StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 5) (- 0 4))) (not (select (select StoreBufferPresent@4 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= Mem@3 Mem@2) (=> (and (and (= StoreBufferVal@3 StoreBufferVal@2) (= StoreBufferPresent@4 StoreBufferPresent@3)) (and (= lock@2 0) (= collectorPhase@2 collectorPhase@1))) (=> (and (and (and (= collectorPhaseDelayed@2 collectorPhaseDelayed@1) (= Civl_global_old_Mem@0 Mem@1)) (and (= Civl_global_old_StoreBufferVal@0 StoreBufferVal@2) (= Civl_global_old_StoreBufferPresent@0 StoreBufferPresent@2))) (and (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_collectorPhase@0 collectorPhase@1)) (and (= Civl_global_old_collectorPhaseDelayed@0 collectorPhaseDelayed@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)))) (and (and (and (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct) (=> (= (ControlFlow 0 16) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 8) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 16) 10) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)))))))
(let ((inline$AtomicFlushStoreBufferEntryForLock$0$anon0_correct  (=> (= (select StoreBufferPresent@2 tid) (store ((as const (Array Int Bool)) false) lockAddr true)) (=> (and (= Mem@2 (store Mem@1 lockAddr (select (select StoreBufferVal@2 tid) lockAddr))) (= StoreBufferPresent@3 (store StoreBufferPresent@2 tid (store (select StoreBufferPresent@2 tid) lockAddr false)))) (and (and (=> (= (ControlFlow 0 27) 13) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 27) 26) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 27) 16) anon0_0$1_@2_Civl_NoninterferenceChecker_correct))))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false)) (= Civl_ok@0  (or (and (and (= lock@0 0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false))) (and (=> (= (ControlFlow 0 28) (- 0 37)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent@1 i@@43) lockAddr)) (= (select (select StoreBufferVal@1 i@@43) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock@0 i@@44) (= (select StoreBufferPresent@1 i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@45 Int) ) (!  (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent@1 i@@45) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@46 Int) ) (!  (=> (and (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (select (select StoreBufferPresent@1 i@@46) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@46) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 28) (- 0 36)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@47 Int) ) (!  (=> (and (or (and (<= 1 i@@47) (<= i@@47 numMutators)) (= i@@47 GcTid)) (select (select StoreBufferPresent@1 i@@47) lockAddr)) (= (select (select StoreBufferVal@1 i@@47) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@48 Int) ) (!  (=> (or (and (<= 1 i@@48) (<= i@@48 numMutators)) (= i@@48 GcTid)) (or (= lock@0 i@@48) (= (select StoreBufferPresent@1 i@@48) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@49 Int) ) (!  (and (or (and (<= 1 i@@49) (<= i@@49 numMutators)) (= i@@49 GcTid)) (select (select StoreBufferPresent@1 i@@49) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@50 Int) ) (!  (=> (and (or (and (<= 1 i@@50) (<= i@@50 numMutators)) (= i@@50 GcTid)) (select (select StoreBufferPresent@1 i@@50) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@50) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@51 Int) ) (!  (=> (and (or (and (<= 1 i@@51) (<= i@@51 numMutators)) (= i@@51 GcTid)) (select (select StoreBufferPresent@1 i@@51) lockAddr)) (= (select (select StoreBufferVal@1 i@@51) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |32|
)))) (and (=> (= (ControlFlow 0 28) (- 0 35)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@52 Int) ) (!  (=> (and (or (and (<= 1 i@@52) (<= i@@52 numMutators)) (= i@@52 GcTid)) (select (select StoreBufferPresent@1 i@@52) lockAddr)) (= (select (select StoreBufferVal@1 i@@52) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@53 Int) ) (!  (=> (or (and (<= 1 i@@53) (<= i@@53 numMutators)) (= i@@53 GcTid)) (or (= lock@0 i@@53) (= (select StoreBufferPresent@1 i@@53) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@54 Int) ) (!  (and (or (and (<= 1 i@@54) (<= i@@54 numMutators)) (= i@@54 GcTid)) (select (select StoreBufferPresent@1 i@@54) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@55 Int) ) (!  (=> (and (or (and (<= 1 i@@55) (<= i@@55 numMutators)) (= i@@55 GcTid)) (select (select StoreBufferPresent@1 i@@55) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@55) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@56 Int) ) (!  (=> (or (and (<= 1 i@@56) (<= i@@56 numMutators)) (= i@@56 GcTid)) (or (= lock@0 i@@56) (= (select StoreBufferPresent@1 i@@56) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |33|
)))) (and (=> (= (ControlFlow 0 28) (- 0 34)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@57 Int) ) (!  (=> (and (or (and (<= 1 i@@57) (<= i@@57 numMutators)) (= i@@57 GcTid)) (select (select StoreBufferPresent@1 i@@57) lockAddr)) (= (select (select StoreBufferVal@1 i@@57) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@58 Int) ) (!  (=> (or (and (<= 1 i@@58) (<= i@@58 numMutators)) (= i@@58 GcTid)) (or (= lock@0 i@@58) (= (select StoreBufferPresent@1 i@@58) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@59 Int) ) (!  (and (or (and (<= 1 i@@59) (<= i@@59 numMutators)) (= i@@59 GcTid)) (select (select StoreBufferPresent@1 i@@59) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@60 Int) ) (!  (=> (and (or (and (<= 1 i@@60) (<= i@@60 numMutators)) (= i@@60 GcTid)) (select (select StoreBufferPresent@1 i@@60) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@60) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@61 Int) ) (!  (and (or (and (<= 1 i@@61) (<= i@@61 numMutators)) (= i@@61 GcTid)) (select (select StoreBufferPresent@1 i@@61) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 28) (- 0 33)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@62 Int) ) (!  (=> (and (or (and (<= 1 i@@62) (<= i@@62 numMutators)) (= i@@62 GcTid)) (select (select StoreBufferPresent@1 i@@62) lockAddr)) (= (select (select StoreBufferVal@1 i@@62) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@63 Int) ) (!  (=> (or (and (<= 1 i@@63) (<= i@@63 numMutators)) (= i@@63 GcTid)) (or (= lock@0 i@@63) (= (select StoreBufferPresent@1 i@@63) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@64 Int) ) (!  (and (or (and (<= 1 i@@64) (<= i@@64 numMutators)) (= i@@64 GcTid)) (select (select StoreBufferPresent@1 i@@64) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@65 Int) ) (!  (=> (and (or (and (<= 1 i@@65) (<= i@@65 numMutators)) (= i@@65 GcTid)) (select (select StoreBufferPresent@1 i@@65) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@65) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@66 Int) ) (!  (=> (and (or (and (<= 1 i@@66) (<= i@@66 numMutators)) (= i@@66 GcTid)) (select (select StoreBufferPresent@1 i@@66) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@66) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |34|
)))) (and (=> (= (ControlFlow 0 28) (- 0 32)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@67 Int) ) (!  (=> (and (or (and (<= 1 i@@67) (<= i@@67 numMutators)) (= i@@67 GcTid)) (select (select StoreBufferPresent@1 i@@67) lockAddr)) (= (select (select StoreBufferVal@1 i@@67) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@68 Int) ) (!  (=> (or (and (<= 1 i@@68) (<= i@@68 numMutators)) (= i@@68 GcTid)) (or (= lock@0 i@@68) (= (select StoreBufferPresent@1 i@@68) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@69 Int) ) (!  (and (or (and (<= 1 i@@69) (<= i@@69 numMutators)) (= i@@69 GcTid)) (select (select StoreBufferPresent@1 i@@69) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@70 Int) ) (!  (=> (and (or (and (<= 1 i@@70) (<= i@@70 numMutators)) (= i@@70 GcTid)) (select (select StoreBufferPresent@1 i@@70) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@70) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (and (=> (= (ControlFlow 0 28) (- 0 31)) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@71 Int) ) (!  (=> (and (or (and (<= 1 i@@71) (<= i@@71 numMutators)) (= i@@71 GcTid)) (select (select StoreBufferPresent@1 i@@71) lockAddr)) (= (select (select StoreBufferVal@1 i@@71) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@72 Int) ) (!  (=> (or (and (<= 1 i@@72) (<= i@@72 numMutators)) (= i@@72 GcTid)) (or (= lock@0 i@@72) (= (select StoreBufferPresent@1 i@@72) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@73 Int) ) (!  (and (or (and (<= 1 i@@73) (<= i@@73 numMutators)) (= i@@73 GcTid)) (select (select StoreBufferPresent@1 i@@73) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@74 Int) ) (!  (=> (and (or (and (<= 1 i@@74) (<= i@@74 numMutators)) (= i@@74 GcTid)) (select (select StoreBufferPresent@1 i@@74) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@74) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (=> (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@75 Int) ) (!  (=> (and (or (and (<= 1 i@@75) (<= i@@75 numMutators)) (= i@@75 GcTid)) (select (select StoreBufferPresent@1 i@@75) lockAddr)) (= (select (select StoreBufferVal@1 i@@75) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@76 Int) ) (!  (=> (or (and (<= 1 i@@76) (<= i@@76 numMutators)) (= i@@76 GcTid)) (or (= lock@0 i@@76) (= (select StoreBufferPresent@1 i@@76) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@77 Int) ) (!  (and (or (and (<= 1 i@@77) (<= i@@77 numMutators)) (= i@@77 GcTid)) (select (select StoreBufferPresent@1 i@@77) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@78 Int) ) (!  (=> (and (or (and (<= 1 i@@78) (<= i@@78 numMutators)) (= i@@78 GcTid)) (select (select StoreBufferPresent@1 i@@78) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@78) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (select (select StoreBufferPresent@1 tid) lockAddr)) (=> (select (select StoreBufferPresent@1 tid) lockAddr) (=> (and (and (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@1 0)) (forall ((i@@79 Int) ) (!  (=> (and (or (and (<= 1 i@@79) (<= i@@79 numMutators)) (= i@@79 GcTid)) (select (select StoreBufferPresent@2 i@@79) lockAddr)) (= (select (select StoreBufferVal@2 i@@79) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@80 Int) ) (!  (=> (or (and (<= 1 i@@80) (<= i@@80 numMutators)) (= i@@80 GcTid)) (or (= lock@1 i@@80) (= (select StoreBufferPresent@2 i@@80) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@1) (exists ((i@@81 Int) ) (!  (and (or (and (<= 1 i@@81) (<= i@@81 numMutators)) (= i@@81 GcTid)) (select (select StoreBufferPresent@2 i@@81) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@82 Int) ) (!  (=> (and (or (and (<= 1 i@@82) (<= i@@82 numMutators)) (= i@@82 GcTid)) (select (select StoreBufferPresent@2 i@@82) collectorPhaseAddr)) (= (select (select StoreBufferVal@2 i@@82) collectorPhaseAddr) collectorPhase@1))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (select (select StoreBufferPresent@2 tid) lockAddr)) (and (or Civl_pc@0 (and (= lock@1 tid) (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (select (select StoreBufferPresent@2 tid) lockAddr)) (=> (select (select StoreBufferPresent@2 tid) lockAddr) (=> (= (ControlFlow 0 28) 27) inline$AtomicFlushStoreBufferEntryForLock$0$anon0_correct)))))))))))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= Mem@3 Mem@0) (=> (and (and (= StoreBufferVal@3 StoreBufferVal@1) (= StoreBufferPresent@4 StoreBufferPresent@1)) (and (= lock@2 lock@0) (= collectorPhase@2 collectorPhase@0))) (=> (and (and (and (= collectorPhaseDelayed@2 collectorPhaseDelayed@0) (= Civl_global_old_Mem@0 Mem@0)) (and (= Civl_global_old_StoreBufferVal@0 StoreBufferVal@0) (= Civl_global_old_StoreBufferPresent@0 StoreBufferPresent@0))) (and (and (= Civl_global_old_lock@0 lock@0) (= Civl_global_old_collectorPhase@0 collectorPhase@0)) (and (= Civl_global_old_collectorPhaseDelayed@0 collectorPhaseDelayed@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)))) (and (and (and (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct) (=> (= (ControlFlow 0 11) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 8) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (= lock@0 0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (= lock@0 0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))))))
(let ((inline$AtomicLockZero$0$anon0_correct  (=> (and (= StoreBufferPresent@1 (store StoreBufferPresent@0 tid (store (select StoreBufferPresent@0 tid) lockAddr true))) (= StoreBufferVal@1 (store StoreBufferVal@0 tid (store (select StoreBufferVal@0 tid) lockAddr 0)))) (and (and (=> (= (ControlFlow 0 38) 28) anon0_0_correct) (=> (= (ControlFlow 0 38) 11) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 38) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@83 Int) ) (!  (=> (and (or (and (<= 1 i@@83) (<= i@@83 numMutators)) (= i@@83 GcTid)) (select (select StoreBufferPresent@0 i@@83) lockAddr)) (= (select (select StoreBufferVal@0 i@@83) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@84 Int) ) (!  (=> (or (and (<= 1 i@@84) (<= i@@84 numMutators)) (= i@@84 GcTid)) (or (= lock@0 i@@84) (= (select StoreBufferPresent@0 i@@84) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@85 Int) ) (!  (and (or (and (<= 1 i@@85) (<= i@@85 numMutators)) (= i@@85 GcTid)) (select (select StoreBufferPresent@0 i@@85) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@86 Int) ) (!  (=> (and (or (and (<= 1 i@@86) (<= i@@86 numMutators)) (= i@@86 GcTid)) (select (select StoreBufferPresent@0 i@@86) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@86) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (not (select (select StoreBufferPresent@0 tid) lockAddr))) (and (and (= lock@0 tid) (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (not (select (select StoreBufferPresent@0 tid) lockAddr))) (=> (not (select (select StoreBufferPresent@0 tid) lockAddr)) (=> (= (ControlFlow 0 39) 38) inline$AtomicLockZero$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@87 Int) ) (!  (=> (and (or (and (<= 1 i@@87) (<= i@@87 numMutators)) (= i@@87 GcTid)) (select (select StoreBufferPresent i@@87) lockAddr)) (= (select (select StoreBufferVal i@@87) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@88 Int) ) (!  (=> (or (and (<= 1 i@@88) (<= i@@88 numMutators)) (= i@@88 GcTid)) (or (= lock i@@88) (= (select StoreBufferPresent i@@88) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@89 Int) ) (!  (and (or (and (<= 1 i@@89) (<= i@@89 numMutators)) (= i@@89 GcTid)) (select (select StoreBufferPresent i@@89) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@90 Int) ) (!  (=> (and (or (and (<= 1 i@@90) (<= i@@90 numMutators)) (= i@@90 GcTid)) (select (select StoreBufferPresent i@@90) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@90) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (and (not (select (select StoreBufferPresent tid) lockAddr)) (= (ControlFlow 0 41) 39))) anon0_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mem@0 () (Array Int Int))
(declare-fun lock@0 () Int)
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@0 () Int)
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun inline$AtomicPrimitiveRead$0$val@3 () Int)
(declare-fun phase () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () Int)
(declare-fun inline$AtomicPrimitiveRead$0$val@2 () Int)
(declare-fun inline$AtomicPrimitiveRead$0$val@1 () Int)
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_ReadCollectorPhaseLocked_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@0 i) lockAddr)) (= (select (select StoreBufferVal@0 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@0 i@@0) (= (select StoreBufferPresent@0 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@0 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@0 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@2) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@0 i@@3) lockAddr)) (= (select (select StoreBufferVal@0 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@0 i@@4) (= (select StoreBufferPresent@0 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@0 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@0 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@6) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@0 i@@7) lockAddr)) (= (select (select StoreBufferVal@0 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |38|
)))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@0 i@@8) lockAddr)) (= (select (select StoreBufferVal@0 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@0 i@@9) (= (select StoreBufferPresent@0 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@0 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@0 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@11) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@0 i@@12) (= (select StoreBufferPresent@0 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |39|
)))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@0 i@@13) lockAddr)) (= (select (select StoreBufferVal@0 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@0 i@@14) (= (select StoreBufferPresent@0 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@0 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@0 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@16) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@0 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@0 i@@18) lockAddr)) (= (select (select StoreBufferVal@0 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@0 i@@19) (= (select StoreBufferPresent@0 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@0 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@0 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@21) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@0 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@22) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |40|
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@0 i@@23) lockAddr)) (= (select (select StoreBufferVal@0 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@0 i@@24) (= (select StoreBufferPresent@0 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@0 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@0 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@26) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@0 i@@27) lockAddr)) (= (select (select StoreBufferVal@0 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@0 i@@28) (= (select StoreBufferPresent@0 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@0 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@0 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@30) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@0 i@@31) lockAddr)) (= (select (select StoreBufferVal@0 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@0 i@@32) (= (select StoreBufferPresent@0 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@0 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@0 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@34) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (ControlFlow 0 11) (- 0 10))) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select StoreBufferPresent@0 i@@35) lockAddr)) (= (select (select StoreBufferVal@0 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= lock@0 i@@36) (= (select StoreBufferPresent@0 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select StoreBufferPresent@0 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select StoreBufferPresent@0 i@@38) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@38) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 9) (- 0 8))) (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 6) (- 0 5))) (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= inline$AtomicPrimitiveRead$0$val@3 collectorPhase@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= inline$AtomicPrimitiveRead$0$val@3 collectorPhase@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (= inline$AtomicPrimitiveRead$0$val@3 phase)))) (=> (=> false (and (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (= inline$AtomicPrimitiveRead$0$val@3 phase))) (=> (and (and (= Civl_pc@0  (=> (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false)) (= Civl_ok@0  (or (and (and (and (= inline$AtomicPrimitiveRead$0$val@3 collectorPhase@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (= inline$AtomicPrimitiveRead$0$val@3 phase) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicPrimitiveRead$0$anon3_Else_correct  (=> (not (select (select StoreBufferPresent@0 tid) collectorPhaseAddr)) (=> (and (= inline$AtomicPrimitiveRead$0$val@2 (select Mem@0 collectorPhaseAddr)) (= inline$AtomicPrimitiveRead$0$val@3 inline$AtomicPrimitiveRead$0$val@2)) (and (and (and (and (and (=> (= (ControlFlow 0 21) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 21) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 21) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 21) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 21) 13) GeneratedUnifiedExit_correct))))))
(let ((inline$AtomicPrimitiveRead$0$anon3_Then_correct  (=> (select (select StoreBufferPresent@0 tid) collectorPhaseAddr) (=> (and (= inline$AtomicPrimitiveRead$0$val@1 (select (select StoreBufferVal@0 tid) collectorPhaseAddr)) (= inline$AtomicPrimitiveRead$0$val@3 inline$AtomicPrimitiveRead$0$val@1)) (and (and (and (and (and (=> (= (ControlFlow 0 20) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 20) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 20) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) GeneratedUnifiedExit_correct))))))
(let ((anon0_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@0 i@@39) lockAddr)) (= (select (select StoreBufferVal@0 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@40 Int) ) (!  (=> (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (or (= lock@0 i@@40) (= (select StoreBufferPresent@0 i@@40) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@41 Int) ) (!  (and (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (select (select StoreBufferPresent@0 i@@41) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@42 Int) ) (!  (=> (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@0 i@@42) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@42) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (and (= lock@0 tid) (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 22) 20) inline$AtomicPrimitiveRead$0$anon3_Then_correct) (=> (= (ControlFlow 0 22) 21) inline$AtomicPrimitiveRead$0$anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent i@@43) lockAddr)) (= (select (select StoreBufferVal i@@43) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock i@@44) (= (select StoreBufferPresent i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@45 Int) ) (!  (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent i@@45) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@46 Int) ) (!  (=> (and (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (select (select StoreBufferPresent i@@46) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@46) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (= (ControlFlow 0 23) 22)) anon0_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mem@0 () (Array Int Int))
(declare-fun lock@0 () Int)
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@0 () Int)
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun inline$AtomicPrimitiveRead$0$val@3 () Int)
(declare-fun phase () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () Int)
(declare-fun inline$AtomicPrimitiveRead$0$val@2 () Int)
(declare-fun inline$AtomicPrimitiveRead$0$val@1 () Int)
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_ReadCollectorPhaseUnlocked_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@0 i) lockAddr)) (= (select (select StoreBufferVal@0 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@0 i@@0) (= (select StoreBufferPresent@0 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@0 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@0 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@2) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@0 i@@3) lockAddr)) (= (select (select StoreBufferVal@0 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@0 i@@4) (= (select StoreBufferPresent@0 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@0 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@0 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@6) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@0 i@@7) lockAddr)) (= (select (select StoreBufferVal@0 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |41|
)))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@0 i@@8) lockAddr)) (= (select (select StoreBufferVal@0 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@0 i@@9) (= (select StoreBufferPresent@0 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@0 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@0 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@11) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@0 i@@12) (= (select StoreBufferPresent@0 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |42|
)))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@0 i@@13) lockAddr)) (= (select (select StoreBufferVal@0 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@0 i@@14) (= (select StoreBufferPresent@0 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@0 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@0 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@16) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@0 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@0 i@@18) lockAddr)) (= (select (select StoreBufferVal@0 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@0 i@@19) (= (select StoreBufferPresent@0 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@0 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@0 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@21) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@0 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@22) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |43|
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@0 i@@23) lockAddr)) (= (select (select StoreBufferVal@0 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@0 i@@24) (= (select StoreBufferPresent@0 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@0 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@0 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@26) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@0 i@@27) lockAddr)) (= (select (select StoreBufferVal@0 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@0 i@@28) (= (select StoreBufferPresent@0 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@0 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@0 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@30) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@0 i@@31) lockAddr)) (= (select (select StoreBufferVal@0 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@0 i@@32) (= (select StoreBufferPresent@0 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@0 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@0 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@34) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (ControlFlow 0 11) (- 0 10))) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select StoreBufferPresent@0 i@@35) lockAddr)) (= (select (select StoreBufferVal@0 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= lock@0 i@@36) (= (select StoreBufferPresent@0 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select StoreBufferPresent@0 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select StoreBufferPresent@0 i@@38) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@38) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 9) (- 0 8))) (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 6) (- 0 5))) (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= inline$AtomicPrimitiveRead$0$val@3 collectorPhaseDelayed@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= inline$AtomicPrimitiveRead$0$val@3 collectorPhaseDelayed@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (= inline$AtomicPrimitiveRead$0$val@3 phase)))) (=> (=> false (and (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (= inline$AtomicPrimitiveRead$0$val@3 phase))) (=> (and (and (= Civl_pc@0  (=> (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false)) (= Civl_ok@0  (or (and (and (and (= inline$AtomicPrimitiveRead$0$val@3 collectorPhaseDelayed@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (= inline$AtomicPrimitiveRead$0$val@3 phase) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicPrimitiveRead$0$anon3_Else_correct  (=> (not (select (select StoreBufferPresent@0 tid) collectorPhaseAddr)) (=> (and (= inline$AtomicPrimitiveRead$0$val@2 (select Mem@0 collectorPhaseAddr)) (= inline$AtomicPrimitiveRead$0$val@3 inline$AtomicPrimitiveRead$0$val@2)) (and (and (and (and (and (=> (= (ControlFlow 0 21) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 21) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 21) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 21) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 21) 13) GeneratedUnifiedExit_correct))))))
(let ((inline$AtomicPrimitiveRead$0$anon3_Then_correct  (=> (select (select StoreBufferPresent@0 tid) collectorPhaseAddr) (=> (and (= inline$AtomicPrimitiveRead$0$val@1 (select (select StoreBufferVal@0 tid) collectorPhaseAddr)) (= inline$AtomicPrimitiveRead$0$val@3 inline$AtomicPrimitiveRead$0$val@1)) (and (and (and (and (and (=> (= (ControlFlow 0 20) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 20) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 20) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) GeneratedUnifiedExit_correct))))))
(let ((anon0_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@0 i@@39) lockAddr)) (= (select (select StoreBufferVal@0 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@40 Int) ) (!  (=> (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (or (= lock@0 i@@40) (= (select StoreBufferPresent@0 i@@40) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@41 Int) ) (!  (and (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (select (select StoreBufferPresent@0 i@@41) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@42 Int) ) (!  (=> (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@0 i@@42) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@42) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (and (not (= lock@0 tid)) (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 22) 20) inline$AtomicPrimitiveRead$0$anon3_Then_correct) (=> (= (ControlFlow 0 22) 21) inline$AtomicPrimitiveRead$0$anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent i@@43) lockAddr)) (= (select (select StoreBufferVal i@@43) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock i@@44) (= (select StoreBufferPresent i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@45 Int) ) (!  (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent i@@45) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@46 Int) ) (!  (=> (and (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (select (select StoreBufferPresent i@@46) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@46) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (= (ControlFlow 0 23) 22)) anon0_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mem@0 () (Array Int Int))
(declare-fun lock@0 () Int)
(declare-fun StoreBufferPresent@1 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@1 () (Array Int (Array Int Int)))
(declare-fun phase () Int)
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () Int)
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_SetCollectorPhase_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@1 i) lockAddr)) (= (select (select StoreBufferVal@1 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@0 i@@0) (= (select StoreBufferPresent@1 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@1 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@1 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@2) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@1 i@@3) lockAddr)) (= (select (select StoreBufferVal@1 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@0 i@@4) (= (select StoreBufferPresent@1 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@1 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@1 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@6) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@1 i@@7) lockAddr)) (= (select (select StoreBufferVal@1 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |44|
)))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@1 i@@8) lockAddr)) (= (select (select StoreBufferVal@1 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@0 i@@9) (= (select StoreBufferPresent@1 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@1 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@1 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@11) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@0 i@@12) (= (select StoreBufferPresent@1 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |45|
)))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@1 i@@13) lockAddr)) (= (select (select StoreBufferVal@1 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@0 i@@14) (= (select StoreBufferPresent@1 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@1 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@1 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@16) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@1 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@1 i@@18) lockAddr)) (= (select (select StoreBufferVal@1 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@0 i@@19) (= (select StoreBufferPresent@1 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@1 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@1 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@21) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@1 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@22) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |46|
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@1 i@@23) lockAddr)) (= (select (select StoreBufferVal@1 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@0 i@@24) (= (select StoreBufferPresent@1 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@1 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@1 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@26) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@1 i@@27) lockAddr)) (= (select (select StoreBufferVal@1 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@0 i@@28) (= (select StoreBufferPresent@1 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@1 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@1 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@30) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@0 i@@31) lockAddr)) (= (select (select StoreBufferVal@0 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@0 i@@32) (= (select StoreBufferPresent@0 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@0 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@0 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@34) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (ControlFlow 0 11) (- 0 10))) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select StoreBufferPresent@1 i@@35) lockAddr)) (= (select (select StoreBufferVal@1 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= lock@0 i@@36) (= (select StoreBufferPresent@1 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) phase) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select StoreBufferPresent@1 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select StoreBufferPresent@1 i@@38) collectorPhaseAddr)) (= (select (select StoreBufferVal@1 i@@38) collectorPhaseAddr) phase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 9) (- 0 8))) (select (select StoreBufferPresent@1 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 6) (- 0 5))) (not (select (select StoreBufferPresent@1 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= lock@0 lock@0) (= phase collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (= phase phase) (= lock@0 lock@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= phase collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (= phase phase) (= lock@0 lock@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= lock@0 lock@0) (= phase collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (=> (=> false (and (and (= lock@0 lock@0) (= phase collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= lock@0 lock@0) (= phase collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false)) (= Civl_ok@0  (or (and (and (= phase phase) (= lock@0 lock@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicPrimitiveSetCollectorPhase$0$anon0_correct  (=> (and (= StoreBufferPresent@1 (store StoreBufferPresent@0 tid (store (select StoreBufferPresent@0 tid) collectorPhaseAddr true))) (= StoreBufferVal@1 (store StoreBufferVal@0 tid (store (select StoreBufferVal@0 tid) collectorPhaseAddr phase)))) (and (and (and (and (and (=> (= (ControlFlow 0 20) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 20) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 20) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@0 i@@39) lockAddr)) (= (select (select StoreBufferVal@0 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@40 Int) ) (!  (=> (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (or (= lock@0 i@@40) (= (select StoreBufferPresent@0 i@@40) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@41 Int) ) (!  (and (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (select (select StoreBufferPresent@0 i@@41) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@42 Int) ) (!  (=> (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@0 i@@42) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@42) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (and (and (= collectorPhase@0 collectorPhaseDelayed@0) (= lock@0 tid)) (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid))) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 21) 20)))) inline$AtomicPrimitiveSetCollectorPhase$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent i@@43) lockAddr)) (= (select (select StoreBufferVal i@@43) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock i@@44) (= (select StoreBufferPresent i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@45 Int) ) (!  (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent i@@45) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@46 Int) ) (!  (=> (and (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (select (select StoreBufferPresent i@@46) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@46) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (= (ControlFlow 0 22) 21)) anon0_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mem@1 () (Array Int Int))
(declare-fun lock@0 () Int)
(declare-fun StoreBufferPresent@1 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@0 () Int)
(declare-fun collectorPhaseDelayed@1 () Int)
(declare-fun Mem@0 () (Array Int Int))
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Trigger_AtomicFlushStoreBufferEntryForCollectorPhase_tid (Int) Bool)
(declare-fun inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0 () Int)
(declare-fun tid () Int)
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_SyncCollectorPhase_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@1 i) lockAddr)) (= (select (select StoreBufferVal@0 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@0 i@@0) (= (select StoreBufferPresent@1 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@1 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@1 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@2) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@1 i@@3) lockAddr)) (= (select (select StoreBufferVal@0 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@0 i@@4) (= (select StoreBufferPresent@1 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@1 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@1 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@6) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@1 i@@7) lockAddr)) (= (select (select StoreBufferVal@0 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |47|
)))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@1 i@@8) lockAddr)) (= (select (select StoreBufferVal@0 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@0 i@@9) (= (select StoreBufferPresent@1 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@1 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@1 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@11) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@0 i@@12) (= (select StoreBufferPresent@1 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |48|
)))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@1 i@@13) lockAddr)) (= (select (select StoreBufferVal@0 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@0 i@@14) (= (select StoreBufferPresent@1 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@1 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@1 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@16) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@1 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@1 i@@18) lockAddr)) (= (select (select StoreBufferVal@0 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@0 i@@19) (= (select StoreBufferPresent@1 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@1 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@1 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@21) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@1 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@22) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |49|
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@1 i@@23) lockAddr)) (= (select (select StoreBufferVal@0 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@0 i@@24) (= (select StoreBufferPresent@1 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@1 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@1 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@26) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr)))) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@1 i@@27) lockAddr)) (= (select (select StoreBufferVal@0 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@0 i@@28) (= (select StoreBufferPresent@1 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@1 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@1 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@30) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@0 i@@31) lockAddr)) (= (select (select StoreBufferVal@0 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@0 i@@32) (= (select StoreBufferPresent@0 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@0 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@0 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@34) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (ControlFlow 0 11) (- 0 10))) (and (and (and (and (and (= (= (select Mem@1 lockAddr) 0) (= lock@0 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select StoreBufferPresent@1 i@@35) lockAddr)) (= (select (select StoreBufferVal@0 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= lock@0 i@@36) (= (select StoreBufferPresent@1 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@1 collectorPhaseAddr) collectorPhase@0) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select StoreBufferPresent@1 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select StoreBufferPresent@1 i@@38) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@38) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 9) (- 0 8))) (select (select StoreBufferPresent@1 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 6) (- 0 5))) (not (select (select StoreBufferPresent@1 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@0)) (and (and (= collectorPhaseDelayed@1 collectorPhase@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@0)) (and (and (= collectorPhaseDelayed@1 collectorPhase@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@0)))) (=> (=> false (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@1 collectorPhaseDelayed@0)) false)) (= Civl_ok@0  (or (and (and (= collectorPhaseDelayed@1 collectorPhase@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$anon0_correct  (=> (Trigger_AtomicFlushStoreBufferEntryForCollectorPhase_tid inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0) (=> (and (and (and (or (and (<= 1 inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0) (<= inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0 numMutators)) (= inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0 GcTid)) (select (select StoreBufferPresent@0 inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0) collectorPhaseAddr)) (= Mem@1 (store Mem@0 collectorPhaseAddr (select (select StoreBufferVal@0 inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0) collectorPhaseAddr)))) (and (= StoreBufferPresent@1 (store StoreBufferPresent@0 inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0 (store (select StoreBufferPresent@0 inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$tid@0) collectorPhaseAddr false))) (= collectorPhaseDelayed@1 (select Mem@1 collectorPhaseAddr)))) (and (and (and (and (and (=> (= (ControlFlow 0 20) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 20) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 20) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) GeneratedUnifiedExit_correct))))))
(let ((anon0_correct  (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@0 i@@39) lockAddr)) (= (select (select StoreBufferVal@0 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@40 Int) ) (!  (=> (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (or (= lock@0 i@@40) (= (select StoreBufferPresent@0 i@@40) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@41 Int) ) (!  (and (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (select (select StoreBufferPresent@0 i@@41) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@42 Int) ) (!  (=> (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@0 i@@42) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@42) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 21) 20))) inline$AtomicFlushStoreBufferEntryForCollectorPhase$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent i@@43) lockAddr)) (= (select (select StoreBufferVal i@@43) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock i@@44) (= (select StoreBufferPresent i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@45 Int) ) (!  (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent i@@45) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@46 Int) ) (!  (=> (and (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (select (select StoreBufferPresent i@@46) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@46) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (= (ControlFlow 0 22) 21)) anon0_correct)))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mem@0 () (Array Int Int))
(declare-fun lock@0 () Int)
(declare-fun StoreBufferPresent@0 () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal@0 () (Array Int (Array Int Int)))
(declare-fun collectorPhase@0 () Int)
(declare-fun collectorPhaseDelayed@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () Int)
(declare-fun Mem () (Array Int Int))
(declare-fun lock () Int)
(declare-fun StoreBufferPresent () (Array Int (Array Int Bool)))
(declare-fun StoreBufferVal () (Array Int (Array Int Int)))
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(set-info :boogie-vc-id Civl_Barrier_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 13) (- 0 19)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i Int) ) (!  (=> (and (or (and (<= 1 i) (<= i numMutators)) (= i GcTid)) (select (select StoreBufferPresent@0 i) lockAddr)) (= (select (select StoreBufferVal@0 i) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@0 Int) ) (!  (=> (or (and (<= 1 i@@0) (<= i@@0 numMutators)) (= i@@0 GcTid)) (or (= lock@0 i@@0) (= (select StoreBufferPresent@0 i@@0) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@1 Int) ) (!  (and (or (and (<= 1 i@@1) (<= i@@1 numMutators)) (= i@@1 GcTid)) (select (select StoreBufferPresent@0 i@@1) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@2 Int) ) (!  (=> (and (or (and (<= 1 i@@2) (<= i@@2 numMutators)) (= i@@2 GcTid)) (select (select StoreBufferPresent@0 i@@2) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@2) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)))) (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@3 Int) ) (!  (=> (and (or (and (<= 1 i@@3) (<= i@@3 numMutators)) (= i@@3 GcTid)) (select (select StoreBufferPresent@0 i@@3) lockAddr)) (= (select (select StoreBufferVal@0 i@@3) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@4 Int) ) (!  (=> (or (and (<= 1 i@@4) (<= i@@4 numMutators)) (= i@@4 GcTid)) (or (= lock@0 i@@4) (= (select StoreBufferPresent@0 i@@4) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@5 Int) ) (!  (and (or (and (<= 1 i@@5) (<= i@@5 numMutators)) (= i@@5 GcTid)) (select (select StoreBufferPresent@0 i@@5) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@6 Int) ) (!  (=> (and (or (and (<= 1 i@@6) (<= i@@6 numMutators)) (= i@@6 GcTid)) (select (select StoreBufferPresent@0 i@@6) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@6) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@7 Int) ) (!  (=> (and (or (and (<= 1 i@@7) (<= i@@7 numMutators)) (= i@@7 GcTid)) (select (select StoreBufferPresent@0 i@@7) lockAddr)) (= (select (select StoreBufferVal@0 i@@7) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |50|
)))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@8 Int) ) (!  (=> (and (or (and (<= 1 i@@8) (<= i@@8 numMutators)) (= i@@8 GcTid)) (select (select StoreBufferPresent@0 i@@8) lockAddr)) (= (select (select StoreBufferVal@0 i@@8) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@9 Int) ) (!  (=> (or (and (<= 1 i@@9) (<= i@@9 numMutators)) (= i@@9 GcTid)) (or (= lock@0 i@@9) (= (select StoreBufferPresent@0 i@@9) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@10 Int) ) (!  (and (or (and (<= 1 i@@10) (<= i@@10 numMutators)) (= i@@10 GcTid)) (select (select StoreBufferPresent@0 i@@10) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@11 Int) ) (!  (=> (and (or (and (<= 1 i@@11) (<= i@@11 numMutators)) (= i@@11 GcTid)) (select (select StoreBufferPresent@0 i@@11) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@11) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@12 Int) ) (!  (=> (or (and (<= 1 i@@12) (<= i@@12 numMutators)) (= i@@12 GcTid)) (or (= lock@0 i@@12) (= (select StoreBufferPresent@0 i@@12) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |51|
)))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@13 Int) ) (!  (=> (and (or (and (<= 1 i@@13) (<= i@@13 numMutators)) (= i@@13 GcTid)) (select (select StoreBufferPresent@0 i@@13) lockAddr)) (= (select (select StoreBufferVal@0 i@@13) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@14 Int) ) (!  (=> (or (and (<= 1 i@@14) (<= i@@14 numMutators)) (= i@@14 GcTid)) (or (= lock@0 i@@14) (= (select StoreBufferPresent@0 i@@14) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@15 Int) ) (!  (and (or (and (<= 1 i@@15) (<= i@@15 numMutators)) (= i@@15 GcTid)) (select (select StoreBufferPresent@0 i@@15) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@16 Int) ) (!  (=> (and (or (and (<= 1 i@@16) (<= i@@16 numMutators)) (= i@@16 GcTid)) (select (select StoreBufferPresent@0 i@@16) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@16) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@17 Int) ) (!  (and (or (and (<= 1 i@@17) (<= i@@17 numMutators)) (= i@@17 GcTid)) (select (select StoreBufferPresent@0 i@@17) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@18 Int) ) (!  (=> (and (or (and (<= 1 i@@18) (<= i@@18 numMutators)) (= i@@18 GcTid)) (select (select StoreBufferPresent@0 i@@18) lockAddr)) (= (select (select StoreBufferVal@0 i@@18) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@19 Int) ) (!  (=> (or (and (<= 1 i@@19) (<= i@@19 numMutators)) (= i@@19 GcTid)) (or (= lock@0 i@@19) (= (select StoreBufferPresent@0 i@@19) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@20 Int) ) (!  (and (or (and (<= 1 i@@20) (<= i@@20 numMutators)) (= i@@20 GcTid)) (select (select StoreBufferPresent@0 i@@20) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@21 Int) ) (!  (=> (and (or (and (<= 1 i@@21) (<= i@@21 numMutators)) (= i@@21 GcTid)) (select (select StoreBufferPresent@0 i@@21) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@21) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (forall ((i@@22 Int) ) (!  (=> (and (or (and (<= 1 i@@22) (<= i@@22 numMutators)) (= i@@22 GcTid)) (select (select StoreBufferPresent@0 i@@22) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@22) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |52|
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@23 Int) ) (!  (=> (and (or (and (<= 1 i@@23) (<= i@@23 numMutators)) (= i@@23 GcTid)) (select (select StoreBufferPresent@0 i@@23) lockAddr)) (= (select (select StoreBufferVal@0 i@@23) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@24 Int) ) (!  (=> (or (and (<= 1 i@@24) (<= i@@24 numMutators)) (= i@@24 GcTid)) (or (= lock@0 i@@24) (= (select StoreBufferPresent@0 i@@24) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@25 Int) ) (!  (and (or (and (<= 1 i@@25) (<= i@@25 numMutators)) (= i@@25 GcTid)) (select (select StoreBufferPresent@0 i@@25) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@26 Int) ) (!  (=> (and (or (and (<= 1 i@@26) (<= i@@26 numMutators)) (= i@@26 GcTid)) (select (select StoreBufferPresent@0 i@@26) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@26) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr)))) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@27 Int) ) (!  (=> (and (or (and (<= 1 i@@27) (<= i@@27 numMutators)) (= i@@27 GcTid)) (select (select StoreBufferPresent@0 i@@27) lockAddr)) (= (select (select StoreBufferVal@0 i@@27) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@28 Int) ) (!  (=> (or (and (<= 1 i@@28) (<= i@@28 numMutators)) (= i@@28 GcTid)) (or (= lock@0 i@@28) (= (select StoreBufferPresent@0 i@@28) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@29 Int) ) (!  (and (or (and (<= 1 i@@29) (<= i@@29 numMutators)) (= i@@29 GcTid)) (select (select StoreBufferPresent@0 i@@29) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@30 Int) ) (!  (=> (and (or (and (<= 1 i@@30) (<= i@@30 numMutators)) (= i@@30 GcTid)) (select (select StoreBufferPresent@0 i@@30) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@30) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct  (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@31 Int) ) (!  (=> (and (or (and (<= 1 i@@31) (<= i@@31 numMutators)) (= i@@31 GcTid)) (select (select StoreBufferPresent@0 i@@31) lockAddr)) (= (select (select StoreBufferVal@0 i@@31) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@32 Int) ) (!  (=> (or (and (<= 1 i@@32) (<= i@@32 numMutators)) (= i@@32 GcTid)) (or (= lock@0 i@@32) (= (select StoreBufferPresent@0 i@@32) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@33 Int) ) (!  (and (or (and (<= 1 i@@33) (<= i@@33 numMutators)) (= i@@33 GcTid)) (select (select StoreBufferPresent@0 i@@33) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@34 Int) ) (!  (=> (and (or (and (<= 1 i@@34) (<= i@@34 numMutators)) (= i@@34 GcTid)) (select (select StoreBufferPresent@0 i@@34) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@34) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (= (ControlFlow 0 11) (- 0 10))) (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@35 Int) ) (!  (=> (and (or (and (<= 1 i@@35) (<= i@@35 numMutators)) (= i@@35 GcTid)) (select (select StoreBufferPresent@0 i@@35) lockAddr)) (= (select (select StoreBufferVal@0 i@@35) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@36 Int) ) (!  (=> (or (and (<= 1 i@@36) (<= i@@36 numMutators)) (= i@@36 GcTid)) (or (= lock@0 i@@36) (= (select StoreBufferPresent@0 i@@36) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@37 Int) ) (!  (and (or (and (<= 1 i@@37) (<= i@@37 numMutators)) (= i@@37 GcTid)) (select (select StoreBufferPresent@0 i@@37) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@38 Int) ) (!  (=> (and (or (and (<= 1 i@@38) (<= i@@38 numMutators)) (= i@@38 GcTid)) (select (select StoreBufferPresent@0 i@@38) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@38) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr) (= (ControlFlow 0 9) (- 0 8))) (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$tid@0) lockAddr)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr)) (= (ControlFlow 0 6) (- 0 5))) (not (select (select StoreBufferPresent@0 inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$tid@0) lockAddr))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= collectorPhase@0 collectorPhaseDelayed@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))))) (=> (or false (or (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) (and (and (and (= collectorPhase@0 collectorPhaseDelayed@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)))) (=> (=> false (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= lock@0 lock@0) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false)) (= Civl_ok@0  (or (and (and (and (= collectorPhase@0 collectorPhaseDelayed@0) (= lock@0 lock@0)) (= collectorPhase@0 collectorPhase@0)) (= collectorPhaseDelayed@0 collectorPhaseDelayed@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicWaitForFlush$0$anon0_correct  (=> (= (select StoreBufferPresent@0 tid) ((as const (Array Int Bool)) false)) (and (and (and (and (and (=> (= (ControlFlow 0 20) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 6) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrAbsent$0$L0_correct)) (=> (= (ControlFlow 0 20) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 9) inline$Civl_NoninterferenceChecker_yield_YieldStoreBufferLockAddrPresent$0$L0_correct)) (=> (= (ControlFlow 0 20) 11) inline$Civl_NoninterferenceChecker_yield_YieldLock$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem@0 lockAddr) 0) (= lock@0 0)) (forall ((i@@39 Int) ) (!  (=> (and (or (and (<= 1 i@@39) (<= i@@39 numMutators)) (= i@@39 GcTid)) (select (select StoreBufferPresent@0 i@@39) lockAddr)) (= (select (select StoreBufferVal@0 i@@39) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@40 Int) ) (!  (=> (or (and (<= 1 i@@40) (<= i@@40 numMutators)) (= i@@40 GcTid)) (or (= lock@0 i@@40) (= (select StoreBufferPresent@0 i@@40) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem@0 collectorPhaseAddr) collectorPhase@0) (exists ((i@@41 Int) ) (!  (and (or (and (<= 1 i@@41) (<= i@@41 numMutators)) (= i@@41 GcTid)) (select (select StoreBufferPresent@0 i@@41) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@42 Int) ) (!  (=> (and (or (and (<= 1 i@@42) (<= i@@42 numMutators)) (= i@@42 GcTid)) (select (select StoreBufferPresent@0 i@@42) collectorPhaseAddr)) (= (select (select StoreBufferVal@0 i@@42) collectorPhaseAddr) collectorPhase@0))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed@0 (select Mem@0 collectorPhaseAddr))) (and (and (= lock@0 tid) (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid))) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 21) 20)))) inline$AtomicWaitForFlush$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (=> (and (and (and (and (and (and (= (= (select Mem lockAddr) 0) (= lock 0)) (forall ((i@@43 Int) ) (!  (=> (and (or (and (<= 1 i@@43) (<= i@@43 numMutators)) (= i@@43 GcTid)) (select (select StoreBufferPresent i@@43) lockAddr)) (= (select (select StoreBufferVal i@@43) lockAddr) 0))
 :qid |StoreBufferbpl.29:11|
 :skolemid |0|
))) (forall ((i@@44 Int) ) (!  (=> (or (and (<= 1 i@@44) (<= i@@44 numMutators)) (= i@@44 GcTid)) (or (= lock i@@44) (= (select StoreBufferPresent i@@44) ((as const (Array Int Bool)) false))))
 :qid |StoreBufferbpl.30:11|
 :skolemid |1|
))) (or (= (select Mem collectorPhaseAddr) collectorPhase) (exists ((i@@45 Int) ) (!  (and (or (and (<= 1 i@@45) (<= i@@45 numMutators)) (= i@@45 GcTid)) (select (select StoreBufferPresent i@@45) collectorPhaseAddr))
 :qid |StoreBufferbpl.31:57|
 :skolemid |2|
)))) (forall ((i@@46 Int) ) (!  (=> (and (or (and (<= 1 i@@46) (<= i@@46 numMutators)) (= i@@46 GcTid)) (select (select StoreBufferPresent i@@46) collectorPhaseAddr)) (= (select (select StoreBufferVal i@@46) collectorPhaseAddr) collectorPhase))
 :qid |StoreBufferbpl.32:11|
 :skolemid |3|
))) (= collectorPhaseDelayed (select Mem collectorPhaseAddr))) (= (ControlFlow 0 22) 21)) anon0_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLockAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockAcquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicLockAcquire$0$anon0_correct  (=> (and (= lock 0) (= (ControlFlow 0 3) 2)) inline$AtomicLockAcquire$0$Return_correct)))
(let ((inline$AtomicLockAcquire$0$Entry_correct  (=> (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= (ControlFlow 0 4) 3)) inline$AtomicLockAcquire$0$anon0_correct)))
inline$AtomicLockAcquire$0$Entry_correct))))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLockRelease)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicLockRelease$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicLockRelease$0$Entry_correct  (=> (= lock tid) (=> (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= (ControlFlow 0 3) 2)) inline$AtomicLockRelease$0$Return_correct))))
inline$AtomicLockRelease$0$Entry_correct)))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReadCollectorPhaseLocked)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReadCollectorPhaseLocked$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicReadCollectorPhaseLocked$0$Entry_correct  (=> (= lock tid) (=> (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= (ControlFlow 0 3) 2)) inline$AtomicReadCollectorPhaseLocked$0$Return_correct))))
inline$AtomicReadCollectorPhaseLocked$0$Entry_correct)))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReadCollectorPhaseUnlocked)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReadCollectorPhaseUnlocked$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicReadCollectorPhaseUnlocked$0$Entry_correct  (=> (not (= lock tid)) (=> (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= (ControlFlow 0 3) 2)) inline$AtomicReadCollectorPhaseUnlocked$0$Return_correct))))
inline$AtomicReadCollectorPhaseUnlocked$0$Entry_correct)))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSetCollectorPhase)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetCollectorPhase$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicSetCollectorPhase$0$Entry_correct  (=> (and (and (= collectorPhase collectorPhaseDelayed) (= lock tid)) (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= (ControlFlow 0 3) 2))) inline$AtomicSetCollectorPhase$0$Return_correct)))
inline$AtomicSetCollectorPhase$0$Entry_correct)))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSyncCollectorPhase)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSyncCollectorPhase$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicSyncCollectorPhase$0$Entry_correct  (=> (= (ControlFlow 0 3) 2) inline$AtomicSyncCollectorPhase$0$Return_correct)))
inline$AtomicSyncCollectorPhase$0$Entry_correct)))
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
(declare-fun numMutators () Int)
(declare-fun lockAddr () Int)
(declare-fun GcTid () Int)
(declare-fun collectorPhaseAddr () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |4|
)))
(assert (< 0 numMutators))
(assert (< 0 lockAddr))
(assert (< numMutators GcTid))
(assert (< lockAddr collectorPhaseAddr))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun collectorPhase () Int)
(declare-fun collectorPhaseDelayed () Int)
(declare-fun lock () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicBarrier)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicBarrier$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicBarrier$0$anon0_correct  (=> (and (= collectorPhase collectorPhaseDelayed) (= (ControlFlow 0 3) 2)) inline$AtomicBarrier$0$Return_correct)))
(let ((inline$AtomicBarrier$0$Entry_correct  (=> (= lock tid) (=> (and (or (and (<= 1 tid) (<= tid numMutators)) (= tid GcTid)) (= (ControlFlow 0 4) 3)) inline$AtomicBarrier$0$anon0_correct))))
inline$AtomicBarrier$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
