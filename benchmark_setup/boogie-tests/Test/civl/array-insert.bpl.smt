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
 :skolemid |10|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun A@0 () (Array Int Int))
(declare-fun A () (Array Int Int))
(declare-fun second_i () Int)
(declare-fun second_v () Int)
(declare-fun inline$READ_A$0$v@1 () Int)
(declare-fun first_i () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_READ_A_WRITE_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$WRITE_A$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= A@0 (store A second_i second_v)) (= inline$READ_A$0$v@1 (select A@0 first_i))) (= lock lock))))))
(let ((inline$WRITE_A$0$anon0_correct  (=> (and (= A@0 (store A second_i second_v)) (= (ControlFlow 0 3) 2)) inline$WRITE_A$0$Return_correct)))
(let ((inline$READ_A$0$anon0_correct  (=> (and (= inline$READ_A$0$v@1 (select A first_i)) (= (ControlFlow 0 4) 3)) inline$WRITE_A$0$anon0_correct)))
(let ((inline$READ_A$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 5) 4)) inline$READ_A$0$anon0_correct)))))
inline$READ_A$0$Entry_correct)))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_READ_A_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$READ_A$0$v@1 () Int)
(declare-fun A () (Array Int Int))
(declare-fun second_i () Int)
(declare-fun A@0 () (Array Int Int))
(declare-fun first_i () Int)
(declare-fun first_v () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_A_READ_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$READ_A$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= inline$READ_A$0$v@1 (select A second_i)) (= A@0 (store A first_i first_v))) (= lock lock))))))
(let ((inline$READ_A$0$anon0_correct  (=> (and (= inline$READ_A$0$v@1 (select A@0 second_i)) (= (ControlFlow 0 3) 2)) inline$READ_A$0$Return_correct)))
(let ((inline$WRITE_A$0$anon0_correct  (=> (and (= A@0 (store A first_i first_v)) (= (ControlFlow 0 4) 3)) inline$READ_A$0$anon0_correct)))
(let ((inline$WRITE_A$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 5) 4)) inline$WRITE_A$0$anon0_correct)))))
inline$WRITE_A$0$Entry_correct)))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun A@1 () (Array Int Int))
(declare-fun A () (Array Int Int))
(declare-fun second_i () Int)
(declare-fun second_v () Int)
(declare-fun first_i () Int)
(declare-fun first_v () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun A@0 () (Array Int Int))
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_A_WRITE_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$WRITE_A$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= A@1 (store (store A second_i second_v) first_i first_v)) (= lock lock))))))
(let ((inline$WRITE_A$1$anon0_correct  (=> (and (= A@1 (store A@0 second_i second_v)) (= (ControlFlow 0 3) 2)) inline$WRITE_A$1$Return_correct)))
(let ((inline$WRITE_A$0$anon0_correct  (=> (and (= A@0 (store A first_i first_v)) (= (ControlFlow 0 4) 3)) inline$WRITE_A$1$anon0_correct)))
(let ((inline$WRITE_A$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 5) 4)) inline$WRITE_A$0$anon0_correct)))))
inline$WRITE_A$0$Entry_correct)))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_WRITE_A_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_c () Int)
(declare-fun count () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_READ_COUNT_WRITE_COUNT)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_COUNT$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_c second_c) (= count second_c)) (= lock lock))))))
(let ((inline$READ_COUNT$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_COUNT$0$Return_correct)))))
inline$READ_COUNT$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_READ_COUNT_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_c () Int)
(declare-fun count () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_COUNT_READ_COUNT)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$READ_COUNT$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= first_c count) (= first_c first_c)) (= lock lock))))))
(let ((inline$WRITE_COUNT$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$READ_COUNT$0$Return_correct)))))
inline$WRITE_COUNT$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_c () Int)
(declare-fun first_c () Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WRITE_COUNT_WRITE_COUNT)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_COUNT$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_c first_c) (= lock lock))))))
(let ((inline$WRITE_COUNT$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_COUNT$1$Return_correct)))))
inline$WRITE_COUNT$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_WRITE_COUNT_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_READ_A_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_A_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_READ_COUNT_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_COUNT_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun first_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ACQUIRE$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$1$Return_correct)))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 3)) inline$ACQUIRE$1$anon0_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$ACQUIRE$0$anon0_correct)))
inline$ACQUIRE$0$Entry_correct)))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_READ_A_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_A_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_READ_COUNT_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |32|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WRITE_COUNT_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |33|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_RELEASE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$1$Return_correct)))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun first_tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_RELEASE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct))))
inline$RELEASE$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun A@3 () (Array Int Int))
(declare-fun A@0 () (Array Int Int))
(declare-fun inline$WRITE_COUNT$0$c@0 () Int)
(declare-fun count@0 () Int)
(declare-sort T@Tid 0)
(declare-fun nil () T@Tid)
(declare-fun lock@0 () T@Tid)
(declare-fun v () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@Tid)
(declare-fun A@1 () (Array Int Int))
(declare-fun idx@0 () Int)
(declare-fun j@0 () Int)
(declare-fun j@1 () Int)
(declare-fun A@2 () (Array Int Int))
(declare-fun inline$READ_A$2$v@2 () Int)
(declare-fun inline$READ_A$2$i@1 () Int)
(declare-fun a@0 () Int)
(declare-fun idx@1 () Int)
(declare-fun inline$READ_A$1$v@2 () Int)
(declare-fun inline$READ_A$0$v@1 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_insert_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 54) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (or false (or (and (and (= A@3 A@0) (= inline$WRITE_COUNT$0$c@0 count@0)) (= nil lock@0)) (exists ((|Civl_idx#0| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_idx#0|) (<= |Civl_idx#0| count@0)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i |Civl_idx#0|)) (< (select A@0 i) v))
 :qid |arrayinsertbpl.25:18|
 :skolemid |1|
))) (forall ((i@@0 Int) ) (!  (=> (and (<= |Civl_idx#0| i@@0) (< i@@0 count@0)) (>= (select A@0 i@@0) v))
 :qid |arrayinsertbpl.26:18|
 :skolemid |2|
))) (forall ((i@@1 Int) ) (!  (=> (< i@@1 |Civl_idx#0|) (= (select A@3 i@@1) (select A@0 i@@1)))
 :qid |arrayinsertbpl.30:18|
 :skolemid |3|
))) (forall ((i@@2 Int) ) (!  (=> (and (< |Civl_idx#0| i@@2) (< i@@2 count@0)) (= (select A@3 (+ i@@2 1)) (select A@0 i@@2)))
 :qid |arrayinsertbpl.31:18|
 :skolemid |4|
))) (forall ((i@@3 Int) ) (!  (=> (< count@0 i@@3) (= (select A@3 i@@3) (select A@0 i@@3)))
 :qid |arrayinsertbpl.32:18|
 :skolemid |5|
))) (= (select A@3 |Civl_idx#0|) v)) (= inline$WRITE_COUNT$0$c@0 (+ count@0 1))) (= nil lock@0))
 :qid |unknown.0:0|
 :skolemid |38|
))))) (=> (or false (or (and (and (= A@3 A@0) (= inline$WRITE_COUNT$0$c@0 count@0)) (= nil lock@0)) (exists ((|Civl_idx#0@@0| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_idx#0@@0|) (<= |Civl_idx#0@@0| count@0)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 |Civl_idx#0@@0|)) (< (select A@0 i@@4) v))
 :qid |arrayinsertbpl.25:18|
 :skolemid |1|
))) (forall ((i@@5 Int) ) (!  (=> (and (<= |Civl_idx#0@@0| i@@5) (< i@@5 count@0)) (>= (select A@0 i@@5) v))
 :qid |arrayinsertbpl.26:18|
 :skolemid |2|
))) (forall ((i@@6 Int) ) (!  (=> (< i@@6 |Civl_idx#0@@0|) (= (select A@3 i@@6) (select A@0 i@@6)))
 :qid |arrayinsertbpl.30:18|
 :skolemid |3|
))) (forall ((i@@7 Int) ) (!  (=> (and (< |Civl_idx#0@@0| i@@7) (< i@@7 count@0)) (= (select A@3 (+ i@@7 1)) (select A@0 i@@7)))
 :qid |arrayinsertbpl.31:18|
 :skolemid |4|
))) (forall ((i@@8 Int) ) (!  (=> (< count@0 i@@8) (= (select A@3 i@@8) (select A@0 i@@8)))
 :qid |arrayinsertbpl.32:18|
 :skolemid |5|
))) (= (select A@3 |Civl_idx#0@@0|) v)) (= inline$WRITE_COUNT$0$c@0 (+ count@0 1))) (= nil lock@0))
 :qid |unknown.0:0|
 :skolemid |38|
)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (=> false (and (and (= A@3 A@0) (= inline$WRITE_COUNT$0$c@0 count@0)) (= nil lock@0)))) (=> (=> false (and (and (= A@3 A@0) (= inline$WRITE_COUNT$0$c@0 count@0)) (= nil lock@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= A@3 A@0) (= inline$WRITE_COUNT$0$c@0 count@0)) (= nil lock@0)) false)) (= Civl_ok@0  (or (exists ((|Civl_idx#0@@1| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_idx#0@@1|) (<= |Civl_idx#0@@1| count@0)) (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 |Civl_idx#0@@1|)) (< (select A@0 i@@9) v))
 :qid |arrayinsertbpl.25:18|
 :skolemid |1|
))) (forall ((i@@10 Int) ) (!  (=> (and (<= |Civl_idx#0@@1| i@@10) (< i@@10 count@0)) (>= (select A@0 i@@10) v))
 :qid |arrayinsertbpl.26:18|
 :skolemid |2|
))) (forall ((i@@11 Int) ) (!  (=> (< i@@11 |Civl_idx#0@@1|) (= (select A@3 i@@11) (select A@0 i@@11)))
 :qid |arrayinsertbpl.30:18|
 :skolemid |3|
))) (forall ((i@@12 Int) ) (!  (=> (and (< |Civl_idx#0@@1| i@@12) (< i@@12 count@0)) (= (select A@3 (+ i@@12 1)) (select A@0 i@@12)))
 :qid |arrayinsertbpl.31:18|
 :skolemid |4|
))) (forall ((i@@13 Int) ) (!  (=> (< count@0 i@@13) (= (select A@3 i@@13) (select A@0 i@@13)))
 :qid |arrayinsertbpl.32:18|
 :skolemid |5|
))) (= (select A@3 |Civl_idx#0@@1|) v)) (= inline$WRITE_COUNT$0$c@0 (+ count@0 1))) (= nil lock@0))
 :qid |unknown.0:0|
 :skolemid |38|
)) false))) (= (ControlFlow 0 21) (- 0 20))) Civl_ok@0)))))))
(let ((anon6_LoopDone$2_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((i@@14 Int) (j Int) ) (!  (=> (and (and (<= 0 i@@14) (<= i@@14 j)) (< j inline$WRITE_COUNT$0$c@0)) (<= (select A@3 i@@14) (select A@3 j)))
 :qid |arrayinsertbpl.14:11|
 :skolemid |0|
))) (=> (forall ((i@@15 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 i@@15) (<= i@@15 j@@0)) (< j@@0 inline$WRITE_COUNT$0$c@0)) (<= (select A@3 i@@15) (select A@3 j@@0)))
 :qid |arrayinsertbpl.14:11|
 :skolemid |0|
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (=> (= (ControlFlow 0 25) 21) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 25) 24) Civl_NoninterferenceChecker$1_correct))))))))
(let ((inline$WRITE_COUNT$0$Entry_correct  (=> (and (= inline$WRITE_COUNT$0$c@0 (+ count@0 1)) (= (ControlFlow 0 28) 25)) anon6_LoopDone$2_correct)))
(let ((anon6_LoopDone$1_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 29) 28) inline$WRITE_COUNT$0$Entry_correct)))))
(let ((inline$WRITE_A$1$anon0_correct  (=> (and (= A@3 (store A@1 idx@0 v)) (= (ControlFlow 0 31) 29)) anon6_LoopDone$1_correct)))
(let ((anon6_LoopDone_correct  (=> (<= j@0 idx@0) (and (=> (= (ControlFlow 0 32) (- 0 33)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 32) 31) inline$WRITE_A$1$anon0_correct))))))
(let ((anon6_LoopBody$2_correct  (=> (= j@1 (- j@0 1)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (and (<= idx@0 j@1) (<= j@1 count@0))) (=> (and (<= idx@0 j@1) (<= j@1 count@0)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((i@@16 Int) ) (!  (=> (<= i@@16 j@1) (= (select A@2 i@@16) (select A@0 i@@16)))
 :qid |arrayinsertbpl.64:34|
 :skolemid |7|
))) (=> (forall ((i@@17 Int) ) (!  (=> (<= i@@17 j@1) (= (select A@2 i@@17) (select A@0 i@@17)))
 :qid |arrayinsertbpl.64:34|
 :skolemid |7|
)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((i@@18 Int) ) (!  (=> (and (< j@1 i@@18) (<= i@@18 count@0)) (= (select A@2 i@@18) (select A@0 (- i@@18 1))))
 :qid |arrayinsertbpl.65:34|
 :skolemid |8|
))) (=> (forall ((i@@19 Int) ) (!  (=> (and (< j@1 i@@19) (<= i@@19 count@0)) (= (select A@2 i@@19) (select A@0 (- i@@19 1))))
 :qid |arrayinsertbpl.65:34|
 :skolemid |8|
)) (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((i@@20 Int) ) (!  (=> (< count@0 i@@20) (= (select A@2 i@@20) (select A@0 i@@20)))
 :qid |arrayinsertbpl.66:34|
 :skolemid |9|
))))))))))))
(let ((inline$WRITE_A$0$anon0_correct  (=> (and (= A@2 (store A@1 j@0 inline$READ_A$2$v@2)) (= (ControlFlow 0 13) 9)) anon6_LoopBody$2_correct)))
(let ((anon6_LoopBody$1_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 14) 13) inline$WRITE_A$0$anon0_correct)))))
(let ((inline$READ_A$2$anon0_correct  (=> (and (= inline$READ_A$2$v@2 (select A@1 inline$READ_A$2$i@1)) (= (ControlFlow 0 16) 14)) anon6_LoopBody$1_correct)))
(let ((inline$READ_A$2$Entry_correct  (=> (and (= inline$READ_A$2$i@1 (- j@0 1)) (= (ControlFlow 0 17) 16)) inline$READ_A$2$anon0_correct)))
(let ((anon6_LoopBody_correct  (=> (< idx@0 j@0) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 18) 17) inline$READ_A$2$Entry_correct))))))
(let ((anon6_LoopHead_correct  (=> (and (and (and (<= idx@0 j@0) (<= j@0 count@0)) (forall ((i@@21 Int) ) (!  (=> (<= i@@21 j@0) (= (select A@1 i@@21) (select A@0 i@@21)))
 :qid |arrayinsertbpl.64:34|
 :skolemid |7|
))) (and (forall ((i@@22 Int) ) (!  (=> (and (< j@0 i@@22) (<= i@@22 count@0)) (= (select A@1 i@@22) (select A@0 (- i@@22 1))))
 :qid |arrayinsertbpl.65:34|
 :skolemid |8|
)) (forall ((i@@23 Int) ) (!  (=> (< count@0 i@@23) (= (select A@1 i@@23) (select A@0 i@@23)))
 :qid |arrayinsertbpl.66:34|
 :skolemid |9|
)))) (and (=> (= (ControlFlow 0 34) 32) anon6_LoopDone_correct) (=> (= (ControlFlow 0 34) 18) anon6_LoopBody_correct)))))
(let ((anon5_LoopDone_correct  (=> (not (and (< idx@0 count@0) (< a@0 v))) (and (=> (= (ControlFlow 0 35) (- 0 39)) (and (<= idx@0 count@0) (<= count@0 count@0))) (=> (and (<= idx@0 count@0) (<= count@0 count@0)) (and (=> (= (ControlFlow 0 35) (- 0 38)) (forall ((i@@24 Int) ) (!  (=> (<= i@@24 count@0) (= (select A@0 i@@24) (select A@0 i@@24)))
 :qid |arrayinsertbpl.64:34|
 :skolemid |7|
))) (=> (forall ((i@@25 Int) ) (!  (=> (<= i@@25 count@0) (= (select A@0 i@@25) (select A@0 i@@25)))
 :qid |arrayinsertbpl.64:34|
 :skolemid |7|
)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (forall ((i@@26 Int) ) (!  (=> (and (< count@0 i@@26) (<= i@@26 count@0)) (= (select A@0 i@@26) (select A@0 (- i@@26 1))))
 :qid |arrayinsertbpl.65:34|
 :skolemid |8|
))) (=> (forall ((i@@27 Int) ) (!  (=> (and (< count@0 i@@27) (<= i@@27 count@0)) (= (select A@0 i@@27) (select A@0 (- i@@27 1))))
 :qid |arrayinsertbpl.65:34|
 :skolemid |8|
)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((i@@28 Int) ) (!  (=> (< count@0 i@@28) (= (select A@0 i@@28) (select A@0 i@@28)))
 :qid |arrayinsertbpl.66:34|
 :skolemid |9|
))) (=> (forall ((i@@29 Int) ) (!  (=> (< count@0 i@@29) (= (select A@0 i@@29) (select A@0 i@@29)))
 :qid |arrayinsertbpl.66:34|
 :skolemid |9|
)) (=> (= (ControlFlow 0 35) 34) anon6_LoopHead_correct))))))))))))
(let ((anon5_LoopBody$1_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 idx@1) (<= idx@1 count@0))) (=> (and (<= 0 idx@1) (<= idx@1 count@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= inline$READ_A$1$v@2 (select A@0 idx@1))) (=> (= inline$READ_A$1$v@2 (select A@0 idx@1)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 idx@1)) (< (select A@0 i@@30) v))
 :qid |arrayinsertbpl.56:34|
 :skolemid |6|
)))))))))
(let ((inline$READ_A$1$anon0_correct  (=> (and (= inline$READ_A$1$v@2 (select A@0 idx@1)) (= (ControlFlow 0 5) 2)) anon5_LoopBody$1_correct)))
(let ((anon5_LoopBody_correct  (=> (and (and (< idx@0 count@0) (< a@0 v)) (= idx@1 (+ idx@0 1))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 6) 5) inline$READ_A$1$anon0_correct))))))
(let ((anon5_LoopHead_correct  (=> (and (and (<= 0 idx@0) (<= idx@0 count@0)) (and (= a@0 (select A@0 idx@0)) (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 idx@0)) (< (select A@0 i@@31) v))
 :qid |arrayinsertbpl.56:34|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 40) 35) anon5_LoopDone_correct) (=> (= (ControlFlow 0 40) 6) anon5_LoopBody_correct)))))
(let ((anon0$4_correct  (and (=> (= (ControlFlow 0 41) (- 0 44)) (and (<= 0 0) (<= 0 count@0))) (=> (and (<= 0 0) (<= 0 count@0)) (and (=> (= (ControlFlow 0 41) (- 0 43)) (= inline$READ_A$0$v@1 (select A@0 0))) (=> (= inline$READ_A$0$v@1 (select A@0 0)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 0)) (< (select A@0 i@@32) v))
 :qid |arrayinsertbpl.56:34|
 :skolemid |6|
))) (=> (forall ((i@@33 Int) ) (!  (=> (and (<= 0 i@@33) (< i@@33 0)) (< (select A@0 i@@33) v))
 :qid |arrayinsertbpl.56:34|
 :skolemid |6|
)) (=> (= (ControlFlow 0 41) 40) anon5_LoopHead_correct)))))))))
(let ((inline$READ_A$0$anon0_correct  (=> (and (= inline$READ_A$0$v@1 (select A@0 0)) (= (ControlFlow 0 45) 41)) anon0$4_correct)))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 46) 45) inline$READ_A$0$anon0_correct)))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 48) (- 0 49)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 48) 46) anon0$3_correct)))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock@0 nil) (= (ControlFlow 0 50) 48)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 51) (- 0 52)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 51) 50) inline$ACQUIRE$0$anon0_correct)))))
(let ((anon0_correct  (=> (not (= tid nil)) (=> (and (and (forall ((i@@34 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 i@@34) (<= i@@34 j@@1)) (< j@@1 count@0)) (<= (select A@0 i@@34) (select A@0 j@@1)))
 :qid |arrayinsertbpl.14:11|
 :skolemid |0|
)) (>= count@0 0)) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (= (ControlFlow 0 53) 51))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 54) 53)) anon0_correct)))
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
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun Trigger_INSERT_idx (Int) Bool)
(declare-fun inline$INSERT$0$idx@0 () Int)
(declare-fun count () Int)
(declare-fun A () (Array Int Int))
(declare-fun v () Int)
(declare-fun A@0 () (Array Int Int))
(declare-fun count@0 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_INSERT)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$INSERT$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$INSERT$0$anon0_correct  (=> (Trigger_INSERT_idx inline$INSERT$0$idx@0) (=> (and (<= 0 inline$INSERT$0$idx@0) (<= inline$INSERT$0$idx@0 count)) (=> (and (and (and (forall ((inline$INSERT$0$i Int) ) (!  (=> (and (<= 0 inline$INSERT$0$i) (< inline$INSERT$0$i inline$INSERT$0$idx@0)) (< (select A inline$INSERT$0$i) v))
 :qid |unknown.0:0|
 :skolemid |1|
)) (forall ((inline$INSERT$0$i@@0 Int) ) (!  (=> (and (<= inline$INSERT$0$idx@0 inline$INSERT$0$i@@0) (< inline$INSERT$0$i@@0 count)) (>= (select A inline$INSERT$0$i@@0) v))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$INSERT$0$i@@1 Int) ) (!  (=> (< inline$INSERT$0$i@@1 inline$INSERT$0$idx@0) (= (select A@0 inline$INSERT$0$i@@1) (select A inline$INSERT$0$i@@1)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (forall ((inline$INSERT$0$i@@2 Int) ) (!  (=> (and (< inline$INSERT$0$idx@0 inline$INSERT$0$i@@2) (< inline$INSERT$0$i@@2 count)) (= (select A@0 (+ inline$INSERT$0$i@@2 1)) (select A inline$INSERT$0$i@@2)))
 :qid |unknown.0:0|
 :skolemid |4|
)))) (and (and (forall ((inline$INSERT$0$i@@3 Int) ) (!  (=> (< count inline$INSERT$0$i@@3) (= (select A@0 inline$INSERT$0$i@@3) (select A inline$INSERT$0$i@@3)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (= (select A@0 inline$INSERT$0$idx@0) v)) (and (= count@0 (+ count 1)) (= (ControlFlow 0 3) 2)))) inline$INSERT$0$Return_correct)))))
(let ((inline$INSERT$0$Entry_correct  (=> (forall ((i Int) (j Int) ) (!  (=> (and (and (<= 0 i) (<= i j)) (< j count)) (<= (select A i) (select A j)))
 :qid |arrayinsertbpl.14:11|
 :skolemid |0|
)) (=> (and (>= count 0) (= (ControlFlow 0 4) 3)) inline$INSERT$0$anon0_correct))))
inline$INSERT$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun inline$READ_A$0$v@1 () Int)
(declare-fun A () (Array Int Int))
(declare-fun i () Int)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_READ_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$READ_A$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$READ_A$0$anon0_correct  (=> (and (= inline$READ_A$0$v@1 (select A i)) (= (ControlFlow 0 3) 2)) inline$READ_A$0$Return_correct)))
(let ((inline$READ_A$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 4) 3)) inline$READ_A$0$anon0_correct)))
inline$READ_A$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun A@0 () (Array Int Int))
(declare-fun A () (Array Int Int))
(declare-fun i () Int)
(declare-fun v () Int)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_WRITE_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$WRITE_A$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$WRITE_A$0$anon0_correct  (=> (and (= A@0 (store A i v)) (= (ControlFlow 0 3) 2)) inline$WRITE_A$0$Return_correct)))
(let ((inline$WRITE_A$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 4) 3)) inline$WRITE_A$0$anon0_correct)))
inline$WRITE_A$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_READ_COUNT)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$READ_COUNT$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$READ_COUNT$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$READ_COUNT$0$Return_correct)))
inline$READ_COUNT$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_WRITE_COUNT)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WRITE_COUNT$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$WRITE_COUNT$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$WRITE_COUNT$0$Return_correct)))
inline$WRITE_COUNT$0$Entry_correct)))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Tid)
(declare-fun nil () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct)))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE$0$anon0_correct)))
inline$ACQUIRE$0$Entry_correct))))
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
 :skolemid |10|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Tid 0)
(declare-fun tid () T@Tid)
(declare-fun nil () T@Tid)
(declare-fun lock () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
inline$RELEASE$0$Entry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
