(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun f1 (Int) Bool)
(declare-fun f3 (Bool) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun f5 (Bool) Bool)
(declare-fun f4 (Int) Bool)
(assert (forall ((x Int) ) (! (f1 x)
 :qid |Triggersbpl.6:15|
 :skolemid |0|
 :pattern ( (f1 x))
)))
(assert (forall ((x@@0 Int) ) (! (f2 x@@0)
 :qid |Triggersbpl.15:15|
 :skolemid |1|
 :pattern ( (f3 (f2 x@@0)))
)))
(assert (forall ((x@@1 Int) ) (! (f4 x@@1)
 :qid |Triggersbpl.31:15|
 :skolemid |2|
 :pattern ( (f5 (f4 x@@1)) (f4 x@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@2 () Int)
(set-info :boogie-vc-id oneTriggerOneRef)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (f1 x@@2))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun f1 (Int) Bool)
(declare-fun f3 (Bool) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun f5 (Bool) Bool)
(declare-fun f4 (Int) Bool)
(assert (forall ((x Int) ) (! (f1 x)
 :qid |Triggersbpl.6:15|
 :skolemid |0|
 :pattern ( (f1 x))
)))
(assert (forall ((x@@0 Int) ) (! (f2 x@@0)
 :qid |Triggersbpl.15:15|
 :skolemid |1|
 :pattern ( (f3 (f2 x@@0)))
)))
(assert (forall ((x@@1 Int) ) (! (f4 x@@1)
 :qid |Triggersbpl.31:15|
 :skolemid |2|
 :pattern ( (f5 (f4 x@@1)) (f4 x@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@2 () Int)
(set-info :boogie-vc-id oneTriggerTwoRefsSuccess)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (f3 (f2 x@@2))) (=> (f3 (f2 x@@2)) (=> (= (ControlFlow 0 2) (- 0 1)) (f2 x@@2))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (f3 (f2 x@@2)) (= (ControlFlow 0 4) 2)) anon0_correct)))
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
(declare-fun f1 (Int) Bool)
(declare-fun f3 (Bool) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun f5 (Bool) Bool)
(declare-fun f4 (Int) Bool)
(assert (forall ((x Int) ) (! (f1 x)
 :qid |Triggersbpl.6:15|
 :skolemid |0|
 :pattern ( (f1 x))
)))
(assert (forall ((x@@0 Int) ) (! (f2 x@@0)
 :qid |Triggersbpl.15:15|
 :skolemid |1|
 :pattern ( (f3 (f2 x@@0)))
)))
(assert (forall ((x@@1 Int) ) (! (f4 x@@1)
 :qid |Triggersbpl.31:15|
 :skolemid |2|
 :pattern ( (f5 (f4 x@@1)) (f4 x@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@2 () Int)
(set-info :boogie-vc-id oneTriggerTwoRefsFail)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (f2 x@@2))))
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
(declare-fun f1 (Int) Bool)
(declare-fun f3 (Bool) Bool)
(declare-fun f2 (Int) Bool)
(declare-fun f5 (Bool) Bool)
(declare-fun f4 (Int) Bool)
(assert (forall ((x Int) ) (! (f1 x)
 :qid |Triggersbpl.6:15|
 :skolemid |0|
 :pattern ( (f1 x))
)))
(assert (forall ((x@@0 Int) ) (! (f2 x@@0)
 :qid |Triggersbpl.15:15|
 :skolemid |1|
 :pattern ( (f3 (f2 x@@0)))
)))
(assert (forall ((x@@1 Int) ) (! (f4 x@@1)
 :qid |Triggersbpl.31:15|
 :skolemid |2|
 :pattern ( (f5 (f4 x@@1)) (f4 x@@1))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@2 () Int)
(set-info :boogie-vc-id twoTriggers)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (f4 x@@2))))
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
