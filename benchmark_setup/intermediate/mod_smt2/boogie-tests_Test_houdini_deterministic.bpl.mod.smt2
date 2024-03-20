(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
(set-logic QF_UFLIA)
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
(declare-fun x2 () Int)
(set-info :boogie-vc-id Check)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon0$2_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= 0 0))))
(let ((inline$Foo$1$Return_correct  (=> (= (ControlFlow 0 5) 4) anon0$2_correct)))
(let ((inline$Foo$1$anon4_Else_correct  (=> (and (>= 0 x2) (= (ControlFlow 0 6) 5)) inline$Foo$1$Return_correct)))
(let ((inline$Foo$1$anon4_Then_correct true))
(let ((inline$Foo$0$Return_correct  (and (=> (= (ControlFlow 0 7) 2) inline$Foo$1$anon4_Then_correct) (=> (= (ControlFlow 0 7) 6) inline$Foo$1$anon4_Else_correct))))
(let ((inline$Foo$0$anon4_Else_correct  (=> (and (>= 0 x2) (= (ControlFlow 0 8) 7)) inline$Foo$0$Return_correct)))
(let ((inline$Foo$0$anon4_Then_correct true))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 9) 1) inline$Foo$0$anon4_Then_correct) (=> (= (ControlFlow 0 9) 8) inline$Foo$0$anon4_Else_correct))))
anon0_correct)))))))))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
