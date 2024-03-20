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
(declare-fun f (Int) Bool)
(assert (forall ((x Int) ) (!  (=> (>= x 0) (f x))
 :qid |Impliesbpl.11:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=  (=> a (=> (=> b c) d))  (=> a (=> (=> b c) d)))) (=> (=  (=> a (=> (=> b c) d))  (=> a (=> (=> b c) d))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=  (=> a (=> b c))  (=> (=> a b) c))) (=> (=  (=> a (=> b c))  (=> (=> a b) c)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (f 23)) (=> (f 23) (=> (= (ControlFlow 0 2) (- 0 1)) (f (- 0 5)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 4))))
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
(declare-fun f (Int) Bool)
(assert (forall ((x Int) ) (!  (=> (>= x 0) (f x))
 :qid |Impliesbpl.11:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Q0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= x@@0 2)) (=> (= x@@0 2) (=> (= (ControlFlow 0 2) (- 0 1)) (= x@@0 2))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun f (Int) Bool)
(assert (forall ((x Int) ) (!  (=> (>= x 0) (f x))
 :qid |Impliesbpl.11:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Q1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= x@@0 2)) (=> (= (ControlFlow 0 2) (- 0 1)) (= x@@0 2)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun f (Int) Bool)
(assert (forall ((x Int) ) (!  (=> (>= x 0) (f x))
 :qid |Impliesbpl.11:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Q2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= x@@0 2)) (=> (= x@@0 2) (=> (= (ControlFlow 0 2) (- 0 1)) (= x@@0 2))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun f (Int) Bool)
(assert (forall ((x Int) ) (!  (=> (>= x 0) (f x))
 :qid |Impliesbpl.11:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Q3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= x@@0 2)) (=> (= (ControlFlow 0 2) (- 0 1)) (= x@@0 2)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
