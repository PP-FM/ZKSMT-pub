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
(set-info :boogie-vc-id q@push)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
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
(set-info :boogie-vc-id q@pop)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
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
(declare-fun b3 () Bool)
(declare-fun sdv_7@1 () Int)
(declare-fun b4 () Bool)
(declare-fun sdv_7@2 () Int)
(declare-fun b2 () Bool)
(declare-fun sdv_7 () Int)
(declare-fun b1 () Bool)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> b3 (= sdv_7@1 0))) (=> (=> b3 (= sdv_7@1 0)) (=> (and (and (=> b4 (= sdv_7@2 sdv_7@1)) (= (ControlFlow 0 2) (- 0 1))) b2) (= sdv_7@2 sdv_7))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> b1 (= sdv_7 0)) (= (ControlFlow 0 4) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun b4 () Bool)
(declare-fun sdv_7@1 () Int)
(declare-fun sdv_7 () Int)
(declare-fun b3 () Bool)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> b4 (= sdv_7@1 sdv_7)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> b3 (= sdv_7 0)) (= (ControlFlow 0 3) 2)) anon0_correct)))
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
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> b1 (= 0 0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
