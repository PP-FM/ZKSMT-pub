(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (n Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n) (<= n |l#0|))
 :qid |LambdaWherebpl.7:60|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun llam () |T@[Int]Bool|)
(declare-fun glam () |T@[Int]Bool|)
(set-info :boogie-vc-id Local)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| llam 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= glam (|lambda#0| 0)) (=> (and (and (= llam (|lambda#0| 0)) true) (= (ControlFlow 0 3) 2)) anon0_correct))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (n Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n) (<= n |l#0|))
 :qid |LambdaWherebpl.7:60|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun glam () |T@[Int]Bool|)
(set-info :boogie-vc-id Global)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| glam 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= glam (|lambda#0| 0)) (= (ControlFlow 0 3) 2)) anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (n Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n) (<= n |l#0|))
 :qid |LambdaWherebpl.7:60|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inlam () |T@[Int]Bool|)
(declare-fun glam () |T@[Int]Bool|)
(set-info :boogie-vc-id InParameter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| inlam 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= glam (|lambda#0| 0)) (=> (and (= inlam (|lambda#0| 0)) (= (ControlFlow 0 3) 2)) anon0_correct))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (n Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n) (<= n |l#0|))
 :qid |LambdaWherebpl.7:60|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun outlam () |T@[Int]Bool|)
(declare-fun glam () |T@[Int]Bool|)
(set-info :boogie-vc-id OutParameter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Select__T@[Int]Bool_| outlam 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= glam (|lambda#0| 0)) (=> (and (= outlam (|lambda#0| 0)) (= (ControlFlow 0 3) 2)) anon0_correct))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(assert (forall ((|l#0| Int) (n Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n) (<= n |l#0|))
 :qid |LambdaWherebpl.7:60|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id ProcPlusImpl)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
