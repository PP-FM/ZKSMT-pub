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
(declare-fun time@1 () (_ FloatingPoint 8 24))
(declare-fun tick@0 () (_ FloatingPoint 8 24))
(declare-fun time@0 () (_ FloatingPoint 8 24))
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_LoopBody_correct true))
(let ((anon3_LoopDone_correct  (=> (and (<= 10 i@0) (= (ControlFlow 0 2) (- 0 1))) (= time@1 ((_ to_fp 8 24) RNE 1)))))
(let ((anon0_correct  (=> (and (= tick@0 (fp.div RNE ((_ to_fp 8 24) RNE 1) ((_ to_fp 8 24) RNE 10))) (= time@0 ((_ to_fp 8 24) RNE 0))) (and (=> (= (ControlFlow 0 4) 2) anon3_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon3_LoopBody_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)