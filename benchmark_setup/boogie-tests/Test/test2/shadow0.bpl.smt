(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun Inc2 (Int) Int)
(declare-fun ShadowInc2 (Int) Int)
(assert (forall ((x Int) ) (! (= (Inc2 x) (let ((|x'| (+ x 4)))
(- |x'| 2)))
 :qid |shadow0bpl.4:15|
 :skolemid |0|
 :pattern ( (Inc2 x))
)))
(assert (forall ((x@@0 Int) ) (! (= (ShadowInc2 x@@0) (let ((x@@1 (+ x@@0 4)))
(- x@@1 2)))
 :qid |shadow0bpl.29:21|
 :skolemid |4|
 :pattern ( (ShadowInc2 x@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$Inc3$0$y@1 () Int)
(declare-fun b@0 () Bool)
(declare-fun b@1 () Bool)
(declare-fun b@2 () Bool)
(declare-fun inline$Inc3$0$x@0 () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0$1_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (= inline$Inc3$0$y@1 18)) (=> (= inline$Inc3$0$y@1 18) (=> (= b@0 (let ((y inline$Inc3$0$y@1))
(let ((|y'| (+ y 1)))
(forall ((|x'@@0| Int) ) (!  (=> (= |x'@@0| |y'|) (= |x'@@0| 19))
 :qid |shadow0bpl.20:47|
 :skolemid |1|
))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) b@0) (=> b@0 (=> (= b@1 (let ((y@@0 inline$Inc3$0$y@1))
(forall ((|x'@@1| Int) ) (!  (=> (= |x'@@1| y@@0) (let ((|x''| (+ |x'@@1| 20)))
(= |x''| 38)))
 :qid |shadow0bpl.22:29|
 :skolemid |2|
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) b@1) (=> b@1 (=> (and (= b@2 (let ((y@@1 inline$Inc3$0$y@1))
(exists ((|x'@@2| Int) ) (!  (and (< |x'@@2| y@@1) (= |x'@@2| 28))
 :qid |shadow0bpl.24:29|
 :skolemid |3|
)))) (= (ControlFlow 0 2) (- 0 1))) (not b@2))))))))))))
(let ((inline$Inc3$0$anon0_correct  (=> (and (= inline$Inc3$0$y@1 (let ((|inline$Inc3$0$y'| (+ inline$Inc3$0$x@0 3)))
|inline$Inc3$0$y'|)) (= (ControlFlow 0 6) 2)) anon0$1_correct)))
(let ((inline$Inc3$0$Entry_correct  (=> (and (= inline$Inc3$0$x@0 (Inc2 (+ 10 3))) (= (ControlFlow 0 7) 6)) inline$Inc3$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 8) 7) inline$Inc3$0$Entry_correct)))
anon0_correct)))))
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
(declare-fun Inc2 (Int) Int)
(declare-fun ShadowInc2 (Int) Int)
(assert (forall ((x Int) ) (! (= (Inc2 x) (let ((|x'| (+ x 4)))
(- |x'| 2)))
 :qid |shadow0bpl.4:15|
 :skolemid |0|
 :pattern ( (Inc2 x))
)))
(assert (forall ((x@@0 Int) ) (! (= (ShadowInc2 x@@0) (let ((x@@1 (+ x@@0 4)))
(- x@@1 2)))
 :qid |shadow0bpl.29:21|
 :skolemid |4|
 :pattern ( (ShadowInc2 x@@0))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$ShadowInc3$0$y@1 () Int)
(declare-fun b@0 () Bool)
(declare-fun b@1 () Bool)
(declare-fun b@2 () Bool)
(declare-fun inline$ShadowInc3$0$x@0 () Int)
(set-info :boogie-vc-id ShadowP)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0$1_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (= inline$ShadowInc3$0$y@1 18)) (=> (= inline$ShadowInc3$0$y@1 18) (=> (= b@0 (let ((y inline$ShadowInc3$0$y@1))
(let ((y@@0 (+ y 1)))
(forall ((x@@2 Int) ) (!  (=> (= x@@2 y@@0) (= x@@2 19))
 :qid |shadow0bpl.46:46|
 :skolemid |5|
))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) b@0) (=> b@0 (=> (= b@1 (let ((y@@1 inline$ShadowInc3$0$y@1))
(forall ((x@@3 Int) ) (!  (=> (= x@@3 y@@1) (let ((x@@4 (+ x@@3 20)))
(= x@@4 38)))
 :qid |shadow0bpl.48:29|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) b@1) (=> b@1 (=> (and (= b@2 (let ((y@@2 inline$ShadowInc3$0$y@1))
(exists ((x@@5 Int) ) (!  (and (< x@@5 y@@2) (= x@@5 28))
 :qid |shadow0bpl.50:29|
 :skolemid |7|
)))) (= (ControlFlow 0 2) (- 0 1))) (not b@2))))))))))))
(let ((inline$ShadowInc3$0$anon0_correct  (=> (and (= inline$ShadowInc3$0$y@1 (let ((inline$ShadowInc3$0$y (+ inline$ShadowInc3$0$x@0 3)))
inline$ShadowInc3$0$y)) (= (ControlFlow 0 6) 2)) anon0$1_correct)))
(let ((inline$ShadowInc3$0$Entry_correct  (=> (and (= inline$ShadowInc3$0$x@0 (ShadowInc2 (+ 10 3))) (= (ControlFlow 0 7) 6)) inline$ShadowInc3$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 8) 7) inline$ShadowInc3$0$Entry_correct)))
anon0_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
