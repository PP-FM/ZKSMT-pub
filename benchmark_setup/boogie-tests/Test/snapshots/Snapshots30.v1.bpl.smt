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
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (= 0 0)) (=> (= 0 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= 1 1)) (=> (= 1 1) (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (= 2 2))) (=> (not (= 2 2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= 3 3)) (=> (= 3 3) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= 4 4)) (=> (= 4 4) (=> (= (ControlFlow 0 2) (- 0 1)) (= 5 5))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 5))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
