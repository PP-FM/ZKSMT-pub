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
(declare-sort T@ref 0)
(declare-fun call0formal@barresult@0 () T@ref)
(declare-fun null () T@ref)
(declare-fun call0formal@barresult@0@@0 () T@ref)
(set-info :boogie-vc-id Foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((entry_correct  (=> (and (= call0formal@barresult@0 null) (= (ControlFlow 0 2) (- 0 1))) (= call0formal@barresult@0@@0 null))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) entry_correct)))
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
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id DifferentFormalNames)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((start_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (< x y)) (=> (< x y) (=> (= (ControlFlow 0 2) (- 0 1)) (= x x))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< x y) (= (ControlFlow 0 4) 2)) start_correct)))
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
(declare-fun w@0 () Int)
(declare-fun y () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id DifferentFormalNames)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= w@0 y))))
(let ((B_correct  (=> (and (= w@0 y) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct)))
(let ((A_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< y x))))
(let ((start_correct  (=> (< y x) (and (=> (= (ControlFlow 0 6) 2) A_correct) (=> (= (ControlFlow 0 6) 5) B_correct)))))
start_correct)))))
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
(set-info :boogie-vc-id DifferentFormalNames)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((start_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (< x y)) (=> (< x y) (=> (= (ControlFlow 0 2) (- 0 1)) (= y y))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< y x) (= (ControlFlow 0 4) 2)) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(set-info :boogie-vc-id DifferentFormalNames)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= x y))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< y x) (= (ControlFlow 0 3) 2)) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)