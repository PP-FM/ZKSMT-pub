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
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_p_gt2_atomic_p_gt1_lower)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_p_gt1_lower$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@0 0)))))
(let ((inline$atomic_p_gt1_lower$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_p_gt1_lower$0$Return_correct)))
(let ((inline$atomic_p_gt1_lower$0$Entry_correct  (=> (and (= x@@0 0) (= (ControlFlow 0 4) 3)) inline$atomic_p_gt1_lower$0$anon0_correct)))
inline$atomic_p_gt1_lower$0$Entry_correct))))
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
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_p_gt2_atomic_p_gt1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_p_gt1$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@0 0)))))
(let ((inline$atomic_p_gt1$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_p_gt1$0$Return_correct)))
(let ((inline$atomic_p_gt1$0$Entry_correct  (=> (and (= x@@0 0) (= (ControlFlow 0 4) 3)) inline$atomic_p_gt1$0$anon0_correct)))
inline$atomic_p_gt1$0$Entry_correct))))
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
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_p_gt2_atomic_p_gt1_lower)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_p_gt1_lower$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= x@0 0))))))
(let ((inline$atomic_p_gt1_lower$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_p_gt1_lower$0$Return_correct)))
(let ((inline$atomic_p_gt1_lower$0$Entry_correct  (=> (and (not (= x@@0 0)) (= (ControlFlow 0 4) 3)) inline$atomic_p_gt1_lower$0$anon0_correct)))
inline$atomic_p_gt1_lower$0$Entry_correct))))
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
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_p_gt2_atomic_p_gt1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_p_gt1$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= x@0 0))))))
(let ((inline$atomic_p_gt1$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_p_gt1$0$Return_correct)))
(let ((inline$atomic_p_gt1$0$Entry_correct  (=> (and (not (= x@@0 0)) (= (ControlFlow 0 4) 3)) inline$atomic_p_gt1$0$anon0_correct)))
inline$atomic_p_gt1$0$Entry_correct))))
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
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_p_gt1_25)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@1 x@0) (= x@1 (+ x@0 1))))) (=> (or false (or (= x@1 x@0) (= x@1 (+ x@0 1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@1 x@0))) (=> (=> false (= x@1 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@1 x@0) false)) (= Civl_ok@0  (or (= x@1 (+ x@0 1)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$atomic_p_gt1_lower$0$anon0_correct  (=> (= x@1 (+ x@0 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 7) 6) inline$atomic_p_gt1_lower$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
