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
(declare-fun inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 () (Array Int Bool))
(declare-fun Civl_linear_Perm_available@0 () (Array Int Bool))
(declare-fun x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun permVar_in () (Array Int Bool))
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_mainE_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20) (let ((inline$Civl_NoninterferenceChecker_impl_foo_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_foo_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (select inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 1) (= x@0 1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (select inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 1)) (=> (select inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 1) (=> (= (ControlFlow 0 14) (- 0 13)) (= x@0 1))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_mainE_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_mainE_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((as const (Array Int Bool)) true)) (= x@0 0)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((as const (Array Int Bool)) true))) (=> (= inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((as const (Array Int Bool)) true)) (=> (= (ControlFlow 0 11) (- 0 10)) (= x@0 0))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_foo_1$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_proc_foo_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (not (= inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((as const (Array Int Bool)) false)))) (and (select inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 1) (= x@0 0))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (not (= inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((as const (Array Int Bool)) false)))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((as const (Array Int Bool)) false))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (select inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 1)) (=> (select inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 1) (=> (= (ControlFlow 0 6) (- 0 5)) (= x@0 0)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (= permVar_in ((as const (Array Int Bool)) true)) (=> (and (= x@0 0) (= Civl_linear_Perm_available@0 ((_ map or) permVar_in ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (not (= permVar_in ((as const (Array Int Bool)) false)))) (=> (not (= permVar_in ((as const (Array Int Bool)) false))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (select permVar_in 1)) (=> (select permVar_in 1) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= x@0 0)) (=> (= x@0 0) (and (and (and (and (=> (= (ControlFlow 0 16) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 16) 6) inline$Civl_NoninterferenceChecker_proc_foo_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 11) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 14) inline$Civl_NoninterferenceChecker_impl_foo_1$0$L0_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= permVar_in ((as const (Array Int Bool)) true)) (=> (and (= x@@0 0) (= (ControlFlow 0 20) 16)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
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
(declare-fun inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 () (Array Int Bool))
(declare-fun Civl_linear_Perm_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@3 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 () (Array Int Bool))
(declare-fun x@2 () Int)
(declare-fun Civl_linear_Perm_available@1 () (Array Int Bool))
(declare-fun permVar_in () (Array Int Bool))
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_linear_Perm_available@0 () (Array Int Bool))
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_foo_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 17) (- 0 19)) true) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 17) (- 0 16))) Civl_ok@1))))))
(let ((inline$Civl_NoninterferenceChecker_impl_foo_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_foo_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (select inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 1) (= Civl_global_old_x@0 1)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (select inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 1)) (=> (select inline$Civl_NoninterferenceChecker_impl_foo_1$0$permVar_out@0 1) (=> (= (ControlFlow 0 13) (- 0 12)) (= x@3 1))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_mainE_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_mainE_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((as const (Array Int Bool)) true)) (= Civl_global_old_x@0 0)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((as const (Array Int Bool)) true))) (=> (= inline$Civl_NoninterferenceChecker_proc_mainE_1$0$permVar_in@0 ((as const (Array Int Bool)) true)) (=> (= (ControlFlow 0 10) (- 0 9)) (= x@3 0))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_foo_1$0$L0_correct  (=> (and (and (exists ((inline$Civl_NoninterferenceChecker_proc_foo_1$0$Civl_partition_Perm (Array Int Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_Perm_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_foo_1$0$Civl_partition_Perm ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (not (= inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((as const (Array Int Bool)) false)))) (and (select inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 1) (= Civl_global_old_x@0 0))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (not (= inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((as const (Array Int Bool)) false)))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 ((as const (Array Int Bool)) false))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (select inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 1)) (=> (select inline$Civl_NoninterferenceChecker_proc_foo_1$0$permVar_in@0 1) (=> (= (ControlFlow 0 5) (- 0 4)) (= x@3 0)))))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= x@3 x@2) (=> (and (= Civl_global_old_x@0 x@2) (= Civl_linear_Perm_available@2 Civl_linear_Perm_available@1)) (and (and (and (=> (= (ControlFlow 0 20) 5) inline$Civl_NoninterferenceChecker_proc_foo_1$0$L0_correct) (=> (= (ControlFlow 0 20) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 20) 10) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$L0_correct)) (=> (= (ControlFlow 0 20) 13) inline$Civl_NoninterferenceChecker_impl_foo_1$0$L0_correct))))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (select permVar_in 1)) (=> (select permVar_in 1) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= x@1 1)) (=> (= x@1 1) (=> (and (and (or Civl_pc@0 true) (= Civl_linear_Perm_available@1 ((_ map or) permVar_in ((as const (Array Int Bool)) false)))) (and (select permVar_in 1) (= x@2 1))) (and (=> (= (ControlFlow 0 21) 17) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 21) 20) anon0_0_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= x@3 x@1) (=> (and (= Civl_global_old_x@0 x@0) (= Civl_linear_Perm_available@2 Civl_linear_Perm_available@0)) (and (and (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_proc_foo_1$0$L0_correct) (=> (= (ControlFlow 0 15) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_proc_mainE_1$0$L0_correct)) (=> (= (ControlFlow 0 15) 13) inline$Civl_NoninterferenceChecker_impl_foo_1$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (= x@1 (+ x@0 1)) (and (and (=> (= (ControlFlow 0 24) 21) anon0_0_correct) (=> (= (ControlFlow 0 24) 15) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (not (= permVar_in ((as const (Array Int Bool)) false))) (=> (and (and (select permVar_in 1) (= x@0 0)) (and (= Civl_linear_Perm_available@0 ((_ map or) permVar_in ((as const (Array Int Bool)) false))) (= (ControlFlow 0 25) 24))) inline$AtomicIncr$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= permVar_in ((as const (Array Int Bool)) false))) (select permVar_in 1)) (and (= x@@0 0) (= (ControlFlow 0 26) 25))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
