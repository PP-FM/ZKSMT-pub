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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferenceokbpl.13:20|
 :skolemid |5|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$ASYNC_A$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_ASYNC_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ASYNC_A$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$ASYNC_A$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$ASYNC_A$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |4|
)))))))
(let ((inline$ASYNC_A$0$anon0_correct  (=> (and (= inline$ASYNC_A$0$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 4) 2)) inline$ASYNC_A$0$Return_correct)))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferenceokbpl.13:20|
 :skolemid |5|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_dummy_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct  (=> (and (>= x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0) (= (ControlFlow 0 6) (- 0 5))) (>= x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 8) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_yield_yield_x$0$L0_correct)) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasyncnoninterferenceokbpl.13:20|
 :skolemid |5|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_PendingAsyncNoninterferenceChecker_A_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$A$0$Return_correct  (=> (and (>= x@@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0) (= (ControlFlow 0 2) (- 0 1))) (>= x@0 inline$Civl_NoninterferenceChecker_yield_yield_x$0$n@0))))
(let ((inline$A$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$A$0$Return_correct)))
(let ((inline$A$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$A$0$anon0_correct)))
inline$A$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
