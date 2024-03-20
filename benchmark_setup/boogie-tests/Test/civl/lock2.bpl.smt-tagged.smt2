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
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) true)
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_Customer_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) true)
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@5 () Int)
(declare-fun b@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun b@2 () Int)
(declare-fun b@4 () Int)
(declare-fun Civl_global_old_b@2 () Int)
(declare-fun b@3 () Int)
(declare-fun b@0 () Int)
(set-info :boogie-vc-id Civl_Enter_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 19) (- 0 21)) (or false (or (= b@5 b@1) (and (= b@1 0) (= b@5 1))))) (=> (or false (or (= b@5 b@1) (and (= b@1 0) (= b@5 1)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> false (= b@5 b@1))) (=> (=> false (= b@5 b@1)) (=> (and (and (= Civl_pc@0  (=> (= b@5 b@1) false)) (= Civl_ok@0  (or (and (= b@1 0) (= b@5 1)) false))) (= (ControlFlow 0 19) (- 0 18))) Civl_ok@0)))))))
(let ((anon7_LoopDone_@2_Civl_ReturnChecker_correct  (=> (and (= b@5 b@1) (= (ControlFlow 0 26) 19)) Civl_ReturnChecker_correct)))
(let ((anon8_Then_@2_Civl_ReturnChecker_correct  (=> (and (= b@5 b@2) (= (ControlFlow 0 22) 19)) Civl_ReturnChecker_correct)))
(let ((anon6_@2_anon7_LoopHead_correct true))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (= b@4 Civl_global_old_b@2)) (=> (= b@4 Civl_global_old_b@2) (=> (= (ControlFlow 0 7) (- 0 6)) (=> false true))))))
(let ((anon6_@2_Civl_UnchangedChecker_correct  (=> (= b@4 b@3) (=> (and (= Civl_global_old_b@2 b@3) (= (ControlFlow 0 13) 7)) Civl_UnchangedChecker_correct))))
(let ((anon10_Else_@2_Civl_UnchangedChecker_correct  (=> (= b@4 b@3) (=> (and (= Civl_global_old_b@2 b@3) (= (ControlFlow 0 10) 7)) Civl_UnchangedChecker_correct))))
(let ((anon8_Else_@2_Civl_UnchangedChecker_correct  (=> (= b@4 b@2) (=> (and (= Civl_global_old_b@2 b@1) (= (ControlFlow 0 9) 7)) Civl_UnchangedChecker_correct))))
(let ((anon10_Else_@2_anon9_LoopHead_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon7_LoopDone_correct  (=> (not true) (and (=> (= (ControlFlow 0 27) 26) anon7_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 27) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon8_Then_correct  (=> (= b@1 0) (and (=> (= (ControlFlow 0 23) 22) anon8_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 23) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon10_Then_correct  (=> (= b@3 0) (and (and (=> (= (ControlFlow 0 15) 12) anon6_@2_anon7_LoopHead_correct) (=> (= (ControlFlow 0 15) 13) anon6_@2_Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 15) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon9_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 14) 12) anon6_@2_anon7_LoopHead_correct) (=> (= (ControlFlow 0 14) 13) anon6_@2_Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 14) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon10_Else_correct  (=> (not (= b@3 0)) (and (and (=> (= (ControlFlow 0 11) 5) anon10_Else_@2_anon9_LoopHead_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_@2_Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 11) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon9_LoopHead_correct  (=> (or false true) (and (and (=> (= (ControlFlow 0 16) 14) anon9_LoopDone_correct) (=> (= (ControlFlow 0 16) 15) anon10_Then_correct)) (=> (= (ControlFlow 0 16) 11) anon10_Else_correct)))))
(let ((anon8_Else_correct  (=> (not (= b@1 0)) (and (and (=> (= (ControlFlow 0 17) 9) anon8_Else_@2_Civl_UnchangedChecker_correct) (=> (= (ControlFlow 0 17) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 16) anon9_LoopHead_correct)))))
(let ((inline$AtomicCAS$0$anon2_Else_correct  (=> (and (not (= b@1 0)) (= b@2 b@1)) (and (=> (= (ControlFlow 0 25) 23) anon8_Then_correct) (=> (= (ControlFlow 0 25) 17) anon8_Else_correct)))))
(let ((inline$AtomicCAS$0$anon2_Then_correct  (=> (and (= b@1 0) (= b@2 1)) (and (=> (= (ControlFlow 0 24) 23) anon8_Then_correct) (=> (= (ControlFlow 0 24) 17) anon8_Else_correct)))))
(let ((anon7_LoopHead_correct  (=> (or false true) (and (and (=> (= (ControlFlow 0 28) 27) anon7_LoopDone_correct) (=> (= (ControlFlow 0 28) 24) inline$AtomicCAS$0$anon2_Then_correct)) (=> (= (ControlFlow 0 28) 25) inline$AtomicCAS$0$anon2_Else_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= b@0 b@0) (and (= b@0 0) (= b@0 1))))) (=> (or false (or (= b@0 b@0) (and (= b@0 0) (= b@0 1)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= b@0 b@0)))))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 29) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 29) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 29) 28) anon7_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 30) 29) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_main_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) true) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 3) (- 0 2))) Civl_ok@0))))))
(let ((anon2_LoopBody_correct true))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 7) 1) anon2_LoopBody_correct) (=> (= (ControlFlow 0 7) 3) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun b@1 () Int)
(set-info :boogie-vc-id Civl_Customer_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((anon2_LoopBody_0$1_@2_anon2_LoopHead_correct true))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) true) (=> (= (ControlFlow 0 10) (- 0 9)) (=> false true)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon2_LoopBody_0_correct  (=> (or false true) (and (and (=> (= (ControlFlow 0 13) 12) anon2_LoopBody_0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 13) 10) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 13) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (= b@1 0) (and (and (=> (= (ControlFlow 0 14) 13) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 14) 10) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 14) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopHead_correct  (=> (or false true) (and (and (=> (= (ControlFlow 0 15) 14) inline$AtomicEnter$0$anon0_correct) (=> (= (ControlFlow 0 15) 6) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 15) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 16) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 16) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 15) anon2_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
