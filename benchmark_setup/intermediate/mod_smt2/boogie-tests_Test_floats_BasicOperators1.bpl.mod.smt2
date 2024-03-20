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
(declare-fun z@0 () (_ FloatingPoint 8 24))
(declare-fun x () (_ FloatingPoint 8 24))
(declare-fun y () (_ FloatingPoint 8 24))
(declare-fun z@1 () (_ FloatingPoint 8 24))
(declare-fun z@2 () (_ FloatingPoint 8 24))
(declare-fun z@3 () (_ FloatingPoint 8 24))
(declare-fun z@4 () (_ FloatingPoint 8 24))
(declare-fun z@5 () (_ FloatingPoint 8 24))
(declare-fun z@6 () (_ FloatingPoint 8 24))
(declare-fun z@7 () (_ FloatingPoint 8 24))
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= z@0 (fp.add RNE x y)) (= z@1 (fp.sub RNE x y))) (=> (and (and (= z@2 (fp.mul RNE x y)) (not (fp.eq y (fp (_ bv0 1) (_ bv0 8) (_ bv0 23))))) (and (= z@3 (fp.div RNE x y)) (= z@4 (fp.add RNE (fp.add RNE (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))) (fp (_ bv0 1) (_ bv0 8) (_ bv0 23)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= z@4 (fp (_ bv0 1) (_ bv128 8) (_ bv0 23)))) (=> (= z@4 (fp (_ bv0 1) (_ bv128 8) (_ bv0 23))) (=> (= z@5 (fp.sub RNE (fp (_ bv0 1) (_ bv128 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= z@5 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (=> (= z@5 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))) (=> (= z@6 (fp.mul RNE (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= z@6 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (=> (= z@6 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))) (=> (and (= z@7 (fp.div RNE (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)) (fp (_ bv0 1) (_ bv127 8) (_ bv0 23)))) (= (ControlFlow 0 2) (- 0 1))) (= z@7 (fp (_ bv0 1) (_ bv127 8) (_ bv0 23))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)