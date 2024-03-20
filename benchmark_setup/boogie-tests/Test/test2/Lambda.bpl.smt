(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@0 () |T@[Int]Int|)
(declare-fun b@@1 () Bool)
(declare-fun c () Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= a@0 (|lambda#0| b@@1 c 7)) (=> (and b@@1 (= (ControlFlow 0 2) (- 0 1))) (= (|Select__T@[Int]Int_| a@0 3) (+ c 3))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| (|lambda#1| 0) 10))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m@0 () |T@[Int,t1]Int|)
(declare-fun t () T@t1)
(declare-fun t2 () T@t1)
(set-info :boogie-vc-id baz)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= m@0 (|lambda#2| t 12)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (|Select__T@[Int,t1]Int_| m@0 1 t) 1)) (=> (= (|Select__T@[Int,t1]Int_| m@0 1 t) 1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= t t2) (= (|Select__T@[Int,t1]Int_| m@0 1 t2) 12))) (=> (or (= t t2) (= (|Select__T@[Int,t1]Int_| m@0 1 t2) 12)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (|Select__T@[Int,t1]Int_| m@0 12 t2) 12)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
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
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m@0 () |T@[Int,t1]Int|)
(declare-fun t () T@t1)
(declare-fun t2 () T@t1)
(set-info :boogie-vc-id fail)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= m@0 (|lambda#2| t 12)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Select__T@[Int,t1]Int_| m@0 1 t2) 12)) (=> (= (|Select__T@[Int,t1]Int_| m@0 1 t2) 12) (=> (= (ControlFlow 0 2) (- 0 1)) (= (|Select__T@[Int,t1]Int_| m@0 1 t) 2)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@@1 () |T@[Int]Bool|)
(declare-fun b@@1 () |T@[Int]Bool|)
(set-info :boogie-vc-id a)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (|Select__T@[Int]Bool_| a@@1 1) (|Select__T@[Int]Bool_| b@@1 2)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Select__T@[Int]Bool_| (q@union a@@1 b@@1) 1)) (=> (|Select__T@[Int]Bool_| (q@union a@@1 b@@1) 1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Select__T@[Int]Bool_| (q@union a@@1 b@@1) 2)) (=> (|Select__T@[Int]Bool_| (q@union a@@1 b@@1) 2) (=> (not (|Select__T@[Int]Bool_| b@@1 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Select__T@[Int]Bool_| (diff a@@1 b@@1) 1)) (=> (|Select__T@[Int]Bool_| (diff a@@1 b@@1) 1) (=> (= (ControlFlow 0 2) (- 0 1)) (not (|Select__T@[Int]Bool_| (diff a@@1 b@@1) 2)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
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
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id nestedLambda)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
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
(declare-sort T@t1 0)
(declare-sort |T@[Int,t1]Int| 0)
(declare-fun |Select__T@[Int,t1]Int_| (|T@[Int,t1]Int| Int T@t1) Int)
(declare-fun |lambda#2| (T@t1 Int) |T@[Int,t1]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#4| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#6| (Int) |T@[Int]Int|)
(declare-fun |lambda#1| (Int) |T@[Int]Bool|)
(declare-fun |lambda#8| () |T@[Int]Bool|)
(declare-fun diff (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#5| (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Int Int) |T@[Int]Int|)
(declare-sort |T@[Int][Int]Int| 0)
(declare-fun |Select__T@[Int][Int]Int_| (|T@[Int][Int]Int| Int) |T@[Int]Int|)
(declare-fun |lambda#7| () |T@[Int][Int]Int|)
(declare-fun q@union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(assert (forall ((|l#0| T@t1) (|l#1| Int) (i Int) (tt T@t1) ) (! (= (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt) (ite (= tt |l#0|) i |l#1|))
 :qid |Lambdabpl.26:7|
 :skolemid |4|
 :pattern ( (|Select__T@[Int,t1]Int_| (|lambda#2| |l#0| |l#1|) i tt))
)))
(assert (forall ((|l#0@@0| |T@[Int]Bool|) (|l#1@@0| |T@[Int]Bool|) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x)  (or (|Select__T@[Int]Bool_| |l#0@@0| x) (|Select__T@[Int]Bool_| |l#1@@0| x)))
 :qid |Lambdabpl.48:15|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@0| |l#1@@0|) x))
)))
(assert (forall ((|l#0@@1| Int) (y Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y) (+ |l#0@@1| y))
 :qid |Lambdabpl.68:16|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@1|) y))
)))
(assert (forall ((|l#0@@2| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0) (> x@@0 |l#0@@2|))
 :qid |Lambdabpl.17:31|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#1| |l#0@@2|) x@@0))
)))
(assert (forall ((y@@0 Int) ) (! (= (|Select__T@[Int]Bool_| |lambda#8| y@@0) (= y@@0 y@@0))
 :qid |Lambdabpl.74:19|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| |lambda#8| y@@0))
)))
(assert (forall ((a |T@[Int]Bool|) (b |T@[Int]Bool|) ) (! (= (diff a b) (|lambda#5| a b))
 :qid |Lambdabpl.50:15|
 :skolemid |1|
 :pattern ( (diff a b))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Int) (|l#2| Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1) (ite |l#0@@3| (+ y@@1 |l#1@@1|) |l#2|))
 :qid |Lambdabpl.9:13|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3| |l#1@@1| |l#2|) y@@1))
)))
(assert (forall ((|l#0@@4| |T@[Int]Bool|) (|l#1@@2| |T@[Int]Bool|) (x@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1)  (and (|Select__T@[Int]Bool_| |l#0@@4| x@@1) (not (|Select__T@[Int]Bool_| |l#1@@2| x@@1))))
 :qid |Lambdabpl.50:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#5| |l#0@@4| |l#1@@2|) x@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (|Select__T@[Int][Int]Int_| |lambda#7| x@@2) (|lambda#6| x@@2))
 :qid |Lambdabpl.68:16|
 :skolemid |8|
 :pattern ( (|Select__T@[Int][Int]Int_| |lambda#7| x@@2))
)))
(assert (forall ((a@@0 |T@[Int]Bool|) (b@@0 |T@[Int]Bool|) ) (! (= (q@union a@@0 b@@0) (|lambda#4| a@@0 b@@0))
 :qid |Lambdabpl.48:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
