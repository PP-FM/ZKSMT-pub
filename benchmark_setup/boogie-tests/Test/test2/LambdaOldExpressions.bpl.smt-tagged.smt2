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
(declare-sort |T@[Bool]Bool| 0)
(declare-fun |Select__T@[Bool]Bool_| (|T@[Bool]Bool| Bool) Bool)
(declare-fun |lambda#1| (Bool Bool Bool Bool Bool) |T@[Bool]Bool|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int Int) |T@[Int]Bool|)
(declare-fun |lambda#2| (Bool) |T@[Bool]Bool|)
(declare-fun |lambda#8| (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Bool) |T@[Bool]Bool|)
(assert (forall ((|l#0| Bool) (|l#1| Bool) (|l#2| Bool) (|l#3| Bool) (|l#4| Bool) (x Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x) |l#4|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |1|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0) (< x@@0 |l#2@@0|))
 :qid |LambdaOldExpressionsbpl.59:5|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Bool) (x@@1 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1) |l#0@@1|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |2|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1))
)))
(assert (forall ((|l#0@@2| Bool) (x@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2) |l#0@@2|)
 :qid |LambdaOldExpressionsbpl.47:41|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Bool) (x@@3 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3) |l#1@@1|)
 :qid |LambdaOldExpressionsbpl.9:59|
 :skolemid |0|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun b () Bool)
(set-info :boogie-vc-id p0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= b@0  (not b)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Select__T@[Bool]Bool_| (|lambda#2| b) true)) (=> (|Select__T@[Bool]Bool_| (|lambda#2| b) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (not (|Select__T@[Bool]Bool_| (|lambda#2| b@0) true))) (=> (not (|Select__T@[Bool]Bool_| (|lambda#2| b@0) true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Select__T@[Bool]Bool_| (|lambda#0|  (not b@0) b) true)) (=> (|Select__T@[Bool]Bool_| (|lambda#0|  (not b@0) b) true) (=> (= (ControlFlow 0 2) (- 0 1)) (not (|Select__T@[Bool]Bool_| (|lambda#1| b@0 b@0 b@0 b b@0) true))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and b (= (ControlFlow 0 6) 2)) anon0_correct)))
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
(declare-sort |T@[Bool]Bool| 0)
(declare-fun |Select__T@[Bool]Bool_| (|T@[Bool]Bool| Bool) Bool)
(declare-fun |lambda#1| (Bool Bool Bool Bool Bool) |T@[Bool]Bool|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int Int) |T@[Int]Bool|)
(declare-fun |lambda#2| (Bool) |T@[Bool]Bool|)
(declare-fun |lambda#8| (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Bool) |T@[Bool]Bool|)
(assert (forall ((|l#0| Bool) (|l#1| Bool) (|l#2| Bool) (|l#3| Bool) (|l#4| Bool) (x Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x) |l#4|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |1|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0) (< x@@0 |l#2@@0|))
 :qid |LambdaOldExpressionsbpl.59:5|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Bool) (x@@1 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1) |l#0@@1|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |2|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1))
)))
(assert (forall ((|l#0@@2| Bool) (x@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2) |l#0@@2|)
 :qid |LambdaOldExpressionsbpl.47:41|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Bool) (x@@3 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3) |l#1@@1|)
 :qid |LambdaOldExpressionsbpl.9:59|
 :skolemid |0|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun b () Bool)
(set-info :boogie-vc-id p1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= b@0  (not b)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (|Select__T@[Bool]Bool_| (|lambda#2| b) true))) (=> (not (|Select__T@[Bool]Bool_| (|lambda#2| b) true)) (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Bool]Bool_| (|lambda#2| b) true)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not b) (= (ControlFlow 0 4) 2)) anon0_correct)))
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
(declare-sort |T@[Bool]Bool| 0)
(declare-fun |Select__T@[Bool]Bool_| (|T@[Bool]Bool| Bool) Bool)
(declare-fun |lambda#1| (Bool Bool Bool Bool Bool) |T@[Bool]Bool|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int Int) |T@[Int]Bool|)
(declare-fun |lambda#2| (Bool) |T@[Bool]Bool|)
(declare-fun |lambda#8| (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Bool) |T@[Bool]Bool|)
(assert (forall ((|l#0| Bool) (|l#1| Bool) (|l#2| Bool) (|l#3| Bool) (|l#4| Bool) (x Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x) |l#4|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |1|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0) (< x@@0 |l#2@@0|))
 :qid |LambdaOldExpressionsbpl.59:5|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Bool) (x@@1 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1) |l#0@@1|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |2|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1))
)))
(assert (forall ((|l#0@@2| Bool) (x@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2) |l#0@@2|)
 :qid |LambdaOldExpressionsbpl.47:41|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Bool) (x@@3 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3) |l#1@@1|)
 :qid |LambdaOldExpressionsbpl.9:59|
 :skolemid |0|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun b () Bool)
(set-info :boogie-vc-id p2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= b@0  (not b)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Select__T@[Bool]Bool_| (|lambda#2| (= b  (not b@0))) true)) (=> (|Select__T@[Bool]Bool_| (|lambda#2| (= b  (not b@0))) true) (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Bool]Bool_| (|lambda#2| (= b  (not b@0))) true)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and b (= (ControlFlow 0 4) 2)) anon0_correct)))
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
(declare-sort |T@[Bool]Bool| 0)
(declare-fun |Select__T@[Bool]Bool_| (|T@[Bool]Bool| Bool) Bool)
(declare-fun |lambda#1| (Bool Bool Bool Bool Bool) |T@[Bool]Bool|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int Int) |T@[Int]Bool|)
(declare-fun |lambda#2| (Bool) |T@[Bool]Bool|)
(declare-fun |lambda#8| (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Bool) |T@[Bool]Bool|)
(assert (forall ((|l#0| Bool) (|l#1| Bool) (|l#2| Bool) (|l#3| Bool) (|l#4| Bool) (x Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x) |l#4|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |1|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0) (< x@@0 |l#2@@0|))
 :qid |LambdaOldExpressionsbpl.59:5|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Bool) (x@@1 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1) |l#0@@1|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |2|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1))
)))
(assert (forall ((|l#0@@2| Bool) (x@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2) |l#0@@2|)
 :qid |LambdaOldExpressionsbpl.47:41|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Bool) (x@@3 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3) |l#1@@1|)
 :qid |LambdaOldExpressionsbpl.9:59|
 :skolemid |0|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun b () Bool)
(set-info :boogie-vc-id p3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= b@0  (not b)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Select__T@[Int]Bool_| (|lambda#8| (= b  (not b@0))) 15)) (=> (|Select__T@[Int]Bool_| (|lambda#8| (= b  (not b@0))) 15) (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| (|lambda#8| (= b  (not b@0))) 15)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and b (= (ControlFlow 0 4) 2)) anon0_correct)))
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
(declare-sort |T@[Bool]Bool| 0)
(declare-fun |Select__T@[Bool]Bool_| (|T@[Bool]Bool| Bool) Bool)
(declare-fun |lambda#1| (Bool Bool Bool Bool Bool) |T@[Bool]Bool|)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#10| (Int Int Int) |T@[Int]Bool|)
(declare-fun |lambda#2| (Bool) |T@[Bool]Bool|)
(declare-fun |lambda#8| (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool Bool) |T@[Bool]Bool|)
(assert (forall ((|l#0| Bool) (|l#1| Bool) (|l#2| Bool) (|l#3| Bool) (|l#4| Bool) (x Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x) |l#4|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |1|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) x))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (x@@0 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0) (< x@@0 |l#2@@0|))
 :qid |LambdaOldExpressionsbpl.59:5|
 :skolemid |4|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#10| |l#0@@0| |l#1@@0| |l#2@@0|) x@@0))
)))
(assert (forall ((|l#0@@1| Bool) (x@@1 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1) |l#0@@1|)
 :qid |LambdaOldExpressionsbpl.3:5|
 :skolemid |2|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#2| |l#0@@1|) x@@1))
)))
(assert (forall ((|l#0@@2| Bool) (x@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2) |l#0@@2|)
 :qid |LambdaOldExpressionsbpl.47:41|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#8| |l#0@@2|) x@@2))
)))
(assert (forall ((|l#0@@3| Bool) (|l#1@@1| Bool) (x@@3 Bool) ) (! (= (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3) |l#1@@1|)
 :qid |LambdaOldExpressionsbpl.9:59|
 :skolemid |0|
 :pattern ( (|Select__T@[Bool]Bool_| (|lambda#0| |l#0@@3| |l#1@@1|) x@@3))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun h () Int)
(set-info :boogie-vc-id TestAttributeParameters)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| (|lambda#10| h h 100) 23))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
