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
(declare-fun IsProperIndex (Int Int) Bool)
(declare-fun n () Int)
(declare-sort T@T 0)
(declare-sort |T@[Int]T| 0)
(declare-fun |Select__T@[Int]T_| (|T@[Int]T| Int) T@T)
(declare-fun a () |T@[Int]T|)
(declare-fun zero () T@T)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i Int) ) (!  (=> (IsProperIndex i n) (let ((B_correct (= (|Select__T@[Int]T_| a i) zero)))
B_correct))
 :qid |CodeExpr2bpl.15:20|
 :skolemid |1|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((i@@0 Int) ) (!  (=> (IsProperIndex i@@0 n) (= (|Select__T@[Int]T_| a i@@0) zero))
 :qid |CodeExpr2bpl.9:20|
 :skolemid |0|
)) (= (ControlFlow 0 4) 3)) anon0_correct)))
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
(declare-fun IsProperIndex (Int Int) Bool)
(declare-fun n () Int)
(declare-sort T@T 0)
(declare-sort |T@[Int]T| 0)
(declare-fun |Select__T@[Int]T_| (|T@[Int]T| Int) T@T)
(declare-fun a () |T@[Int]T|)
(declare-fun zero () T@T)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((i Int) ) (!  (=> (IsProperIndex i n) (= (|Select__T@[Int]T_| a i) zero))
 :qid |CodeExpr2bpl.9:20|
 :skolemid |0|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((i@@0 Int) ) (!  (=> (IsProperIndex i@@0 n) (not (let ((B_correct  (not (= (|Select__T@[Int]T_| a i@@0) zero))))
B_correct)))
 :qid |CodeExpr2bpl.15:20|
 :skolemid |1|
)) (= (ControlFlow 0 3) 2)) anon0_correct)))
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
(declare-fun IsProperIndex (Int Int) Bool)
(declare-fun n () Int)
(declare-sort T@T 0)
(declare-sort |T@[Int]T| 0)
(declare-fun |Select__T@[Int]T_| (|T@[Int]T| Int) T@T)
(declare-fun a () |T@[Int]T|)
(declare-fun zero () T@T)
(set-info :boogie-vc-id A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (=> (forall ((i Int) ) (!  (=> (IsProperIndex i n) (= (|Select__T@[Int]T_| a i) zero))
 :qid |CodeExpr2bpl.23:13|
 :skolemid |2|
)) (forall ((i@@0 Int) ) (!  (=> (IsProperIndex i@@0 n) (let ((B_correct (= (|Select__T@[Int]T_| a i@@0) zero)))
B_correct))
 :qid |CodeExpr2bpl.25:13|
 :skolemid |3|
))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) anon0_correct)))
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
(declare-fun IsProperIndex (Int Int) Bool)
(declare-fun n () Int)
(declare-sort T@T 0)
(declare-sort |T@[Int]T| 0)
(declare-fun |Select__T@[Int]T_| (|T@[Int]T| Int) T@T)
(declare-fun a () |T@[Int]T|)
(declare-fun zero () T@T)
(set-info :boogie-vc-id B)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (=> (forall ((i Int) ) (!  (=> (IsProperIndex i n) (not (let ((B_correct  (not (= (|Select__T@[Int]T_| a i) zero))))
B_correct)))
 :qid |CodeExpr2bpl.31:13|
 :skolemid |4|
)) (forall ((i@@0 Int) ) (!  (=> (IsProperIndex i@@0 n) (= (|Select__T@[Int]T_| a i@@0) zero))
 :qid |CodeExpr2bpl.33:13|
 :skolemid |5|
))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) anon0_correct)))
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
(declare-fun IsProperIndex (Int Int) Bool)
(declare-fun n () Int)
(declare-sort T@T 0)
(declare-sort |T@[Int]T| 0)
(declare-fun |Select__T@[Int]T_| (|T@[Int]T| Int) T@T)
(declare-fun a () |T@[Int]T|)
(declare-fun zero () T@T)
(set-info :boogie-vc-id C)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((Start_correct  (=> (and (forall ((i Int) ) (!  (=> (IsProperIndex i n) (= (|Select__T@[Int]T_| a i) zero))
 :qid |CodeExpr2bpl.39:20|
 :skolemid |6|
)) (= (ControlFlow 0 3) (- 0 2))) (forall ((i@@0 Int) ) (!  (=> (IsProperIndex i@@0 n) (let ((B_correct (= (|Select__T@[Int]T_| a i@@0) zero)))
B_correct))
 :qid |CodeExpr2bpl.42:20|
 :skolemid |7|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 3) Start_correct)))
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
(declare-fun IsProperIndex (Int Int) Bool)
(declare-fun n () Int)
(declare-sort T@T 0)
(declare-sort |T@[Int]T| 0)
(declare-fun |Select__T@[Int]T_| (|T@[Int]T| Int) T@T)
(declare-fun a () |T@[Int]T|)
(declare-fun zero () T@T)
(set-info :boogie-vc-id D)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((Start_correct  (=> (and (forall ((i Int) ) (!  (=> (IsProperIndex i n) (not (let ((B_correct  (not (= (|Select__T@[Int]T_| a i) zero))))
B_correct)))
 :qid |CodeExpr2bpl.48:20|
 :skolemid |8|
)) (= (ControlFlow 0 2) (- 0 1))) (forall ((i@@0 Int) ) (!  (=> (IsProperIndex i@@0 n) (= (|Select__T@[Int]T_| a i@@0) zero))
 :qid |CodeExpr2bpl.51:20|
 :skolemid |9|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) Start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
