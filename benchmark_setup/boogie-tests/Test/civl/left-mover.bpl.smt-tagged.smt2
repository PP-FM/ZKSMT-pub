(set-logic ALIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_ass_eq_1_inc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$inc$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= x@0 1))))))
(let ((inline$inc$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$inc$0$Return_correct)))
(let ((inline$inc$0$Entry_correct  (=> (and (not (= x@@0 1)) (= (ControlFlow 0 4) 3)) inline$inc$0$anon0_correct)))
inline$inc$0$Entry_correct))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_ass_leq_1_inc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$inc$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (< 1 x@0)))))
(let ((inline$inc$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$inc$0$Return_correct)))
(let ((inline$inc$0$Entry_correct  (=> (and (< 1 x@@0) (= (ControlFlow 0 4) 3)) inline$inc$0$anon0_correct)))
inline$inc$0$Entry_correct))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_init_inc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$inc$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@0 0)))))
(let ((inline$inc$0$anon0_correct  (=> (and (= x@0 (+ 0 1)) (= (ControlFlow 0 3) 2)) inline$inc$0$Return_correct)))
(let ((inline$init$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$inc$0$anon0_correct)))
inline$init$0$Entry_correct))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_CooperationChecker_block)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((init_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= x@@0 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) init_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
