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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_i () Int)
(declare-fun l@1 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun l@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= (select l second_i) nil) (= (select (store l second_i second_tid) first_i) nil)) (= l@1 (store (store l second_i second_tid) first_i first_tid)))))))
(let ((inline$atomic_acquire$1$anon0_correct  (=> (= (select l@0 second_i) nil) (=> (and (= l@1 (store l@0 second_i second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_acquire$1$Return_correct))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l first_i) nil) (=> (and (= l@0 (store l first_i first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_acquire$1$anon0_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun nil () T@X)
(declare-fun first_i () Int)
(declare-fun l@1 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun l@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select (store l second_i nil) first_i) nil) (= l@1 (store (store l second_i nil) first_i first_tid)))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@1 (store l@0 second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l first_i) nil) (=> (and (= l@0 (store l first_i first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_release$0$anon0_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select l@0 first_i) first_tid))) (=> (=> true (= (select l@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l second_i) nil) (=> (and (= l@0 (store l second_i second_tid)) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (= (select l first_i) first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_Read_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select l@0 first_i) first_tid))) (=> (=> true (= (select l@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l second_i) nil) (=> (and (= l@0 (store l second_i second_tid)) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (and (= (select l first_i) first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_Write_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select l@0 first_i) first_tid))) (=> (=> true (= (select l@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l second_i) nil) (=> (and (= l@0 (store l second_i second_tid)) (= (ControlFlow 0 4) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (= (select l first_i) first_tid) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@1 () (Array Int T@X))
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun nil () T@X)
(declare-fun first_i () Int)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@1 (store (store l second_i nil) first_i nil))))))
(let ((inline$atomic_release$1$anon0_correct  (=> (and (= l@1 (store l@0 second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$1$Return_correct)))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l first_i nil)) (= (ControlFlow 0 4) 3)) inline$atomic_release$1$anon0_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct)))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select l@0 first_i) first_tid))) (=> (=> true (= (select l@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l second_i nil)) (= (ControlFlow 0 4) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= (select l@0 first_i) first_tid) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (and (not (and (= (select l first_i) first_tid) (not (= first_tid nil)))) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_Read_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select l@0 first_i) first_tid))) (=> (=> true (= (select l@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l second_i nil)) (= (ControlFlow 0 4) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_Write_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select l@0 first_i) first_tid))) (=> (=> true (= (select l@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l second_i nil)) (= (ControlFlow 0 4) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_Read_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= (select l@0 first_i) first_tid) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (not (and (= (select l first_i) first_tid) (not (= first_tid nil)))) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun second_val () Bool)
(declare-fun inline$atomic_Read$0$val@1 () Bool)
(declare-fun first_i () Int)
(declare-sort T@X 0)
(declare-fun l () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_Read_atomic_Write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= status@0 (store status second_i second_val)) (= inline$atomic_Read$0$val@1 (select status@0 first_i))) (= l l))))))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= status@0 (store status second_i second_val)) (= (ControlFlow 0 3) 2)) inline$atomic_Write$0$Return_correct)))
(let ((inline$atomic_Read$0$anon0_correct  (=> (and (= inline$atomic_Read$0$val@1 (select status first_i)) (= (ControlFlow 0 4) 3)) inline$atomic_Write$0$anon0_correct)))
(let ((inline$atomic_Read$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_Read$0$anon0_correct))))
inline$atomic_Read$0$Entry_correct)))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun l@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_Write_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= (select l@0 first_i) first_tid) (not (= first_tid nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (not (and (= (select l first_i) first_tid) (not (= first_tid nil)))) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_Read$0$val@1 () Bool)
(declare-fun status () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun first_val () Bool)
(declare-sort T@X 0)
(declare-fun l () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_Write_atomic_Read)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Read$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= inline$atomic_Read$0$val@1 (select status second_i)) (= status@0 (store status first_i first_val))) (= l l))))))
(let ((inline$atomic_Read$0$anon0_correct  (=> (and (= inline$atomic_Read$0$val@1 (select status@0 second_i)) (= (ControlFlow 0 3) 2)) inline$atomic_Read$0$Return_correct)))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= status@0 (store status first_i first_val)) (= (ControlFlow 0 4) 3)) inline$atomic_Read$0$anon0_correct)))
(let ((inline$atomic_Write$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_Write$0$anon0_correct))))
inline$atomic_Write$0$Entry_correct)))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun status@1 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun second_val () Bool)
(declare-fun first_i () Int)
(declare-fun first_val () Bool)
(declare-sort T@X 0)
(declare-fun l () (Array Int T@X))
(declare-fun status@0 () (Array Int Bool))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_Write_atomic_Write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Write$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= status@1 (store (store status second_i second_val) first_i first_val)) (= l l))))))
(let ((inline$atomic_Write$1$anon0_correct  (=> (and (= status@1 (store status@0 second_i second_val)) (= (ControlFlow 0 3) 2)) inline$atomic_Write$1$Return_correct)))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= status@0 (store status first_i first_val)) (= (ControlFlow 0 4) 3)) inline$atomic_Write$1$anon0_correct)))
(let ((inline$atomic_Write$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (= (select l first_i) first_tid)) (=> (and (and (not (= first_tid nil)) (= (select l second_i) second_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$atomic_Write$0$anon0_correct))))
inline$atomic_Write$0$Entry_correct)))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun status@3 () (Array Int Bool))
(declare-fun status@1 () (Array Int Bool))
(declare-fun r@1 () Int)
(declare-fun r@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun status@2 () (Array Int Bool))
(declare-fun i@0 () Int)
(declare-fun i@1 () Int)
(declare-sort T@X 0)
(declare-fun l@4 () (Array Int T@X))
(declare-fun l@2 () (Array Int T@X))
(declare-fun nil () T@X)
(declare-fun tid () T@X)
(declare-fun inline$atomic_Read$0$val@2 () Bool)
(declare-fun l@3 () (Array Int T@X))
(declare-fun l@1 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun status@0 () (Array Int Bool))
(declare-fun r () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Alloc_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 41) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 16) (- 0 18)) (or false (or (= status@3 status@1) (or (and (= r@1 (- 0 1)) (= status@3 status@1)) (and (and (and (<= 0 r@1) (< r@1 q@max)) (select status@1 r@1)) (= status@3 (store status@1 r@1 false))))))) (=> (or false (or (= status@3 status@1) (or (and (= r@1 (- 0 1)) (= status@3 status@1)) (and (and (and (<= 0 r@1) (< r@1 q@max)) (select status@1 r@1)) (= status@3 (store status@1 r@1 false)))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> false (and (= status@3 status@1) (= r@1 r@0)))) (=> (=> false (and (= status@3 status@1) (= r@1 r@0))) (=> (and (and (= Civl_pc@0  (=> (= status@3 status@1) false)) (= Civl_ok@0  (or (or (and (= r@1 (- 0 1)) (= status@3 status@1)) (and (and (and (<= 0 r@1) (< r@1 q@max)) (select status@1 r@1)) (= status@3 (store status@1 r@1 false)))) (and (= r@1 r@0) false)))) (= (ControlFlow 0 16) (- 0 15))) Civl_ok@0)))))))
(let ((anon4_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= status@3 status@1) (=> (and (= r@1 r@0) (= (ControlFlow 0 35) 16)) Civl_ReturnChecker_correct))))
(let ((anon5_Then$2_@2_Civl_ReturnChecker_correct  (=> (= status@3 status@2) (=> (and (= r@1 i@0) (= (ControlFlow 0 19) 16)) Civl_ReturnChecker_correct))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (= status@1 status@1)) (=> (= status@1 status@1) (=> (= (ControlFlow 0 8) (- 0 7)) (=> false (= r@0 r@0)))))))
(let ((anon5_Else$1_@2_anon4_LoopHead_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (<= 0 i@1))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon4_LoopDone_correct  (=> (<= q@max i@0) (and (=> (= (ControlFlow 0 36) 35) anon4_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 36) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$atomic_release$1$anon0_correct  (=> (= l@4 (store l@2 i@0 nil)) (and (=> (= (ControlFlow 0 20) 19) anon5_Then$2_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 20) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon5_Then$1_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (= (select l@2 i@0) tid)) (=> (= (select l@2 i@0) tid) (and (=> (= (ControlFlow 0 21) (- 0 22)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 21) 20) inline$atomic_release$1$anon0_correct)))))))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= status@2 (store status@1 i@0 false)) (= (ControlFlow 0 24) 21)) anon5_Then$1_correct)))
(let ((anon5_Then_correct  (=> inline$atomic_Read$0$val@2 (and (=> (= (ControlFlow 0 25) (- 0 27)) (= (select l@2 i@0) tid)) (=> (= (select l@2 i@0) tid) (and (=> (= (ControlFlow 0 25) (- 0 26)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 25) 24) inline$atomic_Write$0$anon0_correct))))))))
(let ((anon5_Else$1_correct  (=> (= i@1 (+ i@0 1)) (and (and (=> (= (ControlFlow 0 10) 6) anon5_Else$1_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 10) 8) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 10) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@3 (store l@2 i@0 nil)) (= (ControlFlow 0 11) 10)) anon5_Else$1_correct)))
(let ((anon5_Else_correct  (=> (not inline$atomic_Read$0$val@2) (and (=> (= (ControlFlow 0 12) (- 0 14)) (= (select l@2 i@0) tid)) (=> (= (select l@2 i@0) tid) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 12) 11) inline$atomic_release$0$anon0_correct))))))))
(let ((inline$atomic_Read$0$anon0_correct  (=> (= inline$atomic_Read$0$val@2 (select status@1 i@0)) (and (=> (= (ControlFlow 0 28) 25) anon5_Then_correct) (=> (= (ControlFlow 0 28) 12) anon5_Else_correct)))))
(let ((anon4_LoopBody$1_correct  (and (=> (= (ControlFlow 0 29) (- 0 31)) (= (select l@2 i@0) tid)) (=> (= (select l@2 i@0) tid) (and (=> (= (ControlFlow 0 29) (- 0 30)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 29) 28) inline$atomic_Read$0$anon0_correct)))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l@1 i@0) nil) (=> (and (= l@2 (store l@1 i@0 tid)) (= (ControlFlow 0 32) 29)) anon4_LoopBody$1_correct))))
(let ((anon4_LoopBody_correct  (=> (< i@0 q@max) (and (=> (= (ControlFlow 0 33) (- 0 34)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 33) 32) inline$atomic_acquire$0$anon0_correct))))))
(let ((anon4_LoopHead_correct  (=> (<= 0 i@0) (=> (and (or false (not (= tid nil))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 37) 36) anon4_LoopDone_correct) (=> (= (ControlFlow 0 37) 33) anon4_LoopBody_correct))))))
(let ((anon0_@2_anon4_LoopHead_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (<= 0 0)) (=> (<= 0 0) (=> (= (ControlFlow 0 38) 37) anon4_LoopHead_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= status@0 status@0) (or (and (= r@0 (- 0 1)) (= status@0 status@0)) (and (and (and (<= 0 r@0) (< r@0 q@max)) (select status@0 r@0)) (= status@0 (store status@0 r@0 false))))))) (=> (or false (or (= status@0 status@0) (or (and (= r@0 (- 0 1)) (= status@0 status@0)) (and (and (and (<= 0 r@0) (< r@0 q@max)) (select status@0 r@0)) (= status@0 (store status@0 r@0 false)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= status@0 status@0) (= r@0 r))))))))
(let ((anon0_correct  (=> (not (= tid nil)) (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= r@0 (- 0 1))) (and (and (=> (= (ControlFlow 0 40) 38) anon0_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 40) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 40) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 41) 40) anon0_correct)))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun status@1 () (Array Int Bool))
(declare-fun status@0 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@X 0)
(declare-fun l@2 () (Array Int T@X))
(declare-fun l@1 () (Array Int T@X))
(declare-fun nil () T@X)
(declare-fun tid () T@X)
(declare-fun l@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Free_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= status@1 status@0) (= status@1 (store status@0 i true))))) (=> (or false (or (= status@1 status@0) (= status@1 (store status@0 i true)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= status@1 status@0))) (=> (=> false (= status@1 status@0)) (=> (and (and (= Civl_pc@0  (=> (= status@1 status@0) false)) (= Civl_ok@0  (or (= status@1 (store status@0 i true)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (= l@2 (store l@1 i nil)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (= (select l@1 i) tid)) (=> (= (select l@1 i) tid) (and (=> (= (ControlFlow 0 7) (- 0 8)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 7) 6) inline$atomic_release$0$anon0_correct)))))))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= status@1 (store status@0 i true)) (= (ControlFlow 0 10) 7)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (= (select l@1 i) tid)) (=> (= (select l@1 i) tid) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 11) 10) inline$atomic_Write$0$anon0_correct)))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l@0 i) nil) (=> (and (= l@1 (store l@0 i tid)) (= (ControlFlow 0 14) 11)) anon0$1_correct))))
(let ((anon0_correct  (=> (and (not (= tid nil)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 15) 14) inline$atomic_acquire$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 15) anon0_correct)))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun inline$atomic_Alloc$0$r@0 () Int)
(declare-fun status () (Array Int Bool))
(declare-fun status@0 () (Array Int Bool))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Alloc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_Alloc$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_Alloc$0$anon3_Else_correct  (=> (and (and (and (<= 0 inline$atomic_Alloc$0$r@0) (< inline$atomic_Alloc$0$r@0 q@max)) (select status inline$atomic_Alloc$0$r@0)) (and (= status@0 (store status inline$atomic_Alloc$0$r@0 false)) (= (ControlFlow 0 4) 2))) inline$atomic_Alloc$0$Return_correct)))
(let ((inline$atomic_Alloc$0$anon3_Then_correct  (=> (and (= inline$atomic_Alloc$0$r@0 (- 0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_Alloc$0$Return_correct)))
(let ((inline$atomic_Alloc$0$Entry_correct  (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_Alloc$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_Alloc$0$anon3_Else_correct)))))
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
(declare-fun Identity () (Array Int Int))
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(declare-fun i () Int)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Free)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Free$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_Free$0$anon0_correct  (=> (and (= status@0 (store status i true)) (= (ControlFlow 0 3) 2)) inline$atomic_Free$0$Return_correct)))
(let ((inline$atomic_Free$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$atomic_Free$0$anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun l () (Array Int T@X))
(declare-fun i () Int)
(declare-fun nil () T@X)
(declare-fun l@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select l i) nil) (=> (and (= l@0 (store l i tid)) (= (ControlFlow 0 3) 2)) inline$atomic_acquire$0$Return_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun l@0 () (Array Int T@X))
(declare-fun l () (Array Int T@X))
(declare-fun i () Int)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= l@0 (store l i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (= (select l i) tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun inline$atomic_Read$0$val@1 () Bool)
(declare-fun status () (Array Int Bool))
(declare-fun i () Int)
(declare-fun l () (Array Int T@X))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Read)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Read$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_Read$0$anon0_correct  (=> (and (= inline$atomic_Read$0$val@1 (select status i)) (= (ControlFlow 0 3) 2)) inline$atomic_Read$0$Return_correct)))
(let ((inline$atomic_Read$0$Entry_correct  (=> (= (select l i) tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$atomic_Read$0$anon0_correct))))
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
(declare-fun Identity () (Array Int Int))
(declare-fun q@max () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (<= 0 q@max))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(declare-fun i () Int)
(declare-fun val () Bool)
(declare-fun l () (Array Int T@X))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_Write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_Write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_Write$0$anon0_correct  (=> (and (= status@0 (store status i val)) (= (ControlFlow 0 3) 2)) inline$atomic_Write$0$Return_correct)))
(let ((inline$atomic_Write$0$Entry_correct  (=> (= (select l i) tid) (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$atomic_Write$0$anon0_correct))))
inline$atomic_Write$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
