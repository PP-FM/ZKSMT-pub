(set-logic QF_LIA)
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
(declare-fun x@0 () (_ FloatingPoint 8 24))
(declare-fun y@0 () (_ FloatingPoint 8 24))
(declare-fun z@0 () (_ FloatingPoint 8 24))
(declare-fun r@0 () (_ FloatingPoint 8 24))
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= x@0 ((_ to_fp 8 24) RNE 10000000.0)) (=> (and (and (= y@0 (fp.add RNE x@0 ((_ to_fp 8 24) RNE 1))) (= z@0 (fp.sub RNE x@0 ((_ to_fp 8 24) RNE 1)))) (and (= r@0 (fp.sub RNE y@0 z@0)) (= (ControlFlow 0 2) (- 0 1)))) (= r@0 ((_ to_fp 8 24) RNE 2))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)