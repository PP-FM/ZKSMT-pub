(set-logic QF_NIA)
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
(declare-fun s@2 () Int)
(declare-fun n () Int)
(declare-fun i@0 () Int)
(declare-fun s@0 () Int)
(declare-fun i@1 () Int)
(declare-fun s@1 () Int)
(set-info :boogie-vc-id sum)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (= s@2 (div (* n (+ n 1)) 2)))))
(let ((anon2_LoopDone_correct  (=> (<= n i@0) (=> (and (= s@2 s@0) (= (ControlFlow 0 6) 5)) GeneratedUnifiedExit_correct))))
(let ((anon2_LoopBody_correct  (=> (< i@0 n) (=> (and (= i@1 (+ i@0 1)) (= s@1 (+ s@0 i@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 i@1) (<= i@1 n))) (=> (and (<= 0 i@1) (<= i@1 n)) (=> (= (ControlFlow 0 2) (- 0 1)) (= s@1 (div (* i@1 (+ i@1 1)) 2)))))))))
(let ((anon2_LoopHead_correct  (=> (and (and (<= 0 i@0) (<= i@0 n)) (= s@0 (div (* i@0 (+ i@0 1)) 2))) (and (=> (= (ControlFlow 0 7) 6) anon2_LoopDone_correct) (=> (= (ControlFlow 0 7) 2) anon2_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 8) (- 0 10)) (and (<= 0 0) (<= 0 n))) (=> (and (<= 0 0) (<= 0 n)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= 0 (div (* 0 (+ 0 1)) 2))) (=> (= 0 (div (* 0 (+ 0 1)) 2)) (=> (= (ControlFlow 0 8) 7) anon2_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= n 0) (= (ControlFlow 0 11) 8)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
