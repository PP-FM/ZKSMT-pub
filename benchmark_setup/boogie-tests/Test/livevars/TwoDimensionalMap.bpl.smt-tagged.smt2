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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort |T@[Int,Int]Int| 0)
(declare-fun AllMaps__1@0 () |T@[Int,Int]Int|)
(declare-fun |Store__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int Int) |T@[Int,Int]Int|)
(declare-fun |Select__T@[Int,Int]Int_| (|T@[Int,Int]Int| Int Int) Int)
(assert (forall ( ( ?x0 |T@[Int,Int]Int|) ( ?x1 Int) ( ?x2 Int) ( ?x3 Int)) (! (= (|Select__T@[Int,Int]Int_| (|Store__T@[Int,Int]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int,Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int) ( ?y2 Int) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[Int,Int]Int_| (|Store__T@[Int,Int]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[Int,Int]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun AllMaps__1 () |T@[Int,Int]Int|)
(declare-fun $tmp4@0 () Int)
(declare-fun local_0 () Int)
(declare-fun $tmp4 () Int)
(set-info :boogie-vc-id PoirotMain.Main_trace_1_trace_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((lab3_correct  (=> (and (= AllMaps__1@0 (|Store__T@[Int,Int]Int_| AllMaps__1 $tmp4@0 0 1)) (= (ControlFlow 0 2) (- 0 1))) (= (|Select__T@[Int,Int]Int_| AllMaps__1@0 local_0 0) 1))))
(let ((lab2_correct  (=> (= 1 1) (=> (and (= $tmp4@0 local_0) (= (ControlFlow 0 4) 2)) lab3_correct))))
(let ((lab1_correct  (=> (= 1 0) (=> (and (= $tmp4@0 $tmp4) (= (ControlFlow 0 3) 2)) lab3_correct))))
(let ((lab0_correct  (and (=> (= (ControlFlow 0 5) 3) lab1_correct) (=> (= (ControlFlow 0 5) 4) lab2_correct))))
lab0_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
