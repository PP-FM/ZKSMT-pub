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
(declare-fun x@0 () Int)
(declare-fun may_fail (Int) Bool)
(set-info :boogie-vc-id test0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (< 42 x@0)  (=> (= (ControlFlow 0 2) (- 0 1)) (may_fail x@0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(minimize x@0)
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
(declare-fun may_fail (Int) Bool)
(set-info :boogie-vc-id test1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (may_fail x@0))))
(let ((anon3_Else_correct  (=> (and (= x@0 24) (= (ControlFlow 0 4) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (= x@0 42) (= (ControlFlow 0 3) 2)) anon2_correct)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))
anon0_correct)))))
))
(minimize x@0)
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
(set-info :boogie-vc-id test2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon3_LoopBody_correct true))
(let ((anon3_LoopDone_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< x@0 10))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 4) 2) anon3_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon3_LoopBody_correct))))
anon0_correct))))
))
(minimize x@0)
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
(declare-fun may_fail (Int) Bool)
(set-info :boogie-vc-id test3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (< x@0 42)  (=> (= (ControlFlow 0 2) (- 0 1)) (may_fail x@0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(maximize x@0)
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
(declare-fun may_fail (Int) Bool)
(set-info :boogie-vc-id test4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (may_fail x@0))))
(let ((anon3_Else_correct  (=> (and (= x@0 24) (= (ControlFlow 0 4) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (= x@0 42) (= (ControlFlow 0 3) 2)) anon2_correct)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))
anon0_correct)))))
))
(maximize x@0)
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
(set-info :boogie-vc-id test5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon3_LoopBody_correct true))
(let ((anon3_LoopDone_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< x@0 1))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 4) 2) anon3_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon3_LoopBody_correct))))
anon0_correct))))
))
(maximize x@0)
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
(declare-fun may_fail (Int) Bool)
(set-info :boogie-vc-id test6)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (may_fail x@0))))
(let ((anon3_Else_correct  (=> (and (= x@0 1) (= (ControlFlow 0 4) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (= x@0 2) (= (ControlFlow 0 3) 2)) anon2_correct)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))
anon0_correct)))))
))
(maximize x@0)
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
