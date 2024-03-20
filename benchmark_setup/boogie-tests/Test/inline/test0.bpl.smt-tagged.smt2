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
(declare-fun Five () Int)
(declare-fun f (Int) Int)
(declare-fun h (Int) Int)
(declare-fun g (Int) Int)
(declare-fun k (Int) Int)
(declare-fun Twice (Int) Int)
(assert (= Five 5))
(assert (forall ((x Int) ) (! (< (f x) (h x))
 :qid |test0bpl.21:15|
 :skolemid |3|
 :pattern ( (f x))
)))
(assert (forall ((x@@0 Int) ) (! (< (g x@@0) (k x@@0))
 :qid |test0bpl.22:15|
 :skolemid |4|
 :pattern ( (g x@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (Twice x@@1) (f x@@1))
 :qid |test0bpl.19:15|
 :skolemid |1|
)))
(assert (forall ((x@@2 Int) ) (! (= (- (* 3 x@@2) x@@2) (g x@@2))
 :qid |test0bpl.20:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 Int) ) (! (= (Twice x@@3) (+ x@@3 x@@3))
 :qid |test0bpl.5:16|
 :skolemid |0|
 :pattern ( (Twice x@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun c () Int)
(declare-fun b () Int)
(declare-fun a () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (g c) (* 2 c))) (=> (= (g c) (* 2 c)) (=> (= (ControlFlow 0 4) (- 0 3)) (< (- (* 3 c) c) (k c)))))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< (- (* 3 b) b) (k b)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (< (Twice a) (h a))) (=> (< (Twice a) (h a)) (and (=> (= (ControlFlow 0 6) 2) anon3_Then_correct) (=> (= (ControlFlow 0 6) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
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
(declare-fun Five () Int)
(declare-fun f (Int) Int)
(declare-fun h (Int) Int)
(declare-fun g (Int) Int)
(declare-fun k (Int) Int)
(declare-fun Twice (Int) Int)
(assert (= Five 5))
(assert (forall ((x Int) ) (! (< (f x) (h x))
 :qid |test0bpl.21:15|
 :skolemid |3|
 :pattern ( (f x))
)))
(assert (forall ((x@@0 Int) ) (! (< (g x@@0) (k x@@0))
 :qid |test0bpl.22:15|
 :skolemid |4|
 :pattern ( (g x@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (Twice x@@1) (f x@@1))
 :qid |test0bpl.19:15|
 :skolemid |1|
)))
(assert (forall ((x@@2 Int) ) (! (= (- (* 3 x@@2) x@@2) (g x@@2))
 :qid |test0bpl.20:15|
 :skolemid |2|
)))
(assert (forall ((x@@3 Int) ) (! (= (Twice x@@3) (+ x@@3 x@@3))
 :qid |test0bpl.5:16|
 :skolemid |0|
 :pattern ( (Twice x@@3))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (* 8 Five) (* 5 8)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
