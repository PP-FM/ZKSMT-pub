(set-logic UFLIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |lambda#0| (Int) |T@[Int]Int|)
(assert (forall ((|l#0| Int) (a Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#0| |l#0|) a) |l#0|)
 :qid |test7bpl.12:35|
 :skolemid |2|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#0| |l#0|) a))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun arr () |T@[Int]Int|)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$b$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((inline$b$0$a Int) ) (!  (=> (< inline$b$0$a 10) (= (|Select__T@[Int]Int_| arr inline$b$0$a) 0))
 :qid |unknown.0:0|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Int_| arr inline$b$0$a))
)))))
(let ((inline$b$0$anon0_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((inline$b$0$a@@0 Int) ) (!  (=> (< inline$b$0$a@@0 10) (= (|Select__T@[Int]Int_| arr inline$b$0$a@@0) 0))
 :qid |unknown.0:0|
 :skolemid |1|
 :pattern ( (|Select__T@[Int]Int_| arr inline$b$0$a@@0))
))) (=> (forall ((inline$b$0$a@@1 Int) ) (!  (=> (< inline$b$0$a@@1 10) (= (|Select__T@[Int]Int_| arr inline$b$0$a@@1) 0))
 :qid |unknown.0:0|
 :skolemid |1|
 :pattern ( (|Select__T@[Int]Int_| arr inline$b$0$a@@1))
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (= arr (|lambda#0| 10))) (=> (= arr (|lambda#0| 10)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (let ((inline$b$0$a@@2 42))
(= inline$b$0$a@@2 42))) (=> (let ((inline$b$0$a@@3 42))
(= inline$b$0$a@@3 42)) (=> (= (ControlFlow 0 3) 2) inline$b$0$Return_correct)))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 7) 3) inline$b$0$anon0_correct)))
anon0_correct))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 3) (- 6))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 3) (- 5))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
