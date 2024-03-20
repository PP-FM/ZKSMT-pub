(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
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
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun held@1 () Int)
(declare-fun x@1 () Int)
(declare-fun held@0 () Int)
(set-info :boogie-vc-id LockingExample)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((EndIteration_correct  (=> (and (= x@2 x@0) (= (ControlFlow 0 4) (- 0 3))) (= held@1 1))))
(let ((ContinueIteration_correct  (=> (and (not (= x@2 x@0)) (= (ControlFlow 0 2) (- 0 1))) (= held@1 0))))
(let ((LoopHead_@2_LoopEnd_correct  (=> (and (= held@1 1) (= x@2 x@0)) (and (=> (= (ControlFlow 0 7) 2) ContinueIteration_correct) (=> (= (ControlFlow 0 7) 4) EndIteration_correct)))))
(let ((UnlockNow_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (= 1 1)) (=> (= 1 1) (=> (= x@1 (+ x@0 1)) (=> (and (= held@1 0) (= x@2 x@1)) (and (=> (= (ControlFlow 0 5) 2) ContinueIteration_correct) (=> (= (ControlFlow 0 5) 4) EndIteration_correct))))))))
(let ((LoopHead_correct  (=> (= held@0 0) (and (=> (= (ControlFlow 0 8) 5) UnlockNow_correct) (=> (= (ControlFlow 0 8) 7) LoopHead_@2_LoopEnd_correct)))))
(let ((start_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (= 0 0)) (=> (= 0 0) (=> (= (ControlFlow 0 9) 8) LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 9) start_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun held@2 () Bool)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun held@1 () Bool)
(declare-fun held@0 () Bool)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id StructuredLockingExample)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((anon5_correct  (=> (= (ControlFlow 0 4) (- 0 3)) held@2)))
(let ((anon8_Then_correct  (=> (= x@2 x@0) (=> (and (= held@2 held@1) (= (ControlFlow 0 6) 4)) anon5_correct))))
(let ((anon6_LoopDone_correct  (=> (not true) (=> (and (= held@2 held@0) (= (ControlFlow 0 5) 4)) anon5_correct))))
(let ((anon8_Else_correct  (=> (and (not (= x@2 x@0)) (= (ControlFlow 0 2) (- 0 1))) (not held@1))))
(let ((anon7_Else_correct  (=> (and (= held@1 true) (= x@2 x@0)) (and (=> (= (ControlFlow 0 9) 6) anon8_Then_correct) (=> (= (ControlFlow 0 9) 2) anon8_Else_correct)))))
(let ((anon7_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) true) (=> (= x@1 (+ x@0 1)) (=> (and (= held@1 false) (= x@2 x@1)) (and (=> (= (ControlFlow 0 7) 6) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Else_correct)))))))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (not held@0)) (=> (not held@0) (and (=> (= (ControlFlow 0 10) 7) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct))))))
(let ((anon6_LoopHead_correct  (=> (not held@0) (and (=> (= (ControlFlow 0 12) 5) anon6_LoopDone_correct) (=> (= (ControlFlow 0 12) 10) anon6_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (not false)) (=> (not false) (=> (= (ControlFlow 0 13) 12) anon6_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@Mutex 0)
(declare-fun IsHeld (T@Mutex) Bool)
(declare-fun mutex@2 () T@Mutex)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun mutex@1 () T@Mutex)
(declare-fun mutex@0 () T@Mutex)
(declare-fun call1formal@post@0 () T@Mutex)
(declare-fun call1formal@post@0@@0 () T@Mutex)
(declare-fun x@1 () Int)
(declare-fun call0formal@post@0 () T@Mutex)
(set-info :boogie-vc-id StructuredLockingExampleWithCalls)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((anon5_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (IsHeld mutex@2))))
(let ((anon8_Then_correct  (=> (= x@2 x@0) (=> (and (= mutex@2 mutex@1) (= (ControlFlow 0 6) 4)) anon5_correct))))
(let ((anon6_LoopDone_correct  (=> (not true) (=> (and (= mutex@2 mutex@0) (= (ControlFlow 0 5) 4)) anon5_correct))))
(let ((anon8_Else_correct  (=> (and (not (= x@2 x@0)) (= (ControlFlow 0 2) (- 0 1))) (not (IsHeld mutex@1)))))
(let ((anon7_Else_correct  (=> (and (= x@2 x@0) (= mutex@1 call1formal@post@0)) (and (=> (= (ControlFlow 0 9) 6) anon8_Then_correct) (=> (= (ControlFlow 0 9) 2) anon8_Else_correct)))))
(let ((anon7_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (IsHeld call1formal@post@0)) (=> (IsHeld call1formal@post@0) (=> (and (and (not (IsHeld call1formal@post@0@@0)) (= x@1 (+ x@0 1))) (and (= x@2 x@1) (= mutex@1 call1formal@post@0@@0))) (and (=> (= (ControlFlow 0 7) 6) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Else_correct)))))))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (not (IsHeld mutex@0))) (=> (not (IsHeld mutex@0)) (=> (IsHeld call1formal@post@0) (and (=> (= (ControlFlow 0 10) 7) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct)))))))
(let ((anon6_LoopHead_correct  (=> (not (IsHeld mutex@0)) (and (=> (= (ControlFlow 0 12) 5) anon6_LoopDone_correct) (=> (= (ControlFlow 0 12) 10) anon6_LoopBody_correct)))))
(let ((anon0_correct  (=> (not (IsHeld call0formal@post@0)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (not (IsHeld call0formal@post@0))) (=> (not (IsHeld call0formal@post@0)) (=> (= (ControlFlow 0 13) 12) anon6_LoopHead_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)