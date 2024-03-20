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
(declare-fun S@0 () (Array Int Bool))
(declare-fun S () (Array Int Bool))
(declare-fun second_t () Int)
(declare-fun n@0 () Int)
(declare-fun n () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_read_n_atomic_inc_n)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_inc_n$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= S@0 (store S second_t true)) (= n@0 (+ n 1))) (= n n@0))))))
(let ((inline$atomic_inc_n$0$anon0_correct  (=> (= S@0 (store S second_t true)) (=> (and (= n@0 (+ n 1)) (= (ControlFlow 0 3) 2)) inline$atomic_inc_n$0$Return_correct))))
(let ((inline$atomic_read_n$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_t true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) S ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (not (select S second_t)) (= (ControlFlow 0 4) 3)) inline$atomic_inc_n$0$anon0_correct))))
inline$atomic_read_n$0$Entry_correct))))
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
(declare-fun S@0 () (Array Int Bool))
(declare-fun t () Int)
(declare-fun S () (Array Int Bool))
(declare-fun n@0 () Int)
(declare-fun n () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_inc_n)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_inc_n$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) S@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) t true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) S ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_inc_n$0$anon0_correct  (=> (= S@0 (store S t true)) (=> (and (= n@0 (+ n 1)) (= (ControlFlow 0 3) 2)) inline$atomic_inc_n$0$Return_correct))))
(let ((inline$atomic_inc_n$0$Entry_correct  (=> (and (not (select S t)) (= (ControlFlow 0 4) 3)) inline$atomic_inc_n$0$anon0_correct)))
inline$atomic_inc_n$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
