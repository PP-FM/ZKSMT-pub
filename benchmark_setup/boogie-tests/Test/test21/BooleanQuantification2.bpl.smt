(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(assert (forall ((x Bool) ) (!  (or (= x true) (= x false))
 :qid |BooleanQuantification2bpl.8:15|
 :skolemid |1|
)))
(assert (forall ((x@@0 Bool) ) (!  (or x@@0 (not x@@0))
 :qid |BooleanQuantification2bpl.7:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun j () Bool)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= i 3)) (not (= i 4)))) (=> (or (not (= i 3)) (not (= i 4))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or j (not j))) (=> (or j (not j)) (=> (= (ControlFlow 0 2) (- 0 1)) false)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
