(set-logic LIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun F (Int) Bool)
(assert (forall ((n Int) ) (! (= (F n) true)
 :qid |Snapshots5v1bpl.8:30|
 :skolemid |0|
 :pattern ( (F n))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun n@@0 () Int)
(set-info :boogie-vc-id P0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) false)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (F n@@0) (= (ControlFlow 0 3) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
