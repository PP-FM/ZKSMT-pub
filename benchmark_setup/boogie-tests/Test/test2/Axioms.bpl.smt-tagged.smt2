(set-logic LIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun inc (Int) Int)
(declare-fun inc2 (Int) Int)
(declare-fun Seven () Int)
(assert (forall ((j Int) ) (! (= (inc j) (+ j 1))
 :qid |Axiomsbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x Int) ) (! (= (inc2 x) (+ x 2))
 :qid |Axiomsbpl.25:15|
 :skolemid |1|
 :pattern ( (inc2 x))
)))
(assert (= Seven 7))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((start_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= 4 Seven)) (=> (<= 4 Seven) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< Seven (inc Seven))) (=> (< Seven (inc Seven)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (+ (inc 5) (inc (inc 2))) (+ Seven 3)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) start_correct)))
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
(declare-fun inc (Int) Int)
(declare-fun inc2 (Int) Int)
(declare-fun Seven () Int)
(assert (forall ((j Int) ) (! (= (inc j) (+ j 1))
 :qid |Axiomsbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x Int) ) (! (= (inc2 x) (+ x 2))
 :qid |Axiomsbpl.25:15|
 :skolemid |1|
 :pattern ( (inc2 x))
)))
(assert (= Seven 7))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (+ (inc 5) (inc (inc 2))) Seven))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
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
(declare-fun inc (Int) Int)
(declare-fun inc2 (Int) Int)
(declare-fun Seven () Int)
(assert (forall ((j Int) ) (! (= (inc j) (+ j 1))
 :qid |Axiomsbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x Int) ) (! (= (inc2 x) (+ x 2))
 :qid |Axiomsbpl.25:15|
 :skolemid |1|
 :pattern ( (inc2 x))
)))
(assert (= Seven 7))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun q () Int)
(set-info :boogie-vc-id ExpandTest)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (inc (inc q)) (inc2 q)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
