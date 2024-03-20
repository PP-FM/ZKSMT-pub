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
(declare-fun N () Int)
(assert (<= 0 N))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun a@5 () |T@[Int]Int|)
(declare-fun perm@7 () |T@[Int]Int|)
(declare-fun a () |T@[Int]Int|)
(declare-fun n@3 () Int)
(declare-fun a@0 () |T@[Int]Int|)
(declare-fun perm@2 () |T@[Int]Int|)
(declare-fun p@2 () Int)
(declare-fun p@1 () Int)
(declare-fun a@4 () |T@[Int]Int|)
(declare-fun perm@6 () |T@[Int]Int|)
(declare-fun a@1 () |T@[Int]Int|)
(declare-fun perm@3 () |T@[Int]Int|)
(declare-fun tmp@2 () Int)
(declare-fun a@2 () |T@[Int]Int|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun a@3 () |T@[Int]Int|)
(declare-fun tmp@3 () Int)
(declare-fun perm@4 () |T@[Int]Int|)
(declare-fun perm@5 () |T@[Int]Int|)
(declare-fun n@2 () Int)
(declare-fun n@0 () Int)
(declare-fun perm@0 () |T@[Int]Int|)
(declare-fun perm@1 () |T@[Int]Int|)
(declare-fun n@1 () Int)
(declare-fun perm () |T@[Int]Int|)
(set-info :boogie-vc-id BubbleSort)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 47) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 29) (- 0 32)) (forall ((i Int) (j Int) ) (!  (=> (and (and (<= 0 i) (<= i j)) (< j N)) (<= (|Select__T@[Int]Int_| a@5 i) (|Select__T@[Int]Int_| a@5 j)))
 :qid |Bubblebpl.28:19|
 :skolemid |0|
))) (=> (forall ((i@@0 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 i@@0) (<= i@@0 j@@0)) (< j@@0 N)) (<= (|Select__T@[Int]Int_| a@5 i@@0) (|Select__T@[Int]Int_| a@5 j@@0)))
 :qid |Bubblebpl.28:19|
 :skolemid |0|
)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@7 i@@1)) (< (|Select__T@[Int]Int_| perm@7 i@@1) N)))
 :qid |Bubblebpl.30:19|
 :skolemid |1|
))) (=> (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@7 i@@2)) (< (|Select__T@[Int]Int_| perm@7 i@@2) N)))
 :qid |Bubblebpl.30:19|
 :skolemid |1|
)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((i@@3 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 i@@3) (< i@@3 j@@1)) (< j@@1 N)) (not (= (|Select__T@[Int]Int_| perm@7 i@@3) (|Select__T@[Int]Int_| perm@7 j@@1))))
 :qid |Bubblebpl.31:19|
 :skolemid |2|
))) (=> (forall ((i@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@4) (< i@@4 j@@2)) (< j@@2 N)) (not (= (|Select__T@[Int]Int_| perm@7 i@@4) (|Select__T@[Int]Int_| perm@7 j@@2))))
 :qid |Bubblebpl.31:19|
 :skolemid |2|
)) (=> (= (ControlFlow 0 29) (- 0 28)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 N)) (= (|Select__T@[Int]Int_| a@5 i@@5) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@7 i@@5))))
 :qid |Bubblebpl.33:19|
 :skolemid |3|
)))))))))))
(let ((anon12_Then_correct  (=> (and (and (< n@3 0) (= a@5 a@0)) (and (= perm@7 perm@2) (= (ControlFlow 0 34) 29))) GeneratedUnifiedExit_correct)))
(let ((anon11_LoopDone_correct  (=> (and (and (not true) (= a@5 a@0)) (and (= perm@7 perm@2) (= (ControlFlow 0 33) 29))) GeneratedUnifiedExit_correct)))
(let ((anon8_correct  (=> (= p@2 (+ p@1 1)) (and (=> (= (ControlFlow 0 11) (- 0 16)) (and (<= 0 p@2) (<= p@2 n@3))) (=> (and (<= 0 p@2) (<= p@2 n@3)) (and (=> (= (ControlFlow 0 11) (- 0 15)) (forall ((i@@6 Int) (k Int) ) (!  (=> (and (and (and (<= (+ n@3 1) i@@6) (< i@@6 N)) (<= 0 k)) (< k i@@6)) (<= (|Select__T@[Int]Int_| a@4 k) (|Select__T@[Int]Int_| a@4 i@@6)))
 :qid |Bubblebpl.65:25|
 :skolemid |9|
))) (=> (forall ((i@@7 Int) (k@@0 Int) ) (!  (=> (and (and (and (<= (+ n@3 1) i@@7) (< i@@7 N)) (<= 0 k@@0)) (< k@@0 i@@7)) (<= (|Select__T@[Int]Int_| a@4 k@@0) (|Select__T@[Int]Int_| a@4 i@@7)))
 :qid |Bubblebpl.65:25|
 :skolemid |9|
)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@6 i@@8)) (< (|Select__T@[Int]Int_| perm@6 i@@8) N)))
 :qid |Bubblebpl.67:25|
 :skolemid |10|
))) (=> (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@6 i@@9)) (< (|Select__T@[Int]Int_| perm@6 i@@9) N)))
 :qid |Bubblebpl.67:25|
 :skolemid |10|
)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (forall ((i@@10 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 j@@3)) (< j@@3 N)) (not (= (|Select__T@[Int]Int_| perm@6 i@@10) (|Select__T@[Int]Int_| perm@6 j@@3))))
 :qid |Bubblebpl.68:25|
 :skolemid |11|
))) (=> (forall ((i@@11 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 j@@4)) (< j@@4 N)) (not (= (|Select__T@[Int]Int_| perm@6 i@@11) (|Select__T@[Int]Int_| perm@6 j@@4))))
 :qid |Bubblebpl.68:25|
 :skolemid |11|
)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 N)) (= (|Select__T@[Int]Int_| a@4 i@@12) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@6 i@@12))))
 :qid |Bubblebpl.70:25|
 :skolemid |12|
))) (=> (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 N)) (= (|Select__T@[Int]Int_| a@4 i@@13) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@6 i@@13))))
 :qid |Bubblebpl.70:25|
 :skolemid |12|
)) (=> (= (ControlFlow 0 11) (- 0 10)) (forall ((k@@1 Int) ) (!  (=> (and (<= 0 k@@1) (< k@@1 p@2)) (<= (|Select__T@[Int]Int_| a@4 k@@1) (|Select__T@[Int]Int_| a@4 p@2)))
 :qid |Bubblebpl.72:25|
 :skolemid |13|
))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (<= (|Select__T@[Int]Int_| a@1 p@1) (|Select__T@[Int]Int_| a@1 (+ p@1 1))) (= perm@6 perm@3)) (and (= a@4 a@1) (= (ControlFlow 0 18) 11))) anon8_correct)))
(let ((anon14_Then_correct  (=> (and (< (|Select__T@[Int]Int_| a@1 (+ p@1 1)) (|Select__T@[Int]Int_| a@1 p@1)) (= tmp@2 (|Select__T@[Int]Int_| a@1 p@1))) (=> (and (and (and (= a@2 (|Store__T@[Int]Int_| a@1 p@1 (|Select__T@[Int]Int_| a@1 (+ p@1 1)))) (= a@3 (|Store__T@[Int]Int_| a@2 (+ p@1 1) tmp@2))) (and (= tmp@3 (|Select__T@[Int]Int_| perm@3 p@1)) (= perm@4 (|Store__T@[Int]Int_| perm@3 p@1 (|Select__T@[Int]Int_| perm@3 (+ p@1 1)))))) (and (and (= perm@5 (|Store__T@[Int]Int_| perm@4 (+ p@1 1) tmp@3)) (= perm@6 perm@5)) (and (= a@4 a@3) (= (ControlFlow 0 17) 11)))) anon8_correct))))
(let ((anon13_LoopBody_correct  (=> (< p@1 n@3) (and (=> (= (ControlFlow 0 19) 17) anon14_Then_correct) (=> (= (ControlFlow 0 19) 18) anon14_Else_correct)))))
(let ((anon13_LoopDone_correct  (=> (<= n@3 p@1) (and (=> (= (ControlFlow 0 5) (- 0 9)) (and (<= 0 n@3) (<= n@3 N))) (=> (and (<= 0 n@3) (<= n@3 N)) (and (=> (= (ControlFlow 0 5) (- 0 8)) (forall ((i@@14 Int) (k@@2 Int) ) (!  (=> (and (and (and (<= n@3 i@@14) (< i@@14 N)) (<= 0 k@@2)) (< k@@2 i@@14)) (<= (|Select__T@[Int]Int_| a@1 k@@2) (|Select__T@[Int]Int_| a@1 i@@14)))
 :qid |Bubblebpl.49:23|
 :skolemid |5|
))) (=> (forall ((i@@15 Int) (k@@3 Int) ) (!  (=> (and (and (and (<= n@3 i@@15) (< i@@15 N)) (<= 0 k@@3)) (< k@@3 i@@15)) (<= (|Select__T@[Int]Int_| a@1 k@@3) (|Select__T@[Int]Int_| a@1 i@@15)))
 :qid |Bubblebpl.49:23|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@3 i@@16)) (< (|Select__T@[Int]Int_| perm@3 i@@16) N)))
 :qid |Bubblebpl.51:23|
 :skolemid |6|
))) (=> (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@3 i@@17)) (< (|Select__T@[Int]Int_| perm@3 i@@17) N)))
 :qid |Bubblebpl.51:23|
 :skolemid |6|
)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((i@@18 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 i@@18) (< i@@18 j@@5)) (< j@@5 N)) (not (= (|Select__T@[Int]Int_| perm@3 i@@18) (|Select__T@[Int]Int_| perm@3 j@@5))))
 :qid |Bubblebpl.52:23|
 :skolemid |7|
))) (=> (forall ((i@@19 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 i@@19) (< i@@19 j@@6)) (< j@@6 N)) (not (= (|Select__T@[Int]Int_| perm@3 i@@19) (|Select__T@[Int]Int_| perm@3 j@@6))))
 :qid |Bubblebpl.52:23|
 :skolemid |7|
)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 N)) (= (|Select__T@[Int]Int_| a@1 i@@20) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@3 i@@20))))
 :qid |Bubblebpl.54:23|
 :skolemid |8|
))))))))))))))
(let ((anon13_LoopHead_correct  (=> (and (and (and (<= 0 p@1) (<= p@1 n@3)) (forall ((i@@21 Int) (k@@4 Int) ) (!  (=> (and (and (and (<= (+ n@3 1) i@@21) (< i@@21 N)) (<= 0 k@@4)) (< k@@4 i@@21)) (<= (|Select__T@[Int]Int_| a@1 k@@4) (|Select__T@[Int]Int_| a@1 i@@21)))
 :qid |Bubblebpl.65:25|
 :skolemid |9|
))) (and (and (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@3 i@@22)) (< (|Select__T@[Int]Int_| perm@3 i@@22) N)))
 :qid |Bubblebpl.67:25|
 :skolemid |10|
)) (forall ((i@@23 Int) (j@@7 Int) ) (!  (=> (and (and (<= 0 i@@23) (< i@@23 j@@7)) (< j@@7 N)) (not (= (|Select__T@[Int]Int_| perm@3 i@@23) (|Select__T@[Int]Int_| perm@3 j@@7))))
 :qid |Bubblebpl.68:25|
 :skolemid |11|
))) (and (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 N)) (= (|Select__T@[Int]Int_| a@1 i@@24) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@3 i@@24))))
 :qid |Bubblebpl.70:25|
 :skolemid |12|
)) (forall ((k@@5 Int) ) (!  (=> (and (<= 0 k@@5) (< k@@5 p@1)) (<= (|Select__T@[Int]Int_| a@1 k@@5) (|Select__T@[Int]Int_| a@1 p@1)))
 :qid |Bubblebpl.72:25|
 :skolemid |13|
))))) (and (=> (= (ControlFlow 0 20) 5) anon13_LoopDone_correct) (=> (= (ControlFlow 0 20) 19) anon13_LoopBody_correct)))))
(let ((anon12_Else_correct  (=> (<= 0 n@3) (and (=> (= (ControlFlow 0 21) (- 0 27)) (and (<= 0 0) (<= 0 n@3))) (=> (and (<= 0 0) (<= 0 n@3)) (and (=> (= (ControlFlow 0 21) (- 0 26)) (forall ((i@@25 Int) (k@@6 Int) ) (!  (=> (and (and (and (<= (+ n@3 1) i@@25) (< i@@25 N)) (<= 0 k@@6)) (< k@@6 i@@25)) (<= (|Select__T@[Int]Int_| a@0 k@@6) (|Select__T@[Int]Int_| a@0 i@@25)))
 :qid |Bubblebpl.65:25|
 :skolemid |9|
))) (=> (forall ((i@@26 Int) (k@@7 Int) ) (!  (=> (and (and (and (<= (+ n@3 1) i@@26) (< i@@26 N)) (<= 0 k@@7)) (< k@@7 i@@26)) (<= (|Select__T@[Int]Int_| a@0 k@@7) (|Select__T@[Int]Int_| a@0 i@@26)))
 :qid |Bubblebpl.65:25|
 :skolemid |9|
)) (and (=> (= (ControlFlow 0 21) (- 0 25)) (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@2 i@@27)) (< (|Select__T@[Int]Int_| perm@2 i@@27) N)))
 :qid |Bubblebpl.67:25|
 :skolemid |10|
))) (=> (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@2 i@@28)) (< (|Select__T@[Int]Int_| perm@2 i@@28) N)))
 :qid |Bubblebpl.67:25|
 :skolemid |10|
)) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((i@@29 Int) (j@@8 Int) ) (!  (=> (and (and (<= 0 i@@29) (< i@@29 j@@8)) (< j@@8 N)) (not (= (|Select__T@[Int]Int_| perm@2 i@@29) (|Select__T@[Int]Int_| perm@2 j@@8))))
 :qid |Bubblebpl.68:25|
 :skolemid |11|
))) (=> (forall ((i@@30 Int) (j@@9 Int) ) (!  (=> (and (and (<= 0 i@@30) (< i@@30 j@@9)) (< j@@9 N)) (not (= (|Select__T@[Int]Int_| perm@2 i@@30) (|Select__T@[Int]Int_| perm@2 j@@9))))
 :qid |Bubblebpl.68:25|
 :skolemid |11|
)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 N)) (= (|Select__T@[Int]Int_| a@0 i@@31) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@2 i@@31))))
 :qid |Bubblebpl.70:25|
 :skolemid |12|
))) (=> (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 N)) (= (|Select__T@[Int]Int_| a@0 i@@32) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@2 i@@32))))
 :qid |Bubblebpl.70:25|
 :skolemid |12|
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((k@@8 Int) ) (!  (=> (and (<= 0 k@@8) (< k@@8 0)) (<= (|Select__T@[Int]Int_| a@0 k@@8) (|Select__T@[Int]Int_| a@0 0)))
 :qid |Bubblebpl.72:25|
 :skolemid |13|
))) (=> (forall ((k@@9 Int) ) (!  (=> (and (<= 0 k@@9) (< k@@9 0)) (<= (|Select__T@[Int]Int_| a@0 k@@9) (|Select__T@[Int]Int_| a@0 0)))
 :qid |Bubblebpl.72:25|
 :skolemid |13|
)) (=> (= (ControlFlow 0 21) 20) anon13_LoopHead_correct))))))))))))))))
(let ((anon11_LoopBody_correct  (=> (= n@3 (- n@2 1)) (and (=> (= (ControlFlow 0 35) 34) anon12_Then_correct) (=> (= (ControlFlow 0 35) 21) anon12_Else_correct)))))
(let ((anon11_LoopHead_correct  (=> (and (<= 0 n@2) (<= n@2 N)) (=> (and (and (forall ((i@@33 Int) (k@@10 Int) ) (!  (=> (and (and (and (<= n@2 i@@33) (< i@@33 N)) (<= 0 k@@10)) (< k@@10 i@@33)) (<= (|Select__T@[Int]Int_| a@0 k@@10) (|Select__T@[Int]Int_| a@0 i@@33)))
 :qid |Bubblebpl.49:23|
 :skolemid |5|
)) (forall ((i@@34 Int) ) (!  (=> (and (<= 0 i@@34) (< i@@34 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@2 i@@34)) (< (|Select__T@[Int]Int_| perm@2 i@@34) N)))
 :qid |Bubblebpl.51:23|
 :skolemid |6|
))) (and (forall ((i@@35 Int) (j@@10 Int) ) (!  (=> (and (and (<= 0 i@@35) (< i@@35 j@@10)) (< j@@10 N)) (not (= (|Select__T@[Int]Int_| perm@2 i@@35) (|Select__T@[Int]Int_| perm@2 j@@10))))
 :qid |Bubblebpl.52:23|
 :skolemid |7|
)) (forall ((i@@36 Int) ) (!  (=> (and (<= 0 i@@36) (< i@@36 N)) (= (|Select__T@[Int]Int_| a@0 i@@36) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@2 i@@36))))
 :qid |Bubblebpl.54:23|
 :skolemid |8|
)))) (and (=> (= (ControlFlow 0 36) 33) anon11_LoopDone_correct) (=> (= (ControlFlow 0 36) 35) anon11_LoopBody_correct))))))
(let ((anon10_LoopDone_correct  (=> (<= N n@0) (and (=> (= (ControlFlow 0 37) (- 0 42)) (and (<= 0 n@0) (<= n@0 N))) (=> (and (<= 0 n@0) (<= n@0 N)) (and (=> (= (ControlFlow 0 37) (- 0 41)) (forall ((i@@37 Int) (k@@11 Int) ) (!  (=> (and (and (and (<= n@0 i@@37) (< i@@37 N)) (<= 0 k@@11)) (< k@@11 i@@37)) (<= (|Select__T@[Int]Int_| a k@@11) (|Select__T@[Int]Int_| a i@@37)))
 :qid |Bubblebpl.49:23|
 :skolemid |5|
))) (=> (forall ((i@@38 Int) (k@@12 Int) ) (!  (=> (and (and (and (<= n@0 i@@38) (< i@@38 N)) (<= 0 k@@12)) (< k@@12 i@@38)) (<= (|Select__T@[Int]Int_| a k@@12) (|Select__T@[Int]Int_| a i@@38)))
 :qid |Bubblebpl.49:23|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 37) (- 0 40)) (forall ((i@@39 Int) ) (!  (=> (and (<= 0 i@@39) (< i@@39 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@0 i@@39)) (< (|Select__T@[Int]Int_| perm@0 i@@39) N)))
 :qid |Bubblebpl.51:23|
 :skolemid |6|
))) (=> (forall ((i@@40 Int) ) (!  (=> (and (<= 0 i@@40) (< i@@40 N)) (and (<= 0 (|Select__T@[Int]Int_| perm@0 i@@40)) (< (|Select__T@[Int]Int_| perm@0 i@@40) N)))
 :qid |Bubblebpl.51:23|
 :skolemid |6|
)) (and (=> (= (ControlFlow 0 37) (- 0 39)) (forall ((i@@41 Int) (j@@11 Int) ) (!  (=> (and (and (<= 0 i@@41) (< i@@41 j@@11)) (< j@@11 N)) (not (= (|Select__T@[Int]Int_| perm@0 i@@41) (|Select__T@[Int]Int_| perm@0 j@@11))))
 :qid |Bubblebpl.52:23|
 :skolemid |7|
))) (=> (forall ((i@@42 Int) (j@@12 Int) ) (!  (=> (and (and (<= 0 i@@42) (< i@@42 j@@12)) (< j@@12 N)) (not (= (|Select__T@[Int]Int_| perm@0 i@@42) (|Select__T@[Int]Int_| perm@0 j@@12))))
 :qid |Bubblebpl.52:23|
 :skolemid |7|
)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (forall ((i@@43 Int) ) (!  (=> (and (<= 0 i@@43) (< i@@43 N)) (= (|Select__T@[Int]Int_| a i@@43) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@0 i@@43))))
 :qid |Bubblebpl.54:23|
 :skolemid |8|
))) (=> (forall ((i@@44 Int) ) (!  (=> (and (<= 0 i@@44) (< i@@44 N)) (= (|Select__T@[Int]Int_| a i@@44) (|Select__T@[Int]Int_| a (|Select__T@[Int]Int_| perm@0 i@@44))))
 :qid |Bubblebpl.54:23|
 :skolemid |8|
)) (=> (= (ControlFlow 0 37) 36) anon11_LoopHead_correct))))))))))))))
(let ((anon10_LoopBody_correct  (=> (< n@0 N) (=> (and (= perm@1 (|Store__T@[Int]Int_| perm@0 n@0 n@0)) (= n@1 (+ n@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= n@1 N)) (=> (<= n@1 N) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((i@@45 Int) ) (!  (=> (and (<= 0 i@@45) (< i@@45 n@1)) (= (|Select__T@[Int]Int_| perm@1 i@@45) i@@45))
 :qid |Bubblebpl.40:23|
 :skolemid |4|
)))))))))
(let ((anon10_LoopHead_correct  (=> (and (<= n@0 N) (forall ((i@@46 Int) ) (!  (=> (and (<= 0 i@@46) (< i@@46 n@0)) (= (|Select__T@[Int]Int_| perm@0 i@@46) i@@46))
 :qid |Bubblebpl.40:23|
 :skolemid |4|
))) (and (=> (= (ControlFlow 0 43) 37) anon10_LoopDone_correct) (=> (= (ControlFlow 0 43) 2) anon10_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 44) (- 0 46)) (<= 0 N)) (=> (<= 0 N) (and (=> (= (ControlFlow 0 44) (- 0 45)) (forall ((i@@47 Int) ) (!  (=> (and (<= 0 i@@47) (< i@@47 0)) (= (|Select__T@[Int]Int_| perm i@@47) i@@47))
 :qid |Bubblebpl.40:23|
 :skolemid |4|
))) (=> (forall ((i@@48 Int) ) (!  (=> (and (<= 0 i@@48) (< i@@48 0)) (= (|Select__T@[Int]Int_| perm i@@48) i@@48))
 :qid |Bubblebpl.40:23|
 :skolemid |4|
)) (=> (= (ControlFlow 0 44) 43) anon10_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 47) 44) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
