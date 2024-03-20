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
 :qid |gitissue366bpl.4:12|
 :skolemid |0|
 :pattern ( (f i j))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(set-info :boogie-vc-id test0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (- x x) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
 :qid |gitissue366bpl.4:12|
 :skolemid |0|
 :pattern ( (f i j))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id test1)
(set-option :timeout 0)
(set-option :rlimit 1215752192)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f 13 5) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
