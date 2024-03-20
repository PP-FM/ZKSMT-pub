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
(declare-fun f (Int Int) Int)
(declare-fun x@@0 () Int)
(declare-fun first_i () Int)
(declare-fun second_i () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_inc_inc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$inc$1$Return_correct  (=> (and (and (and (and (and (= (f x@@0 first_i) (+ x@@0 first_i)) (= (f (+ x@@0 first_i) second_i) (+ (+ x@@0 first_i) second_i))) (= (f x@@0 second_i) (+ x@@0 second_i))) (= (f (+ x@@0 second_i) first_i) (+ (+ x@@0 second_i) first_i))) (= (ControlFlow 0 2) (- 0 1))) true) (= x@1 (f (f x@@0 second_i) first_i)))))
(let ((inline$inc$1$anon0_correct  (=> (and (= x@1 (f x@0 second_i)) (= (ControlFlow 0 3) 2)) inline$inc$1$Return_correct)))
(let ((inline$inc$0$anon0_correct  (=> (and (= x@0 (f x@@0 first_i)) (= (ControlFlow 0 4) 3)) inline$inc$1$anon0_correct)))
(let ((inline$inc$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$inc$0$anon0_correct)))
inline$inc$0$Entry_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
