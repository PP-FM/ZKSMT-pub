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
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 () (Array Int Bool))
(declare-fun Civl_linear_Perm_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_g@0 () Int)
(declare-fun g@3 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 () (Array Int Bool))
(declare-fun g@2 () Int)
(declare-fun Civl_linear_Perm_available@1 () (Array Int Bool))
(declare-fun permVar_in () (Array Int Bool))
(declare-fun g@1 () Int)
(declare-fun g@0 () Int)
(declare-fun Civl_linear_Perm_available@0 () (Array Int Bool))
(declare-fun g () Int)
(set-info :boogie-vc-id Civl_PB_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 12) (- 0 11))) Civl_ok@1))))))
(let ((inline$Civl_NoninterferenceChecker_impl_PB_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_PB_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (select inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 0) (= Civl_global_old_g@0 1)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (select inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 0)) (=> (select inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 0) (=> (= (ControlFlow 0 8) (- 0 7)) (= g@3 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PB_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_PB_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (select inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 0) (= Civl_global_old_g@0 0)) (= (ControlFlow 0 5) (- 0 4))) (and (select inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 0) (= g@3 0))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= g@3 g@2) (=> (and (= Civl_global_old_g@0 g@2) (= Civl_linear_Perm_available@2 Civl_linear_Perm_available@1)) (and (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_proc_PB_1$0$L0_correct) (=> (= (ControlFlow 0 15) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_impl_PB_1$0$L0_correct))))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (select permVar_in 0)) (=> (select permVar_in 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= g@1 1)) (=> (= g@1 1) (=> (and (and (or Civl_pc@0 true) (= Civl_linear_Perm_available@1 ((_ map or) permVar_in ((as const (Array Int Bool)) false)))) (and (select permVar_in 0) (= g@2 1))) (and (=> (= (ControlFlow 0 16) 12) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 16) 15) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= g@3 g@1) (=> (and (= Civl_global_old_g@0 g@0) (= Civl_linear_Perm_available@2 Civl_linear_Perm_available@0)) (and (and (=> (= (ControlFlow 0 10) 5) inline$Civl_NoninterferenceChecker_proc_PB_1$0$L0_correct) (=> (= (ControlFlow 0 10) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 8) inline$Civl_NoninterferenceChecker_impl_PB_1$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((inline$AtomicIncrG$0$anon0_correct  (=> (= g@1 (+ g@0 1)) (and (and (=> (= (ControlFlow 0 19) 16) anon0_0_correct) (=> (= (ControlFlow 0 19) 10) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 19) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (and (select permVar_in 0) (= g@0 0)) (= Civl_linear_Perm_available@0 ((_ map or) permVar_in ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (select permVar_in 0)) (=> (select permVar_in 0) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= g@0 0)) (=> (= g@0 0) (=> (= (ControlFlow 0 20) 19) inline$AtomicIncrG$0$anon0_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (select permVar_in 0) (= g 0)) (= (ControlFlow 0 23) 20)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
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
(declare-fun inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 () (Array Int Bool))
(declare-fun Civl_linear_Perm_available@0 () (Array Int Bool))
(declare-fun g@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Permissions () (Array Int Bool))
(set-info :boogie-vc-id Civl_Main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((inline$Civl_NoninterferenceChecker_impl_PB_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_PB_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (select inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 0) (= g@0 1)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (select inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 0)) (=> (select inline$Civl_NoninterferenceChecker_impl_PB_1$0$permVar_out@0 0) (=> (= (ControlFlow 0 9) (- 0 8)) (= 0 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_PB_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_PB_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_PB_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (select inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 0) (= g@0 0)) (= (ControlFlow 0 6) (- 0 5))) (and (select inline$Civl_NoninterferenceChecker_proc_PB_1$0$permVar_in@0 0) (= 0 0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (select Permissions 0) (= 0 0))) (=> (and (select Permissions 0) (= 0 0)) (and (and (and (=> (= (ControlFlow 0 11) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 6) inline$Civl_NoninterferenceChecker_proc_PB_1$0$L0_correct)) (=> (= (ControlFlow 0 11) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 9) inline$Civl_NoninterferenceChecker_impl_PB_1$0$L0_correct))))))
(let ((anon0_correct  (=> (= Permissions ((as const (Array Int Bool)) true)) (=> (and (= Civl_linear_Perm_available@0 ((_ map or) Permissions ((as const (Array Int Bool)) false))) (= (ControlFlow 0 13) 11)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= Permissions ((as const (Array Int Bool)) true)) (= (ControlFlow 0 14) 13)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
