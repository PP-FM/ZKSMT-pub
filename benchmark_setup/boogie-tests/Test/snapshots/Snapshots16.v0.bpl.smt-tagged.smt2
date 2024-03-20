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
(declare-fun F (Int) Int)
(declare-fun PlusOne (Int) Int)
(assert (forall ((n Int) ) (! (= (F n) (PlusOne n))
 :qid |Snapshots16v0bpl.8:15|
 :skolemid |1|
 :pattern ( (F n))
)))
(assert (forall ((n@@0 Int) ) (! (= (PlusOne n@@0) (+ n@@0 1))
 :qid |Snapshots16v0bpl.1:34|
 :skolemid |0|
 :pattern ( (PlusOne n@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id M)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (F 0) 1))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
