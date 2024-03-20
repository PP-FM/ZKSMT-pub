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
(declare-fun nil () T@X)
(declare-fun first_xls () (Array T@X Bool))
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicInit_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= 0 0) (= 0 0)) (= nil nil)) (= nil nil))))))
(let ((inline$AtomicInit$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) first_xls ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (and (= first_xls ((as const (Array T@X Bool)) true)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$0$Return_correct))))
inline$AtomicInit$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_xls () (Array T@X Bool))
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_AtomicInit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicInit$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= nil first_tid))) (=> (=> true (= nil first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$AtomicInit$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) second_xls ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (= lock first_tid) (not (= first_tid nil))) (and (= second_xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 4) 2))) inline$AtomicInit$0$Return_correct))))
inline$AtomicInit$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun currsize () Int)
(declare-fun first_tid () T@X)
(declare-fun second_xls () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun ghostLock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReadCurrsize_AtomicInit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicInit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= 0 0) (= 0 0)) (= nil nil)) (= nil nil)) (= currsize 0))))))
(let ((inline$AtomicReadCurrsize$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) second_xls ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (and (= second_xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 3) 2))) inline$AtomicInit$0$Return_correct))))
inline$AtomicReadCurrsize$0$Entry_correct)))
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
(declare-fun second_val () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun currsize () Int)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun ghostLock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReadCurrsize_AtomicWriteCurrsize)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicWriteCurrsize$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= second_val second_val) (= nil nil)) (= currsize second_val)) (= lock lock))))))
(let ((inline$AtomicReadCurrsize$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (=> (and (and (= lock second_tid) (= ghostLock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicWriteCurrsize$0$Return_correct)))))
inline$AtomicReadCurrsize$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicReadCurrsize_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (or (= nil first_tid) (= ghostLock first_tid)) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (not (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun newsize () Int)
(declare-fun first_tid () T@X)
(declare-fun second_xls () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun ghostLock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReadNewsize_AtomicInit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicInit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= 0 0) (= 0 0)) (= nil nil)) (= nil nil)) (= newsize 0))))))
(let ((inline$AtomicReadNewsize$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) second_xls ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (and (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (and (= second_xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 3) 2))) inline$AtomicInit$0$Return_correct))))
inline$AtomicReadNewsize$0$Entry_correct)))
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
(declare-fun second_val () Int)
(declare-sort T@X 0)
(declare-fun second_tid () T@X)
(declare-fun newsize () Int)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReadNewsize_AtomicWriteNewsize)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicWriteNewsize$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= second_val second_val) (= second_tid second_tid)) (= newsize second_val)) (= lock lock))))))
(let ((inline$AtomicReadNewsize$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (=> (and (and (= lock second_tid) (= ghostLock nil)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicWriteNewsize$0$Return_correct)))))
inline$AtomicReadNewsize$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicReadNewsize_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (or (= nil first_tid) (= ghostLock first_tid)) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (and (not (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicWriteNewsize_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (= nil first_tid) (= ghostLock nil)) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (not (and (and (= lock first_tid) (= ghostLock nil)) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicWriteCurrsize_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (= nil first_tid) (= ghostLock first_tid)) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (not (and (and (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun lock () T@X)
(declare-fun second_xls () (Array T@X Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_AtomicInit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicInit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= nil nil) (= 0 0)) (= 0 0)) (= nil nil)) (= nil first_tid))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicInit$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) second_xls ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (not (= first_tid nil))) (and (= second_xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 4) 3))) inline$atomic_acquire$0$anon0_correct)))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReadCurrsize_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (or (= second_tid first_tid) (= ghostLock first_tid)))) (=> (=> true (or (= second_tid first_tid) (= ghostLock first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReadNewsize_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (or (= second_tid first_tid) (= ghostLock first_tid)))) (=> (=> true (or (= second_tid first_tid) (= ghostLock first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (or (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicWriteNewsize_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (= second_tid first_tid) (= ghostLock nil)))) (=> (=> true (and (= second_tid first_tid) (= ghostLock nil))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (= lock first_tid) (= ghostLock nil)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicWriteCurrsize_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (= second_tid first_tid) (= ghostLock first_tid)))) (=> (=> true (and (= second_tid first_tid) (= ghostLock first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (and (and (and (= lock first_tid) (= ghostLock first_tid)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$atomic_acquire$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$atomic_acquire$1$Return_correct)))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 3)) inline$atomic_acquire$1$anon0_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct)))
inline$atomic_acquire$0$Entry_correct)))))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun lock () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= second_tid first_tid))) (=> (=> true (= second_tid first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (and (= lock first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$1$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= nil first_tid))) (=> (=> true (= nil first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (= lock first_tid)) (=> (and (and (not (= first_tid nil)) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 2))) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= nil first_tid) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (not (and (= lock first_tid) (not (= first_tid nil)))) (= lock second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 3) 2))) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun inline$AtomicAllocateLow$0$tid@0 () T@X)
(declare-fun nil () T@X)
(declare-fun currsize@0 () Int)
(declare-fun newsize@0 () Int)
(declare-fun ghostLock@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun xl () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun unallocated@1 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Allocate_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 19) (- 0 18)) (not (= inline$AtomicAllocateLow$0$tid@0 nil)))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))) (= (ControlFlow 0 17) (- 0 16))) (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 currsize@0)) (= (ControlFlow 0 15) (- 0 14))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 currsize@0))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= ghostLock@0 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 currsize@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 newsize@0)) (= (ControlFlow 0 13) (- 0 12))) (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= ghostLock@0 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 currsize@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 newsize@0))))))
(let ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) currsize@0))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0)) (=> (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (=> (= (ControlFlow 0 10) (- 0 9)) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) currsize@0)))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) currsize@0))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0))) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (=> (= (ControlFlow 0 6) (- 0 5)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) currsize@0)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= inline$AtomicAllocateLow$0$tid@0 xl))) (=> (=> false (= inline$AtomicAllocateLow$0$tid@0 xl)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= inline$AtomicAllocateLow$0$tid@0 xl) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (not (= inline$AtomicAllocateLow$0$tid@0 nil)) (=> (and (select unallocated@0 inline$AtomicAllocateLow$0$tid@0) (= unallocated@1 (store unallocated@0 inline$AtomicAllocateLow$0$tid@0 false))) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 20) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 6) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 20) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 10) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 20) 15) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 20) 17) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 20) 19) GeneratedUnifiedExit_correct))))))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 21) 20)) inline$AtomicAllocateLow$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
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
(declare-fun currsize@2 () Int)
(declare-fun newsize@2 () Int)
(declare-sort T@X 0)
(declare-fun ghostLock@2 () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_currsize@1 () Int)
(declare-fun Civl_global_old_newsize@1 () Int)
(declare-fun Civl_global_old_ghostLock@1 () T@X)
(declare-fun currsize@3 () Int)
(declare-fun newsize@3 () Int)
(declare-fun ghostLock@3 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun currsize@1 () Int)
(declare-fun newsize@1 () Int)
(declare-fun ghostLock@1 () T@X)
(declare-fun call5formal@Civl_0_xl@0 () T@X)
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun ghostLock@0 () T@X)
(declare-fun currsize@0 () Int)
(declare-fun newsize@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun xls () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 39) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 28) (- 0 27)) (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 23) (- 0 25)) true) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 23) (- 0 22))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) true) (=> (= (ControlFlow 0 20) (- 0 19)) (=> false true)))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (<= 0 Civl_global_old_currsize@1) (<= Civl_global_old_currsize@1 Civl_global_old_newsize@1)) (= (= Civl_global_old_ghostLock@1 nil) (= Civl_global_old_currsize@1 Civl_global_old_newsize@1))) (= (ControlFlow 0 16) (- 0 15))) (and (and (<= 0 currsize@3) (<= currsize@3 newsize@3)) (= (= ghostLock@3 nil) (= currsize@3 newsize@3))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= (ControlFlow 0 14) (- 0 13))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 currsize@3))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= Civl_global_old_ghostLock@1 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 Civl_global_old_newsize@1)) (= (ControlFlow 0 12) (- 0 11))) (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= ghostLock@3 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 currsize@3)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 newsize@3))))))
(let ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0)) (=> (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (=> (= (ControlFlow 0 9) (- 0 8)) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) currsize@3)))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0))) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (=> (= (ControlFlow 0 5) (- 0 4)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) currsize@3)))))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@3 ghostLock@2) (=> (and (= currsize@3 currsize@2) (= newsize@3 newsize@2)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@2) (= Civl_global_old_currsize@1 currsize@2)) (and (= Civl_global_old_newsize@1 newsize@2) (= Civl_linear_tid_available@4 Civl_linear_tid_available@3))) (and (and (and (and (and (=> (= (ControlFlow 0 29) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 29) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 29) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 29) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 29) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 29) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 30) (- 0 33)) (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1)))) (=> (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (=> (not (= call5formal@Civl_0_xl@0 nil)) (=> (and (and (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2))) (or false true)) (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array T@X Bool)) false) call5formal@Civl_0_xl@0 true) ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call5formal@Civl_0_xl@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (not (= call5formal@Civl_0_xl@0 nil))) (=> (not (= call5formal@Civl_0_xl@0 nil)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2)))) (=> (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2))) (and (and (=> (= (ControlFlow 0 30) 28) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 30) 29) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 20) Civl_UnchangedChecker_correct))))))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@3 ghostLock@1) (=> (and (= currsize@3 currsize@1) (= newsize@3 newsize@1)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@1) (= Civl_global_old_currsize@1 currsize@1)) (and (= Civl_global_old_newsize@1 newsize@1) (= Civl_linear_tid_available@4 Civl_linear_tid_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 26) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 26) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 26) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 26) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 26) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 26) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@3 ghostLock@1) (=> (and (= currsize@3 currsize@1) (= newsize@3 newsize@1)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@1) (= Civl_global_old_currsize@1 currsize@1)) (and (= Civl_global_old_newsize@1 newsize@1) (= Civl_linear_tid_available@4 Civl_linear_tid_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 18) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 18) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 18) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 18) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 18) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopHead_correct  (=> (or false true) (=> (and (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((as const (Array T@X Bool)) false)))) (and (and (and (and (=> (= (ControlFlow 0 34) 30) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 34) 18) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 20) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 34) 23) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 34) 26) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct))))))
(let ((anon0$1_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (and (and (<= 0 0) (<= 0 0)) (= (= nil nil) (= 0 0)))) (=> (and (and (<= 0 0) (<= 0 0)) (= (= nil nil) (= 0 0))) (=> (= (ControlFlow 0 35) 34) anon2_LoopHead_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@3 nil) (=> (and (= currsize@3 0) (= newsize@3 0)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@0) (= Civl_global_old_currsize@1 currsize@0)) (and (= Civl_global_old_newsize@1 newsize@0) (= Civl_linear_tid_available@4 Civl_linear_tid_available@0))) (and (and (and (and (and (=> (= (ControlFlow 0 17) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 17) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 17) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 17) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 17) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) xls ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |32|
)) (=> (and (= xls ((as const (Array T@X Bool)) true)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) xls ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= xls ((as const (Array T@X Bool)) true))) (=> (= xls ((as const (Array T@X Bool)) true)) (and (and (=> (= (ControlFlow 0 37) 35) anon0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 37) 17) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 37) 2) Civl_RefinementChecker_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 39) 37)) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun currsize@5 () Int)
(declare-fun newsize@5 () Int)
(declare-sort T@X 0)
(declare-fun ghostLock@5 () T@X)
(declare-fun nil () T@X)
(declare-fun newsize@3 () Int)
(declare-fun currsize@3 () Int)
(declare-fun ghostLock@3 () T@X)
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_pc@4 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun Civl_global_old_currsize@1 () Int)
(declare-fun Civl_global_old_newsize@1 () Int)
(declare-fun Civl_global_old_ghostLock@1 () T@X)
(declare-fun currsize@4 () Int)
(declare-fun newsize@4 () Int)
(declare-fun ghostLock@4 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun start@0 () Int)
(declare-fun bytesRead@1 () Int)
(declare-fun currsize@2 () Int)
(declare-fun newsize@2 () Int)
(declare-fun ghostLock@2 () T@X)
(declare-fun tid () T@X)
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_global_old_newsize@0 () Int)
(declare-fun Civl_global_old_currsize@0 () Int)
(declare-fun Civl_global_old_ghostLock@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun newsize@0 () Int)
(declare-fun currsize@0 () Int)
(declare-fun ghostLock@0 () T@X)
(declare-fun inline$AtomicWriteNewsize$0$val@0 () Int)
(declare-fun Civl_pc@3 () Bool)
(declare-fun size@0 () Int)
(declare-fun bytesRead@0 () Int)
(declare-fun newsize@1 () Int)
(declare-fun ghostLock@1 () T@X)
(declare-fun currsize@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun lock@1 () T@X)
(declare-fun call1formal@Civl_0_index@0 () Int)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun lock@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun currsize () Int)
(declare-fun newsize () Int)
(declare-fun ghostLock () T@X)
(set-info :boogie-vc-id Civl_Thread_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 27) (- 0 26)) (and (and (<= 0 currsize@5) (<= currsize@5 newsize@5)) (= (= ghostLock@5 nil) (= currsize@5 newsize@5))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= newsize@5 newsize@3) (= currsize@5 currsize@3)) (and (= ghostLock@5 ghostLock@3) (= (ControlFlow 0 28) 27))) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 22) (- 0 24)) true) (and (=> (= (ControlFlow 0 22) (- 0 23)) (=> Civl_pc@2 true)) (=> (=> Civl_pc@2 true) (=> (and (and (= Civl_pc@4  (=> true Civl_pc@2)) (= Civl_ok@3  (or true Civl_ok@2))) (= (ControlFlow 0 22) (- 0 21))) Civl_ok@3))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (<= 0 Civl_global_old_currsize@1) (<= Civl_global_old_currsize@1 Civl_global_old_newsize@1)) (= (= Civl_global_old_ghostLock@1 nil) (= Civl_global_old_currsize@1 Civl_global_old_newsize@1))) (= (ControlFlow 0 17) (- 0 16))) (and (and (<= 0 currsize@4) (<= currsize@4 newsize@4)) (= (= ghostLock@4 nil) (= currsize@4 newsize@4))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= (ControlFlow 0 15) (- 0 14))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 currsize@4))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= Civl_global_old_ghostLock@1 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 Civl_global_old_newsize@1)) (= (ControlFlow 0 13) (- 0 12))) (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= ghostLock@4 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 currsize@4)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 newsize@4))))))
(let ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0)) (=> (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (=> (= (ControlFlow 0 10) (- 0 9)) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) currsize@4)))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0))) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (=> (= (ControlFlow 0 6) (- 0 5)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) currsize@4)))))))))
(let ((COPY_TO_BUFFER_0_@2_Civl_NoninterferenceChecker_correct  (=> (= Civl_linear_tid_available@4 Civl_linear_tid_available@3) (=> (and (= Civl_global_old_newsize@1 newsize@3) (= Civl_global_old_currsize@1 currsize@3)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@3) (= newsize@4 newsize@3)) (and (= currsize@4 currsize@3) (= ghostLock@4 ghostLock@3))) (and (and (and (and (and (=> (= (ControlFlow 0 25) 6) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 25) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 25) 10) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 25) 13) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 25) 15) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 25) 17) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((COPY_TO_BUFFER_0_correct  (=> (and (= Civl_pc@2  (=> true Civl_pc@1)) (= Civl_ok@2  (or true Civl_ok@1))) (and (=> (= (ControlFlow 0 29) (- 0 33)) (and (<= 0 start@0) (<= 0 bytesRead@1))) (=> (and (<= 0 start@0) (<= 0 bytesRead@1)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (or (= bytesRead@1 0) (<= (+ start@0 bytesRead@1) currsize@2))) (=> (or (= bytesRead@1 0) (<= (+ start@0 bytesRead@1) currsize@2)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2)))) (=> (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (not (= tid nil)) (<= currsize@2 currsize@2))) (=> (and (not (= tid nil)) (<= currsize@2 currsize@2)) (=> (and (and (<= 0 currsize@3) (<= currsize@3 newsize@3)) (= (= ghostLock@3 nil) (= currsize@3 newsize@3))) (=> (and (and (and (not (= tid nil)) (<= currsize@2 currsize@3)) (or Civl_pc@2 true)) (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |38|
)))) (and (and (=> (= (ControlFlow 0 29) 22) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 29) 28) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 29) 25) COPY_TO_BUFFER_0_@2_Civl_NoninterferenceChecker_correct)))))))))))))))
(let ((COPY_TO_BUFFER_@2_Civl_NoninterferenceChecker_correct  (=> (= Civl_linear_tid_available@4 Civl_linear_tid_available@2) (=> (and (= Civl_global_old_newsize@1 Civl_global_old_newsize@0) (= Civl_global_old_currsize@1 Civl_global_old_currsize@0)) (=> (and (and (= Civl_global_old_ghostLock@1 Civl_global_old_ghostLock@0) (= newsize@4 newsize@2)) (and (= currsize@4 currsize@2) (= ghostLock@4 ghostLock@2))) (and (and (and (and (and (=> (= (ControlFlow 0 19) 6) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 19) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 10) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 19) 13) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 19) 15) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 19) 17) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon5_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= Civl_linear_tid_available@4 Civl_linear_tid_available@0) (=> (and (= Civl_global_old_newsize@1 newsize@0) (= Civl_global_old_currsize@1 currsize@0)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@0) (= newsize@4 inline$AtomicWriteNewsize$0$val@0)) (and (= currsize@4 currsize@0) (= ghostLock@4 tid))) (and (and (and (and (and (=> (= (ControlFlow 0 18) 6) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 18) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 10) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 18) 13) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 18) 15) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 18) 17) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@3 true)))))
(let ((COPY_TO_BUFFER_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@3 Civl_pc@1) (= (ControlFlow 0 20) 2)) Civl_RefinementChecker_correct)))
(let ((anon4_Then$1_correct  (=> (and (= ghostLock@2 ghostLock@0) (= currsize@2 currsize@0)) (=> (and (and (and (= newsize@2 newsize@0) (= Civl_global_old_ghostLock@0 ghostLock@0)) (and (= Civl_global_old_currsize@0 currsize@0) (= Civl_global_old_newsize@0 newsize@0))) (and (and (= Civl_pc@1 false) (= Civl_ok@1 false)) (and (= Civl_linear_tid_available@2 Civl_linear_tid_available@0) (= bytesRead@1 size@0)))) (and (and (=> (= (ControlFlow 0 61) 29) COPY_TO_BUFFER_0_correct) (=> (= (ControlFlow 0 61) 19) COPY_TO_BUFFER_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 61) 20) COPY_TO_BUFFER_@2_Civl_RefinementChecker_correct))))))
(let ((anon4_Then_correct  (=> (<= (+ start@0 size@0) currsize@0) (and (=> (= (ControlFlow 0 62) (- 0 64)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 62) (- 0 63)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 62) 61) anon4_Then$1_correct))))))))
(let ((anon5_Then$1_correct  (=> (and (= ghostLock@2 ghostLock@0) (= currsize@2 currsize@0)) (=> (and (and (and (= newsize@2 newsize@0) (= Civl_global_old_ghostLock@0 ghostLock@0)) (and (= Civl_global_old_currsize@0 currsize@0) (= Civl_global_old_newsize@0 newsize@0))) (and (and (= Civl_pc@1 false) (= Civl_ok@1 false)) (and (= Civl_linear_tid_available@2 Civl_linear_tid_available@0) (= bytesRead@1 bytesRead@0)))) (and (and (=> (= (ControlFlow 0 56) 29) COPY_TO_BUFFER_0_correct) (=> (= (ControlFlow 0 56) 19) COPY_TO_BUFFER_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 56) 20) COPY_TO_BUFFER_@2_Civl_RefinementChecker_correct))))))
(let ((anon5_Then_correct  (=> (and (> newsize@0 currsize@0) (= bytesRead@0 (ite (<= start@0 currsize@0) (- currsize@0 start@0) 0))) (and (=> (= (ControlFlow 0 57) (- 0 59)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 57) (- 0 58)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 57) 56) anon5_Then$1_correct))))))))
(let ((READ_DEVICE_0$4_correct  (=> (and (= ghostLock@2 nil) (= currsize@2 newsize@1)) (=> (and (and (and (= newsize@2 newsize@1) (= Civl_global_old_ghostLock@0 ghostLock@1)) (and (= Civl_global_old_currsize@0 currsize@1) (= Civl_global_old_newsize@0 newsize@1))) (and (and (= Civl_pc@1 Civl_pc@0) (= Civl_ok@1 Civl_ok@0)) (and (= Civl_linear_tid_available@2 Civl_linear_tid_available@1) (= bytesRead@1 size@0)))) (and (and (=> (= (ControlFlow 0 34) 29) COPY_TO_BUFFER_0_correct) (=> (= (ControlFlow 0 34) 19) COPY_TO_BUFFER_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 20) COPY_TO_BUFFER_@2_Civl_RefinementChecker_correct))))))
(let ((READ_DEVICE_0$3_correct  (and (=> (= (ControlFlow 0 35) (- 0 37)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 35) (- 0 36)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 35) 34) READ_DEVICE_0$4_correct)))))))
(let ((READ_DEVICE_0$2_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) (and (= tid tid) (= ghostLock@1 tid))) (=> (and (= tid tid) (= ghostLock@1 tid)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 38) 35) READ_DEVICE_0$3_correct)))))))
(let ((READ_DEVICE_0$1_correct  (and (=> (= (ControlFlow 0 41) (- 0 43)) (or (= tid tid) (= ghostLock@1 tid))) (=> (or (= tid tid) (= ghostLock@1 tid)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 41) 38) READ_DEVICE_0$2_correct)))))))
(let ((inline$atomic_acquire$1$anon0_correct  (=> (and (= lock@1 nil) (= (ControlFlow 0 44) 41)) READ_DEVICE_0$1_correct)))
(let ((READ_DEVICE_0_correct  (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= call1formal@Civl_0_index@0 (+ start@0 size@0))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (and (and (<= 0 currsize@0) (<= currsize@0 inline$AtomicWriteNewsize$0$val@0)) (= (= tid nil) (= currsize@0 inline$AtomicWriteNewsize$0$val@0)))) (=> (and (and (<= 0 currsize@0) (<= currsize@0 inline$AtomicWriteNewsize$0$val@0)) (= (= tid nil) (= currsize@0 inline$AtomicWriteNewsize$0$val@0))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (and (and (and (not (= tid nil)) (= tid tid)) (= currsize@0 currsize@0)) (= inline$AtomicWriteNewsize$0$val@0 inline$AtomicWriteNewsize$0$val@0))) (=> (and (and (and (not (= tid nil)) (= tid tid)) (= currsize@0 currsize@0)) (= inline$AtomicWriteNewsize$0$val@0 inline$AtomicWriteNewsize$0$val@0)) (=> (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (=> (and (and (and (and (and (not (= tid nil)) (= ghostLock@1 tid)) (= currsize@0 currsize@1)) (= inline$AtomicWriteNewsize$0$val@0 newsize@1)) (or Civl_pc@0 true)) (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |37|
)))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 45) 44) inline$atomic_acquire$1$anon0_correct))))))))))))
(let ((anon5_Else$2_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@3 false) (= (ControlFlow 0 4) 2)) Civl_RefinementChecker_correct)))
(let ((anon5_Else$1_correct  (and (=> (= (ControlFlow 0 49) (- 0 51)) (= tid tid)) (=> (= tid tid) (and (=> (= (ControlFlow 0 49) (- 0 50)) (not (= tid nil))) (=> (not (= tid nil)) (and (and (=> (= (ControlFlow 0 49) 45) READ_DEVICE_0_correct) (=> (= (ControlFlow 0 49) 18) anon5_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 49) 4) anon5_Else$2_@2_Civl_RefinementChecker_correct))))))))
(let ((inline$AtomicWriteNewsize$0$Entry_correct  (=> (and (= inline$AtomicWriteNewsize$0$val@0 (+ start@0 size@0)) (= (ControlFlow 0 52) 49)) anon5_Else$1_correct)))
(let ((anon5_Else_correct  (=> (>= currsize@0 newsize@0) (and (=> (= (ControlFlow 0 53) (- 0 55)) (and (= tid tid) (= ghostLock@0 nil))) (=> (and (= tid tid) (= ghostLock@0 nil)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 53) 52) inline$AtomicWriteNewsize$0$Entry_correct))))))))
(let ((anon4_Else_correct  (=> (< currsize@0 (+ start@0 size@0)) (and (=> (= (ControlFlow 0 60) 57) anon5_Then_correct) (=> (= (ControlFlow 0 60) 53) anon5_Else_correct)))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 65) (- 0 67)) (or (= tid tid) (= ghostLock@0 tid))) (=> (or (= tid tid) (= ghostLock@0 tid)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 65) 62) anon4_Then_correct) (=> (= (ControlFlow 0 65) 60) anon4_Else_correct))))))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 68) (- 0 70)) (or (= tid tid) (= ghostLock@0 tid))) (=> (or (= tid tid) (= ghostLock@0 tid)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 68) 65) anon0$2_correct)))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock@0 nil) (= (ControlFlow 0 71) 68)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |33|
)) (not (= tid nil))) (=> (and (and (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (<= 0 start@0) (<= 0 size@0))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 72) 71) inline$atomic_acquire$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (and (and (<= 0 currsize) (<= currsize newsize)) (= (= ghostLock nil) (= currsize newsize))) (= (ControlFlow 0 74) 72)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
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
(declare-fun currsize@3 () Int)
(declare-fun newsize@3 () Int)
(declare-sort T@X 0)
(declare-fun ghostLock@3 () T@X)
(declare-fun nil () T@X)
(declare-fun tid () T@X)
(declare-fun currsize () Int)
(declare-fun newsize () Int)
(declare-fun newsize@1 () Int)
(declare-fun currsize@1 () Int)
(declare-fun ghostLock@1 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun j@1 () Int)
(declare-fun Civl_global_old_currsize@1 () Int)
(declare-fun Civl_global_old_newsize@1 () Int)
(declare-fun Civl_global_old_ghostLock@1 () T@X)
(declare-fun currsize@2 () Int)
(declare-fun newsize@2 () Int)
(declare-fun ghostLock@2 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun index () Int)
(declare-fun j@0 () Int)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun currsize@0 () Int)
(declare-fun newsize@0 () Int)
(declare-fun ghostLock@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun lock@0 () T@X)
(declare-fun ghostLock () T@X)
(set-info :boogie-vc-id Civl_WriteCache_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (and (and (<= 0 currsize@3) (<= currsize@3 newsize@3)) (= (= ghostLock@3 nil) (= currsize@3 newsize@3)))) (=> (and (and (<= 0 currsize@3) (<= currsize@3 newsize@3)) (= (= ghostLock@3 nil) (= currsize@3 newsize@3))) (=> (= (ControlFlow 0 36) (- 0 35)) (and (and (and (not (= tid nil)) (= ghostLock@3 tid)) (= currsize currsize@3)) (= newsize newsize@3)))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= newsize@3 newsize@1) (= currsize@3 currsize@1)) (and (= ghostLock@3 ghostLock@1) (= (ControlFlow 0 38) 36))) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) true) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 31) (- 0 30))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) true) (=> (= (ControlFlow 0 24) (- 0 23)) (=> false true)))))
(let ((anon2_LoopBody$1_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 19) (- 0 21)) (<= currsize j@1)) (=> (<= currsize j@1) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1)))) (=> (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (=> (= (ControlFlow 0 19) (- 0 18)) (and (and (and (not (= tid nil)) (= ghostLock@1 tid)) (= currsize currsize@1)) (= newsize newsize@1)))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (<= 0 Civl_global_old_currsize@1) (<= Civl_global_old_currsize@1 Civl_global_old_newsize@1)) (= (= Civl_global_old_ghostLock@1 nil) (= Civl_global_old_currsize@1 Civl_global_old_newsize@1))) (= (ControlFlow 0 16) (- 0 15))) (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= (ControlFlow 0 14) (- 0 13))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 currsize@2))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= Civl_global_old_ghostLock@1 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 Civl_global_old_newsize@1)) (= (ControlFlow 0 12) (- 0 11))) (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= ghostLock@2 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 currsize@2)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 newsize@2))))))
(let ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0)) (=> (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (=> (= (ControlFlow 0 9) (- 0 8)) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) currsize@2)))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0))) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (=> (= (ControlFlow 0 5) (- 0 4)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) currsize@2)))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@2 ghostLock@1) (=> (and (= currsize@2 currsize@1) (= newsize@2 newsize@1)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@1) (= Civl_global_old_currsize@1 currsize@1)) (and (= Civl_global_old_newsize@1 newsize@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 34) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 34) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 34) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 34) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 34) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopDone_correct  (=> (<= index j@0) (and (and (=> (= (ControlFlow 0 39) 31) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 39) 38) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 39) 34) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@2 ghostLock@1) (=> (and (= currsize@2 currsize@1) (= newsize@2 newsize@1)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@1) (= Civl_global_old_currsize@1 currsize@1)) (and (= Civl_global_old_newsize@1 newsize@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 22) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 22) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 22) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 22) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 22) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 22) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody$1_correct  (=> (= j@1 (+ j@0 1)) (and (and (=> (= (ControlFlow 0 26) 19) anon2_LoopBody$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 26) 22) anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 24) Civl_UnchangedChecker_correct)))))
(let ((anon2_LoopBody_correct  (=> (< j@0 index) (and (=> (= (ControlFlow 0 27) (- 0 29)) (and (<= currsize@1 j@0) (= ghostLock@1 tid))) (=> (and (<= currsize@1 j@0) (= ghostLock@1 tid)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 27) 26) anon2_LoopBody$1_correct))))))))
(let ((anon2_LoopHead_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |39|
)) (=> (and (<= currsize j@0) (or false true)) (=> (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (=> (and (and (and (and (not (= tid nil)) (= ghostLock@1 tid)) (= currsize currsize@1)) (= newsize newsize@1)) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 40) 39) anon2_LoopDone_correct) (=> (= (ControlFlow 0 40) 27) anon2_LoopBody_correct))))))))
(let ((anon0$1_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 41) (- 0 44)) (<= currsize currsize@0)) (=> (<= currsize currsize@0) (and (=> (= (ControlFlow 0 41) (- 0 43)) (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0)))) (=> (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (and (and (and (not (= tid nil)) (= ghostLock@0 tid)) (= currsize currsize@0)) (= newsize newsize@0))) (=> (and (and (and (not (= tid nil)) (= ghostLock@0 tid)) (= currsize currsize@0)) (= newsize newsize@0)) (=> (= (ControlFlow 0 41) 40) anon2_LoopHead_correct)))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@2 ghostLock@0) (=> (and (= currsize@2 currsize@0) (= newsize@2 newsize@0)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@0) (= Civl_global_old_currsize@1 currsize@0)) (and (= Civl_global_old_newsize@1 newsize@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))) (and (and (and (and (and (=> (= (ControlFlow 0 17) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 17) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 17) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 17) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 17) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (=> (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))) (=> (and (and (and (and (not (= tid nil)) (= ghostLock@0 tid)) (= currsize currsize@0)) (= newsize newsize@0)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (or (= lock@0 tid) (= ghostLock@0 tid))) (=> (or (= lock@0 tid) (= ghostLock@0 tid)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (not (= tid nil))) (=> (not (= tid nil)) (and (and (=> (= (ControlFlow 0 45) 41) anon0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 45) 17) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 45) 2) Civl_RefinementChecker_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= 0 currsize) (<= currsize newsize)) (= (= ghostLock nil) (= currsize newsize))) (=> (and (and (and (and (not (= tid nil)) (= ghostLock tid)) (= currsize currsize)) (= newsize newsize)) (= (ControlFlow 0 48) 45)) anon0_correct))))
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
(declare-fun currsize@3 () Int)
(declare-fun newsize@3 () Int)
(declare-sort T@X 0)
(declare-fun ghostLock@3 () T@X)
(declare-fun nil () T@X)
(declare-fun tid () T@X)
(declare-fun currsize () Int)
(declare-fun newsize@1 () Int)
(declare-fun currsize@1 () Int)
(declare-fun ghostLock@1 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun j@1 () Int)
(declare-fun bytesRead () Int)
(declare-fun start () Int)
(declare-fun Civl_global_old_currsize@1 () Int)
(declare-fun Civl_global_old_newsize@1 () Int)
(declare-fun Civl_global_old_ghostLock@1 () T@X)
(declare-fun currsize@2 () Int)
(declare-fun newsize@2 () Int)
(declare-fun ghostLock@2 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun j@0 () Int)
(declare-fun inline$AtomicReadCacheEntry$0$index@1 () Int)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun currsize@0 () Int)
(declare-fun newsize@0 () Int)
(declare-fun ghostLock@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun newsize () Int)
(declare-fun ghostLock () T@X)
(set-info :boogie-vc-id Civl_ReadCache_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (and (and (<= 0 currsize@3) (<= currsize@3 newsize@3)) (= (= ghostLock@3 nil) (= currsize@3 newsize@3)))) (=> (and (and (<= 0 currsize@3) (<= currsize@3 newsize@3)) (= (= ghostLock@3 nil) (= currsize@3 newsize@3))) (=> (= (ControlFlow 0 37) (- 0 36)) (and (not (= tid nil)) (<= currsize currsize@3)))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= newsize@3 newsize@1) (= currsize@3 currsize@1)) (and (= ghostLock@3 ghostLock@1) (= (ControlFlow 0 39) 37))) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 32) (- 0 34)) true) (and (=> (= (ControlFlow 0 32) (- 0 33)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 32) (- 0 31))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) true) (=> (= (ControlFlow 0 25) (- 0 24)) (=> false true)))))
(let ((anon2_LoopBody$1_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 19) (- 0 22)) (<= 0 j@1)) (=> (<= 0 j@1) (and (=> (= (ControlFlow 0 19) (- 0 21)) (or (= bytesRead 0) (<= (+ start bytesRead) currsize@1))) (=> (or (= bytesRead 0) (<= (+ start bytesRead) currsize@1)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1)))) (=> (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (=> (= (ControlFlow 0 19) (- 0 18)) (and (not (= tid nil)) (<= currsize currsize@1)))))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (<= 0 Civl_global_old_currsize@1) (<= Civl_global_old_currsize@1 Civl_global_old_newsize@1)) (= (= Civl_global_old_ghostLock@1 nil) (= Civl_global_old_currsize@1 Civl_global_old_newsize@1))) (= (ControlFlow 0 16) (- 0 15))) (and (and (<= 0 currsize@2) (<= currsize@2 newsize@2)) (= (= ghostLock@2 nil) (= currsize@2 newsize@2))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= (ControlFlow 0 14) (- 0 13))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$tid@0 nil)) (<= inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$old_currsize@0 currsize@2))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= Civl_global_old_ghostLock@1 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 Civl_global_old_currsize@1)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 Civl_global_old_newsize@1)) (= (ControlFlow 0 12) (- 0 11))) (and (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0 nil)) (= ghostLock@2 inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$tid@0)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_currsize@0 currsize@2)) (= inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$old_newsize@0 newsize@2))))))
(let ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0)) (=> (<= 0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$j@0) (=> (= (ControlFlow 0 9) (- 0 8)) (or (= inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$bytesRead@0) currsize@2)))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) Civl_global_old_currsize@1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0))) (=> (and (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0) (<= 0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0)) (=> (= (ControlFlow 0 5) (- 0 4)) (or (= inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0 0) (<= (+ inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$start@0 inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$bytesRead@0) currsize@2)))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@2 ghostLock@1) (=> (and (= currsize@2 currsize@1) (= newsize@2 newsize@1)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@1) (= Civl_global_old_currsize@1 currsize@1)) (and (= Civl_global_old_newsize@1 newsize@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 35) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 35) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 35) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 35) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 35) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopDone_correct  (=> (<= bytesRead j@0) (and (and (=> (= (ControlFlow 0 40) 32) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 40) 39) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 40) 35) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@2 ghostLock@1) (=> (and (= currsize@2 currsize@1) (= newsize@2 newsize@1)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@1) (= Civl_global_old_currsize@1 currsize@1)) (and (= Civl_global_old_newsize@1 newsize@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 23) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 23) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 23) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 23) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 23) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 23) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((anon2_LoopBody$1_correct  (=> (= j@1 (+ j@0 1)) (and (and (=> (= (ControlFlow 0 27) 19) anon2_LoopBody$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 27) 23) anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 27) 25) Civl_UnchangedChecker_correct)))))
(let ((inline$AtomicReadCacheEntry$0$Entry_correct  (=> (and (= inline$AtomicReadCacheEntry$0$index@1 (+ start j@0)) (= (ControlFlow 0 28) 27)) anon2_LoopBody$1_correct)))
(let ((anon2_LoopBody_correct  (=> (< j@0 bytesRead) (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (<= 0 (+ start j@0)) (< (+ start j@0) currsize@1))) (=> (and (<= 0 (+ start j@0)) (< (+ start j@0) currsize@1)) (=> (= (ControlFlow 0 29) 28) inline$AtomicReadCacheEntry$0$Entry_correct))))))
(let ((anon2_LoopHead_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |40|
)) (<= 0 j@0)) (and (or (= bytesRead 0) (<= (+ start bytesRead) currsize@1)) (or false true))) (=> (and (and (and (<= 0 currsize@1) (<= currsize@1 newsize@1)) (= (= ghostLock@1 nil) (= currsize@1 newsize@1))) (and (and (not (= tid nil)) (<= currsize currsize@1)) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))))) (and (=> (= (ControlFlow 0 41) 40) anon2_LoopDone_correct) (=> (= (ControlFlow 0 41) 29) anon2_LoopBody_correct))))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 42) (- 0 46)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 42) (- 0 45)) (or (= bytesRead 0) (<= (+ start bytesRead) currsize@0))) (=> (or (= bytesRead 0) (<= (+ start bytesRead) currsize@0)) (and (=> (= (ControlFlow 0 42) (- 0 44)) (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0)))) (=> (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (and (not (= tid nil)) (<= currsize currsize@0))) (=> (and (not (= tid nil)) (<= currsize currsize@0)) (=> (= (ControlFlow 0 42) 41) anon2_LoopHead_correct)))))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= ghostLock@2 ghostLock@0) (=> (and (= currsize@2 currsize@0) (= newsize@2 newsize@0)) (=> (and (and (= Civl_global_old_ghostLock@1 ghostLock@0) (= Civl_global_old_currsize@1 currsize@0)) (and (= Civl_global_old_newsize@1 newsize@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))) (and (and (and (and (and (=> (= (ControlFlow 0 17) 5) inline$Civl_NoninterferenceChecker_proc_ReadCache_1$0$L0_correct) (=> (= (ControlFlow 0 17) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 9) inline$Civl_NoninterferenceChecker_impl_ReadCache_1$0$L0_correct)) (=> (= (ControlFlow 0 17) 12) inline$Civl_NoninterferenceChecker_yield_YieldToWriteCache$0$L0_correct)) (=> (= (ControlFlow 0 17) 14) inline$Civl_NoninterferenceChecker_yield_YieldToReadCache$0$L0_correct)) (=> (= (ControlFlow 0 17) 16) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> (and (and (<= 0 start) (<= 0 bytesRead)) (or (= bytesRead 0) (<= (+ start bytesRead) currsize@0))) (=> (and (and (and (<= 0 currsize@0) (<= currsize@0 newsize@0)) (= (= ghostLock@0 nil) (= currsize@0 newsize@0))) (and (and (not (= tid nil)) (<= currsize currsize@0)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))))) (and (and (=> (= (ControlFlow 0 47) 42) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 47) 17) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 47) 2) Civl_RefinementChecker_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= 0 start) (<= 0 bytesRead)) (or (= bytesRead 0) (<= (+ start bytesRead) currsize))) (=> (and (and (and (<= 0 currsize) (<= currsize newsize)) (= (= ghostLock nil) (= currsize newsize))) (and (and (not (= tid nil)) (<= currsize currsize)) (= (ControlFlow 0 48) 47))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
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
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReadCurrsize)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReadCurrsize$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicReadCurrsize$0$Entry_correct  (=> (or (= lock tid) (= ghostLock tid)) (=> (and (not (= tid nil)) (= (ControlFlow 0 3) 2)) inline$AtomicReadCurrsize$0$Return_correct))))
inline$AtomicReadCurrsize$0$Entry_correct)))
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
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReadNewsize)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReadNewsize$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicReadNewsize$0$Entry_correct  (=> (or (= lock tid) (= ghostLock tid)) (=> (and (not (= tid nil)) (= (ControlFlow 0 3) 2)) inline$AtomicReadNewsize$0$Return_correct))))
inline$AtomicReadNewsize$0$Entry_correct)))
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
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicWriteNewsize)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicWriteNewsize$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicWriteNewsize$0$Entry_correct  (=> (and (and (= lock tid) (= ghostLock nil)) (and (not (= tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicWriteNewsize$0$Return_correct)))
inline$AtomicWriteNewsize$0$Entry_correct)))
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
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicWriteCurrsize)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicWriteCurrsize$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicWriteCurrsize$0$Entry_correct  (=> (and (and (= lock tid) (= ghostLock tid)) (and (not (= tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicWriteCurrsize$0$Return_correct)))
inline$AtomicWriteCurrsize$0$Entry_correct)))
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
(declare-fun tid () T@X)
(declare-fun index () Int)
(declare-fun currsize () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReadCacheEntry)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReadCacheEntry$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicReadCacheEntry$0$Entry_correct  (=> (and (and (<= 0 index) (< index currsize)) (= (ControlFlow 0 3) 2)) inline$AtomicReadCacheEntry$0$Return_correct)))
inline$AtomicReadCacheEntry$0$Entry_correct)))
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
(declare-fun tid () T@X)
(declare-fun currsize () Int)
(declare-fun index () Int)
(declare-fun ghostLock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicWriteCacheEntry)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicWriteCacheEntry$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicWriteCacheEntry$0$Entry_correct  (=> (and (and (<= currsize index) (= ghostLock tid)) (and (not (= tid nil)) (= (ControlFlow 0 3) 2))) inline$AtomicWriteCacheEntry$0$Return_correct)))
inline$AtomicWriteCacheEntry$0$Entry_correct)))
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
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$atomic_acquire$0$Return_correct)))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$atomic_acquire$0$anon0_correct)))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_release$0$Entry_correct  (=> (= lock tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct))))
inline$atomic_release$0$Entry_correct)))
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
(declare-fun inline$AtomicAllocateLow$0$tid@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun unallocated () (Array T@X Bool))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocateLow)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocateLow$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocateLow$0$tid@0 true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$tid@0 nil)) (select unallocated inline$AtomicAllocateLow$0$tid@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocateLow$0$tid@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocateLow$0$Return_correct)))
(let ((inline$AtomicAllocateLow$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocateLow$0$anon0_correct)))
inline$AtomicAllocateLow$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
