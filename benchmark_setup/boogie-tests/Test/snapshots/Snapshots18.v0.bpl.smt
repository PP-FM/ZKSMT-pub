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
(set-info :boogie-vc-id M)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon4_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (not (= 2 2)))))
(let ((anon5_LoopDone_correct  (=> (and (not true) (= (ControlFlow 0 5) 4)) anon4_correct)))
(let ((anon5_LoopBody_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= 0 0))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) 5) anon5_LoopDone_correct) (=> (= (ControlFlow 0 6) 2) anon5_LoopBody_correct))))
anon0_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
