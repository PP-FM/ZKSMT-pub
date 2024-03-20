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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= 3 3))))
(let ((anon4_Else_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (= 2 2)) (=> (= 2 2) (=> (= (ControlFlow 0 5) 2) anon3_correct)))))
(let ((anon4_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (not (= 1 1))) (=> (not (= 1 1)) (=> (= (ControlFlow 0 3) 2) anon3_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 7) 3) anon4_Then_correct) (=> (= (ControlFlow 0 7) 5) anon4_Else_correct))))
anon0_correct)))))
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
(set-info :boogie-vc-id N)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= 4 4))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
