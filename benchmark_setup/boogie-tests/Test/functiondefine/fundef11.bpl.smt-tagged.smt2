(set-logic LIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun foo1 (Int) Int)
(define-fun foo ((x Int) ) Int (+ (foo1 x) 1))
(assert (forall ((x@@0 Int) ) (! (= (foo1 x@@0) (+ (foo x@@0) 2))
 :qid |fundef11bpl.6:15|
 :skolemid |0|
 :pattern ( (foo1 x@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun r@1 () Int)
(declare-fun x@@1 () Int)
(declare-fun r@0 () Int)
(set-info :boogie-vc-id test)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (> r@1 0))))
(let ((anon3_Else_correct  (=> (>= 0 (foo x@@1)) (=> (and (= r@1 1) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (and (> (foo x@@1) 0) (= r@0 (+ (foo x@@1) 2))) (and (= r@1 r@0) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))
anon0_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
