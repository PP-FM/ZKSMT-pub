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
(declare-fun x@0 () Int)
(set-info :boogie-vc-id M)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_LoopBody_correct true))
(let ((anon3_LoopDone_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= 0 0)) (=> (= 0 0) (=> (= (ControlFlow 0 2) (- 0 1)) (not (= x@0 x@0)))))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 2) anon3_LoopDone_correct) (=> (= (ControlFlow 0 5) 4) anon3_LoopBody_correct))))
anon0_correct))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)