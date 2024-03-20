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
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Findbpl.7:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun call0formal@a@0 () Int)
(declare-fun call1formal@b@0 () Int)
(declare-fun call2formal@k@0 () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f k@0) K))))
(let ((C_correct  (=> (and (and (not (= (f a) K)) (not (= (f b) K))) (and (= call0formal@a@0 (- a 1)) (= call1formal@b@0 (+ b 1)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= call0formal@a@0 call1formal@b@0)) (=> (<= call0formal@a@0 call1formal@b@0) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((j Int) ) (!  (=> (and (< call0formal@a@0 j) (< j call1formal@b@0)) (not (= (f j) K)))
 :qid |Findbpl.14:20|
 :skolemid |1|
))) (=> (forall ((j@@0 Int) ) (!  (=> (and (< call0formal@a@0 j@@0) (< j@@0 call1formal@b@0)) (not (= (f j@@0) K)))
 :qid |Findbpl.14:20|
 :skolemid |1|
)) (=> (= (f call2formal@k@0) K) (=> (and (= k@0 call2formal@k@0) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))))))))
(let ((B_correct  (=> (= (f b) K) (=> (and (= k@0 b) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((A_correct  (=> (= (f a) K) (=> (and (= k@0 a) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Findbpl.14:20|
 :skolemid |1|
))) (and (and (=> (= (ControlFlow 0 8) 3) A_correct) (=> (= (ControlFlow 0 8) 4) B_correct)) (=> (= (ControlFlow 0 8) 5) C_correct)))))
anon0_correct))))))
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
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Findbpl.7:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call2formal@k@0 () Int)
(set-info :boogie-vc-id Main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((j Int) ) (!  (=> (and (< 0 j) (< j 0)) (not (= (f j) K)))
 :qid |Findbpl.14:20|
 :skolemid |1|
))) (=> (forall ((j@@0 Int) ) (!  (=> (and (< 0 j@@0) (< j@@0 0)) (not (= (f j@@0) K)))
 :qid |Findbpl.14:20|
 :skolemid |1|
)) (=> (and (= (f call2formal@k@0) K) (= (ControlFlow 0 2) (- 0 1))) (= (f call2formal@k@0) K))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
