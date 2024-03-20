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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_l () T@lmap)
(declare-fun first_l () T@lmap)
(declare-sort T@X 0)
(declare-fun lock () T@X)
(declare-fun g () T@lmap)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicTransferToGlobalProtected_AtomicTransferToGlobalProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicTransferToGlobalProtected$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_l first_l) (= lock lock))))))
(let ((inline$AtomicTransferToGlobalProtected$0$Entry_correct  (=> (and (and (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom first_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom second_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
))) (and (not (= first_tid nil)) (= lock first_tid))) (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2))) inline$AtomicTransferToGlobalProtected$1$Return_correct)))
inline$AtomicTransferToGlobalProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_l () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-fun g () T@lmap)
(declare-sort T@X 0)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicTransferToGlobalProtected_AtomicTransferFromGlobalProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicTransferFromGlobalProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom first_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (and (and (= first_l g) (= g@0 first_l)) (= lock lock))))))
(let ((inline$AtomicTransferFromGlobalProtected$0$anon0_correct  (=> (and (= g@0 (emptyDom first_l)) (= (ControlFlow 0 3) 2)) inline$AtomicTransferFromGlobalProtected$0$Return_correct)))
(let ((inline$AtomicTransferToGlobalProtected$0$Entry_correct  (=> (and (and (and (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom first_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
))) (and (not (= first_tid nil)) (= lock first_tid))) (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 4) 3))) inline$AtomicTransferFromGlobalProtected$0$anon0_correct)))
inline$AtomicTransferToGlobalProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicTransferToGlobalProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g () T@lmap)
(declare-fun second_l () T@lmap)
(declare-sort T@X 0)
(declare-fun lock () T@X)
(declare-fun g@0 () T@lmap)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicTransferFromGlobalProtected_AtomicTransferToGlobalProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicTransferToGlobalProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom second_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom second_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
))) (and (and (= g second_l) (= second_l (emptyDom second_l))) (= lock lock))))))
(let ((inline$AtomicTransferFromGlobalProtected$0$anon0_correct  (=> (and (= g@0 (emptyDom g)) (= (ControlFlow 0 3) 2)) inline$AtomicTransferToGlobalProtected$0$Return_correct)))
(let ((inline$AtomicTransferFromGlobalProtected$0$Entry_correct  (=> (and (and (and (exists ((Civl_partition_mem@@1 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom second_l) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (and (not (= first_tid nil)) (= lock first_tid))) (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 4) 3))) inline$AtomicTransferFromGlobalProtected$0$anon0_correct)))
inline$AtomicTransferFromGlobalProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g () T@lmap)
(declare-fun g@1 () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-sort T@X 0)
(declare-fun lock () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicTransferFromGlobalProtected_AtomicTransferFromGlobalProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicTransferFromGlobalProtected$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (exists ((Civl_partition_mem@@0 (Array Int Int)) ) (!  (and (and (= ((_ map =>) (dom g) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true))) (= ((_ map =>) (dom g@1) ((_ map (= (Int Int) Bool)) Civl_partition_mem@@0 ((as const (Array Int Int)) 2))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
))) (and (and (and (= g@0 g) (= g (emptyDom g))) (= g@1 (emptyDom (emptyDom g)))) (= lock lock))))))
(let ((inline$AtomicTransferFromGlobalProtected$1$anon0_correct  (=> (and (= g@1 (emptyDom g@0)) (= (ControlFlow 0 3) 2)) inline$AtomicTransferFromGlobalProtected$1$Return_correct)))
(let ((inline$AtomicTransferFromGlobalProtected$0$anon0_correct  (=> (and (= g@0 (emptyDom g)) (= (ControlFlow 0 4) 3)) inline$AtomicTransferFromGlobalProtected$1$anon0_correct)))
(let ((inline$AtomicTransferFromGlobalProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicTransferFromGlobalProtected$0$anon0_correct)))))
inline$AtomicTransferFromGlobalProtected$0$Entry_correct)))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicTransferFromGlobalProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicTransferToGlobalProtected_AtomicAcquireProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAcquireProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireProtected$0$Return_correct)))
(let ((inline$AtomicAcquireProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicAcquireProtected$0$anon0_correct))))
inline$AtomicAcquireProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicTransferFromGlobalProtected_AtomicAcquireProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAcquireProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireProtected$0$Return_correct)))
(let ((inline$AtomicAcquireProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicAcquireProtected$0$anon0_correct))))
inline$AtomicAcquireProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAcquireProtected_AtomicAcquireProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAcquireProtected$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicAcquireProtected$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireProtected$1$Return_correct)))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 4) 3)) inline$AtomicAcquireProtected$1$anon0_correct)))
(let ((inline$AtomicAcquireProtected$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicAcquireProtected$0$anon0_correct)))
inline$AtomicAcquireProtected$0$Entry_correct)))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun lock () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAcquireProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct)))
(let ((inline$AtomicAcquireProtected$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 4) 3)) inline$AtomicAcquireProtected$0$anon0_correct))))
inline$AtomicAcquireProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReleaseProtected_AtomicAcquireProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAcquireProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireProtected$0$Return_correct)))
(let ((inline$AtomicAcquireProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (not (= first_tid nil)) (= lock first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicAcquireProtected$0$anon0_correct))))
inline$AtomicAcquireProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicTransferToGlobalProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct)))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicTransferFromGlobalProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct)))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReleaseProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$1$Return_correct)))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicReleaseProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (not (= first_tid nil)) (= lock first_tid)) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct)))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicReleaseProtected_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (not (and (not (= first_tid nil)) (= lock first_tid)))) (=> (and (and (not (= second_tid nil)) (= lock second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct))))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun lock@6 () T@X)
(declare-fun nil () T@X)
(declare-fun b@6 () Bool)
(declare-fun b@4 () Bool)
(declare-fun lock@4 () T@X)
(declare-fun Civl_global_old_lock@0 () T@X)
(declare-fun Civl_global_old_b@0 () Bool)
(declare-fun lock@5 () T@X)
(declare-fun b@5 () Bool)
(declare-fun lock@3 () T@X)
(declare-fun b@3 () Bool)
(declare-fun Civl_linear_mem_available@4 () (Array Int Bool))
(declare-fun g@4 () T@lmap)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun tid () T@X)
(declare-fun lock@2 () T@X)
(declare-fun b@2 () Bool)
(declare-fun lock@1 () T@X)
(declare-fun b@1 () Bool)
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun Civl_linear_mem_available@3 () (Array Int Bool))
(declare-fun g@3 () T@lmap)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$AtomicStore$1$l_out@1 () T@lmap)
(declare-fun inline$AtomicStore$0$l_out@1 () T@lmap)
(declare-fun inline$AtomicStore$1$a@0 () Int)
(declare-fun inline$AtomicStore$1$v@0 () Int)
(declare-fun p () Int)
(declare-fun inline$AtomicLoad$1$v@1 () Int)
(declare-fun inline$AtomicLoad$1$a@0 () Int)
(declare-fun call4formal@Civl_0_l@0 () T@lmap)
(declare-fun inline$AtomicStore$0$v@0 () Int)
(declare-fun inline$AtomicLoad$0$v@1 () Int)
(declare-fun Civl_linear_mem_available@2 () (Array Int Bool))
(declare-fun g@2 () T@lmap)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_linear_mem_available@1 () (Array Int Bool))
(declare-fun g@1 () T@lmap)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun g@0 () T@lmap)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_P_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (= (not (= lock@6 nil)) b@6))))
(let ((Civl_UnifiedReturn_correct  (=> (= b@6 b@4) (=> (and (= lock@6 lock@4) (= (ControlFlow 0 13) 12)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= Civl_global_old_lock@0 nil)) Civl_global_old_b@0) (= (ControlFlow 0 3) (- 0 2))) (= (not (= lock@5 nil)) b@5))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@5 lock@4) (= b@5 b@4)) (and (= Civl_global_old_lock@0 lock@4) (= Civl_global_old_b@0 b@4))) (and (=> (= (ControlFlow 0 10) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 10) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (not (= lock@3 nil)) b@3)) (=> (= (not (= lock@3 nil)) b@3) (=> (= (not (= lock@4 nil)) b@4) (=> (and (= Civl_linear_mem_available@4 ((_ map or) (dom g@4) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 14) 9) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 13) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 14) 10) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@5 lock@3) (= b@5 b@3)) (and (= Civl_global_old_lock@0 lock@3) (= Civl_global_old_b@0 b@3))) (and (=> (= (ControlFlow 0 8) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 8) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_2$4_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@5 lock@2) (= b@5 b@2)) (and (= Civl_global_old_lock@0 lock@2) (= Civl_global_old_b@0 b@2))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_3_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@5 lock@1) (= b@5 b@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_b@0 b@1))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 6) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@5 lock@0) (= b@5 b@0)) (and (= Civl_global_old_lock@0 lock@0) (= Civl_global_old_b@0 b@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_1_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (= (not (= lock@2 nil)) b@2)) (=> (= (not (= lock@2 nil)) b@2) (=> (= (not (= lock@3 nil)) b@3) (=> (and (= Civl_linear_mem_available@3 ((_ map or) (dom g@3) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 16) 14) anon0_0_correct) (=> (= (ControlFlow 0 16) 8) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 16) 1) Civl_RefinementChecker_correct))))))))
(let ((inline$AtomicStore$1$anon0_correct  (=> (= inline$AtomicStore$1$l_out@1 (cons (dom inline$AtomicStore$0$l_out@1) (store (q@map inline$AtomicStore$0$l_out@1) inline$AtomicStore$1$a@0 inline$AtomicStore$1$v@0))) (and (and (=> (= (ControlFlow 0 18) 16) anon0_1_correct) (=> (= (ControlFlow 0 18) 7) anon0_2$4_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 1) Civl_RefinementChecker_correct)))))
(let ((inline$AtomicStore$1$Entry_correct  (=> (= inline$AtomicStore$1$a@0 (+ p 4)) (=> (and (= inline$AtomicStore$1$v@0 (+ inline$AtomicLoad$1$v@1 1)) (= (ControlFlow 0 19) 18)) inline$AtomicStore$1$anon0_correct))))
(let ((inline$AtomicLoad$1$anon0_correct  (=> (and (= inline$AtomicLoad$1$v@1 (select (q@map inline$AtomicStore$0$l_out@1) inline$AtomicLoad$1$a@0)) (= (ControlFlow 0 20) 19)) inline$AtomicStore$1$Entry_correct)))
(let ((inline$AtomicLoad$1$Entry_correct  (=> (and (= inline$AtomicLoad$1$a@0 (+ p 4)) (= (ControlFlow 0 21) 20)) inline$AtomicLoad$1$anon0_correct)))
(let ((inline$AtomicStore$0$anon0_correct  (=> (and (= inline$AtomicStore$0$l_out@1 (cons (dom call4formal@Civl_0_l@0) (store (q@map call4formal@Civl_0_l@0) p inline$AtomicStore$0$v@0))) (= (ControlFlow 0 22) 21)) inline$AtomicLoad$1$Entry_correct)))
(let ((inline$AtomicStore$0$Entry_correct  (=> (and (= inline$AtomicStore$0$v@0 (+ inline$AtomicLoad$0$v@1 1)) (= (ControlFlow 0 23) 22)) inline$AtomicStore$0$anon0_correct)))
(let ((inline$AtomicLoad$0$anon0_correct  (=> (and (= inline$AtomicLoad$0$v@1 (select (q@map call4formal@Civl_0_l@0) p)) (= (ControlFlow 0 24) 23)) inline$AtomicStore$0$Entry_correct)))
(let ((anon0_2_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (= (not (= lock@1 nil)) b@1)) (=> (= (not (= lock@1 nil)) b@1) (=> (= (not (= lock@2 nil)) b@2) (=> (and (and (= Civl_linear_mem_available@2 ((_ map or) (dom g@2) ((_ map or) (dom call4formal@Civl_0_l@0) ((as const (Array Int Bool)) false)))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom call4formal@Civl_0_l@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g@2) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (= (ControlFlow 0 25) 24))) inline$AtomicLoad$0$anon0_correct))))))
(let ((anon0_3_correct  (and (=> (= (ControlFlow 0 27) (- 0 29)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (= (not (= lock@0 nil)) b@0)) (=> (= (not (= lock@0 nil)) b@0) (=> (= (not (= lock@1 nil)) b@1) (=> (and (= Civl_linear_mem_available@1 ((_ map or) (dom g@1) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 27) 25) anon0_2_correct) (=> (= (ControlFlow 0 27) 6) anon0_3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 27) 1) Civl_RefinementChecker_correct))))))))))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 30) 27) anon0_3_correct) (=> (= (ControlFlow 0 30) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 31) 30)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun lock@0 () T@X)
(declare-fun nil () T@X)
(declare-fun b@0 () Bool)
(declare-fun l@@0 () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_TransferToGlobalProtected_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= (not (= lock@0 nil)) b@0))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= lock@0 nil)) b@0) (= (ControlFlow 0 3) (- 0 2))) (= (not (= lock@0 nil)) b@0))))
(let ((Civl_ReturnChecker_correct true))
(let ((anon0_correct  (=> (and (and (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom l@@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |33|
)) (= (not (= lock@0 nil)) b@0)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((_ map or) (dom l@@0) ((as const (Array Int Bool)) false)))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (and (=> (= (ControlFlow 0 7) 1) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct)) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 7) 6) GeneratedUnifiedExit_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 8) 7)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun lock@0 () T@X)
(declare-fun nil () T@X)
(declare-fun b@0 () Bool)
(declare-fun g@1 () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_TransferFromGlobalProtected_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= (not (= lock@0 nil)) b@0))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= lock@0 nil)) b@0) (= (ControlFlow 0 3) (- 0 2))) (= (not (= lock@0 nil)) b@0))))
(let ((Civl_ReturnChecker_correct true))
(let ((inline$AtomicTransferFromGlobal$0$anon0_correct  (=> (= g@1 (emptyDom g@0)) (and (and (and (=> (= (ControlFlow 0 7) 1) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct)) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 7) 6) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (= (not (= lock@0 nil)) b@0) (=> (and (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (= (ControlFlow 0 8) 7)) inline$AtomicTransferFromGlobal$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 9) 8)) anon0_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun lock@3 () T@X)
(declare-fun nil () T@X)
(declare-fun b@3 () Bool)
(declare-fun b@1 () Bool)
(declare-fun lock@1 () T@X)
(declare-fun Civl_global_old_lock@0 () T@X)
(declare-fun Civl_global_old_b@0 () Bool)
(declare-fun lock@2 () T@X)
(declare-fun b@2 () Bool)
(declare-fun tid () T@X)
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun Civl_linear_mem_available@1 () (Array Int Bool))
(declare-fun g@1 () T@lmap)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun g@0 () T@lmap)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_AcquireProtected_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= (not (= lock@3 nil)) b@3))))
(let ((Civl_UnifiedReturn_correct  (=> (= b@3 b@1) (=> (and (= lock@3 lock@1) (= (ControlFlow 0 10) 9)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= Civl_global_old_lock@0 nil)) Civl_global_old_b@0) (= (ControlFlow 0 3) (- 0 2))) (= (not (= lock@2 nil)) b@2))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@2 lock@1) (= b@2 b@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_b@0 b@1))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (not (= lock@0 nil)) b@0)) (=> (= (not (= lock@0 nil)) b@0) (=> (= (not (= lock@1 nil)) b@1) (=> (and (= Civl_linear_mem_available@1 ((_ map or) (dom g@1) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 11) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 10) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 11) 7) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@2 lock@0) (= b@2 b@0)) (and (= Civl_global_old_lock@0 lock@0) (= Civl_global_old_b@0 b@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 14) 11) anon0_0_correct) (=> (= (ControlFlow 0 14) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 14) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 15) 14)) anon0_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun lock@3 () T@X)
(declare-fun nil () T@X)
(declare-fun b@3 () Bool)
(declare-fun b@1 () Bool)
(declare-fun lock@1 () T@X)
(declare-fun Civl_global_old_lock@0 () T@X)
(declare-fun Civl_global_old_b@0 () Bool)
(declare-fun lock@2 () T@X)
(declare-fun b@2 () Bool)
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun Civl_linear_mem_available@1 () (Array Int Bool))
(declare-fun g@1 () T@lmap)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun tid () T@X)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun g@0 () T@lmap)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_ReleaseProtected_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= (not (= lock@3 nil)) b@3))))
(let ((Civl_UnifiedReturn_correct  (=> (= b@3 b@1) (=> (and (= lock@3 lock@1) (= (ControlFlow 0 10) 9)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= Civl_global_old_lock@0 nil)) Civl_global_old_b@0) (= (ControlFlow 0 3) (- 0 2))) (= (not (= lock@2 nil)) b@2))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@2 lock@1) (= b@2 b@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_b@0 b@1))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (not (= lock@0 nil)) b@0)) (=> (= (not (= lock@0 nil)) b@0) (=> (= (not (= lock@1 nil)) b@1) (=> (and (= Civl_linear_mem_available@1 ((_ map or) (dom g@1) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 11) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 10) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 11) 7) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= lock@2 lock@0) (= b@2 b@0)) (and (= Civl_global_old_lock@0 lock@0) (= Civl_global_old_b@0 b@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (= (not (= lock@0 nil)) b@0) (=> (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 13) 11) anon0_0_correct) (=> (= (ControlFlow 0 13) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 13) 1) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 14) 13)) anon0_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g@1 () T@lmap)
(declare-sort T@X 0)
(declare-fun lock@3 () T@X)
(declare-fun lock@1 () T@X)
(declare-fun nil () T@X)
(declare-fun tid () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun lock@2 () T@X)
(declare-fun lock@6 () T@X)
(declare-fun b@5 () Bool)
(declare-fun b@3 () Bool)
(declare-fun lock@4 () T@X)
(declare-fun b@1 () Bool)
(declare-fun b@2 () Bool)
(declare-fun Civl_global_old_lock@1 () T@X)
(declare-fun Civl_global_old_b@1 () Bool)
(declare-fun lock@5 () T@X)
(declare-fun b@4 () Bool)
(declare-fun inline$AtomicCAS$0$status@2 () Bool)
(declare-fun Civl_linear_mem_available@2 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun g@0 () T@lmap)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_Acquire_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 36) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (or false (or (and (= g@1 g@1) (= lock@3 lock@1)) (and (and (= lock@1 nil) (= lock@3 tid)) (= g@1 g@1))))) (=> (or false (or (and (= g@1 g@1) (= lock@3 lock@1)) (and (and (= lock@1 nil) (= lock@3 tid)) (= g@1 g@1)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (=> false (and (= g@1 g@1) (= lock@3 lock@1)))) (=> (=> false (and (= g@1 g@1) (= lock@3 lock@1))) (=> (and (and (= Civl_pc@0  (=> (and (= g@1 g@1) (= lock@3 lock@1)) false)) (= Civl_ok@0  (or (and (and (= lock@1 nil) (= lock@3 tid)) (= g@1 g@1)) false))) (= (ControlFlow 0 21) (- 0 20))) Civl_ok@0)))))))
(let ((anon3_LoopDone_@2_Civl_ReturnChecker_correct  (=> (and (= lock@3 lock@1) (= (ControlFlow 0 28) 21)) Civl_ReturnChecker_correct)))
(let ((anon4_Then_@2_Civl_ReturnChecker_correct  (=> (and (= lock@3 lock@2) (= (ControlFlow 0 24) 21)) Civl_ReturnChecker_correct)))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (= (not (= lock@6 nil)) b@5))))
(let ((Civl_UnifiedReturn_correct  (=> (= b@5 b@3) (=> (and (= lock@6 lock@4) (= (ControlFlow 0 18) 17)) GeneratedUnifiedExit_correct))))
(let ((anon3_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (= lock@4 lock@1) (=> (and (= b@3 b@1) (= (ControlFlow 0 29) 18)) Civl_UnifiedReturn_correct))))
(let ((anon4_Then_@2_Civl_UnifiedReturn_correct  (=> (= lock@4 lock@2) (=> (and (= b@3 b@2) (= (ControlFlow 0 19) 18)) Civl_UnifiedReturn_correct))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (= g@1 g@1) (= lock@2 lock@1))) (=> (and (= g@1 g@1) (= lock@2 lock@1)) (=> (= (ControlFlow 0 12) (- 0 11)) (=> false true))))))
(let ((anon4_Else_@2_anon3_LoopHead_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= (not (= lock@2 nil)) b@2))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= Civl_global_old_lock@1 nil)) Civl_global_old_b@1) (= (ControlFlow 0 5) (- 0 4))) (= (not (= lock@5 nil)) b@4))))
(let ((anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@4 b@1) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_b@1 b@1) (= lock@5 lock@1))) (and (=> (= (ControlFlow 0 30) 5) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 30) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon3_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 31) 28) anon3_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 31) 29) anon3_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 31) 30) anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Then_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@4 b@2) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_b@1 b@1) (= lock@5 lock@2))) (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 15) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Then_correct  (=> inline$AtomicCAS$0$status@2 (and (and (=> (= (ControlFlow 0 25) 24) anon4_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 25) 19) anon4_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 25) 15) anon4_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Else_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@4 b@2) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_b@1 b@1) (= lock@5 lock@2))) (and (=> (= (ControlFlow 0 10) 5) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 10) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Else_correct  (=> (not inline$AtomicCAS$0$status@2) (and (and (=> (= (ControlFlow 0 14) 9) anon4_Else_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 14) 10) anon4_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 14) 12) Civl_UnchangedChecker_correct)))))
(let ((inline$AtomicCAS$0$anon3_Else_correct  (=> (= lock@2 lock@1) (=> (and (= b@2 b@1) (= inline$AtomicCAS$0$status@2 false)) (and (=> (= (ControlFlow 0 27) 25) anon4_Then_correct) (=> (= (ControlFlow 0 27) 14) anon4_Else_correct))))))
(let ((inline$AtomicCAS$0$anon3_Then_correct  (=> (and (and (= b@1 false) (= lock@2 tid)) (and (= b@2 true) (= inline$AtomicCAS$0$status@2 true))) (and (=> (= (ControlFlow 0 26) 25) anon4_Then_correct) (=> (= (ControlFlow 0 26) 14) anon4_Else_correct)))))
(let ((anon3_LoopHead_correct  (=> (and (and (or false true) (= (not (= lock@1 nil)) b@1)) (and (= Civl_linear_mem_available@2 ((_ map or) (dom g@1) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 32) 31) anon3_LoopDone_correct) (=> (= (ControlFlow 0 32) 26) inline$AtomicCAS$0$anon3_Then_correct)) (=> (= (ControlFlow 0 32) 27) inline$AtomicCAS$0$anon3_Else_correct)))))
(let ((anon0_@2_anon3_LoopHead_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (= (not (= lock@0 nil)) b@0)) (=> (= (not (= lock@0 nil)) b@0) (=> (= (ControlFlow 0 33) 32) anon3_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@4 b@0) (= Civl_global_old_lock@1 lock@0)) (and (= Civl_global_old_b@1 b@0) (= lock@5 lock@0))) (and (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= g@0 g@0) (= lock@0 lock@0)) (and (and (= lock@0 nil) (= lock@0 tid)) (= g@0 g@0))))) (=> (or false (or (and (= g@0 g@0) (= lock@0 lock@0)) (and (and (= lock@0 nil) (= lock@0 tid)) (= g@0 g@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= g@0 g@0) (= lock@0 lock@0))))))))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 35) 33) anon0_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 35) 7) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 35) 2) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 36) 35)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun g@0 () T@lmap)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_Release_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= (not (= nil nil)) false))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct  (=> (and (= (not (= lock@0 nil)) b@0) (= (ControlFlow 0 6) (- 0 5))) (= (not (= nil nil)) false))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= g@0 g@0) (= nil lock@0)) (and (= nil nil) (= g@0 g@0))))) (=> (or false (or (and (= g@0 g@0) (= nil lock@0)) (and (= nil nil) (= g@0 g@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= g@0 g@0) (= nil lock@0)))) (=> (=> false (and (= g@0 g@0) (= nil lock@0))) (=> (and (and (= Civl_pc@0  (=> (and (= g@0 g@0) (= nil lock@0)) false)) (= Civl_ok@0  (or (and (= nil nil) (= g@0 g@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (= (not (= lock@0 nil)) b@0) (=> (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_InvLock$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= (not (= lock nil)) b) (= (ControlFlow 0 11) 10)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_P_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) true)
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@@0 () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-sort T@X 0)
(declare-fun lock@0 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_TransferToGlobalProtected_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= l@@0 g@0) (= lock@0 lock@0)) (and (= l@@0 l@@0) (= lock@0 lock@0))))) (=> (or false (or (and (= l@@0 g@0) (= lock@0 lock@0)) (and (= l@@0 l@@0) (= lock@0 lock@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= l@@0 g@0) (= lock@0 lock@0)))) (=> (=> false (and (= l@@0 g@0) (= lock@0 lock@0))) (=> (and (and (= Civl_pc@0  (=> (and (= l@@0 g@0) (= lock@0 lock@0)) false)) (= Civl_ok@0  (or (and (= l@@0 l@@0) (= lock@0 lock@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (exists ((Civl_partition_mem (Array Int Int)) ) (!  (and (= ((_ map =>) (dom l@@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom g@0) ((_ map (= (Int Int) Bool)) Civl_partition_mem ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> (and (and (not (= tid nil)) (= lock@0 tid)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((_ map or) (dom l@@0) ((as const (Array Int Bool)) false)))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g@1 () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-sort T@X 0)
(declare-fun lock@0 () T@X)
(declare-fun l@@0 () T@lmap)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_TransferFromGlobalProtected_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= g@1 g@0) (= lock@0 lock@0)) (and (and (= g@0 g@0) (= g@1 (emptyDom g@0))) (= lock@0 lock@0))))) (=> (or false (or (and (= g@1 g@0) (= lock@0 lock@0)) (and (and (= g@0 g@0) (= g@1 (emptyDom g@0))) (= lock@0 lock@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= g@1 g@0) (= lock@0 lock@0)) (= g@0 l@@0)))) (=> (=> false (and (and (= g@1 g@0) (= lock@0 lock@0)) (= g@0 l@@0))) (=> (and (and (= Civl_pc@0  (=> (and (= g@1 g@0) (= lock@0 lock@0)) false)) (= Civl_ok@0  (or (and (and (= g@0 g@0) (= g@1 (emptyDom g@0))) (= lock@0 lock@0)) (and (= g@0 l@@0) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicTransferFromGlobal$0$anon0_correct  (=> (= g@1 (emptyDom g@0)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (and (not (= tid nil)) (= lock@0 tid)) (=> (and (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (= (ControlFlow 0 7) 6)) inline$AtomicTransferFromGlobal$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g@0 () T@lmap)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun lock@0 () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_AcquireProtected_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= g@0 g@0) (= tid lock@0)) (and (and (= lock@0 nil) (= tid tid)) (= g@0 g@0))))) (=> (or false (or (and (= g@0 g@0) (= tid lock@0)) (and (and (= lock@0 nil) (= tid tid)) (= g@0 g@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= g@0 g@0) (= tid lock@0)))) (=> (=> false (and (= g@0 g@0) (= tid lock@0))) (=> (and (and (= Civl_pc@0  (=> (and (= g@0 g@0) (= tid lock@0)) false)) (= Civl_ok@0  (or (and (and (= lock@0 nil) (= tid tid)) (= g@0 g@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicAcquire$0$anon0_correct  (=> (= lock@0 nil) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (not (= tid nil)) (=> (and (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (= (ControlFlow 0 7) 6)) inline$AtomicAcquire$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g@0 () T@lmap)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun lock@0 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_ReleaseProtected_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= g@0 g@0) (= nil lock@0)) (and (= nil nil) (= g@0 g@0))))) (=> (or false (or (and (= g@0 g@0) (= nil lock@0)) (and (= nil nil) (= g@0 g@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= g@0 g@0) (= nil lock@0)))) (=> (=> false (and (= g@0 g@0) (= nil lock@0))) (=> (and (and (= Civl_pc@0  (=> (and (= g@0 g@0) (= nil lock@0)) false)) (= Civl_ok@0  (or (and (= nil nil) (= g@0 g@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (= lock@0 tid)) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicStore$1$l_out@1 () T@lmap)
(declare-fun p () Int)
(declare-fun g@0 () T@lmap)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun inline$AtomicStore$0$l_out@1 () T@lmap)
(declare-fun inline$AtomicStore$1$a@0 () Int)
(declare-fun inline$AtomicStore$1$v@0 () Int)
(declare-fun inline$AtomicLoad$1$v@1 () Int)
(declare-fun inline$AtomicLoad$1$a@0 () Int)
(declare-fun inline$AtomicStore$0$v@0 () Int)
(declare-fun inline$AtomicLoad$0$v@1 () Int)
(declare-fun g@1 () T@lmap)
(declare-fun lock@0 () T@X)
(declare-fun Civl_linear_mem_available@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun g () T@lmap)
(set-info :boogie-vc-id Civl_P_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (and (and (select (dom inline$AtomicStore$1$l_out@1) p) (select (dom inline$AtomicStore$1$l_out@1) (+ p 4))) (= (select (q@map inline$AtomicStore$1$l_out@1) p) (select (q@map inline$AtomicStore$1$l_out@1) (+ p 4)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_InvMem$0$L0_correct  (=> (and (and (and (select (dom g@0) p) (select (dom g@0) (+ p 4))) (= (select (q@map g@0) p) (select (q@map g@0) (+ p 4)))) (= (ControlFlow 0 6) (- 0 5))) (and (and (select (dom inline$AtomicStore$1$l_out@1) p) (select (dom inline$AtomicStore$1$l_out@1) (+ p 4))) (= (select (q@map inline$AtomicStore$1$l_out@1) p) (select (q@map inline$AtomicStore$1$l_out@1) (+ p 4)))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0$7_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_InvMem$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct))))))
(let ((anon0$6_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 12) 10) anon0$7_correct)))))
(let ((inline$AtomicStore$1$anon0_correct  (=> (and (= inline$AtomicStore$1$l_out@1 (cons (dom inline$AtomicStore$0$l_out@1) (store (q@map inline$AtomicStore$0$l_out@1) inline$AtomicStore$1$a@0 inline$AtomicStore$1$v@0))) (= (ControlFlow 0 14) 12)) anon0$6_correct)))
(let ((inline$AtomicStore$1$Entry_correct  (=> (= inline$AtomicStore$1$a@0 (+ p 4)) (=> (and (= inline$AtomicStore$1$v@0 (+ inline$AtomicLoad$1$v@1 1)) (= (ControlFlow 0 15) 14)) inline$AtomicStore$1$anon0_correct))))
(let ((inline$AtomicLoad$1$anon0_correct  (=> (and (= inline$AtomicLoad$1$v@1 (select (q@map inline$AtomicStore$0$l_out@1) inline$AtomicLoad$1$a@0)) (= (ControlFlow 0 16) 15)) inline$AtomicStore$1$Entry_correct)))
(let ((inline$AtomicLoad$1$Entry_correct  (=> (and (= inline$AtomicLoad$1$a@0 (+ p 4)) (= (ControlFlow 0 17) 16)) inline$AtomicLoad$1$anon0_correct)))
(let ((inline$AtomicStore$0$anon0_correct  (=> (and (= inline$AtomicStore$0$l_out@1 (cons (dom g@0) (store (q@map g@0) p inline$AtomicStore$0$v@0))) (= (ControlFlow 0 18) 17)) inline$AtomicLoad$1$Entry_correct)))
(let ((inline$AtomicStore$0$Entry_correct  (=> (and (= inline$AtomicStore$0$v@0 (+ inline$AtomicLoad$0$v@1 1)) (= (ControlFlow 0 19) 18)) inline$AtomicStore$0$anon0_correct)))
(let ((inline$AtomicLoad$0$anon0_correct  (=> (and (= inline$AtomicLoad$0$v@1 (select (q@map g@0) p)) (= (ControlFlow 0 20) 19)) inline$AtomicStore$0$Entry_correct)))
(let ((inline$AtomicTransferFromGlobalProtected$0$anon0_correct  (=> (and (= g@1 (emptyDom g@0)) (= (ControlFlow 0 21) 20)) inline$AtomicLoad$0$anon0_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 22) 21) inline$AtomicTransferFromGlobalProtected$0$anon0_correct)))))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock@0 nil) (= (ControlFlow 0 24) 22)) anon0$1_correct)))
(let ((anon0_correct  (=> (not (= tid nil)) (=> (and (and (and (select (dom g@0) p) (select (dom g@0) (+ p 4))) (= (select (q@map g@0) p) (select (q@map g@0) (+ p 4)))) (and (= Civl_linear_mem_available@0 ((_ map or) (dom g@0) ((as const (Array Int Bool)) false))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 25) 24) inline$AtomicAcquireProtected$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (and (and (select (dom g) p) (select (dom g) (+ p 4))) (= (select (q@map g) p) (select (q@map g) (+ p 4)))) (= (ControlFlow 0 27) 25)) anon0_correct))))
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
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun l@@0 () T@lmap)
(declare-fun g () T@lmap)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicTransferToGlobalProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((tid_variables_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((mem_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l@@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l@@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom g) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicTransferToGlobalProtected$0$Entry_correct  (=> (and (not (= tid nil)) (= lock tid)) (and (=> (= (ControlFlow 0 5) 2) mem_variables_correct) (=> (= (ControlFlow 0 5) 4) tid_variables_correct)))))
inline$AtomicTransferToGlobalProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun g () T@lmap)
(declare-fun g@0 () T@lmap)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicTransferFromGlobalProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((tid_variables_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((mem_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom g) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom g@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (dom g) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicTransferFromGlobalProtected$0$anon0_correct  (=> (= g@0 (emptyDom g)) (and (=> (= (ControlFlow 0 5) 2) mem_variables_correct) (=> (= (ControlFlow 0 5) 4) tid_variables_correct)))))
(let ((inline$AtomicTransferFromGlobalProtected$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 6) 5)) inline$AtomicTransferFromGlobalProtected$0$anon0_correct)))
inline$AtomicTransferFromGlobalProtected$0$Entry_correct)))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAcquireProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAcquireProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAcquireProtected$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquireProtected$0$Return_correct)))
(let ((inline$AtomicAcquireProtected$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$AtomicAcquireProtected$0$anon0_correct)))
inline$AtomicAcquireProtected$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicReleaseProtected)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicReleaseProtected$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicReleaseProtected$0$Entry_correct  (=> (and (and (not (= tid nil)) (= lock tid)) (= (ControlFlow 0 3) 2)) inline$AtomicReleaseProtected$0$Return_correct)))
inline$AtomicReleaseProtected$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAcquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAcquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAcquire$0$anon0_correct  (=> (and (= lock nil) (= (ControlFlow 0 3) 2)) inline$AtomicAcquire$0$Return_correct)))
(let ((inline$AtomicAcquire$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAcquire$0$anon0_correct)))
inline$AtomicAcquire$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicRelease)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicRelease$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicRelease$0$Entry_correct  (=> (= (ControlFlow 0 3) 2) inline$AtomicRelease$0$Return_correct)))
inline$AtomicRelease$0$Entry_correct)))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun l@@0 () T@lmap)
(declare-fun g () T@lmap)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicTransferToGlobal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((tid_variables_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((mem_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l@@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l@@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom g) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicTransferToGlobal$0$Entry_correct  (and (=> (= (ControlFlow 0 5) 2) mem_variables_correct) (=> (= (ControlFlow 0 5) 4) tid_variables_correct))))
inline$AtomicTransferToGlobal$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun g () T@lmap)
(declare-fun g@0 () T@lmap)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicTransferFromGlobal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((tid_variables_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((mem_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom g) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom g@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (dom g) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicTransferFromGlobal$0$anon0_correct  (=> (= g@0 (emptyDom g)) (and (=> (= (ControlFlow 0 5) 2) mem_variables_correct) (=> (= (ControlFlow 0 5) 4) tid_variables_correct)))))
(let ((inline$AtomicTransferFromGlobal$0$Entry_correct  (=> (= (ControlFlow 0 6) 5) inline$AtomicTransferFromGlobal$0$anon0_correct)))
inline$AtomicTransferFromGlobal$0$Entry_correct)))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@@0 () T@lmap)
(declare-fun inline$AtomicLoad$0$v@1 () Int)
(declare-fun a () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLoad)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLoad$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l@@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom l@@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicLoad$0$anon0_correct  (=> (and (= inline$AtomicLoad$0$v@1 (select (q@map l@@0) a)) (= (ControlFlow 0 3) 2)) inline$AtomicLoad$0$Return_correct)))
(let ((inline$AtomicLoad$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicLoad$0$anon0_correct)))
inline$AtomicLoad$0$Entry_correct))))
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
(declare-fun |lambda#0| (Bool) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun cons ((Array Int Bool) (Array Int Int)) T@lmap)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun emptyDom (T@lmap) T@lmap)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(assert (forall ((|l#0| Bool) (x@@0 Int) ) (! (= (select (|lambda#0| |l#0|) x@@0) |l#0|)
 :qid |civlpaperbpl.14:25|
 :skolemid |38|
 :pattern ( (select (|lambda#0| |l#0|) x@@0))
)))
(assert (forall ((x@@1 (Array Int Bool)) (y (Array Int Int)) ) (!  (and (= (dom (cons x@@1 y)) x@@1) (= (q@map (cons x@@1 y)) y))
 :qid |civlpaperbpl.11:15|
 :skolemid |0|
 :pattern ( (cons x@@1 y))
)))
(assert (forall ((l T@lmap) ) (! (= (emptyDom l) (cons (|lambda#0| false) (q@map l)))
 :qid |civlpaperbpl.13:19|
 :skolemid |1|
 :pattern ( (emptyDom l))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicStore$0$l_out@1 () T@lmap)
(declare-fun l_in () T@lmap)
(declare-fun a () Int)
(declare-fun v () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicStore)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicStore$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom inline$AtomicStore$0$l_out@1) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom l_in) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicStore$0$anon0_correct  (=> (and (= inline$AtomicStore$0$l_out@1 (cons (dom l_in) (store (q@map l_in) a v))) (= (ControlFlow 0 3) 2)) inline$AtomicStore$0$Return_correct)))
(let ((inline$AtomicStore$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicStore$0$anon0_correct)))
inline$AtomicStore$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
