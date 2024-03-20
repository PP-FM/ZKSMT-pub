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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(declare-fun P (Int) Bool)
(declare-fun F (Int Int) Int)
(assert (forall ((|l#0| Int) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x) (P (F |l#0| x)))
 :qid |NeverPatternbpl.56:20|
 :skolemid |11|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f1 (Int) Int)
(declare-fun f2 (Int) Int)
(declare-fun f3 (Int) Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (forall ((x@@0 Int) ) (!  (and (and (> (f1 x@@0) 0) (> (f2 x@@0) 0)) (> (f3 x@@0) 0))
 :qid |NeverPatternbpl.10:18|
 :skolemid |0|
 :no-pattern (f1 x@@0)
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (> (f2 3) 0)) (=> (> (f2 3) 0) (=> (= (ControlFlow 0 2) (- 0 1)) (> (f3 4) 0)))))))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(declare-fun P (Int) Bool)
(declare-fun F (Int Int) Int)
(assert (forall ((|l#0| Int) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x) (P (F |l#0| x)))
 :qid |NeverPatternbpl.56:20|
 :skolemid |11|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f1 (Int) Int)
(declare-fun f2 (Int) Int)
(declare-fun f3 (Int) Int)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (forall ((x@@0 Int) ) (!  (and (and (and (> (f1 x@@0) 0) (> (f2 x@@0) 0)) (> (f3 x@@0) 0)) (= (f1 7) 3))
 :qid |NeverPatternbpl.17:18|
 :skolemid |1|
 :no-pattern (f1 7)
 :no-pattern (f1 x@@0)
)) (= (ControlFlow 0 2) (- 0 1))) (> (f1 3) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(declare-fun P (Int) Bool)
(declare-fun F (Int Int) Int)
(assert (forall ((|l#0| Int) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x) (P (F |l#0| x)))
 :qid |NeverPatternbpl.56:20|
 :skolemid |11|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f1 (Int) Int)
(declare-fun f2 (Int) Int)
(declare-fun f3 (Int) Int)
(set-info :boogie-vc-id bar1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (forall ((x@@0 Int) ) (!  (and (and (and (> (f1 x@@0) 0) (> (f2 x@@0) 0)) (> (f3 x@@0) 0)) (= (f1 7) 3))
 :qid |NeverPatternbpl.23:18|
 :skolemid |2|
 :no-pattern (f1 7)
 :no-pattern (f1 x@@0)
 :no-pattern (f2 x@@0)
)) (= (ControlFlow 0 2) (- 0 1))) (> (f1 3) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(declare-fun P (Int) Bool)
(declare-fun F (Int Int) Int)
(assert (forall ((|l#0| Int) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x) (P (F |l#0| x)))
 :qid |NeverPatternbpl.56:20|
 :skolemid |11|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun f1 (Int) Int)
(declare-fun f2 (Int) Int)
(declare-fun f3 (Int) Int)
(set-info :boogie-vc-id bar2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (forall ((x@@0 Int) ) (!  (and (and (and (> (f1 x@@0) 0) (> (f2 x@@0) 0)) (> (f3 x@@0) 0)) (= (f1 7) 3))
 :qid |NeverPatternbpl.29:18|
 :skolemid |3|
 :no-pattern (f1 7)
 :no-pattern (f1 x@@0)
 :no-pattern (f2 x@@0)
)) (= (ControlFlow 0 2) (- 0 1))) (> (f2 3) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#0| (Int) |T@[Int]Bool|)
(declare-fun P (Int) Bool)
(declare-fun F (Int Int) Int)
(assert (forall ((|l#0| Int) (x Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x) (P (F |l#0| x)))
 :qid |NeverPatternbpl.56:20|
 :skolemid |11|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) x))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id NestedBinders)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
