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
(declare-fun i@0 () Int)
(declare-fun n () Int)
(set-info :boogie-vc-id LoopUnroll)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_LoopBody_correct  (=> (and (< i@0 n) (= (ControlFlow 0 3) (- 0 2))) (not (= i@0 2)))))
(let ((anon3_LoopDone_correct true))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 4) 1) anon3_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon3_LoopBody_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
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
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$Increment$1$y@1 () Int)
(declare-fun u@0 () Int)
(declare-fun inline$Increment$0$y@1 () Int)
(set-info :boogie-vc-id Caller)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon0$2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= inline$Increment$1$y@1 8))))
(let ((inline$Increment$1$anon0_correct  (=> (= inline$Increment$1$y@1 (+ u@0 1)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= inline$Increment$1$y@1 2)) (=> (= inline$Increment$1$y@1 2) (=> (= (ControlFlow 0 3) 2) anon0$2_correct))))))
(let ((anon0$1_correct  (=> (and (= u@0 (+ inline$Increment$0$y@1 3)) (= (ControlFlow 0 5) 3)) inline$Increment$1$anon0_correct)))
(let ((inline$Increment$0$anon0_correct  (=> (= inline$Increment$0$y@1 (+ 0 1)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= inline$Increment$0$y@1 2)) (=> (= inline$Increment$0$y@1 2) (=> (= (ControlFlow 0 6) 5) anon0$1_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 8) 6) inline$Increment$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
(get-info :rlimit)