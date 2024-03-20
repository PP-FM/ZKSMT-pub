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
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (let ((A_correct true))
A_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x Bool) )  (=> (tickleBool x) (let ((A_correct true))
A_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id R)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x Bool) )  (=> (tickleBool x) (let ((A_correct false))
A_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 2))))
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
(set-info :boogie-vc-id S)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x Bool) )  (=> (tickleBool x) (let ((A_correct x))
A_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 2))))
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
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id T)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= 0 (+ x y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (forall ((z Bool) (z@0 Bool) )  (=> (tickleBool z@0) (=> (tickleBool z) (let ((R_correct  (not z@0)))
(let ((F_correct  (=> (and (< y 0) (= z@0 false)) R_correct)))
(let ((E_correct  (=> (and (<= 0 y) (= z@0 true)) R_correct)))
(let ((D_correct  (and E_correct F_correct)))
(let ((B_correct  (=> (<= 0 x) D_correct)))
(let ((C_correct  (=> (and (< x 0) (= z@0 false)) R_correct)))
(let ((A_correct  (and B_correct C_correct)))
(let ((Start_correct A_correct))
Start_correct)))))))))))) (= (ControlFlow 0 3) 2)) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id U)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= x y))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (forall ((z Bool) (z@0 Bool) )  (=> (tickleBool z@0) (=> (tickleBool z) (let ((R_correct  (not z@0)))
(let ((F_correct  (=> (and (< y 0) (= z@0 false)) R_correct)))
(let ((E_correct  (=> (and (<= 0 y) (= z@0 true)) R_correct)))
(let ((D_correct  (and E_correct F_correct)))
(let ((B_correct  (=> (<= 0 x) D_correct)))
(let ((C_correct  (=> (and (< x 0) (= z@0 false)) R_correct)))
(let ((A_correct  (and B_correct C_correct)))
(let ((Start_correct A_correct))
Start_correct)))))))))))) (= (ControlFlow 0 3) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
