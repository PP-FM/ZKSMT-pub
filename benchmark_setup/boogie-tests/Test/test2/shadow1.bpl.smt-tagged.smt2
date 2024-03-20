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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((y Int) ) (! (= x 0)
 :qid |shadow1bpl.9:18|
 :skolemid |0|
))) (=> (forall ((y@@0 Int) ) (! (= x 0)
 :qid |shadow1bpl.9:18|
 :skolemid |0|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x@@0 Int) ) (! (= x@@0 0)
 :qid |shadow1bpl.10:18|
 :skolemid |1|
)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= x 0) (= (ControlFlow 0 4) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
