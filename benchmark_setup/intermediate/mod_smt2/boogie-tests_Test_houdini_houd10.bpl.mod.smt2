(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
(set-logic QF_UFLIA)
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
(declare-fun b1 () Bool)
(declare-fun b3 () Bool)
(declare-fun xVar@0 () Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (not (= 5 5))) (=> (not (= 5 5)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> b1 (= 5 0))) (=> (=> b1 (= 5 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> b3 (< xVar@0 0)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
(get-info :rlimit)
