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
(declare-sort |T@[Int]Int| 0)
(declare-fun array@0 () |T@[Int]Int|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun array () |T@[Int]Int|)
(declare-fun i () Int)
(declare-fun b3 () Bool)
(declare-fun b2 () Bool)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= array@0 (|Store__T@[Int]Int_| array i (* 2 i))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> b3 (> (|Select__T@[Int]Int_| array@0 i) 0))) (=> (=> b3 (> (|Select__T@[Int]Int_| array@0 i) 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((x Int) ) (!  (or (= x i) (= (|Select__T@[Int]Int_| array@0 x) (|Select__T@[Int]Int_| array x)))
 :qid |contractinferbpl.12:17|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Int_| array@0 x))
))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> b2 (> i 0)) (= (ControlFlow 0 4) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun b2 () Bool)
(declare-fun j () Int)
(declare-fun b3 () Bool)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun array@0 () |T@[Int]Int|)
(declare-fun array () |T@[Int]Int|)
(declare-fun result@0 () Int)
(declare-fun b1 () Bool)
(declare-fun b4 () Bool)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> b2 (> j 0))) (=> (=> b2 (> j 0)) (=> (and (and (=> b3 (> (|Select__T@[Int]Int_| array@0 j) 0)) (forall ((x Int) ) (!  (or (= x j) (= (|Select__T@[Int]Int_| array@0 x) (|Select__T@[Int]Int_| array x)))
 :qid |contractinferbpl.12:17|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Int_| array@0 x))
))) (and (= result@0 (|Select__T@[Int]Int_| array@0 j)) (= (ControlFlow 0 2) (- 0 1)))) (forall ((x@@0 Int) ) (!  (or (and b1 (= x@@0 j)) (= (|Select__T@[Int]Int_| array@0 x@@0) (|Select__T@[Int]Int_| array x@@0)))
 :qid |contractinferbpl.20:17|
 :skolemid |1|
 :pattern ( (|Select__T@[Int]Int_| array@0 x@@0))
)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> b4 (> j 0)) (= (ControlFlow 0 4) 2)) anon0_correct)))
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
