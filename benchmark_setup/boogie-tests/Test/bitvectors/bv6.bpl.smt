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
(declare-fun x@0 () (_ BitVec 32))
(declare-fun y () (_ BitVec 16))
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= x@0 (concat y y)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= ((_ extract 15 0) x@0) y)) (=> (= ((_ extract 15 0) x@0) y) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= x@0 (concat ((_ extract 15 0) x@0) y))) (=> (= x@0 (concat ((_ extract 15 0) x@0) y)) (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ extract 16 1) x@0) y)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
