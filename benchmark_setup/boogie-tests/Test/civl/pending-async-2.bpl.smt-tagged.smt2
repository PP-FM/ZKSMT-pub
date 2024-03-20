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
(declare-datatypes ((T@PA 0)) (((A ) (B ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(declare-fun n () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync2bpl.12:20|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(assert (> n 0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$C$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_C)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$C$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$C$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$C$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$C$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |4|
)))))))
(let ((inline$C$0$anon0_correct  (=> (and (= inline$C$0$PAs@1 (store (store (|lambda#0| 0) A 1) B 1)) (= (ControlFlow 0 4) 2)) inline$C$0$Return_correct)))
(let ((inline$C$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$C$0$anon0_correct)))
inline$C$0$Entry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
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
(declare-datatypes ((T@PA 0)) (((A ) (B ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(declare-fun n () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync2bpl.12:20|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(assert (> n 0))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$D$0$PAs@0 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_D)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$D$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$D$0$PAs@0 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$D$0$PAs@0 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$D$0$PAs@0 Civl_pa@@1) 0) (or (is-A Civl_pa@@1) (is-B Civl_pa@@1)))
 :qid |unknown.0:0|
 :skolemid |6|
)))))))
(let ((inline$D$0$Entry_correct  (=> (= (ControlFlow 0 4) 2) inline$D$0$Return_correct)))
inline$D$0$Entry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
