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
(declare-fun x () Int)
(set-info :boogie-vc-id M)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_LoopBody_correct true))
(let ((anon3_LoopDone_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= 0 0)) (=> (= 0 0) (=> (= (ControlFlow 0 2) (- 0 1)) (= x 0))))))
(let ((anon0_correct  (=> (= x 0) (and (=> (= (ControlFlow 0 5) 2) anon3_LoopDone_correct) (=> (= (ControlFlow 0 5) 4) anon3_LoopBody_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
