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
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id A0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (and (forall ((x Int) ) (! (F (- x 1))
 :qid |inst0bpl.9:32|
 :skolemid |0|
)) (and (F (- 1 1)) (F (- (+ skolemConstant0 1) 1))))))
(let ((anon0_correct  (=> quantifierBinding0 (and (=> (= (ControlFlow 0 2) (- 0 3)) (F 0)) (=> (F 0) (=> (= (ControlFlow 0 2) (- 0 1)) (F skolemConstant0)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id A1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> true (let ((quantifierBinding0  (or (exists ((y Int) ) (! (F (- y 1))
 :qid |inst0bpl.17:32|
 :skolemid |3|
)) (F (- (+ skolemConstant0 1) 1)))))
(let ((anon0_correct  (=> (and (F skolemConstant0) (= (ControlFlow 0 2) (- 0 1))) quantifierBinding0)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id A2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> true (let ((quantifierBinding0  (and (forall ((y Int) ) (!  (not (F (- y 1)))
 :qid |inst0bpl.23:32|
 :skolemid |5|
)) (not (F (- (+ skolemConstant0 1) 1))))))
(let ((anon0_correct  (=> (F skolemConstant0) (=> (and quantifierBinding0 (= (ControlFlow 0 2) (- 0 1))) false))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun G (Int Int) Bool)
(declare-fun skolemConstant0 () Int)
(declare-fun skolemConstant1 () Int)
(set-info :boogie-vc-id A3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (and (forall ((x0 Int) (x1 Int) ) (! (G (- x0 1) (- x1 1))
 :qid |inst0bpl.29:32|
 :skolemid |6|
)) (and (and (and (and (and (and (and (and (G (- 1 1) (- 1 1)) (G (- 1 1) (- (+ skolemConstant0 1) 1))) (G (- 1 1) (- (+ skolemConstant1 1) 1))) (G (- (+ skolemConstant0 1) 1) (- 1 1))) (G (- (+ skolemConstant0 1) 1) (- (+ skolemConstant0 1) 1))) (G (- (+ skolemConstant0 1) 1) (- (+ skolemConstant1 1) 1))) (G (- (+ skolemConstant1 1) 1) (- 1 1))) (G (- (+ skolemConstant1 1) 1) (- (+ skolemConstant0 1) 1))) (G (- (+ skolemConstant1 1) 1) (- (+ skolemConstant1 1) 1))))))
(let ((anon0_correct  (=> quantifierBinding0 (and (=> (= (ControlFlow 0 2) (- 0 3)) (G 0 0)) (=> (G 0 0) (=> (= (ControlFlow 0 2) (- 0 1)) (G skolemConstant0 skolemConstant1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun G (Int Int) Bool)
(declare-fun skolemConstant1 () Int)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id A4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (and (forall ((x0 Int) (x1 Int) ) (! (G (- x0 1) (- x1 1))
 :qid |inst0bpl.36:33|
 :skolemid |8|
)) (and (and (and (G (- 1 1) (- 1 1)) (G (- 1 1) (- (+ skolemConstant1 1) 1))) (G (- (+ skolemConstant0 1) 1) (- 1 1))) (G (- (+ skolemConstant0 1) 1) (- (+ skolemConstant1 1) 1))))))
(let ((anon0_correct  (=> quantifierBinding0 (and (=> (= (ControlFlow 0 2) (- 0 3)) (G 0 0)) (=> (G 0 0) (=> (= (ControlFlow 0 2) (- 0 1)) (G skolemConstant0 skolemConstant1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id A5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (and (forall ((x Int) ) (! (F (- x 1))
 :qid |inst0bpl.43:42|
 :skolemid |10|
)) (and (F (- 1 1)) (F (- (+ skolemConstant0 1) 1))))))
(let ((anon0_correct  (=> (let ((a quantifierBinding0))
a) (and (=> (= (ControlFlow 0 2) (- 0 3)) (F 0)) (=> (F 0) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((b (F skolemConstant0)))
b)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id A6)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (or (exists ((x Int) ) (!  (not (F (- x 1)))
 :qid |inst0bpl.50:33|
 :skolemid |12|
)) (or (not (F (- 1 1))) (not (F (- (+ skolemConstant0 1) 1)))))))
(let ((anon0_correct  (=> (not quantifierBinding0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (F 0)) (=> (F 0) (=> (= (ControlFlow 0 2) (- 0 1)) (not (not (F skolemConstant0)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(declare-fun a () Bool)
(set-info :boogie-vc-id A7)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (and (forall ((x Int) ) (! (F (- x 1))
 :qid |inst0bpl.58:38|
 :skolemid |14|
)) (and (F (- 1 1)) (F (- (+ skolemConstant0 1) 1))))))
(let ((anon0_correct  (=> (=> a quantifierBinding0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> a (F 0))) (=> (=> a (F 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> a (F skolemConstant0))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun F (Int) Bool)
(declare-fun skolemConstant0 () Int)
(declare-fun a () Bool)
(set-info :boogie-vc-id A8)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (=> true (let ((quantifierBinding0  (or (exists ((x Int) ) (! (F (- x 1))
 :qid |inst0bpl.66:32|
 :skolemid |16|
)) (or (F (- 1 1)) (F (- (+ skolemConstant0 1) 1))))))
(let ((anon0_correct  (=> (=> quantifierBinding0 a) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (F 0) a)) (=> (=> (F 0) a) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (F skolemConstant0) a)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun P (Int Int) Bool)
(declare-fun skolemConstant0 () Int)
(declare-fun skolemConstant1 () Int)
(set-info :boogie-vc-id B0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> true (let ((quantifierBinding0  (and (forall ((y Int) ) (! (P skolemConstant0 y)
 :qid |inst0bpl.75:50|
 :skolemid |18|
)) (P skolemConstant0 skolemConstant1))))
(let ((anon0_correct  (=> (and quantifierBinding0 (= (ControlFlow 0 2) (- 0 1))) (exists ((x Int) ) (! (P x skolemConstant1)
 :qid |inst0bpl.76:67|
 :skolemid |20|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun P (Int Int) Bool)
(declare-fun skolemConstant1 () Int)
(declare-fun skolemConstant0 () Int)
(set-info :boogie-vc-id B1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> true (let ((quantifierBinding1  (or (exists ((x Int) ) (! (P (- x 1) skolemConstant1)
 :qid |inst0bpl.82:79|
 :skolemid |24|
)) (P (- (+ skolemConstant0 1) 1) skolemConstant1))))
(let ((quantifierBinding0  (and (forall ((y Int) ) (! (P skolemConstant0 y)
 :qid |inst0bpl.81:81|
 :skolemid |22|
)) (P skolemConstant0 skolemConstant1))))
(let ((anon0_correct  (=> (and quantifierBinding0 (= (ControlFlow 0 2) (- 0 1))) quantifierBinding1)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
