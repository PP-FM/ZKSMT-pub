(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun modt (Int Int) Int)
(declare-fun q@abs (Int) Int)
(declare-fun mode (Int Int) Int)
(declare-fun divt (Int Int) Int)
(declare-fun dive (Int Int) Int)
(assert (forall ((a Int) (b Int) ) (!  (and (=> (<= 0 a) (and (<= 0 (modt a b)) (< (modt a b) (q@abs b)))) (=> (< a 0) (and (< (- 0 (q@abs b)) (modt a b)) (<= (modt a b) 0))))
 :qid |DivModbpl.16:15|
 :skolemid |2|
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (and (<= 0 (mode a@@0 b@@0)) (< (mode a@@0 b@@0) (q@abs b@@0)))
 :qid |DivModbpl.24:15|
 :skolemid |4|
)))
(assert (forall ((x Int) ) (! (= (q@abs x) (ite (<= 0 x) x (- 0 x)))
 :qid |DivModbpl.10:14|
 :skolemid |0|
 :pattern ( (q@abs x))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (! (= (+ (* (divt a@@1 b@@1) b@@1) (modt a@@1 b@@1)) a@@1)
 :qid |DivModbpl.15:15|
 :skolemid |1|
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (! (= (+ (* (dive a@@2 b@@2) b@@2) (mode a@@2 b@@2)) a@@2)
 :qid |DivModbpl.23:15|
 :skolemid |3|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun qq@0 () Int)
(declare-fun a@@3 () Int)
(declare-fun b@@3 () Int)
(declare-fun rr@0 () Int)
(declare-fun q@0 () Int)
(declare-fun r@0 () Int)
(set-info :boogie-vc-id T_from_E)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (and (= qq@0 (dive a@@3 b@@3)) (= rr@0 (mode a@@3 b@@3))) (and (= q@0 (ite  (or (<= 0 a@@3) (= rr@0 0)) qq@0 (ite (<= 0 b@@3) (+ qq@0 1) (- qq@0 1)))) (= r@0 (ite  (or (<= 0 a@@3) (= rr@0 0)) rr@0 (ite (<= 0 b@@3) (- rr@0 b@@3) (+ rr@0 b@@3)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (+ (* q@0 b@@3) r@0) a@@3)) (=> (= (+ (* q@0 b@@3) r@0) a@@3) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (<= 0 a@@3) (and (<= 0 r@0) (< r@0 (q@abs b@@3))))) (=> (=> (<= 0 a@@3) (and (<= 0 r@0) (< r@0 (q@abs b@@3)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< a@@3 0) (and (< (- 0 (q@abs b@@3)) r@0) (<= r@0 0)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= b@@3 0)) (= (ControlFlow 0 5) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
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
(declare-fun modt (Int Int) Int)
(declare-fun q@abs (Int) Int)
(declare-fun mode (Int Int) Int)
(declare-fun divt (Int Int) Int)
(declare-fun dive (Int Int) Int)
(assert (forall ((a Int) (b Int) ) (!  (and (=> (<= 0 a) (and (<= 0 (modt a b)) (< (modt a b) (q@abs b)))) (=> (< a 0) (and (< (- 0 (q@abs b)) (modt a b)) (<= (modt a b) 0))))
 :qid |DivModbpl.16:15|
 :skolemid |2|
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (and (<= 0 (mode a@@0 b@@0)) (< (mode a@@0 b@@0) (q@abs b@@0)))
 :qid |DivModbpl.24:15|
 :skolemid |4|
)))
(assert (forall ((x Int) ) (! (= (q@abs x) (ite (<= 0 x) x (- 0 x)))
 :qid |DivModbpl.10:14|
 :skolemid |0|
 :pattern ( (q@abs x))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (! (= (+ (* (divt a@@1 b@@1) b@@1) (modt a@@1 b@@1)) a@@1)
 :qid |DivModbpl.15:15|
 :skolemid |1|
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (! (= (+ (* (dive a@@2 b@@2) b@@2) (mode a@@2 b@@2)) a@@2)
 :qid |DivModbpl.23:15|
 :skolemid |3|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun qq@0 () Int)
(declare-fun a@@3 () Int)
(declare-fun b@@3 () Int)
(declare-fun rr@0 () Int)
(declare-fun q@0 () Int)
(declare-fun r@0 () Int)
(set-info :boogie-vc-id E_from_T)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (and (= qq@0 (divt a@@3 b@@3)) (= rr@0 (modt a@@3 b@@3))) (and (= q@0 (ite (<= 0 rr@0) qq@0 (ite (< 0 b@@3) (- qq@0 1) (+ qq@0 1)))) (= r@0 (ite (<= 0 rr@0) rr@0 (ite (< 0 b@@3) (+ rr@0 b@@3) (- rr@0 b@@3)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (+ (* q@0 b@@3) r@0) a@@3)) (=> (= (+ (* q@0 b@@3) r@0) a@@3) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= 0 r@0)) (=> (<= 0 r@0) (=> (= (ControlFlow 0 2) (- 0 1)) (< r@0 (q@abs b@@3))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= b@@3 0)) (= (ControlFlow 0 5) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
