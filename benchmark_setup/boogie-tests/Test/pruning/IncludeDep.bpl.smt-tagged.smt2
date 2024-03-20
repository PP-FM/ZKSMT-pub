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
(assert false)
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Q (Int) Bool)
(declare-fun f1 (Int) Int)
(declare-fun x () Int)
(declare-fun R (Int) Bool)
(set-info :boogie-vc-id I1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (Q (f1 x)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (R x) (= (ControlFlow 0 3) 2)) anon0_correct)))
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
(assert false)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Q (Int) Bool)
(declare-fun f2 (Int) Int)
(declare-fun x () Int)
(declare-fun R (Int) Bool)
(set-info :boogie-vc-id I2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (Q (f2 x)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (R x) (= (ControlFlow 0 3) 2)) anon0_correct)))
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
(assert false)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Def1 (Int) Bool)
(declare-fun x () Int)
(declare-fun Def2 (Int) Bool)
(declare-fun R (Int) Bool)
(set-info :boogie-vc-id I3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (Def1 x)) (=> (Def1 x) (=> (= (ControlFlow 0 2) (- 0 1)) (Def2 x))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (R x) (= (ControlFlow 0 4) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
