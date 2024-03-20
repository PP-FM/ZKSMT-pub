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
(declare-fun n () Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 34) (let ((anon32_Else_correct true))
(let ((anon32_Then_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= n 2) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= n 2)) (= (ControlFlow 0 17) (- 0 16))) (= n 3))))
(let ((anon31_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 19) 17) anon32_Then_correct) (=> (= (ControlFlow 0 19) 18) anon32_Else_correct)))))
(let ((anon31_Else_correct true))
(let ((anon30_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 20) 19) anon31_Then_correct) (=> (= (ControlFlow 0 20) 15) anon31_Else_correct)))))
(let ((anon30_Else_correct true))
(let ((anon29_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 21) 20) anon30_Then_correct) (=> (= (ControlFlow 0 21) 14) anon30_Else_correct)))))
(let ((anon29_Else_correct true))
(let ((anon28_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 22) 21) anon29_Then_correct) (=> (= (ControlFlow 0 22) 13) anon29_Else_correct)))))
(let ((anon28_Else_correct true))
(let ((anon27_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 23) 22) anon28_Then_correct) (=> (= (ControlFlow 0 23) 12) anon28_Else_correct)))))
(let ((anon27_Else_correct true))
(let ((anon26_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 24) 23) anon27_Then_correct) (=> (= (ControlFlow 0 24) 11) anon27_Else_correct)))))
(let ((anon26_Else_correct true))
(let ((anon25_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 25) 24) anon26_Then_correct) (=> (= (ControlFlow 0 25) 10) anon26_Else_correct)))))
(let ((anon25_Else_correct true))
(let ((anon24_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 26) 25) anon25_Then_correct) (=> (= (ControlFlow 0 26) 9) anon25_Else_correct)))))
(let ((anon24_Else_correct true))
(let ((anon23_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 27) 26) anon24_Then_correct) (=> (= (ControlFlow 0 27) 8) anon24_Else_correct)))))
(let ((anon23_Else_correct true))
(let ((anon22_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 28) 27) anon23_Then_correct) (=> (= (ControlFlow 0 28) 7) anon23_Else_correct)))))
(let ((anon22_Else_correct true))
(let ((anon21_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 29) 28) anon22_Then_correct) (=> (= (ControlFlow 0 29) 6) anon22_Else_correct)))))
(let ((anon21_Else_correct true))
(let ((anon20_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 30) 29) anon21_Then_correct) (=> (= (ControlFlow 0 30) 5) anon21_Else_correct)))))
(let ((anon20_Else_correct true))
(let ((anon19_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 31) 30) anon20_Then_correct) (=> (= (ControlFlow 0 31) 4) anon20_Else_correct)))))
(let ((anon19_Else_correct true))
(let ((anon18_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 32) 31) anon19_Then_correct) (=> (= (ControlFlow 0 32) 3) anon19_Else_correct)))))
(let ((anon18_Else_correct true))
(let ((anon17_Then_correct  (=> (= n 2) (and (=> (= (ControlFlow 0 33) 32) anon18_Then_correct) (=> (= (ControlFlow 0 33) 2) anon18_Else_correct)))))
(let ((anon17_Else_correct true))
(let ((anon0_correct  (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or true true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) true) (= n 2)) (and (=> (= (ControlFlow 0 34) 33) anon17_Then_correct) (=> (= (ControlFlow 0 34) 1) anon17_Else_correct)))))
anon0_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-proof)
(assert (not (= (ControlFlow 0 17) (- 16))))
(check-sat)
(get-proof)
(pop 1)
; Invalid
(get-info :rlimit)
