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
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAcquireLock_AtomicAcquireLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAcquireLock$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicAcquireLock$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireLock$1$Return_correct)))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 3)) inline$AtomicAcquireLock$1$anon0_correct)))
(let ((inline$AtomicAcquireLock$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicAcquireLock$0$anon0_correct)))
inline$AtomicAcquireLock$0$Entry_correct)))))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAcquireLock_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicReleaseLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseLock$0$Return_correct)))
(let ((inline$AtomicAcquireLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicAcquireLock$0$anon0_correct))))
inline$AtomicAcquireLock$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReleaseLock_AtomicAcquireLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAcquireLock$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$AtomicAcquireLock$0$Return_correct)))
(let ((inline$AtomicAcquireLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (= lock first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicAcquireLock$0$anon0_correct))))
inline$AtomicAcquireLock$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicSetColorLocked_AtomicAcquireLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAcquireLock$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$AtomicAcquireLock$0$Return_correct)))
(let ((inline$AtomicAcquireLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (and (= lock first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicAcquireLock$0$anon0_correct))))
inline$AtomicAcquireLock$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicGetColorLocked_AtomicAcquireLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAcquireLock$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$AtomicAcquireLock$0$Return_correct)))
(let ((inline$AtomicAcquireLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (= lock first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicAcquireLock$0$anon0_correct))))
inline$AtomicAcquireLock$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReleaseLock_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseLock$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicReleaseLock$1$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReleaseLock_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicReleaseLock$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= nil first_tid))) (=> (=> true (= nil first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 2))) inline$AtomicReleaseLock$0$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicReleaseLock_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= nil first_tid) (not (= first_tid nil))))))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (and (not (and (= lock first_tid) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicReleaseLock$0$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicGetColorLocked_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicReleaseLock$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= nil first_tid))) (=> (=> true (= nil first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 2))) inline$AtomicReleaseLock$0$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicSetColorLocked_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= nil first_tid) (not (= first_tid nil))))))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (not (and (= lock first_tid) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicReleaseLock$0$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-fun first_newCol () Int)
(declare-fun Color () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSetColorLocked_AtomicGetColorLocked)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicGetColorLocked$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= first_newCol Color) (= first_newCol first_newCol)) (= lock lock))))))
(let ((inline$AtomicSetColorLocked$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicGetColorLocked$0$Return_correct))))
inline$AtomicSetColorLocked$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicGetColorLocked_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= nil first_tid) (not (= first_tid nil))))))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (not (and (= lock first_tid) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicReleaseLock$0$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-fun second_newCol () Int)
(declare-fun Color () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicGetColorLocked_AtomicSetColorLocked)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetColorLocked$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_newCol second_newCol) (= Color second_newCol)) (= lock lock))))))
(let ((inline$AtomicGetColorLocked$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicSetColorLocked$0$Return_correct))))
inline$AtomicGetColorLocked$0$Entry_correct)))
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
(set-info :boogie-vc-id Civl_WriteBarrier_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) true)
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
(declare-fun Color@1 () Int)
(declare-fun Color@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun inline$AtomicSetColorLocked$0$newCol@0 () Int)
(declare-fun lock@0 () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_WriteBarrierSlow_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= Color@1 Color@0) (or (and (<= Color@0 1) (= Color@1 2)) (and (not (<= Color@1 1)) (= Color@1 Color@0)))))) (=> (or false (or (= Color@1 Color@0) (or (and (<= Color@0 1) (= Color@1 2)) (and (not (<= Color@1 1)) (= Color@1 Color@0))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= Color@1 Color@0))) (=> (=> false (= Color@1 Color@0)) (=> (and (and (= Civl_pc@0  (=> (= Color@1 Color@0) false)) (= Civl_ok@0  (or (or (and (<= Color@0 1) (= Color@1 2)) (and (not (<= Color@1 1)) (= Color@1 Color@0))) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))))
(let ((anon3_Then$1_correct  (=> (and (= Color@1 inline$AtomicSetColorLocked$0$newCol@0) (= (ControlFlow 0 10) 6)) anon2_correct)))
(let ((inline$AtomicSetColorLocked$0$Entry_correct  (=> (and (= inline$AtomicSetColorLocked$0$newCol@0 2) (= (ControlFlow 0 11) 10)) anon3_Then$1_correct)))
(let ((anon3_Then_correct  (=> (<= Color@0 1) (and (=> (= (ControlFlow 0 12) (- 0 14)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 12) 11) inline$AtomicSetColorLocked$0$Entry_correct))))))))
(let ((anon3_Else_correct  (=> (not (<= Color@0 1)) (=> (and (= Color@1 Color@0) (= (ControlFlow 0 9) 6)) anon2_correct))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 15) 12) anon3_Then_correct) (=> (= (ControlFlow 0 15) 9) anon3_Else_correct))))))))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock@0 nil) (= (ControlFlow 0 18) 15)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (not (= tid nil)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 19) 18) inline$AtomicAcquireLock$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
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
(declare-fun Color@4 () Int)
(declare-fun Color@1 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Color@3 () Int)
(declare-fun Color@7 () Int)
(declare-fun Color@5 () Int)
(declare-fun Civl_global_old_Color@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$old_Color@0 () Int)
(declare-fun Color@6 () Int)
(declare-sort T@Tid 0)
(declare-fun inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$tid@0 () T@Tid)
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@1 () (Array T@Tid Bool))
(declare-fun Color@2 () Int)
(declare-fun Color@0 () Int)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun Color () Int)
(set-info :boogie-vc-id Civl_WriteBarrier_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 33) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (or Civl_pc@0 (or (= Color@4 Color@1) (or (and (<= Color@1 1) (= Color@4 2)) (and (not (<= Color@4 1)) (= Color@4 Color@1)))))) (=> (or Civl_pc@0 (or (= Color@4 Color@1) (or (and (<= Color@1 1) (= Color@4 2)) (and (not (<= Color@4 1)) (= Color@4 Color@1))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> Civl_pc@0 (= Color@4 Color@1))) (=> (=> Civl_pc@0 (= Color@4 Color@1)) (=> (and (and (= Civl_pc@1  (=> (= Color@4 Color@1) Civl_pc@0)) (= Civl_ok@1  (or (or (and (<= Color@1 1) (= Color@4 2)) (and (not (<= Color@4 1)) (= Color@4 Color@1))) Civl_ok@0))) (= (ControlFlow 0 18) (- 0 17))) Civl_ok@1)))))))
(let ((anon2_Then$1_@2_Civl_ReturnChecker_correct  (=> (and (= Color@4 Color@3) (= (ControlFlow 0 23) 18)) Civl_ReturnChecker_correct)))
(let ((anon2_Else_@2_Civl_ReturnChecker_correct  (=> (and (= Color@4 Color@1) (= (ControlFlow 0 21) 18)) Civl_ReturnChecker_correct)))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (>= Color@7 2))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= Color@7 Color@5) (= (ControlFlow 0 15) 14)) GeneratedUnifiedExit_correct)))
(let ((anon2_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (= Color@5 Color@3) (= (ControlFlow 0 24) 15)) Civl_UnifiedReturn_correct)))
(let ((anon2_Else_@2_Civl_UnifiedReturn_correct  (=> (and (= Color@5 Color@1) (= (ControlFlow 0 16) 15)) Civl_UnifiedReturn_correct)))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$L0_correct  (=> (and (>= Civl_global_old_Color@0 inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$old_Color@0) (= (ControlFlow 0 10) (- 0 9))) (>= Color@6 inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$old_Color@0))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (and (>= Civl_global_old_Color@0 2) (= (ControlFlow 0 7) (- 0 6))) (>= Color@6 2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (>= Civl_global_old_Color@0 1) (= (ControlFlow 0 5) (- 0 4))) (>= Color@6 1)))))
(let ((anon2_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= Color@6 Color@3) (=> (and (= Civl_global_old_Color@0 Color@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (and (and (=> (= (ControlFlow 0 25) 5) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L0_correct) (=> (= (ControlFlow 0 25) 7) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L1_correct)) (=> (= (ControlFlow 0 25) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 25) 10) inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$L0_correct))))))
(let ((inline$AtomicWriteBarrier$0$anon2_Else_correct  (=> (and (not (<= Color@1 1)) (= Color@3 Color@1)) (and (and (=> (= (ControlFlow 0 27) 23) anon2_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 27) 24) anon2_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 27) 25) anon2_Then$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((inline$AtomicWriteBarrier$0$anon2_Then_correct  (=> (<= Color@1 1) (=> (and (= Color@2 2) (= Color@3 Color@2)) (and (and (=> (= (ControlFlow 0 26) 23) anon2_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 26) 24) anon2_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 26) 25) anon2_Then$1_@2_Civl_NoninterferenceChecker_correct))))))
(let ((anon2_Then_correct  (=> (<= Color@0 1) (and (=> (= (ControlFlow 0 28) (- 0 29)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 28) 26) inline$AtomicWriteBarrier$0$anon2_Then_correct) (=> (= (ControlFlow 0 28) 27) inline$AtomicWriteBarrier$0$anon2_Else_correct)))))))
(let ((anon2_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= Color@6 Color@1) (=> (and (= Civl_global_old_Color@0 Color@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (and (and (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L0_correct) (=> (= (ControlFlow 0 12) 7) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L1_correct)) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$L0_correct))))))
(let ((anon2_Else_correct  (=> (not (<= Color@0 1)) (and (and (=> (= (ControlFlow 0 22) 21) anon2_Else_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 22) 16) anon2_Else_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 22) 12) anon2_Else_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (= Color@0 Color@0) false)) (= Civl_ok@0  (or (or (and (<= Color@0 1) (= Color@0 2)) (and (not (<= Color@0 1)) (= Color@0 Color@0))) false))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (>= Color@0 Color@0)) (=> (>= Color@0 Color@0) (=> (>= Color@1 Color@0) (=> (and (or Civl_pc@0 (not (= tid nil))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (=> (= (ControlFlow 0 30) 28) anon2_Then_correct) (=> (= (ControlFlow 0 30) 22) anon2_Else_correct)))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= Color@6 Color@0) (=> (and (= Civl_global_old_Color@0 Color@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)) (and (and (and (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L0_correct) (=> (= (ControlFlow 0 11) 7) inline$Civl_NoninterferenceChecker_proc_WriteBarrier_2$0$L1_correct)) (=> (= (ControlFlow 0 11) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_yield_YieldColorOnlyGetsDarker$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= Color@0 Color@0) (or (and (<= Color@0 1) (= Color@0 2)) (and (not (<= Color@0 1)) (= Color@0 Color@0)))))) (=> (or false (or (= Color@0 Color@0) (or (and (<= Color@0 1) (= Color@0 2)) (and (not (<= Color@0 1)) (= Color@0 Color@0))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= Color@0 Color@0)))))))
(let ((anon0_correct  (=> (>= Color@0 1) (=> (and (not (= tid nil)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 32) 30) anon0_0_correct) (=> (= (ControlFlow 0 32) 11) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 32) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= Color 1) (= (ControlFlow 0 33) 32)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
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
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun Color () Int)
(declare-fun Color@0 () Int)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicWriteBarrier)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicWriteBarrier$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$AtomicWriteBarrier$0$anon2_Else_correct  (=> (and (not (<= Color 1)) (= (ControlFlow 0 4) 2)) inline$AtomicWriteBarrier$0$Return_correct)))
(let ((inline$AtomicWriteBarrier$0$anon2_Then_correct  (=> (<= Color 1) (=> (and (= Color@0 2) (= (ControlFlow 0 3) 2)) inline$AtomicWriteBarrier$0$Return_correct))))
(let ((inline$AtomicWriteBarrier$0$Entry_correct  (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicWriteBarrier$0$anon2_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicWriteBarrier$0$anon2_Else_correct)))))
inline$AtomicWriteBarrier$0$Entry_correct)))))
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
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAcquireLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAcquireLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$AtomicAcquireLock$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireLock$0$Return_correct)))
(let ((inline$AtomicAcquireLock$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$AtomicAcquireLock$0$anon0_correct)))
inline$AtomicAcquireLock$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReleaseLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$AtomicReleaseLock$0$Entry_correct  (=> (= lock tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseLock$0$Return_correct))))
inline$AtomicReleaseLock$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSetColorLocked)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetColorLocked$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$AtomicSetColorLocked$0$Entry_correct  (=> (= lock tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 3) 2)) inline$AtomicSetColorLocked$0$Return_correct))))
inline$AtomicSetColorLocked$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicGetColorLocked)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicGetColorLocked$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$AtomicGetColorLocked$0$Entry_correct  (=> (= lock tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 3) 2)) inline$AtomicGetColorLocked$0$Return_correct))))
inline$AtomicGetColorLocked$0$Entry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
