(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(assert (forall ((y Int) (x Bool) ) (!  (=> (> (+ y 1) 1) (> y 0))
 :qid |expansion2bpl.10:15|
 :skolemid |1|
)))
(assert (forall ((z Int) ) (!  (=> (> z 12) (> z 0))
 :qid |expansion2bpl.9:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (> 12 0)) (=> (> 12 0) (=> (= (ControlFlow 0 2) (- 0 1)) (= (+ 3 1) 4))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
