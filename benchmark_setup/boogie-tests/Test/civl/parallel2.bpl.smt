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
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_pc@5 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 () Int)
(declare-fun Civl_linear_tid_available@5 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 () (Array Int Int))
(declare-fun Civl_global_old_a@0 () (Array Int Int))
(declare-fun a@5 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0 () Int)
(declare-fun a@4 () (Array Int Int))
(declare-fun Civl_linear_tid_available@4 () (Array Int Bool))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun call4formal@Civl_1_i@0 () Int)
(declare-fun call3formal@Civl_0_i@0 () Int)
(declare-fun a@3 () (Array Int Int))
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun a@2 () (Array Int Int))
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun a@1 () (Array Int Int))
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun a@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun Civl_pc@4 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun call3formal@Civl_0_i@0@@0 () Int)
(declare-fun call4formal@Civl_1_i@0@@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun call1formal@Civl_0_tid@0 () Int)
(declare-fun call1formal@Civl_0_tid@0@@0 () Int)
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) true) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> Civl_pc@3 true)) (=> (=> Civl_pc@3 true) (=> (and (and (= Civl_pc@5  (=> true Civl_pc@3)) (= Civl_ok@4  (or true Civl_ok@3))) (= (ControlFlow 0 18) (- 0 17))) Civl_ok@4))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (= (select inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0)) (= (ControlFlow 0 9) (- 0 8))) (= (select inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (select a@5 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0) 42) (= (ControlFlow 0 6) (- 0 5))) (= (select a@5 inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0) 42)))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= a@5 a@4) (=> (and (= Civl_global_old_a@0 a@4) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4)) (and (and (=> (= (ControlFlow 0 21) 6) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 21) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 9) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((anon0_0_correct  (=> (and (and (and (= Civl_pc@3  (=> true Civl_pc@2)) (= Civl_ok@3  (or true Civl_ok@2))) (or Civl_pc@3 true)) (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array Int Bool)) false) call4formal@Civl_1_i@0 true) ((_ map or) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_i@0 true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_i@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) call4formal@Civl_1_i@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 22) 18) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 22) 21) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (= a@5 a@3) (=> (and (= Civl_global_old_a@0 a@3) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3)) (and (and (=> (= (ControlFlow 0 15) 6) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 15) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 9) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((anon0_2_@2_Civl_NoninterferenceChecker_correct  (=> (= a@5 a@2) (=> (and (= Civl_global_old_a@0 a@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2)) (and (and (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 13) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 9) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((anon0_3_@2_Civl_NoninterferenceChecker_correct  (=> (= a@5 a@1) (=> (and (= Civl_global_old_a@0 a@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@1)) (and (and (=> (= (ControlFlow 0 11) 6) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 11) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 9) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= a@5 a@0) (=> (and (= Civl_global_old_a@0 a@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0)) (and (and (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@4 true)))))
(let ((anon0_1_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@4 Civl_pc@2) (= (ControlFlow 0 16) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_1_correct  (=> (and (and (and (= Civl_pc@2  (=> true Civl_pc@1)) (= Civl_ok@2  (or true Civl_ok@1))) (or Civl_pc@2 true)) (and (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_i@0@@0 true) ((_ map or) (store ((as const (Array Int Bool)) false) call4formal@Civl_1_i@0@@0 true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) call4formal@Civl_1_i@0@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_i@0@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (and (=> (= (ControlFlow 0 23) 22) anon0_0_correct) (=> (= (ControlFlow 0 23) 15) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 16) anon0_1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_2_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@4 Civl_pc@1) (= (ControlFlow 0 14) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_2_correct  (=> (and (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (or Civl_pc@1 true)) (and (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array Int Bool)) false) call1formal@Civl_0_tid@0 true) ((_ map or) (store ((as const (Array Int Bool)) false) call1formal@Civl_0_tid@0@@0 true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid@@1 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) call1formal@Civl_0_tid@0@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) call1formal@Civl_0_tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)))) (and (and (=> (= (ControlFlow 0 24) 23) anon0_1_correct) (=> (= (ControlFlow 0 24) 13) anon0_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 14) anon0_2_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_3_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@4 Civl_pc@0) (= (ControlFlow 0 12) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_3_correct  (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array Int Bool)) false) call1formal@Civl_0_tid@0@@0 true) ((as const (Array Int Bool)) false))))) (and (and (=> (= (ControlFlow 0 25) 24) anon0_2_correct) (=> (= (ControlFlow 0 25) 11) anon0_3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 25) 12) anon0_3_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_@2_Civl_RefinementChecker_correct  (=> (and (= Civl_pc@4 false) (= (ControlFlow 0 4) 2)) Civl_RefinementChecker_correct)))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((as const (Array Int Bool)) false)) (and (and (=> (= (ControlFlow 0 26) 25) anon0_3_correct) (=> (= (ControlFlow 0 26) 10) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 4) anon0_@2_Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 26) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
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
(declare-fun |i'| () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 () (Array Int Int))
(declare-fun Civl_global_old_a@0 () (Array Int Int))
(declare-fun a@3 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0 () Int)
(declare-fun a@2 () (Array Int Int))
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun a@1 () (Array Int Int))
(declare-fun a@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_t_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) true) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> Civl_pc@0 (= |i'| |i'|))) (=> (=> Civl_pc@0 (= |i'| |i'|)) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true (and (= |i'| |i'|) Civl_ok@0)))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@1))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (= (select inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0)) (= (ControlFlow 0 8) (- 0 7))) (= (select inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (select a@3 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0) 42) (= (ControlFlow 0 5) (- 0 4))) (= (select a@3 inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0) 42)))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= a@3 a@2) (=> (and (= Civl_global_old_a@0 a@2) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (and (=> (= (ControlFlow 0 14) 5) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 14) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 8) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= |i'| i) false)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (= (select a@1 |i'|) (select a@1 |i'|))) (=> (= (select a@1 |i'|) (select a@1 |i'|)) (=> (= (select a@1 |i'|) (select a@2 |i'|)) (=> (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array Int Bool)) false) |i'| true) ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= (select a@2 |i'|) 42)) (=> (= (select a@2 |i'|) 42) (and (=> (= (ControlFlow 0 15) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 14) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= a@3 a@1) (=> (and (= Civl_global_old_a@0 a@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 9) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 8) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= |i'| i))))))
(let ((inline$AtomicWrite$0$anon0_correct  (=> (= a@1 (store a@0 |i'| 42)) (and (and (=> (= (ControlFlow 0 18) 15) anon0_0_correct) (=> (= (ControlFlow 0 18) 9) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) |i'| true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 19) 18)) inline$AtomicWrite$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
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
(declare-fun Civl_pc@0 () Bool)
(declare-fun |i'| () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 () (Array Int Int))
(declare-fun Civl_global_old_a@0 () (Array Int Int))
(declare-fun a@3 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0 () Int)
(declare-fun a@2 () (Array Int Int))
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun a@1 () (Array Int Int))
(declare-fun a@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_u_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) true) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> Civl_pc@0 (= |i'| |i'|))) (=> (=> Civl_pc@0 (= |i'| |i'|)) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true (and (= |i'| |i'|) Civl_ok@0)))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@1))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (= (select inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0)) (= (ControlFlow 0 8) (- 0 7))) (= (select inline$Civl_NoninterferenceChecker_yield_Yield$0$old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (select a@3 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_u_1$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0) 42) (= (ControlFlow 0 5) (- 0 4))) (= (select a@3 inline$Civl_NoninterferenceChecker_impl_u_1$0$i@0) 42)))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= a@3 a@2) (=> (and (= Civl_global_old_a@0 a@2) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (and (=> (= (ControlFlow 0 14) 5) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 14) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 8) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (= |i'| i) false)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= (select a@1 |i'|) 42)) (=> (= (select a@1 |i'|) 42) (=> (or Civl_pc@0 true) (=> (and (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array Int Bool)) false) |i'| true) ((as const (Array Int Bool)) false))) (= (select a@2 |i'|) 42)) (and (=> (= (ControlFlow 0 15) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 14) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= a@3 a@1) (=> (and (= Civl_global_old_a@0 a@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_impl_u_1$0$L0_correct) (=> (= (ControlFlow 0 9) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 8) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= |i'| i))))))
(let ((inline$AtomicWrite$0$anon0_correct  (=> (= a@1 (store a@0 |i'| 42)) (and (and (=> (= (ControlFlow 0 17) 15) anon0_0_correct) (=> (= (ControlFlow 0 17) 9) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 17) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) |i'| true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 18) 17)) inline$AtomicWrite$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)