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
(declare-fun i@0 () Int)
(declare-fun i@1 () Int)
(set-info :boogie-vc-id Test)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((block850_correct  (=> (and (= i@0 0) (= (ControlFlow 0 2) (- 0 1))) (= i@1 0))))
(let ((entry_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (= 0 0)) (=> (= 0 0) (=> (= (ControlFlow 0 3) 2) block850_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 3) entry_correct)))
PreconditionGeneratedEntry_correct))))
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
(set-info :boogie-vc-id TightLoop0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((L_correct  (=> (and (not true) (= (ControlFlow 0 2) (- 0 1))) (not true))))
(let ((q@0_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (not true)) (=> (not true) (=> (= (ControlFlow 0 3) 2) L_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 3) q@0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 4))))
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
(set-info :boogie-vc-id TightLoop1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((L_correct  (=> (= (ControlFlow 0 2) (- 0 1)) false)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) L_correct)))
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
(set-info :boogie-vc-id TightLoop2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((L_correct  (=> (= (ControlFlow 0 2) (- 0 1)) true)))
(let ((q@0_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (= (ControlFlow 0 3) 2) L_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 3) q@0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-fun b () Bool)
(set-info :boogie-vc-id TightLoop3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((L_correct  (=> (and b (= (ControlFlow 0 2) (- 0 1))) b)))
(let ((q@0_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) b) (=> b (=> (= (ControlFlow 0 3) 2) L_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 3) q@0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
