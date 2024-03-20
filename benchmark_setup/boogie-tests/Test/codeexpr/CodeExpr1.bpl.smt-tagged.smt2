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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id F)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((start_correct  (=> (and (= z@0  (not (forall ((a Bool) (b Bool) (a@0 Bool) )  (=> (tickleBool a@0) (=> (tickleBool b) (=> (tickleBool a) (let ((B_correct  (=> (= a@0 (< x 3)) (not a@0))))
B_correct))))))) (= (ControlFlow 0 2) (- 0 1))) (= z@0 (< x 3)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< x y) (= (ControlFlow 0 4) 2)) start_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun r (Int) Bool)
(set-info :boogie-vc-id |F'|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (< x y) (=> (and (forall ((t Int) ) (!  (=> (< x (+ 3 t)) (r t))
 :qid |CodeExpr1bpl.20:20|
 :skolemid |0|
)) (= (ControlFlow 0 2) (- 0 1))) (r y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun r (Int) Bool)
(set-info :boogie-vc-id |F''|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((start_correct  (=> (< x y) (=> (and (forall ((t Int) ) (!  (not (forall ((a Bool) (a@0 Bool) )  (=> (tickleBool a@0) (=> (tickleBool a) (let ((Y_correct  (=> (not a@0) (not true))))
(let ((X_correct  (=> a@0 (not (r t)))))
(let ((Start_correct  (=> (= a@0 (< x (+ 3 t))) (and X_correct Y_correct))))
Start_correct)))))))
 :qid |CodeExpr1bpl.28:20|
 :skolemid |1|
)) (= (ControlFlow 0 2) (- 0 1))) (r y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) start_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id G)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((start_correct  (=> (and (= z@0  (not (forall ((a Bool) (b Bool) (a@0 Bool) )  (=> (tickleBool a@0) (=> (tickleBool b) (=> (tickleBool a) (let ((B_correct  (=> (= a@0 (< x 3)) (not (not a@0)))))
B_correct))))))) (= (ControlFlow 0 2) (- 0 1))) (= z@0 (< x 3)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< x y) (= (ControlFlow 0 4) 2)) start_correct)))
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
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun r (Int) Bool)
(set-info :boogie-vc-id |G'|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (< x y) (=> (and (forall ((t Int) ) (!  (=> (< (+ x 3) t) (r t))
 :qid |CodeExpr1bpl.53:20|
 :skolemid |2|
)) (= (ControlFlow 0 2) (- 0 1))) (r y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
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
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun r (Int) Bool)
(set-info :boogie-vc-id |G''|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((start_correct  (=> (< x y) (=> (and (forall ((t Int) ) (!  (not (forall ((a Bool) (a@0 Bool) )  (=> (tickleBool a@0) (=> (tickleBool a) (let ((Y_correct  (=> (not a@0) (not true))))
(let ((X_correct  (=> a@0 (not (r t)))))
(let ((Start_correct  (=> (= a@0 (< (+ x 3) t)) (and X_correct Y_correct))))
Start_correct)))))))
 :qid |CodeExpr1bpl.61:20|
 :skolemid |3|
)) (= (ControlFlow 0 2) (- 0 1))) (r y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
