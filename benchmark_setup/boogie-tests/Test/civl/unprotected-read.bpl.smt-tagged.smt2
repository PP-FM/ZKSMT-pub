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
(set-info :boogie-vc-id Civl_CommutativityChecker_Acquire_Acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$Acquire$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$Acquire$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$Acquire$1$Return_correct)))
(let ((inline$Acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 3)) inline$Acquire$1$anon0_correct)))
(let ((inline$Acquire$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$Acquire$0$anon0_correct)))
inline$Acquire$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_Acquire_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$Acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct)))
(let ((inline$Acquire$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 4) 3)) inline$Acquire$0$anon0_correct))))
inline$Acquire$0$Entry_correct))))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_Release_Acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$Acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$Acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$Acquire$0$Return_correct)))
(let ((inline$Acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$Acquire$0$anon0_correct))))
inline$Acquire$0$Entry_correct))))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_Write_Acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$Acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$Acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$Acquire$0$Return_correct)))
(let ((inline$Acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$Acquire$0$anon0_correct))))
inline$Acquire$0$Entry_correct))))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_ReadLock_Acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$Acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$Acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$Acquire$0$Return_correct)))
(let ((inline$Acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$Acquire$0$anon0_correct))))
inline$Acquire$0$Entry_correct))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_Release_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$Release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Release$1$Return_correct)))))
inline$Release$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_Release_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$Release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct)))))
inline$Release$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_Release_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$Release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct))))
inline$Release$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_ReadLock_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$Release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct)))))
inline$Release$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_Write_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$Release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct))))
inline$Release$0$Entry_correct)))
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
(declare-fun first_val () Int)
(declare-fun x@@0 () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_Write_ReadLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$ReadLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= first_val x@@0) (= first_val first_val)) (= lock lock))))))
(let ((inline$Write$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$ReadLock$0$Return_correct)))))
inline$Write$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_ReadLock_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$Release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct))))
inline$Release$0$Entry_correct)))
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
(declare-fun x@@0 () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ReadLock_Write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_val second_val) (= x@@0 second_val)) (= lock lock))))))
(let ((inline$ReadLock$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$Write$0$Return_correct)))))
inline$ReadLock$0$Entry_correct)))
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
(set-info :boogie-vc-id Civl_LinearityChecker_Acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$Acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$Acquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$Acquire$0$Return_correct)))
(let ((inline$Acquire$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$Acquire$0$anon0_correct)))
inline$Acquire$0$Entry_correct))))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_Release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$Release$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$Release$0$Return_correct)))
inline$Release$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_Write)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$Write$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$Write$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$Write$0$Return_correct)))
inline$Write$0$Entry_correct)))
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
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_ReadLock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$ReadLock$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ReadLock$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$ReadLock$0$Return_correct)))
inline$ReadLock$0$Entry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
