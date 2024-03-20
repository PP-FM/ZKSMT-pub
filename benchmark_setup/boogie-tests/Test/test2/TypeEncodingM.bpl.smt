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
(declare-sort |T@[Int]Bool| 0)
(declare-fun M@0 () |T@[Int]Bool|)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun M () |T@[Int]Bool|)
(declare-fun M@1 () |T@[Int]Bool|)
(declare-sort |T@[Int,Int]Bool| 0)
(declare-fun N@0 () |T@[Int,Int]Bool|)
(declare-fun |Store__T@[Int,Int]Bool_| (|T@[Int,Int]Bool| Int Int Bool) |T@[Int,Int]Bool|)
(declare-fun |Select__T@[Int,Int]Bool_| (|T@[Int,Int]Bool| Int Int) Bool)
(assert (forall ( ( ?x0 |T@[Int,Int]Bool|) ( ?x1 Int) ( ?x2 Int) ( ?x3 Bool)) (! (= (|Select__T@[Int,Int]Bool_| (|Store__T@[Int,Int]Bool_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int,Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int) ( ?y2 Int) ( ?x3 Bool)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[Int,Int]Bool_| (|Store__T@[Int,Int]Bool_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[Int,Int]Bool_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun N () |T@[Int,Int]Bool|)
(declare-fun N@1 () |T@[Int,Int]Bool|)
(declare-fun N@2 () |T@[Int,Int]Bool|)
(declare-sort T@TT 0)
(declare-sort |T@[Int,Bool]TT| 0)
(declare-fun |Select__T@[Int,Bool]TT_| (|T@[Int,Bool]TT| Int Bool) T@TT)
(declare-fun Z () |T@[Int,Bool]TT|)
(declare-fun t () T@TT)
(set-info :boogie-vc-id A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= M@0 (|Store__T@[Int]Bool_| M 10 true)) (=> (and (and (= M@1 (|Store__T@[Int]Bool_| M@0 20 false)) (= N@0 (|Store__T@[Int,Int]Bool_| N 10 20 true))) (and (= N@1 (|Store__T@[Int,Int]Bool_| N@0 10 21 false)) (= N@2 (|Store__T@[Int,Int]Bool_| N@1 11 20 false)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (|Select__T@[Int]Bool_| M@1 10)) (=> (|Select__T@[Int]Bool_| M@1 10) (and (=> (= (ControlFlow 0 2) (- 0 6)) (not (|Select__T@[Int]Bool_| M@1 20))) (=> (not (|Select__T@[Int]Bool_| M@1 20)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Select__T@[Int,Int]Bool_| N@2 10 20)) (=> (|Select__T@[Int,Int]Bool_| N@2 10 20) (and (=> (= (ControlFlow 0 2) (- 0 4)) (not (|Select__T@[Int,Int]Bool_| N@2 11 20))) (=> (not (|Select__T@[Int,Int]Bool_| N@2 11 20)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (|Select__T@[Int,Int]Bool_| N@2 10 21))) (=> (not (|Select__T@[Int,Int]Bool_| N@2 10 21)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (|Select__T@[Int,Bool]TT_| Z 10 true) t))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
