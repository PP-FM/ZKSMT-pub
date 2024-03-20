(set-logic LIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun four () Int)
(declare-fun ProducerConst () Bool)
(declare-fun ConsumerFunc (Int) Int)
(assert (forall ((x Int) ) (! (= (ConsumerFunc x) 3)
 :qid |UsesClausesbpl.13:19|
 :skolemid |0|
)))
(assert (= four 4))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ProducerFunc (Int) Bool)
(set-info :boogie-vc-id hasAxioms)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (ConsumerFunc 4) 3)) (=> (= (ConsumerFunc 4) 3) (=> (= (ControlFlow 0 2) (- 0 1)) (= four 4))))))
(let ((PreconditionGeneratedEntry_correct  (=> (ProducerFunc 2) (=> (and ProducerConst (= (ControlFlow 0 4) 2)) anon0_correct))))
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
(declare-fun four () Int)
(declare-fun ProducerConst () Bool)
(declare-fun ConsumerFunc (Int) Int)
(assert (forall ((x Int) ) (! (= (ConsumerFunc x) 3)
 :qid |UsesClausesbpl.13:19|
 :skolemid |0|
)))
(assert (= four 4))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id doesNotHaveAxioms)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (ConsumerFunc 4) 3)) (=> (= (ConsumerFunc 4) 3) (=> (= (ControlFlow 0 2) (- 0 1)) (= four 4))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
