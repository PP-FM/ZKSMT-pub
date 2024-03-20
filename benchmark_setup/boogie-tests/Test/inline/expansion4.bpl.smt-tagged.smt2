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
(declare-fun foo (Int) Int)
(assert (forall ((x Int) ) (! (= (foo x) (ite (<= x 0) 1 (+ (foo (- x 1)) 2)))
 :qid |expansion4bpl.3:14|
 :skolemid |0|
 :pattern ( (foo x))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (foo 0) 1)) (=> (= (foo 0) 1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (foo 1) 3)) (=> (= (foo 1) 3) (=> (= (ControlFlow 0 2) (- 0 1)) (= (foo 2) 5))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
