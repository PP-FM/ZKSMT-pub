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
(declare-fun ab@0 () Int)
(declare-fun b () Int)
(declare-fun a () Int)
(declare-fun abc@0 () Int)
(declare-fun c () Int)
(declare-fun e@0 () Int)
(declare-fun d () Int)
(set-info :boogie-vc-id SumFour)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= ab@0 (+ b a)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= ab@0 (+ a b))) (=> (= ab@0 (+ a b)) (=> (= abc@0 (+ ab@0 c)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= abc@0 (+ (+ a b) c))) (=> (= abc@0 (+ (+ a b) c)) (=> (= e@0 (+ abc@0 d)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= e@0 (+ (+ (+ a b) c) d))) (=> (= e@0 (+ (+ (+ a b) c) d)) (=> (= (ControlFlow 0 2) (- 0 1)) (= e@0 (+ (+ (+ a b) c) d))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)