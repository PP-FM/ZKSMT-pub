(set-logic QF_LIA)
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
(declare-fun b1 () Bool)
(declare-fun myVar@0 () Int)
(declare-fun b2 () Bool)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (=> b1 (> myVar@0 0)) (=> (and (and (not (= myVar@0 (- 0 1))) (= (ControlFlow 0 2) (- 0 1))) b2) (> myVar@0 0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
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
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b1 () Bool)
(declare-fun myVar@0 () Int)
(declare-fun i () Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> b1 (> myVar@0 0))) (=> (=> b1 (> myVar@0 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (not (= myVar@0 (- 0 1))))))))
(let ((anon3_Else_correct  (=> (>= 0 i) (=> (and (= myVar@0 0) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (> i 0) (=> (and (= myVar@0 5) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct))))
anon0_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
