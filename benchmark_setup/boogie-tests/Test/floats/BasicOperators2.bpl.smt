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
(declare-fun y@0 () (_ FloatingPoint 11 53))
(declare-fun z@0 () (_ FloatingPoint 11 53))
(declare-fun r@0 () (_ FloatingPoint 11 53))
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= y@0 (fp.add RNE (fp (_ bv0 1) (_ bv1063 11) (_ bv0 52)) (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52)))) (= z@0 (fp.sub RNE (fp (_ bv0 1) (_ bv1063 11) (_ bv0 52)) (fp (_ bv0 1) (_ bv1023 11) (_ bv0 52))))) (and (= r@0 (fp.sub RNE y@0 z@0)) (= (ControlFlow 0 2) (- 0 1)))) (= r@0 (fp (_ bv0 1) (_ bv1024 11) (_ bv0 52))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
