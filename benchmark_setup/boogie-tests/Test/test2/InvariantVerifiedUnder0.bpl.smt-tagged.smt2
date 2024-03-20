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
(set-info :boogie-vc-id Test0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) false)))
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
(set-info :boogie-vc-id Test1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
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
(declare-fun A () Bool)
(declare-fun P () Bool)
(declare-fun Q () Bool)
(set-info :boogie-vc-id Test2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_LoopBody_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or A P)) (=> P (=> (= (ControlFlow 0 2) (- 0 1)) (or A Q))))))
(let ((anon2_LoopHead_correct  (=> P (=> (and Q (= (ControlFlow 0 4) 2)) anon2_LoopBody_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or A P)) (=> P (and (=> (= (ControlFlow 0 5) (- 0 6)) (or A Q)) (=> Q (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 5) (- 7))))
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
(declare-fun A () Bool)
(declare-fun P () Bool)
(declare-fun Q () Bool)
(set-info :boogie-vc-id Test3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_LoopBody_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or A P)) (=> P (=> (= (ControlFlow 0 2) (- 0 1)) (or A Q))))))
(let ((anon2_LoopHead_correct  (=> P (=> (and Q (= (ControlFlow 0 4) 2)) anon2_LoopBody_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or A P)) (=> P (and (=> (= (ControlFlow 0 5) (- 0 6)) (or A Q)) (=> Q (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> (not A) P) (= (ControlFlow 0 8) 5)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun A () Bool)
(declare-fun P () Bool)
(declare-fun Q () Bool)
(set-info :boogie-vc-id Test4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_LoopBody_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or A P)) (=> P (=> (= (ControlFlow 0 2) (- 0 1)) (or A Q))))))
(let ((anon2_LoopHead_correct  (=> P (=> (and Q (= (ControlFlow 0 4) 2)) anon2_LoopBody_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or A P)) (=> P (and (=> (= (ControlFlow 0 5) (- 0 6)) (or A Q)) (=> Q (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 5) (- 7))))
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
(declare-fun A () Bool)
(declare-fun P () Bool)
(declare-fun Q () Bool)
(set-info :boogie-vc-id Test5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_LoopBody_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or A P)) (=> P (=> (= (ControlFlow 0 2) (- 0 1)) (or A Q))))))
(let ((anon2_LoopHead_correct  (=> P (=> (and Q (= (ControlFlow 0 4) 2)) anon2_LoopBody_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or A P)) (=> P (and (=> (= (ControlFlow 0 5) (- 0 6)) (or A Q)) (=> Q (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> (not A) Q) (= (ControlFlow 0 8) 5)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 5) (- 7))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
