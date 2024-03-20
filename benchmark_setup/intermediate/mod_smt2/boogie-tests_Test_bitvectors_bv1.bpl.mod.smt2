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
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((block1_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (= #x00000011 #x00000011)) (=> (= #x00000011 #x00000011) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ((_ extract 31 0) #x00000011) ((_ extract 31 0) #x00000011))) (=> (= ((_ extract 31 0) #x00000011) ((_ extract 31 0) #x00000011)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (concat #b00 ((_ extract 11 0) #x00000011)) (concat #b00 ((_ extract 11 0) #x00000011))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) block1_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
