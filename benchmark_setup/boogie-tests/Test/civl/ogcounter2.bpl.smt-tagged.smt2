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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicAllocTid$0$tid@0 () T@X)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$1$tid@0 () T@X)
(declare-fun unallocated () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAllocTid_AtomicAllocTid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAllocTid$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$1$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
))) (and (and (and (and (not (= inline$AtomicAllocTid$1$tid@0 Nil)) (select unallocated inline$AtomicAllocTid$1$tid@0)) (not (= inline$AtomicAllocTid$0$tid@0 Nil))) (select (store unallocated inline$AtomicAllocTid$1$tid@0 false) inline$AtomicAllocTid$0$tid@0)) (= unallocated@1 (store (store unallocated inline$AtomicAllocTid$1$tid@0 false) inline$AtomicAllocTid$0$tid@0 false)))))))
(let ((inline$AtomicAllocTid$1$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$1$tid@0 Nil)) (select unallocated@0 inline$AtomicAllocTid$1$tid@0)) (and (= unallocated@1 (store unallocated@0 inline$AtomicAllocTid$1$tid@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocTid$1$Return_correct)))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@0 Nil)) (select unallocated inline$AtomicAllocTid$0$tid@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocTid$0$tid@0 false)) (= (ControlFlow 0 4) 3))) inline$AtomicAllocTid$1$anon0_correct)))
(let ((inline$AtomicAllocTid$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$AtomicAllocTid$0$anon0_correct)))
inline$AtomicAllocTid$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acq_atomic_acq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acq$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock Nil) (= second_tid Nil)) (= second_tid first_tid))))))
(let ((inline$atomic_acq$1$anon0_correct  (=> (and (= first_tid Nil) (= (ControlFlow 0 3) 2)) inline$atomic_acq$1$Return_correct)))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock Nil) (= (ControlFlow 0 4) 3)) inline$atomic_acq$1$anon0_correct)))
(let ((inline$atomic_acq$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (not (= first_tid Nil))) (and (not (= second_tid Nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acq$0$anon0_correct)))
inline$atomic_acq$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acq_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= Nil Nil) (= Nil first_tid))))))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock Nil) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct)))
(let ((inline$atomic_acq$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (not (= first_tid Nil))) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_acq$0$anon0_correct))))
inline$atomic_acq$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_rel_atomic_acq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acq$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid Nil)) (= second_tid first_tid))))))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock Nil) (= (ControlFlow 0 3) 2)) inline$atomic_acq$0$Return_correct)))
(let ((inline$atomic_acq$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (not (= first_tid Nil)) (= lock first_tid)) (and (not (= second_tid Nil)) (= (ControlFlow 0 4) 3))) inline$atomic_acq$0$anon0_correct))))
inline$atomic_acq$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_read_atomic_acq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acq$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid Nil)) (= second_tid first_tid))))))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock Nil) (= (ControlFlow 0 3) 2)) inline$atomic_acq$0$Return_correct)))
(let ((inline$atomic_acq$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (and (and (not (= first_tid Nil)) (= lock first_tid)) (and (not (= second_tid Nil)) (= (ControlFlow 0 4) 3))) inline$atomic_acq$0$anon0_correct))))
inline$atomic_acq$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_write_atomic_acq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acq$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid Nil)) (= second_tid first_tid))))))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock Nil) (= (ControlFlow 0 3) 2)) inline$atomic_acq$0$Return_correct)))
(let ((inline$atomic_acq$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (and (not (= first_tid Nil)) (= lock first_tid)) (and (not (= second_tid Nil)) (= (ControlFlow 0 4) 3))) inline$atomic_acq$0$anon0_correct))))
inline$atomic_acq$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_rel_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= Nil Nil)))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$1$Return_correct)))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_rel_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid Nil)) (= Nil first_tid))))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct)))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_rel_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid Nil)) (= Nil first_tid)))))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (not (and (not (= first_tid Nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_read_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid Nil)) (= Nil first_tid))))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct)))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_write_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid Nil)) (= Nil first_tid))))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct)))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_read_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid Nil)) (= Nil first_tid)))))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (not (and (not (= first_tid Nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_v () Int)
(declare-fun x@@0 () Int)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_read_atomic_write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_v second_v) (= x@@0 second_v)) (= lock lock))))))
(let ((inline$atomic_read$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_write$0$Return_correct)))))
inline$atomic_read$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_write_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid Nil)) (= Nil first_tid)))))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (not (and (not (= first_tid Nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct))))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_v () Int)
(declare-fun x@@0 () Int)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_write_atomic_read)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_read$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= first_v x@@0) (= first_v first_v)) (= lock lock))))))
(let ((inline$atomic_write$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_read$0$Return_correct)))))
inline$atomic_write$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_v () Int)
(declare-fun first_v () Int)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_write_atomic_write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_write$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_v first_v) (= lock lock))))))
(let ((inline$atomic_write$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (not (= first_tid Nil)) (= lock first_tid)) (=> (and (and (not (= second_tid Nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_write$1$Return_correct)))))
inline$atomic_write$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun x@@0 () Int)
(declare-fun x@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicIncr_AtomicIncr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncr$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (+ x@@0 1) 1))))))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncr$1$Return_correct)))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 4) 3)) inline$AtomicIncr$1$anon0_correct)))
(let ((inline$AtomicIncr$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (= (ControlFlow 0 5) 4)) inline$AtomicIncr$0$anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_write$0$v@0 () Int)
(declare-fun x@0 () Int)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun lock@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Incr_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= inline$atomic_write$0$v@0 x@0) (= unallocated@0 unallocated@0)) (and (= inline$atomic_write$0$v@0 (+ x@0 1)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (= inline$atomic_write$0$v@0 x@0) (= unallocated@0 unallocated@0)) (and (= inline$atomic_write$0$v@0 (+ x@0 1)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= inline$atomic_write$0$v@0 x@0) (= unallocated@0 unallocated@0)))) (=> (=> false (and (= inline$atomic_write$0$v@0 x@0) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (= inline$atomic_write$0$v@0 x@0) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (= inline$atomic_write$0$v@0 (+ x@0 1)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid Nil)) (= tid tid))) (=> (and (not (= tid Nil)) (= tid tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$atomic_write$0$Entry_correct  (=> (and (= inline$atomic_write$0$v@0 (+ x@0 1)) (= (ControlFlow 0 8) 6)) anon0$3_correct)))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (not (= tid Nil)) (= tid tid))) (=> (and (not (= tid Nil)) (= tid tid)) (=> (= (ControlFlow 0 9) 8) inline$atomic_write$0$Entry_correct)))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (not (= tid Nil)) (= tid tid))) (=> (and (not (= tid Nil)) (= tid tid)) (=> (= (ControlFlow 0 11) 9) anon0$2_correct)))))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock@0 Nil) (= (ControlFlow 0 13) 11)) anon0$1_correct)))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (not (= tid Nil)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (= tid Nil))) (=> (not (= tid Nil)) (=> (= (ControlFlow 0 14) 13) inline$atomic_acq$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= tid Nil)) (= (ControlFlow 0 16) 14)) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicAllocTid$0$tid@0 () T@X)
(declare-fun inline$AtomicAllocTid$1$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun unallocated@3 () (Array T@X Bool))
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_IncrBy2_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (not (= inline$AtomicAllocTid$0$tid@0 Nil))) (=> (not (= inline$AtomicAllocTid$0$tid@0 Nil)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not (= inline$AtomicAllocTid$1$tid@0 Nil))) (=> (not (= inline$AtomicAllocTid$1$tid@0 Nil)) (=> (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@3 ((_ map or) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$1$tid@0 true) ((_ map or) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((as const (Array T@X Bool)) false))))) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$1$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@3 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
))) (and (=> (= (ControlFlow 0 4) 3) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 4) 2) Civl_NoninterferenceChecker$1_correct)))))))))
(let ((Civl_RefinementChecker_correct true))
(let ((inline$AtomicAllocTid$1$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$1$tid@0 Nil)) (select unallocated@1 inline$AtomicAllocTid$1$tid@0)) (= unallocated@2 (store unallocated@1 inline$AtomicAllocTid$1$tid@0 false))) (and (and (=> (= (ControlFlow 0 7) 4) anon0_0_correct) (=> (= (ControlFlow 0 7) 1) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 7) 2) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@0 Nil)) (select unallocated@0 inline$AtomicAllocTid$0$tid@0)) (and (= unallocated@1 (store unallocated@0 inline$AtomicAllocTid$0$tid@0 false)) (= (ControlFlow 0 8) 7))) inline$AtomicAllocTid$1$anon0_correct)))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 9) 8)) inline$AtomicAllocTid$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_EqualTo2_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) true)
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(declare-fun inline$AtomicAllocTid$1$tid@0 () T@X)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$0$tid@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_IncrBy2_4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@2 x@0) (= x@2 (+ x@0 2))))) (=> (or false (or (= x@2 x@0) (= x@2 (+ x@0 2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@2 x@0))) (=> (=> false (= x@2 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 2)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (= x@2 (+ x@1 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 7) 6)) inline$AtomicIncr$1$anon0_correct)))
(let ((inline$AtomicAllocTid$1$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$1$tid@0 Nil)) (select unallocated@1 inline$AtomicAllocTid$1$tid@0)) (and (= unallocated@2 (store unallocated@1 inline$AtomicAllocTid$1$tid@0 false)) (= (ControlFlow 0 8) 7))) inline$AtomicIncr$0$anon0_correct)))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@0 Nil)) (select unallocated@0 inline$AtomicAllocTid$0$tid@0)) (and (= unallocated@1 (store unallocated@0 inline$AtomicAllocTid$0$tid@0 false)) (= (ControlFlow 0 9) 8))) inline$AtomicAllocTid$1$anon0_correct)))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 10) 9)) inline$AtomicAllocTid$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_EqualTo2_4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) true)
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_EqualTo2_5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (= x@1 2))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
)) (=> (and (= x@0 2) (= (ControlFlow 0 8) (- 0 7))) (= x@1 2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (= inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$tid@0 MainTid) (= x@0 0)) (= (ControlFlow 0 6) (- 0 5))) (and (= inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$tid@0 MainTid) (= x@1 0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicIncrBy2$0$anon0_correct  (=> (= x@1 (+ x@0 2)) (and (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) inline$Civl_NoninterferenceChecker_proc_EqualTo2_5$0$L1_correct)) (=> (= (ControlFlow 0 12) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 11) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (and (= tid MainTid) (= x@0 0)) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 13) 12))) inline$AtomicIncrBy2$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (= tid MainTid) (= x@@0 0)) (= (ControlFlow 0 14) 13)) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicAllocTid$0$tid@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun unallocated () (Array T@X Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocTid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocTid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@0 Nil)) (select unallocated inline$AtomicAllocTid$0$tid@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocTid$0$tid@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocTid$0$Return_correct)))
(let ((inline$AtomicAllocTid$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocTid$0$anon0_correct)))
inline$AtomicAllocTid$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_acq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acq$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_acq$0$anon0_correct  (=> (and (= lock Nil) (= (ControlFlow 0 3) 2)) inline$atomic_acq$0$Return_correct)))
(let ((inline$atomic_acq$0$Entry_correct  (=> (and (not (= tid Nil)) (= (ControlFlow 0 4) 3)) inline$atomic_acq$0$anon0_correct)))
inline$atomic_acq$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_rel)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_rel$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_rel$0$Entry_correct  (=> (and (and (not (= tid Nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$atomic_rel$0$Return_correct)))
inline$atomic_rel$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_read)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_read$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_read$0$Entry_correct  (=> (and (and (not (= tid Nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$atomic_read$0$Return_correct)))
inline$atomic_read$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_write$0$Entry_correct  (=> (and (and (not (= tid Nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$atomic_write$0$Return_correct)))
inline$atomic_write$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun MainTid () T@X)
(declare-fun Nil () T@X)
(declare-fun Identity () (Array Int Int))
(assert (distinct MainTid Nil)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicIncr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicIncr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncr$0$Return_correct)))
(let ((inline$AtomicIncr$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicIncr$0$anon0_correct)))
inline$AtomicIncr$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
