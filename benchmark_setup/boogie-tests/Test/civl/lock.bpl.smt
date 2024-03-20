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
(declare-fun b@3 () Bool)
(declare-fun b@1 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun b@2 () Bool)
(declare-fun inline$AtomicCAS$0$status@2 () Bool)
(declare-fun b@0 () Bool)
(set-info :boogie-vc-id Civl_Enter_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (or false (or (= b@3 b@1) (and (not b@1) (= b@3 true))))) (=> (or false (or (= b@3 b@1) (and (not b@1) (= b@3 true)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> false (= b@3 b@1))) (=> (=> false (= b@3 b@1)) (=> (and (and (= Civl_pc@0  (=> (= b@3 b@1) false)) (= Civl_ok@0  (or (and (not b@1) (= b@3 true)) false))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@0)))))))
(let ((anon3_LoopDone_@2_Civl_ReturnChecker_correct  (=> (and (= b@3 b@1) (= (ControlFlow 0 18) 11)) Civl_ReturnChecker_correct)))
(let ((anon4_Then_@2_Civl_ReturnChecker_correct  (=> (and (= b@3 b@2) (= (ControlFlow 0 14) 11)) Civl_ReturnChecker_correct)))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (= b@2 b@1)) (=> (= b@2 b@1) (=> (= (ControlFlow 0 7) (- 0 6)) (=> false true))))))
(let ((anon4_Else_@2_anon3_LoopHead_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon3_LoopDone_correct  (=> (not true) (and (=> (= (ControlFlow 0 19) 18) anon3_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 19) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Then_correct  (=> inline$AtomicCAS$0$status@2 (and (=> (= (ControlFlow 0 15) 14) anon4_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Else_correct  (=> (not inline$AtomicCAS$0$status@2) (and (and (=> (= (ControlFlow 0 9) 5) anon4_Else_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 9) 7) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicCAS$0$anon3_Else_correct  (=> (= b@1  (not false)) (=> (and (= b@2 b@1) (= inline$AtomicCAS$0$status@2 false)) (and (=> (= (ControlFlow 0 17) 15) anon4_Then_correct) (=> (= (ControlFlow 0 17) 9) anon4_Else_correct))))))
(let ((inline$AtomicCAS$0$anon3_Then_correct  (=> (= b@1 false) (=> (and (= b@2 true) (= inline$AtomicCAS$0$status@2 true)) (and (=> (= (ControlFlow 0 16) 15) anon4_Then_correct) (=> (= (ControlFlow 0 16) 9) anon4_Else_correct))))))
(let ((anon3_LoopHead_correct  (=> (or false true) (and (and (=> (= (ControlFlow 0 20) 19) anon3_LoopDone_correct) (=> (= (ControlFlow 0 20) 16) inline$AtomicCAS$0$anon3_Then_correct)) (=> (= (ControlFlow 0 20) 17) inline$AtomicCAS$0$anon3_Else_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= b@0 b@0) (and (not b@0) (= b@0 true))))) (=> (or false (or (= b@0 b@0) (and (not b@0) (= b@0 true)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= b@0 b@0)))))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 21) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 21) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 20) anon3_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-fun b@1 () Bool)
(set-info :boogie-vc-id Civl_Customer_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((anon2_LoopBody_0$1_@2_anon2_LoopHead_correct true))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) true) (=> (= (ControlFlow 0 10) (- 0 9)) (=> false true)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon2_LoopBody_0_correct  (=> (or false true) (and (and (=> (= (ControlFlow 0 13) 12) anon2_LoopBody_0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 13) 10) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 13) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (not b@1) (and (and (=> (= (ControlFlow 0 14) 13) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 14) 10) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 14) 4) Civl_NoninterferenceChecker$1_correct)))))
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
