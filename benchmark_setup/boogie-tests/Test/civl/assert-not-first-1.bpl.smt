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
(declare-fun inline$BAR$0$inline$FOO$0$o@3 () Int)
(declare-fun o () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun b () Bool)
(declare-fun inline$BAR$0$inline$FOO$0$o@1 () Int)
(declare-fun inline$BAR$0$inline$FOO$0$o@2 () Int)
(declare-fun i () Int)
(declare-fun Trigger_BAR_inline$FOO$0$o (Int) Bool)
(declare-fun inline$BAR$0$inline$FOO$0$o@0 () Int)
(declare-fun Trigger_BAR_inline$FOO$0$i (Int) Bool)
(declare-fun inline$BAR$0$inline$FOO$0$i@0 () Int)
(declare-fun Trigger_BAR_inline$FOO$0$b (Bool) Bool)
(declare-fun inline$BAR$0$inline$FOO$0$b@0 () Bool)
(set-info :boogie-vc-id Civl_P_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= inline$BAR$0$inline$FOO$0$o@3 o))) (=> (=> false (= inline$BAR$0$inline$FOO$0$o@3 o)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= inline$BAR$0$inline$FOO$0$o@3 o) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$BAR$0$inline$FOO$0$anon2_Else_correct  (=> (and (not b) (= inline$BAR$0$inline$FOO$0$o@3 inline$BAR$0$inline$FOO$0$o@1)) (and (=> (= (ControlFlow 0 7) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 7) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$BAR$0$inline$FOO$0$anon2_Then_correct  (=> b (=> (and (= inline$BAR$0$inline$FOO$0$o@2 (+ i 1)) (= inline$BAR$0$inline$FOO$0$o@3 inline$BAR$0$inline$FOO$0$o@2)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$BAR$0$anon0_correct  (=> (Trigger_BAR_inline$FOO$0$o inline$BAR$0$inline$FOO$0$o@0) (=> (and (Trigger_BAR_inline$FOO$0$i inline$BAR$0$inline$FOO$0$i@0) (Trigger_BAR_inline$FOO$0$b inline$BAR$0$inline$FOO$0$b@0)) (and (=> (= (ControlFlow 0 8) 6) inline$BAR$0$inline$FOO$0$anon2_Then_correct) (=> (= (ControlFlow 0 8) 7) inline$BAR$0$inline$FOO$0$anon2_Else_correct))))))
(let ((anon0_correct  (=> (=> b (>= i 0)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> b (> (+ i 1) 0))) (=> (=> b (> (+ i 1) 0)) (=> (= (ControlFlow 0 9) 8) inline$BAR$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (=> b (>= i 0)) (= (ControlFlow 0 11) 9)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
