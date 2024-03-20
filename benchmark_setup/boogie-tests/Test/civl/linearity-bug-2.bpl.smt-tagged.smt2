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
(declare-fun i () Int)
(declare-fun set@0 () (Array Int Bool))
(declare-fun set () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_foo$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) set@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) set ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_foo$0$anon0_correct  (=> (and (= set@0 (store set i true)) (= (ControlFlow 0 3) 2)) inline$atomic_foo$0$Return_correct)))
(let ((inline$atomic_foo$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$atomic_foo$0$anon0_correct)))
inline$atomic_foo$0$Entry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
