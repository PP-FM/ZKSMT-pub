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
(declare-fun y@3 () Int)
(declare-fun x () Int)
(declare-fun y@0 () Int)
(declare-fun y@1 () Int)
(declare-fun y@2 () Int)
(set-info :boogie-vc-id Abs)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((Done_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= y@3 0))))
(let ((LabelB_correct  (=> (and (< x 0) (= y@0 (+ x 2))) (=> (and (and (= y@1 (+ y@0 3)) (= y@2 (- y@1 5))) (and (= y@3 y@2) (= (ControlFlow 0 4) 2))) Done_correct))))
(let ((LabelA_correct  (=> (<= 0 x) (=> (and (= y@3 x) (= (ControlFlow 0 3) 2)) Done_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 3) LabelA_correct) (=> (= (ControlFlow 0 5) 4) LabelB_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(set-info :boogie-vc-id BadCall)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((Done_correct true))
(let ((LabelB_correct  (=> (<= 0 x) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< x 20)) (=> (< x 20) (=> (= (ControlFlow 0 3) 1) Done_correct))))))
(let ((LabelA_correct  (=> (and (< x 50) (= (ControlFlow 0 2) 1)) Done_correct)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 2) LabelA_correct) (=> (= (ControlFlow 0 5) 3) LabelB_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(set-info :boogie-vc-id BadAssert)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) (< x 1000)) (=> (< x 1000) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< x 100)) (=> (< x 100) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< x 20)) (=> (< x 20) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< x 8)) (=> (< x 8) (and (=> (= (ControlFlow 0 2) (- 0 4)) (< x 12)) (=> (< x 12) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< x 9)) (=> (< x 9) (=> (= (ControlFlow 0 2) (- 0 1)) (< x 4))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (<= x 10) (= (ControlFlow 0 9) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 5))))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
