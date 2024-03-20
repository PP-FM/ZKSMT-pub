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
(declare-fun c@0 () (_ FloatingPoint 8 24))
(declare-fun a () (_ FloatingPoint 8 24))
(declare-fun b () (_ FloatingPoint 8 24))
(declare-fun d@0 () (_ FloatingPoint 8 24))
(declare-fun c@1 () (_ FloatingPoint 8 24))
(declare-fun d@1 () (_ FloatingPoint 8 24))
(declare-fun c@2 () (_ FloatingPoint 8 24))
(declare-fun d@2 () (_ FloatingPoint 8 24))
(declare-fun c@3 () (_ FloatingPoint 8 24))
(declare-fun d@3 () (_ FloatingPoint 8 24))
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= c@0 (fp.add RNE a b)) (= d@0 (fp.add RNE a b))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= c@0 d@0)) (=> (= c@0 d@0) (=> (and (= c@1 (fp.sub RNE a b)) (= d@1 (fp.sub RNE a b))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= c@1 d@1)) (=> (= c@1 d@1) (=> (and (= c@2 (fp.mul RNE a b)) (= d@2 (fp.mul RNE a b))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= c@2 d@2)) (=> (= c@2 d@2) (=> (= c@3 (fp.div RNE a b)) (=> (and (= d@3 (fp.div RNE a b)) (= (ControlFlow 0 2) (- 0 1))) (= c@3 d@3))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= b (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))) (= (ControlFlow 0 6) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)