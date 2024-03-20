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
(declare-fun r@0 () (_ FloatingPoint 8 24))
(declare-fun x () (_ FloatingPoint 8 24))
(declare-fun r@1 () (_ FloatingPoint 8 24))
(declare-fun r@2 () (_ FloatingPoint 8 24))
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= r@0 (fp.mul RNE x (fp (_ bv0 1) (_ bv127 8) (_ bv1 23)))) (= r@1 (fp.add RNE x (fp (_ bv0 1) (_ bv127 8) (_ bv1 23))))) (and (= r@2 (fp.add RNE (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (= (ControlFlow 0 2) (- 0 1)))) (= r@2 (fp (_ bv0 1) (_ bv128 8) (_ bv0 23))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
