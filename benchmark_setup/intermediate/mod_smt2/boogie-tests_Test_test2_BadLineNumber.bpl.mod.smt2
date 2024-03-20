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
(set-info :boogie-vc-id p)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 2) (- 0 1)) false)))
(let ((anon0_correct  (=> (= (ControlFlow 0 3) 2) anon3_Else_correct)))
anon0_correct)))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
(get-info :rlimit)
