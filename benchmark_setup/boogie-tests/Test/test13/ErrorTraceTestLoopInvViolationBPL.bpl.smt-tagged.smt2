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
(set-info :boogie-vc-id asserting)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= 0 1))))
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
(declare-fun x@0 () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id loopInvInitiallyViolated)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_LoopBody_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= 1 1))))
(let ((anon2_LoopDone_correct true))
(let ((anon2_LoopHead_correct  (=> (= x@0 1) (and (=> (= (ControlFlow 0 4) 1) anon2_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon2_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (= y 1)) (=> (= y 1) (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 5) (- 6))))
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
(declare-fun x@0 () Int)
(set-info :boogie-vc-id loopInvMaintenanceViolated)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_LoopBody_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= 1 0))))
(let ((anon2_LoopDone_correct true))
(let ((anon2_LoopHead_correct  (=> (= x@0 0) (and (=> (= (ControlFlow 0 4) 1) anon2_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon2_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (= 0 0)) (=> (= 0 0) (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
