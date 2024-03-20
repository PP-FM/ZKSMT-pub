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
(declare-fun lock_x () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_X_ACQUIRE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ACQUIRE_X$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock_x nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_X$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_X$1$Return_correct)))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x nil) (= (ControlFlow 0 4) 3)) inline$ACQUIRE_X$1$anon0_correct)))
(let ((inline$ACQUIRE_X$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$ACQUIRE_X$0$anon0_correct)))
inline$ACQUIRE_X$0$Entry_correct)))))
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
(declare-fun lock_x () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x nil) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct)))
(let ((inline$ACQUIRE_X$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE_X$0$anon0_correct))))
inline$ACQUIRE_X$0$Entry_correct))))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_X_ACQUIRE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_X$0$Return_correct)))
(let ((inline$ACQUIRE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (not (= first_tid nil)) (= lock_x first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE_X$0$anon0_correct))))
inline$ACQUIRE_X$0$Entry_correct))))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_X_ACQUIRE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_X$0$Return_correct)))
(let ((inline$ACQUIRE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (and (not (= first_tid nil)) (= lock_x first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE_X$0$anon0_correct))))
inline$ACQUIRE_X$0$Entry_correct))))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_READ_X_ACQUIRE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_X$0$Return_correct)))
(let ((inline$ACQUIRE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (not (= first_tid nil)) (= lock_x first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE_X$0$anon0_correct))))
inline$ACQUIRE_X$0$Entry_correct))))
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
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_RELEASE_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$1$Return_correct)))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct)))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_RELEASE_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (not (and (not (= first_tid nil)) (= lock_x first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct)))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_READ_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct)))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun lock_y () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_Y_ACQUIRE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ACQUIRE_Y$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock_y nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_Y$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_Y$1$Return_correct)))
(let ((inline$ACQUIRE_Y$0$anon0_correct  (=> (and (= lock_y nil) (= (ControlFlow 0 4) 3)) inline$ACQUIRE_Y$1$anon0_correct)))
(let ((inline$ACQUIRE_Y$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$ACQUIRE_Y$0$anon0_correct)))
inline$ACQUIRE_Y$0$Entry_correct)))))
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
(declare-fun lock_y () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_Y_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$ACQUIRE_Y$0$anon0_correct  (=> (and (= lock_y nil) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$0$Return_correct)))
(let ((inline$ACQUIRE_Y$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE_Y$0$anon0_correct))))
inline$ACQUIRE_Y$0$Entry_correct))))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_Y_ACQUIRE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_Y$0$anon0_correct  (=> (and (= lock_y nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_Y$0$Return_correct)))
(let ((inline$ACQUIRE_Y$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (not (= first_tid nil)) (= lock_y first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE_Y$0$anon0_correct))))
inline$ACQUIRE_Y$0$Entry_correct))))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_Y_ACQUIRE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE_Y$0$anon0_correct  (=> (and (= lock_y nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_Y$0$Return_correct)))
(let ((inline$ACQUIRE_Y$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (not (= first_tid nil)) (= lock_y first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE_Y$0$anon0_correct))))
inline$ACQUIRE_Y$0$Entry_correct))))
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
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_RELEASE_Y_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_Y$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$RELEASE_Y$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (and (not (= first_tid nil)) (= lock_y first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$1$Return_correct)))))
inline$RELEASE_Y$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_Y_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE_Y$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (not (= first_tid nil)) (= lock_y first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$0$Return_correct)))))
inline$RELEASE_Y$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_RELEASE_Y_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE_Y$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (not (and (not (= first_tid nil)) (= lock_y first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$0$Return_correct))))
inline$RELEASE_Y$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_Y_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE_Y$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (not (= first_tid nil)) (= lock_y first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$0$Return_correct)))))
inline$RELEASE_Y$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_WRITE_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (not (and (not (= first_tid nil)) (= lock_x first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun second_v () Int)
(declare-fun first_v () Int)
(declare-sort T@Tid 0)
(declare-fun lock_x () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_X_WRITE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_X$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_v first_v) (= lock_x lock_x))))))
(let ((inline$WRITE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_X$1$Return_correct)))))
inline$WRITE_X$0$Entry_correct)))
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
(declare-fun first_v () Int)
(declare-fun x@@0 () Int)
(declare-sort T@Tid 0)
(declare-fun lock_x () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_X_READ_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$READ_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= first_v x@@0) (= first_v first_v)) (= lock_x lock_x))))))
(let ((inline$WRITE_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$READ_X$0$Return_correct)))))
inline$WRITE_X$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_WRITE_Y_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE_Y$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (not (and (not (= first_tid nil)) (= lock_y first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$0$Return_correct))))
inline$RELEASE_Y$0$Entry_correct)))
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
(declare-fun second_v () Int)
(declare-fun first_v () Int)
(declare-sort T@Tid 0)
(declare-fun lock_y () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_Y_WRITE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_Y$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_v first_v) (= lock_y lock_y))))))
(let ((inline$WRITE_Y$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (not (= first_tid nil)) (= lock_y first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_y second_tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_Y$1$Return_correct)))))
inline$WRITE_Y$0$Entry_correct)))
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
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_READ_X_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (not (and (not (= first_tid nil)) (= lock_x first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct))))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun second_v () Int)
(declare-fun x@@0 () Int)
(declare-sort T@Tid 0)
(declare-fun lock_x () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_READ_X_WRITE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_v second_v) (= x@@0 second_v)) (= lock_x lock_x))))))
(let ((inline$READ_X$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (not (= first_tid nil)) (= lock_x first_tid)) (=> (and (and (not (= second_tid nil)) (= lock_x second_tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_X$0$Return_correct)))))
inline$READ_X$0$Entry_correct)))
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
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun v () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock_x@0 () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_get_x_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= x@0 x@0) (= y@0 y@0)) (and (and (= x@0 x@0) (= x@0 x@0)) (= y@0 y@0))))) (=> (or false (or (and (= x@0 x@0) (= y@0 y@0)) (and (and (= x@0 x@0) (= x@0 x@0)) (= y@0 y@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= x@0 x@0) (= y@0 y@0)) (= x@0 v)))) (=> (=> false (and (and (= x@0 x@0) (= y@0 y@0)) (= x@0 v))) (=> (and (and (= Civl_pc@0  (=> (and (= x@0 x@0) (= y@0 y@0)) false)) (= Civl_ok@0  (or (and (and (= x@0 x@0) (= x@0 x@0)) (= y@0 y@0)) (and (= x@0 v) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 8) 6) anon0$2_correct)))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x@0 nil) (= (ControlFlow 0 10) 8)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (not (= tid nil)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 11) 10) inline$ACQUIRE_X$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 13) 11)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
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
(declare-fun v () Int)
(declare-fun x@0 () Int)
(declare-fun w () Int)
(declare-fun y@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock_y@0 () T@Tid)
(declare-fun lock_x@0 () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_set_both_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= v x@0) (= w y@0)) (and (= v v) (= w w))))) (=> (or false (or (and (= v x@0) (= w y@0)) (and (= v v) (= w w)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= v x@0) (= w y@0)))) (=> (=> false (and (= v x@0) (= w y@0))) (=> (and (and (= Civl_pc@0  (=> (and (= v x@0) (= w y@0)) false)) (= Civl_ok@0  (or (and (= v v) (= w w)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$5_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon0$4_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 8) 6) anon0$5_correct)))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 10) 8) anon0$4_correct)))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 12) 10) anon0$3_correct)))))
(let ((inline$ACQUIRE_Y$0$anon0_correct  (=> (and (= lock_y@0 nil) (= (ControlFlow 0 14) 12)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 15) 14) inline$ACQUIRE_Y$0$anon0_correct)))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x@0 nil) (= (ControlFlow 0 17) 15)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (not (= tid nil)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 18) 17) inline$ACQUIRE_X$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 20) 18)) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_GET_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$GET_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$GET_X$0$Entry_correct  (=> (= (ControlFlow 0 3) 2) inline$GET_X$0$Return_correct)))
inline$GET_X$0$Entry_correct)))
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
(set-info :boogie-vc-id Civl_LinearityChecker_SET_BOTH)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$SET_BOTH$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$SET_BOTH$0$Entry_correct  (=> (= (ControlFlow 0 3) 2) inline$SET_BOTH$0$Return_correct)))
inline$SET_BOTH$0$Entry_correct)))
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
(declare-fun lock_x () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_ACQUIRE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ACQUIRE_X$0$anon0_correct  (=> (and (= lock_x nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_X$0$Return_correct)))
(let ((inline$ACQUIRE_X$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE_X$0$anon0_correct)))
inline$ACQUIRE_X$0$Entry_correct))))
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
(declare-fun nil () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_RELEASE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$RELEASE_X$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock_x tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_X$0$Return_correct)))
inline$RELEASE_X$0$Entry_correct)))
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
(declare-fun lock_y () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_ACQUIRE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ACQUIRE_Y$0$anon0_correct  (=> (and (= lock_y nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE_Y$0$Return_correct)))
(let ((inline$ACQUIRE_Y$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE_Y$0$anon0_correct)))
inline$ACQUIRE_Y$0$Entry_correct))))
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
(declare-fun nil () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_RELEASE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$RELEASE_Y$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock_y tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE_Y$0$Return_correct)))
inline$RELEASE_Y$0$Entry_correct)))
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
(declare-fun nil () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_WRITE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$WRITE_X$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock_x tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_X$0$Return_correct)))
inline$WRITE_X$0$Entry_correct)))
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
(declare-fun nil () T@Tid)
(declare-fun lock_y () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_WRITE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$WRITE_Y$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock_y tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_Y$0$Return_correct)))
inline$WRITE_Y$0$Entry_correct)))
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
(declare-fun nil () T@Tid)
(declare-fun lock_x () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_READ_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$READ_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$READ_X$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock_x tid)) (= (ControlFlow 0 3) 2)) inline$READ_X$0$Return_correct)))
inline$READ_X$0$Entry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
