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
(declare-fun j@0 () Int)
(declare-fun j@1 () Int)
(declare-fun j@2 () Int)
(declare-sort T@ref 0)
(declare-fun s () T@ref)
(declare-fun r () T@ref)
(set-info :boogie-vc-id M)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (= i@0 (+ 0 1)) (= j@0 (+ i@0 1))) (and (= j@1 (+ j@0 1)) (= j@2 (+ j@1 1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= i@0 j@2)) (=> (= i@0 j@2) (=> (= (ControlFlow 0 2) (- 0 1)) (= s r)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
(get-info :rlimit)
