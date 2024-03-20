(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun F () Bool)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(assert (= F true))
(assert (forall ((|l#0| Bool) (n Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n) |l#0|)
 :qid |Snapshots36v0bpl.12:28|
 :skolemid |0|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) n))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () |T@[Int]Bool|)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= l@0 (|lambda#0| F)) (= (ControlFlow 0 2) (- 0 1))) (|Select__T@[Int]Bool_| l@0 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
