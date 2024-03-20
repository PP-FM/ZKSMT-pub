(set-logic QF_UFLIA)
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
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun m () |T@[Int]Int|)
(declare-fun x () Int)
(declare-fun n () |T@[Int]Int|)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= (|Select__T@[Int]Int_| m x) x) (= (|Select__T@[Int]Int_| n x) 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Select__T@[Int]Int_| n (|Select__T@[Int]Int_| m x)) 1)) (=> (= (|Select__T@[Int]Int_| n (|Select__T@[Int]Int_| m x)) 1) (=> (= (ControlFlow 0 2) (- 0 1)) (= (|Select__T@[Int]Int_| m (|Select__T@[Int]Int_| n x)) 1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
