(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun f (Bool) Int)
(declare-fun g (Int) Int)
(assert (= (f (exists ((x Int) ) (! (>= (g x) 12)
 :qid |Flatteningbpl.11:18|
 :skolemid |0|
))) 3))
(assert (= (f (exists ((x@@0 Int) ) (! (>= (g (f (forall ((y Int) ) (! (>= (g (+ x@@0 y)) 0)
 :qid |Flatteningbpl.12:39|
 :skolemid |1|
)))) 12)
 :qid |Flatteningbpl.12:18|
 :skolemid |2|
))) 3))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) false)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
