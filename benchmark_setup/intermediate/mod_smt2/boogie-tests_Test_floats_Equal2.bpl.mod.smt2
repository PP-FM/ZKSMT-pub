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
(set-info :boogie-vc-id Main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (= (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv1 1) (_ bv0 8) (_ bv0 23))))) (=> (not (= (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv1 1) (_ bv0 8) (_ bv0 23)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (fp.eq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv1 1) (_ bv0 8) (_ bv0 23)))) (=> (fp.eq (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)) (fp (_ bv1 1) (_ bv0 8) (_ bv0 23))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (_ +oo 8 24) (_ -oo 8 24)))) (=> (not (= (_ +oo 8 24) (_ -oo 8 24))) (=> (= (ControlFlow 0 2) (- 0 1)) (not (fp.eq (_ +oo 8 24) (_ -oo 8 24))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
