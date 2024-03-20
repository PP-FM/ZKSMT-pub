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
(declare-fun o@3 () Int)
(declare-fun o@1 () Int)
(declare-fun o@2 () Int)
(declare-fun i () Int)
(declare-fun o@0 () Int)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (< o@3 44)))))
(let ((anon6_Else_correct  (=> (and (= o@3 o@1) (= (ControlFlow 0 5) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (= o@2 (+ o@1 1)) (=> (and (= o@3 o@2) (= (ControlFlow 0 4) 2)) anon4_correct))))
(let ((anon5_Else_correct  (=> (= o@1 i) (and (=> (= (ControlFlow 0 7) 4) anon6_Then_correct) (=> (= (ControlFlow 0 7) 5) anon6_Else_correct)))))
(let ((anon5_Then_correct  (=> (and (= o@0 (+ i 1)) (= o@1 o@0)) (and (=> (= (ControlFlow 0 6) 4) anon6_Then_correct) (=> (= (ControlFlow 0 6) 5) anon6_Else_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 8) 6) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= i 42) (= (ControlFlow 0 9) 8)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
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
(declare-fun o@1 () Int)
(declare-fun |inline$SecondIncr$0$o'@1| () Int)
(declare-fun o@0 () Int)
(declare-fun |inline$FirstIncr$0$o'@1| () Int)
(declare-fun i () Int)
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (< o@1 44)))))
(let ((anon6_Then$1_correct  (=> (and (= o@1 |inline$SecondIncr$0$o'@1|) (= (ControlFlow 0 5) 2)) anon4_correct)))
(let ((inline$SecondIncr$0$anon0_correct  (=> (and (= |inline$SecondIncr$0$o'@1| (+ o@0 1)) (= (ControlFlow 0 6) 5)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (and (= o@1 o@0) (= (ControlFlow 0 4) 2)) anon4_correct)))
(let ((anon5_Then$1_correct  (=> (= o@0 |inline$FirstIncr$0$o'@1|) (and (=> (= (ControlFlow 0 8) 4) anon6_Else_correct) (=> (= (ControlFlow 0 8) 6) inline$SecondIncr$0$anon0_correct)))))
(let ((inline$FirstIncr$0$anon0_correct  (=> (and (= |inline$FirstIncr$0$o'@1| (+ i 1)) (= (ControlFlow 0 9) 8)) anon5_Then$1_correct)))
(let ((anon5_Else_correct  (=> (= o@0 i) (and (=> (= (ControlFlow 0 7) 4) anon6_Else_correct) (=> (= (ControlFlow 0 7) 6) inline$SecondIncr$0$anon0_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 10) 7) anon5_Else_correct) (=> (= (ControlFlow 0 10) 9) inline$FirstIncr$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= i 42) (= (ControlFlow 0 11) 10)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
