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
(declare-fun a () (_ BitVec 256))
(declare-fun b () (_ BitVec 256))
(set-info :boogie-vc-id FactorPrime)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (bvugt a #x0000000000000000000000000000000000000000000000000000000000000001) (=> (and (bvugt b #x0000000000000000000000000000000000000000000000000000000000000001) (= (ControlFlow 0 2) (- 0 1))) (not (= (bvmul a b) #x000000000000000000000000000000000000000013ffffffca5f905a76cbffff))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
