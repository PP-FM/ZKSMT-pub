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
(declare-fun y@1 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((LoopBody_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (< y@1 10))))
(let ((LoopHead_correct  (=> (and (< y@0 10) (= (ControlFlow 0 3) 2)) LoopBody_correct)))
(let ((start_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (< 6 10)) (=> (< 6 10) (=> (= (ControlFlow 0 4) 3) LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 4) start_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun i@2 () Int)
(declare-fun returnValue@0 () Int)
(set-info :boogie-vc-id SimpleWhile5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((IncDone_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (<= 1 i@2))))
(let ((IncI_correct true))
(let ((LoopEnd_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= returnValue@0 1))))
(let ((start_correct  (and (and (=> (= (ControlFlow 0 6) 2) LoopEnd_correct) (=> (= (ControlFlow 0 6) 3) IncI_correct)) (=> (= (ControlFlow 0 6) 5) IncDone_correct))))
start_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)