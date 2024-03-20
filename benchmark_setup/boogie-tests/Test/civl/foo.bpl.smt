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
(declare-fun g@0 () Int)
(declare-fun g@1 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_PB_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct  (=> (and (= g@0 3) (= (ControlFlow 0 6) (- 0 5))) (= g@1 3))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (= g@1 (+ g@0 1)) (and (and (=> (= (ControlFlow 0 8) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct)) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 9) 8) inline$AtomicIncr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 6) (- 5))))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_PC_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= 3 3))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct  (=> (and (= g@0 3) (= (ControlFlow 0 6) (- 0 5))) (= 3 3))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_g@0 () Int)
(declare-fun g@2 () Int)
(declare-fun g@1 () Int)
(declare-fun g@0 () Int)
(set-info :boogie-vc-id Civl_PE_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) true) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 9) (- 0 8))) Civl_ok@1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct  (=> (and (= Civl_global_old_g@0 3) (= (ControlFlow 0 5) (- 0 4))) (= g@2 3))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (= g@2 g@1) (= Civl_global_old_g@0 g@1)) (and (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct) (=> (= (ControlFlow 0 12) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (= g@1 3) (or Civl_pc@0 true))) (and (=> (= (ControlFlow 0 13) 9) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 12) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (= g@2 g@0) (= Civl_global_old_g@0 g@0)) (and (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 14) 13) anon0_0_correct) (=> (= (ControlFlow 0 14) 7) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 14) 2) Civl_RefinementChecker_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_g@0 () Int)
(declare-fun g@2 () Int)
(declare-fun g@1 () Int)
(declare-fun g@0 () Int)
(set-info :boogie-vc-id Civl_PD_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) true) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 9) (- 0 8))) Civl_ok@1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct  (=> (and (= Civl_global_old_g@0 3) (= (ControlFlow 0 5) (- 0 4))) (= g@2 3))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (= g@2 g@1) (= Civl_global_old_g@0 g@1)) (and (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct) (=> (= (ControlFlow 0 12) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (= g@1 3) (or Civl_pc@0 true))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= g@1 3)) (=> (= g@1 3) (and (=> (= (ControlFlow 0 13) 9) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 12) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (= g@2 g@0) (= Civl_global_old_g@0 g@0)) (and (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 15) 13) anon0_0_correct) (=> (= (ControlFlow 0 15) 7) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 15) 2) Civl_RefinementChecker_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-fun g@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_Main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct  (=> (and (= g@0 3) (= (ControlFlow 0 7) (- 0 6))) (= g@0 3))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) true) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 3) (- 0 2))) Civl_ok@0))))))
(let ((anon2_LoopBody_correct true))
(let ((anon0_correct  (and (and (and (=> (= (ControlFlow 0 9) 1) anon2_LoopBody_correct) (=> (= (ControlFlow 0 9) 3) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 9) 7) inline$Civl_NoninterferenceChecker_proc_PC_1$0$L0_correct)) (=> (= (ControlFlow 0 9) 8) Civl_NoninterferenceChecker$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
