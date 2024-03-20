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
(declare-fun y@0 () Int)
(declare-fun z@0 () Int)
(declare-fun b () Bool)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Join)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((join_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (= y@0 4)) (=> (= y@0 4) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= z@0 7)) (=> (= z@0 7) (=> (= (ControlFlow 0 2) (- 0 1)) (= true true))))))))
(let ((Else_correct  (=> (= b false) (=> (and (= y@0 4) (= (ControlFlow 0 6) 2)) join_correct))))
(let ((Then_correct  (=> (and (and (= b true) (= x@0 (+ 3 1))) (and (= y@0 4) (= (ControlFlow 0 5) 2))) join_correct)))
(let ((start_correct  (=> (= z@0 (+ 3 4)) (and (=> (= (ControlFlow 0 7) 5) Then_correct) (=> (= (ControlFlow 0 7) 6) Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) start_correct)))
PreconditionGeneratedEntry_correct))))))
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
(set-info :boogie-vc-id Loop)
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
(set-info :boogie-vc-id Evaluate)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
