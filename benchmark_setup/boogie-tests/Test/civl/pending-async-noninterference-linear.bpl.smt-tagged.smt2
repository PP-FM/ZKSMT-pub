(set-logic ALIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@PA 0)) (((A (|tid#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferencelinearbpl.13:20|
 :skolemid |6|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$ASYNC_A$0$PAs@1 () (Array T@PA Int))
(declare-fun tid () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_ASYNC_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ASYNC_A$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |4|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$ASYNC_A$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |5|
)))))))
(let ((inline$ASYNC_A$0$anon0_correct  (=> (and (= inline$ASYNC_A$0$PAs@1 (store (|lambda#0| 0) (A tid) 1)) (= (ControlFlow 0 4) 2)) inline$ASYNC_A$0$Return_correct)))
(let ((inline$ASYNC_A$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$ASYNC_A$0$anon0_correct)))
inline$ASYNC_A$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@PA 0)) (((A (|tid#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferencelinearbpl.13:20|
 :skolemid |6|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun x@0 () (Array Int Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_dummy_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_yield_x$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_yield_x$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (= (select x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0) 0) (= (ControlFlow 0 6) (- 0 5))) (= (select x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0) 0)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((as const (Array Int Bool)) false)) (and (and (=> (= (ControlFlow 0 8) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct)) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((A (|tid#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferencelinearbpl.13:20|
 :skolemid |6|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun x@@0 () (Array Int Int))
(declare-fun x@0 () (Array Int Int))
(declare-fun tid () Int)
(set-info :boogie-vc-id Civl_PendingAsyncNoninterferenceChecker_A_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$A$0$Return_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_yield_x$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_yield_x$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (= (select x@@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0) 0) (= (ControlFlow 0 2) (- 0 1))) (= (select x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$tid@0) 0)))))
(let ((inline$A$0$anon0_correct  (=> (and (= x@0 (store x@@0 tid 1)) (= (ControlFlow 0 3) 2)) inline$A$0$Return_correct)))
(let ((init_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 4) 3)) inline$A$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) init_correct)))
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
(declare-datatypes ((T@PA 0)) (((A (|tid#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferencelinearbpl.13:20|
 :skolemid |6|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun x@0 () (Array Int Int))
(declare-fun x@@0 () (Array Int Int))
(set-info :boogie-vc-id Civl_LinearityChecker_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$A$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$A$0$anon0_correct  (=> (and (= x@0 (store x@@0 tid 1)) (= (ControlFlow 0 3) 2)) inline$A$0$Return_correct)))
(let ((inline$A$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$A$0$anon0_correct)))
inline$A$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@PA 0)) (((A (|tid#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferencelinearbpl.13:20|
 :skolemid |6|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$ASYNC_A$0$PAs@1 () (Array T@PA Int))
(declare-fun tid () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_ASYNC_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((tid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa1) 1) (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|tid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|tid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((tid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|tid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((tid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$ASYNC_A$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|tid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$ASYNC_A$0$anon0_correct  (=> (= inline$ASYNC_A$0$PAs@1 (store (|lambda#0| 0) (A tid) 1)) (and (and (=> (= (ControlFlow 0 7) 2) tid_single_A_correct) (=> (= (ControlFlow 0 7) 4) tid_identical_A_correct)) (=> (= (ControlFlow 0 7) 6) tid_distinct_A_A_correct)))))
(let ((inline$ASYNC_A$0$Entry_correct  (=> (= (ControlFlow 0 8) 7) inline$ASYNC_A$0$anon0_correct)))
inline$ASYNC_A$0$Entry_correct))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
