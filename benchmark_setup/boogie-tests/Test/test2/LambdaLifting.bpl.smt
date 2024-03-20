(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int,Int,Bool]Bool| 0)
(declare-fun |Select__T@[Int,Int,Bool]Bool_| (|T@[Int,Int,Bool]Bool| Int Int Bool) Bool)
(declare-fun |lambda#8| (Int Int Int Bool) |T@[Int,Int,Bool]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#2| (Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int) |T@[Int]Int|)
(declare-sort |T@[Int,Int]Int| 0)
(declare-fun |Select__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int) Int)
(declare-fun |lambda#6| () |T@[Int,Int]Int|)
(declare-fun |lambda#7| () |T@[Int,Int]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int) |T@[Int]Bool|)
(declare-fun g (Int Int) Int)
(declare-fun |lambda#0| (Int) |T@[Int]Int|)
(declare-fun |lambda#12| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Bool) (x Int) (y Int) (z Bool) ) (! (= (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z) (ite (= y |l#0|) (> (+ x |l#1|) |l#2|) (= z |l#3|)))
 :qid |LambdaLiftingbpl.38:53|
 :skolemid |8|
 :pattern ( (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z))
)))
(assert (forall ((|l#0@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0) (+ x@@0 |l#0@@0|))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Int) (x@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1) (+ |l#0@@1| x@@1))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0) (+ x@@2 y@@0))
 :qid |LambdaLiftingbpl.30:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1) (+ y@@1 x@@3))
 :qid |LambdaLiftingbpl.31:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@0| Int) (x@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4) (forall ((u Int) ) (! (= x@@4 (g u |l#0@@2|))
 :qid |LambdaLiftingbpl.47:32|
 :skolemid |0|
 :pattern ( (g u |l#1@@0|))
)))
 :qid |LambdaLiftingbpl.45:21|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4))
)))
(assert (forall ((|l#0@@3| Int) (x@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5) |l#0@@3|)
 :qid |LambdaLiftingbpl.8:27|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5))
)))
(assert (forall ((|l#0@@4| Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2) (forall ((v Int) ) (! (= y@@2 (g v |l#0@@4|))
 :qid |LambdaLiftingbpl.50:32|
 :skolemid |2|
)))
 :qid |LambdaLiftingbpl.45:29|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f@0 () |T@[Int]Int|)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun g@0 () |T@[Int]Int|)
(declare-fun f@1 () |T@[Int]Int|)
(declare-fun g@1 () |T@[Int]Int|)
(set-info :boogie-vc-id ReducingLambdaBodies)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= f@0 (|lambda#0| (+ a b))) (= g@0 (|lambda#0| (+ b a)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= f@0 g@0)) (=> (= f@0 g@0) (=> (= f@1 (|lambda#2| a)) (=> (and (= g@1 (|lambda#3| a)) (= (ControlFlow 0 2) (- 0 1))) (= f@1 g@1))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort |T@[Int,Int,Bool]Bool| 0)
(declare-fun |Select__T@[Int,Int,Bool]Bool_| (|T@[Int,Int,Bool]Bool| Int Int Bool) Bool)
(declare-fun |lambda#8| (Int Int Int Bool) |T@[Int,Int,Bool]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#2| (Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int) |T@[Int]Int|)
(declare-sort |T@[Int,Int]Int| 0)
(declare-fun |Select__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int) Int)
(declare-fun |lambda#6| () |T@[Int,Int]Int|)
(declare-fun |lambda#7| () |T@[Int,Int]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int) |T@[Int]Bool|)
(declare-fun g (Int Int) Int)
(declare-fun |lambda#0| (Int) |T@[Int]Int|)
(declare-fun |lambda#12| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Bool) (x Int) (y Int) (z Bool) ) (! (= (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z) (ite (= y |l#0|) (> (+ x |l#1|) |l#2|) (= z |l#3|)))
 :qid |LambdaLiftingbpl.38:53|
 :skolemid |8|
 :pattern ( (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z))
)))
(assert (forall ((|l#0@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0) (+ x@@0 |l#0@@0|))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Int) (x@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1) (+ |l#0@@1| x@@1))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0) (+ x@@2 y@@0))
 :qid |LambdaLiftingbpl.30:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1) (+ y@@1 x@@3))
 :qid |LambdaLiftingbpl.31:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@0| Int) (x@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4) (forall ((u Int) ) (! (= x@@4 (g u |l#0@@2|))
 :qid |LambdaLiftingbpl.47:32|
 :skolemid |0|
 :pattern ( (g u |l#1@@0|))
)))
 :qid |LambdaLiftingbpl.45:21|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4))
)))
(assert (forall ((|l#0@@3| Int) (x@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5) |l#0@@3|)
 :qid |LambdaLiftingbpl.8:27|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5))
)))
(assert (forall ((|l#0@@4| Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2) (forall ((v Int) ) (! (= y@@2 (g v |l#0@@4|))
 :qid |LambdaLiftingbpl.50:32|
 :skolemid |2|
)))
 :qid |LambdaLiftingbpl.45:29|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f@0 () |T@[Int]Int|)
(declare-fun a () Int)
(declare-fun g@0 () |T@[Int]Int|)
(set-info :boogie-vc-id ReducingLambdaBodies2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= f@0 (|lambda#2| a)) (=> (and (= g@0 (|lambda#3| a)) (= (ControlFlow 0 2) (- 0 1))) (not (= f@0 g@0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort |T@[Int,Int,Bool]Bool| 0)
(declare-fun |Select__T@[Int,Int,Bool]Bool_| (|T@[Int,Int,Bool]Bool| Int Int Bool) Bool)
(declare-fun |lambda#8| (Int Int Int Bool) |T@[Int,Int,Bool]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#2| (Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int) |T@[Int]Int|)
(declare-sort |T@[Int,Int]Int| 0)
(declare-fun |Select__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int) Int)
(declare-fun |lambda#6| () |T@[Int,Int]Int|)
(declare-fun |lambda#7| () |T@[Int,Int]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int) |T@[Int]Bool|)
(declare-fun g (Int Int) Int)
(declare-fun |lambda#0| (Int) |T@[Int]Int|)
(declare-fun |lambda#12| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Bool) (x Int) (y Int) (z Bool) ) (! (= (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z) (ite (= y |l#0|) (> (+ x |l#1|) |l#2|) (= z |l#3|)))
 :qid |LambdaLiftingbpl.38:53|
 :skolemid |8|
 :pattern ( (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z))
)))
(assert (forall ((|l#0@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0) (+ x@@0 |l#0@@0|))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Int) (x@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1) (+ |l#0@@1| x@@1))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0) (+ x@@2 y@@0))
 :qid |LambdaLiftingbpl.30:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1) (+ y@@1 x@@3))
 :qid |LambdaLiftingbpl.31:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@0| Int) (x@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4) (forall ((u Int) ) (! (= x@@4 (g u |l#0@@2|))
 :qid |LambdaLiftingbpl.47:32|
 :skolemid |0|
 :pattern ( (g u |l#1@@0|))
)))
 :qid |LambdaLiftingbpl.45:21|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4))
)))
(assert (forall ((|l#0@@3| Int) (x@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5) |l#0@@3|)
 :qid |LambdaLiftingbpl.8:27|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5))
)))
(assert (forall ((|l#0@@4| Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2) (forall ((v Int) ) (! (= y@@2 (g v |l#0@@4|))
 :qid |LambdaLiftingbpl.50:32|
 :skolemid |2|
)))
 :qid |LambdaLiftingbpl.45:29|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f@0 () |T@[Int,Int]Int|)
(declare-fun g@0 () |T@[Int,Int]Int|)
(set-info :boogie-vc-id ReducingLambdaBodies3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= f@0 |lambda#6|) (=> (and (= g@0 |lambda#7|) (= (ControlFlow 0 2) (- 0 1))) (= f@0 g@0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort |T@[Int,Int,Bool]Bool| 0)
(declare-fun |Select__T@[Int,Int,Bool]Bool_| (|T@[Int,Int,Bool]Bool| Int Int Bool) Bool)
(declare-fun |lambda#8| (Int Int Int Bool) |T@[Int,Int,Bool]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#2| (Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int) |T@[Int]Int|)
(declare-sort |T@[Int,Int]Int| 0)
(declare-fun |Select__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int) Int)
(declare-fun |lambda#6| () |T@[Int,Int]Int|)
(declare-fun |lambda#7| () |T@[Int,Int]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int) |T@[Int]Bool|)
(declare-fun g (Int Int) Int)
(declare-fun |lambda#0| (Int) |T@[Int]Int|)
(declare-fun |lambda#12| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Bool) (x Int) (y Int) (z Bool) ) (! (= (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z) (ite (= y |l#0|) (> (+ x |l#1|) |l#2|) (= z |l#3|)))
 :qid |LambdaLiftingbpl.38:53|
 :skolemid |8|
 :pattern ( (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z))
)))
(assert (forall ((|l#0@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0) (+ x@@0 |l#0@@0|))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Int) (x@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1) (+ |l#0@@1| x@@1))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0) (+ x@@2 y@@0))
 :qid |LambdaLiftingbpl.30:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1) (+ y@@1 x@@3))
 :qid |LambdaLiftingbpl.31:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@0| Int) (x@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4) (forall ((u Int) ) (! (= x@@4 (g u |l#0@@2|))
 :qid |LambdaLiftingbpl.47:32|
 :skolemid |0|
 :pattern ( (g u |l#1@@0|))
)))
 :qid |LambdaLiftingbpl.45:21|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4))
)))
(assert (forall ((|l#0@@3| Int) (x@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5) |l#0@@3|)
 :qid |LambdaLiftingbpl.8:27|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5))
)))
(assert (forall ((|l#0@@4| Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2) (forall ((v Int) ) (! (= y@@2 (g v |l#0@@4|))
 :qid |LambdaLiftingbpl.50:32|
 :skolemid |2|
)))
 :qid |LambdaLiftingbpl.45:29|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f@0 () |T@[Int,Int,Bool]Bool|)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun g@0 () |T@[Int,Int,Bool]Bool|)
(set-info :boogie-vc-id MultibleBoundVars)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= f@0 (|lambda#8| (- a b) (+ a (* b a)) b (> a b))) (=> (and (= g@0 (|lambda#8| (- (+ b a) (* 2 b)) (+ (* a b) a) b (< b a))) (= (ControlFlow 0 2) (- 0 1))) (= f@0 g@0)))))
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
(declare-sort |T@[Int,Int,Bool]Bool| 0)
(declare-fun |Select__T@[Int,Int,Bool]Bool_| (|T@[Int,Int,Bool]Bool| Int Int Bool) Bool)
(declare-fun |lambda#8| (Int Int Int Bool) |T@[Int,Int,Bool]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#2| (Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int) |T@[Int]Int|)
(declare-sort |T@[Int,Int]Int| 0)
(declare-fun |Select__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int) Int)
(declare-fun |lambda#6| () |T@[Int,Int]Int|)
(declare-fun |lambda#7| () |T@[Int,Int]Int|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int) |T@[Int]Bool|)
(declare-fun g (Int Int) Int)
(declare-fun |lambda#0| (Int) |T@[Int]Int|)
(declare-fun |lambda#12| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Bool) (x Int) (y Int) (z Bool) ) (! (= (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z) (ite (= y |l#0|) (> (+ x |l#1|) |l#2|) (= z |l#3|)))
 :qid |LambdaLiftingbpl.38:53|
 :skolemid |8|
 :pattern ( (|Select__T@[Int,Int,Bool]Bool_| (|lambda#8| |l#0| |l#1| |l#2| |l#3|) x y z))
)))
(assert (forall ((|l#0@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0) (+ x@@0 |l#0@@0|))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Int) (x@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1) (+ |l#0@@1| x@@1))
 :qid |LambdaLiftingbpl.5:6|
 :skolemid |5|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1|) x@@1))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0) (+ x@@2 y@@0))
 :qid |LambdaLiftingbpl.30:15|
 :skolemid |6|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#6| x@@2 y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1) (+ y@@1 x@@3))
 :qid |LambdaLiftingbpl.31:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int,Int]Int_| |lambda#7| x@@3 y@@1))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@0| Int) (x@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4) (forall ((u Int) ) (! (= x@@4 (g u |l#0@@2|))
 :qid |LambdaLiftingbpl.47:32|
 :skolemid |0|
 :pattern ( (g u |l#1@@0|))
)))
 :qid |LambdaLiftingbpl.45:21|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@2| |l#1@@0|) x@@4))
)))
(assert (forall ((|l#0@@3| Int) (x@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5) |l#0@@3|)
 :qid |LambdaLiftingbpl.8:27|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0@@3|) x@@5))
)))
(assert (forall ((|l#0@@4| Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2) (forall ((v Int) ) (! (= y@@2 (g v |l#0@@4|))
 :qid |LambdaLiftingbpl.50:32|
 :skolemid |2|
)))
 :qid |LambdaLiftingbpl.45:29|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#12| |l#0@@4|) y@@2))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@0 () |T@[Int]Bool|)
(declare-fun w () Int)
(declare-fun b@0 () |T@[Int]Bool|)
(declare-fun |w'| () Int)
(declare-fun b@1 () |T@[Int]Bool|)
(set-info :boogie-vc-id |Triggers'|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= a@0 (|lambda#10| w w)) (= b@0 (|lambda#10| |w'| |w'|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (= w |w'|) (= a@0 b@0))) (=> (=> (= w |w'|) (= a@0 b@0)) (=> (and (and (= b@1 (|lambda#12| |w'|)) (= (ControlFlow 0 2) (- 0 1))) (= w |w'|)) (= a@0 b@1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
