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
(declare-fun b4 () Bool)
(declare-fun x@2 () Int)
(declare-fun b5 () Bool)
(declare-fun y@2 () Int)
(declare-fun b6 () Bool)
(declare-fun b7 () Bool)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun b1 () Bool)
(declare-fun b2 () Bool)
(declare-fun b3 () Bool)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> b4 (= x@2 0))) (=> (=> b4 (= x@2 0)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> b5 (= y@2 10))) (=> (=> b5 (= y@2 10)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> b6 (= x@2 10))) (=> (=> b6 (= x@2 10)) (=> (= (ControlFlow 0 6) (- 0 5)) (=> b7 (= y@2 11)))))))))))
(let ((Exit_correct  (=> (and (and (not (> x@0 0)) (= x@2 x@0)) (and (= y@2 y@0) (= (ControlFlow 0 10) 6))) GeneratedUnifiedExit_correct)))
(let ((Body_correct  (=> (> x@0 0) (=> (and (= x@1 (- x@0 1)) (= y@1 (+ y@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> b1 (< x@1 0))) (=> (=> b1 (< x@1 0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> b2 (>= x@1 0))) (=> (=> b2 (>= x@1 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> b3 (= (+ x@1 y@1) 10)))))))))))
(let ((Head_correct  (=> (=> b1 (< x@0 0)) (=> (and (=> b2 (>= x@0 0)) (=> b3 (= (+ x@0 y@0) 10))) (and (=> (= (ControlFlow 0 11) 2) Body_correct) (=> (= (ControlFlow 0 11) 10) Exit_correct))))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 12) (- 0 15)) (=> b1 (< 10 0))) (=> (=> b1 (< 10 0)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> b2 (>= 10 0))) (=> (=> b2 (>= 10 0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> b3 (= (+ 10 0) 10))) (=> (=> b3 (= (+ 10 0) 10)) (=> (= (ControlFlow 0 12) 11) Head_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 12) (- 15))))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 6) (- 8))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
(get-info :rlimit)
