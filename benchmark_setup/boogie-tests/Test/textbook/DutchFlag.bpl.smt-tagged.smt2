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
(declare-fun l () Int)
(declare-fun result@0 () Int)
(declare-fun r () Int)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun A@5 () |T@[Int]Int|)
(declare-fun A () |T@[Int]Int|)
(declare-fun i@0 () Int)
(declare-fun j@1 () Int)
(declare-fun A@2 () |T@[Int]Int|)
(declare-fun pv@0 () Int)
(declare-fun tmp@2 () Int)
(declare-fun A@3 () |T@[Int]Int|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun A@4 () |T@[Int]Int|)
(declare-fun i@2 () Int)
(declare-fun j@3 () Int)
(declare-fun j@2 () Int)
(declare-fun i@1 () Int)
(declare-fun j@0 () Int)
(declare-fun tmp@0 () Int)
(declare-fun A@0 () |T@[Int]Int|)
(declare-fun A@1 () |T@[Int]Int|)
(declare-fun N () Int)
(set-info :boogie-vc-id Partition)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (<= l result@0) (< result@0 r))) (=> (and (<= l result@0) (< result@0 r)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (forall ((k Int) (j Int) ) (!  (=> (and (and (and (<= l k) (< k result@0)) (<= result@0 j)) (< j r)) (<= (|Select__T@[Int]Int_| A@5 k) (|Select__T@[Int]Int_| A@5 j)))
 :qid |DutchFlagbpl.19:19|
 :skolemid |0|
))) (=> (forall ((k@@0 Int) (j@@0 Int) ) (!  (=> (and (and (and (<= l k@@0) (< k@@0 result@0)) (<= result@0 j@@0)) (< j@@0 r)) (<= (|Select__T@[Int]Int_| A@5 k@@0) (|Select__T@[Int]Int_| A@5 j@@0)))
 :qid |DutchFlagbpl.19:19|
 :skolemid |0|
)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((k@@1 Int) ) (!  (=> (and (<= l k@@1) (< k@@1 result@0)) (<= (|Select__T@[Int]Int_| A@5 k@@1) (|Select__T@[Int]Int_| A l)))
 :qid |DutchFlagbpl.20:19|
 :skolemid |1|
))) (=> (forall ((k@@2 Int) ) (!  (=> (and (<= l k@@2) (< k@@2 result@0)) (<= (|Select__T@[Int]Int_| A@5 k@@2) (|Select__T@[Int]Int_| A l)))
 :qid |DutchFlagbpl.20:19|
 :skolemid |1|
)) (=> (= (ControlFlow 0 15) (- 0 14)) (forall ((k@@3 Int) ) (!  (=> (and (<= result@0 k@@3) (< k@@3 r)) (<= (|Select__T@[Int]Int_| A l) (|Select__T@[Int]Int_| A@5 k@@3)))
 :qid |DutchFlagbpl.21:19|
 :skolemid |2|
)))))))))))
(let ((exit_correct  (=> (and (and (= i@0 j@1) (= result@0 i@0)) (and (= A@5 A@2) (= (ControlFlow 0 19) 15))) GeneratedUnifiedExit_correct)))
(let ((C_correct  (=> (< i@0 j@1) (=> (and (and (and (< (|Select__T@[Int]Int_| A@2 (- j@1 1)) pv@0) (< pv@0 (|Select__T@[Int]Int_| A@2 i@0))) (= tmp@2 (|Select__T@[Int]Int_| A@2 i@0))) (and (= A@3 (|Store__T@[Int]Int_| A@2 i@0 (|Select__T@[Int]Int_| A@2 (- j@1 1)))) (= A@4 (|Store__T@[Int]Int_| A@3 (- j@1 1) tmp@2)))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (and (< (|Select__T@[Int]Int_| A@4 i@0) pv@0) (< pv@0 (|Select__T@[Int]Int_| A@4 (- j@1 1))))) (=> (and (< (|Select__T@[Int]Int_| A@4 i@0) pv@0) (< pv@0 (|Select__T@[Int]Int_| A@4 (- j@1 1)))) (=> (and (= i@2 (+ i@0 1)) (= j@3 (- j@1 1))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((k@@4 Int) ) (!  (=> (and (<= l k@@4) (< k@@4 i@2)) (<= (|Select__T@[Int]Int_| A@4 k@@4) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
))) (=> (forall ((k@@5 Int) ) (!  (=> (and (<= l k@@5) (< k@@5 i@2)) (<= (|Select__T@[Int]Int_| A@4 k@@5) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((k@@6 Int) ) (!  (=> (and (<= j@3 k@@6) (< k@@6 r)) (<= pv@0 (|Select__T@[Int]Int_| A@4 k@@6)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
))) (=> (forall ((k@@7 Int) ) (!  (=> (and (<= j@3 k@@7) (< k@@7 r)) (<= pv@0 (|Select__T@[Int]Int_| A@4 k@@7)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
)) (=> (= (ControlFlow 0 10) (- 0 9)) (and (and (<= l i@2) (<= i@2 j@3)) (< j@3 r))))))))))))))
(let ((B_correct  (=> (< i@0 j@1) (=> (and (<= pv@0 (|Select__T@[Int]Int_| A@2 (- j@1 1))) (= j@2 (- j@1 1))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall ((k@@8 Int) ) (!  (=> (and (<= l k@@8) (< k@@8 i@0)) (<= (|Select__T@[Int]Int_| A@2 k@@8) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
))) (=> (forall ((k@@9 Int) ) (!  (=> (and (<= l k@@9) (< k@@9 i@0)) (<= (|Select__T@[Int]Int_| A@2 k@@9) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((k@@10 Int) ) (!  (=> (and (<= j@2 k@@10) (< k@@10 r)) (<= pv@0 (|Select__T@[Int]Int_| A@2 k@@10)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
))) (=> (forall ((k@@11 Int) ) (!  (=> (and (<= j@2 k@@11) (< k@@11 r)) (<= pv@0 (|Select__T@[Int]Int_| A@2 k@@11)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (and (<= l i@0) (<= i@0 j@2)) (< j@2 r)))))))))))
(let ((A_correct  (=> (< i@0 j@1) (=> (and (<= (|Select__T@[Int]Int_| A@2 i@0) pv@0) (= i@1 (+ i@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((k@@12 Int) ) (!  (=> (and (<= l k@@12) (< k@@12 i@1)) (<= (|Select__T@[Int]Int_| A@2 k@@12) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
))) (=> (forall ((k@@13 Int) ) (!  (=> (and (<= l k@@13) (< k@@13 i@1)) (<= (|Select__T@[Int]Int_| A@2 k@@13) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((k@@14 Int) ) (!  (=> (and (<= j@1 k@@14) (< k@@14 r)) (<= pv@0 (|Select__T@[Int]Int_| A@2 k@@14)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
))) (=> (forall ((k@@15 Int) ) (!  (=> (and (<= j@1 k@@15) (< k@@15 r)) (<= pv@0 (|Select__T@[Int]Int_| A@2 k@@15)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (and (<= l i@1) (<= i@1 j@1)) (< j@1 r)))))))))))
(let ((LoopHead_correct  (=> (and (forall ((k@@16 Int) ) (!  (=> (and (<= l k@@16) (< k@@16 i@0)) (<= (|Select__T@[Int]Int_| A@2 k@@16) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
)) (forall ((k@@17 Int) ) (!  (=> (and (<= j@1 k@@17) (< k@@17 r)) (<= pv@0 (|Select__T@[Int]Int_| A@2 k@@17)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
))) (=> (and (and (<= l i@0) (<= i@0 j@1)) (< j@1 r)) (and (and (and (=> (= (ControlFlow 0 20) 2) A_correct) (=> (= (ControlFlow 0 20) 6) B_correct)) (=> (= (ControlFlow 0 20) 10) C_correct)) (=> (= (ControlFlow 0 20) 19) exit_correct))))))
(let ((anon0_correct  (=> (= pv@0 (|Select__T@[Int]Int_| A l)) (=> (and (and (= j@0 (- r 1)) (= tmp@0 (|Select__T@[Int]Int_| A l))) (and (= A@0 (|Store__T@[Int]Int_| A l (|Select__T@[Int]Int_| A j@0))) (= A@1 (|Store__T@[Int]Int_| A@0 j@0 tmp@0)))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((k@@18 Int) ) (!  (=> (and (<= l k@@18) (< k@@18 l)) (<= (|Select__T@[Int]Int_| A@1 k@@18) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
))) (=> (forall ((k@@19 Int) ) (!  (=> (and (<= l k@@19) (< k@@19 l)) (<= (|Select__T@[Int]Int_| A@1 k@@19) pv@0))
 :qid |DutchFlagbpl.39:20|
 :skolemid |3|
)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((k@@20 Int) ) (!  (=> (and (<= j@0 k@@20) (< k@@20 r)) (<= pv@0 (|Select__T@[Int]Int_| A@1 k@@20)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
))) (=> (forall ((k@@21 Int) ) (!  (=> (and (<= j@0 k@@21) (< k@@21 r)) (<= pv@0 (|Select__T@[Int]Int_| A@1 k@@21)))
 :qid |DutchFlagbpl.40:20|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (and (<= l l) (<= l j@0)) (< j@0 r))) (=> (and (and (<= l l) (<= l j@0)) (< j@0 r)) (=> (= (ControlFlow 0 21) 20) LoopHead_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (<= 0 l) (<= (+ l 2) r)) (<= r N)) (= (ControlFlow 0 25) 21)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
