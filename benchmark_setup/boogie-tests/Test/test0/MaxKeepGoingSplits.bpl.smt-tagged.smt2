(set-logic NIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun f (Int Int) Int)
(assert (forall ((i Int) (j Int) ) (! (= (f i j) (ite (= i 0) 0 (+ (f (- i 1) (+ (* i j) 1)) (f (- i 1) (* (* 2 i) j)))))
 :qid |MaxKeepGoingSplitsbpl.9:12|
 :skolemid |0|
 :pattern ( (f i j))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id test1)
(set-option :timeout 0)
(set-option :rlimit 1000000)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (f 8 4) 0)) (=> (= (f 8 4) 0) (=> (= (ControlFlow 0 2) (- 0 1)) (= (f 8 5) 0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
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
(declare-fun f (Int Int) Int)
(assert (forall ((i Int) (j Int) ) (! (= (f i j) (ite (= i 0) 0 (+ (f (- i 1) (+ (* i j) 1)) (f (- i 1) (* (* 2 i) j)))))
 :qid |MaxKeepGoingSplitsbpl.9:12|
 :skolemid |0|
 :pattern ( (f i j))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id test2)
(set-option :timeout 0)
(set-option :rlimit 1000000)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f 9 2) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
