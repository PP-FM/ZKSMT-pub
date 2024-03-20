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
(define-fun Eight () Int 8)
(define-fun Double ((x Int) ) Int (- (* 3 x) x))
(declare-fun Five () Int)
(declare-fun f (Int) Int)
(declare-fun h (Int) Int)
(declare-fun g (Int) Int)
(declare-fun k (Int) Int)
(declare-fun Twice (Int) Int)
(assert (= Five 5))
(assert (forall ((x@@0 Int) ) (! (< (f x@@0) (h x@@0))
 :qid |fundef7bpl.21:15|
 :skolemid |3|
 :pattern ( (f x@@0))
)))
(assert (forall ((x@@1 Int) ) (! (< (g x@@1) (k x@@1))
 :qid |fundef7bpl.22:15|
 :skolemid |4|
 :pattern ( (g x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (Twice x@@2) (f x@@2))
 :qid |fundef7bpl.19:15|
 :skolemid |1|
)))
(assert (forall ((x@@3 Int) ) (! (= (Double x@@3) (g x@@3))
 :qid |fundef7bpl.20:15|
 :skolemid |2|
)))
(assert (forall ((x@@4 Int) ) (! (= (Twice x@@4) (+ x@@4 x@@4))
 :qid |fundef7bpl.5:16|
 :skolemid |0|
 :pattern ( (Twice x@@4))
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (g c) (* 2 c))) (=> (= (g c) (* 2 c)) (=> (= (ControlFlow 0 4) (- 0 3)) (< (Double c) (k c)))))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< (Double b) (k b)))))
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
(define-fun Eight () Int 8)
(define-fun Double ((x Int) ) Int (- (* 3 x) x))
(declare-fun Five () Int)
(declare-fun f (Int) Int)
(declare-fun h (Int) Int)
(declare-fun g (Int) Int)
(declare-fun k (Int) Int)
(declare-fun Twice (Int) Int)
(assert (= Five 5))
(assert (forall ((x@@0 Int) ) (! (< (f x@@0) (h x@@0))
 :qid |fundef7bpl.21:15|
 :skolemid |3|
 :pattern ( (f x@@0))
)))
(assert (forall ((x@@1 Int) ) (! (< (g x@@1) (k x@@1))
 :qid |fundef7bpl.22:15|
 :skolemid |4|
 :pattern ( (g x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (Twice x@@2) (f x@@2))
 :qid |fundef7bpl.19:15|
 :skolemid |1|
)))
(assert (forall ((x@@3 Int) ) (! (= (Double x@@3) (g x@@3))
 :qid |fundef7bpl.20:15|
 :skolemid |2|
)))
(assert (forall ((x@@4 Int) ) (! (= (Twice x@@4) (+ x@@4 x@@4))
 :qid |fundef7bpl.5:16|
 :skolemid |0|
 :pattern ( (Twice x@@4))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (* 8 Five) (* 5 Eight)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
