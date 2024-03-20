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
 :skolemid |1|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@2 () (Array Int Bool))
(declare-fun count@2 () Int)
(declare-fun Civl_global_old_unallocated@1 () (Array Int Bool))
(declare-fun Civl_global_old_count@1 () Int)
(declare-fun unallocated@3 () (Array Int Bool))
(declare-fun count@3 () Int)
(declare-fun count@1 () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun call3formal@Civl_0_tid@0 () Int)
(declare-fun call4formal@Civl_0_i@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun count@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(declare-fun count () Int)
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((Civl_ReturnChecker_correct true))
(let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((x@@0 Int) ) (!  (or (select unallocated@2 x@@0) (< x@@0 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_UnchangedChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((x@@1 Int) ) (!  (or (select Civl_global_old_unallocated@1 x@@1) (< x@@1 Civl_global_old_count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 3) (- 0 2))) (forall ((x@@2 Int) ) (!  (or (select unallocated@3 x@@2) (< x@@2 count@3))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@3 count@1) (= unallocated@3 unallocated@1)) (and (= Civl_global_old_count@1 count@1) (= Civl_global_old_unallocated@1 unallocated@1))) (and (=> (= (ControlFlow 0 16) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 16) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopDone_correct  (=> (not true) (and (=> (= (ControlFlow 0 17) 15) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 17) 16) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@3 count@2) (= unallocated@3 unallocated@2)) (and (= Civl_global_old_count@1 count@2) (= Civl_global_old_unallocated@1 unallocated@2))) (and (=> (= (ControlFlow 0 10) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 10) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 11) (- 0 14)) (forall ((x@@3 Int) ) (!  (or (select unallocated@1 x@@3) (< x@@3 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (=> (forall ((x@@4 Int) ) (!  (or (select unallocated@1 x@@4) (< x@@4 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (and (and (= call3formal@Civl_0_tid@0 call4formal@Civl_0_i@0) (forall ((x@@5 Int) ) (!  (or (select unallocated@2 x@@5) (< x@@5 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_tid@0 true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) call3formal@Civl_0_tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (= call3formal@Civl_0_tid@0 call4formal@Civl_0_i@0)) (=> (= call3formal@Civl_0_tid@0 call4formal@Civl_0_i@0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((x@@6 Int) ) (!  (or (select unallocated@2 x@@6) (< x@@6 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (=> (forall ((x@@7 Int) ) (!  (or (select unallocated@2 x@@7) (< x@@7 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (and (and (=> (= (ControlFlow 0 11) 9) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 11) 10) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 11) 7) Civl_UnchangedChecker_correct)))))))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@3 count@1) (= unallocated@3 unallocated@1)) (and (= Civl_global_old_count@1 count@1) (= Civl_global_old_unallocated@1 unallocated@1))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 6) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopHead_correct  (=> (and (forall ((x@@8 Int) ) (!  (or (select unallocated@1 x@@8) (< x@@8 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((as const (Array Int Bool)) false)))) (and (and (and (=> (= (ControlFlow 0 18) 17) anon2_LoopDone_correct) (=> (= (ControlFlow 0 18) 11) anon2_LoopBody_0_correct)) (=> (= (ControlFlow 0 18) 6) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 7) Civl_UnchangedChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((x@@9 Int) ) (!  (or (select unallocated@0 x@@9) (< x@@9 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (=> (forall ((x@@10 Int) ) (!  (or (select unallocated@0 x@@10) (< x@@10 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (= (ControlFlow 0 19) 18) anon2_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@3 count@0) (= unallocated@3 unallocated@0)) (and (= Civl_global_old_count@1 count@0) (= Civl_global_old_unallocated@1 unallocated@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (forall ((x@@11 Int) ) (!  (or (select unallocated@0 x@@11) (< x@@11 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 21) 19) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 21) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 21) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((x@@12 Int) ) (!  (or (select unallocated x@@12) (< x@@12 count))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 22) 21)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@5 () (Array Int Bool))
(declare-fun count@5 () Int)
(declare-fun unallocated@3 () (Array Int Bool))
(declare-fun count@3 () Int)
(declare-fun Civl_global_old_unallocated@0 () (Array Int Bool))
(declare-fun Civl_global_old_count@0 () Int)
(declare-fun unallocated@4 () (Array Int Bool))
(declare-fun count@4 () Int)
(declare-fun call2formal@Civl_0_val@0 () Int)
(declare-fun call5formal@Civl_0_val@0 () Int)
(declare-fun tid () Int)
(declare-fun i () Int)
(declare-fun unallocated@2 () (Array Int Bool))
(declare-fun count@2 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun count@1 () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun count@0 () Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(declare-fun count () Int)
(set-info :boogie-vc-id Civl_P_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (forall ((x@@0 Int) ) (!  (or (select unallocated@5 x@@0) (< x@@0 count@5))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (= unallocated@5 unallocated@3) (=> (and (= count@5 count@3) (= (ControlFlow 0 12) 11)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((x@@1 Int) ) (!  (or (select Civl_global_old_unallocated@0 x@@1) (< x@@1 Civl_global_old_count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 3) (- 0 2))) (forall ((x@@2 Int) ) (!  (or (select unallocated@4 x@@2) (< x@@2 count@4))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@4 count@3) (= unallocated@4 unallocated@3)) (and (= Civl_global_old_count@0 count@3) (= Civl_global_old_unallocated@0 unallocated@3))) (and (=> (= (ControlFlow 0 9) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (= call2formal@Civl_0_val@0 (+ call5formal@Civl_0_val@0 1)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (= tid i)) (=> (= tid i) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((x@@3 Int) ) (!  (or (select unallocated@2 x@@3) (< x@@3 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (=> (forall ((x@@4 Int) ) (!  (or (select unallocated@2 x@@4) (< x@@4 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (forall ((x@@5 Int) ) (!  (or (select unallocated@3 x@@5) (< x@@5 count@3))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@3 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@3 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
))) (and (and (=> (= (ControlFlow 0 13) 8) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 12) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 13) 9) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@4 count@2) (= unallocated@4 unallocated@2)) (and (= Civl_global_old_count@0 count@2) (= Civl_global_old_unallocated@0 unallocated@2))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_2_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@4 count@1) (= unallocated@4 unallocated@1)) (and (= Civl_global_old_count@0 count@1) (= Civl_global_old_unallocated@0 unallocated@1))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 6) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= count@4 count@0) (= unallocated@4 unallocated@0)) (and (= Civl_global_old_count@0 count@0) (= Civl_global_old_unallocated@0 unallocated@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_1_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((x@@6 Int) ) (!  (or (select unallocated@1 x@@6) (< x@@6 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (=> (forall ((x@@7 Int) ) (!  (or (select unallocated@1 x@@7) (< x@@7 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (forall ((x@@8 Int) ) (!  (or (select unallocated@2 x@@8) (< x@@8 count@2))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (and (= Civl_linear_tid_available@2 ((_ map or) unallocated@2 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@2 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
))) (and (and (=> (= (ControlFlow 0 16) 13) anon0_0_correct) (=> (= (ControlFlow 0 16) 7) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 16) 1) Civl_RefinementChecker_correct))))))))
(let ((anon0_2_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (= tid i)) (=> (= tid i) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((x@@9 Int) ) (!  (or (select unallocated@0 x@@9) (< x@@9 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (=> (forall ((x@@10 Int) ) (!  (or (select unallocated@0 x@@10) (< x@@10 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (forall ((x@@11 Int) ) (!  (or (select unallocated@1 x@@11) (< x@@11 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (and (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (exists ((Civl_partition_tid@@1 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
))) (and (and (=> (= (ControlFlow 0 18) 16) anon0_1_correct) (=> (= (ControlFlow 0 18) 6) anon0_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 1) Civl_RefinementChecker_correct))))))))))
(let ((anon0_correct  (=> (and (and (exists ((Civl_partition_tid@@2 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (= tid i)) (and (forall ((x@@12 Int) ) (!  (or (select unallocated@0 x@@12) (< x@@12 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))))) (and (and (=> (= (ControlFlow 0 21) 18) anon0_2_correct) (=> (= (ControlFlow 0 21) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 21) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= tid i) (=> (and (forall ((x@@13 Int) ) (!  (or (select unallocated x@@13) (< x@@13 count))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 22) 21)) anon0_correct))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun count@0 () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun count@1 () Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun a@0 () (Array Int Int))
(declare-fun tid () Int)
(declare-fun i () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(declare-fun count () Int)
(set-info :boogie-vc-id Civl_Allocate_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (= count@0 count@0)) (=> (= count@0 count@0) (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((x@@0 Int) ) (!  (or (select unallocated@1 x@@0) (< x@@0 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((x@@1 Int) ) (!  (or (select unallocated@0 x@@1) (< x@@1 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 6) (- 0 5))) (forall ((x@@2 Int) ) (!  (or (select unallocated@1 x@@2) (< x@@2 count@1))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= a@0 a@0) (= unallocated@1 unallocated@0)) (and (and (select unallocated@0 count@0) (= unallocated@1 (store unallocated@0 count@0 false))) (= a@0 a@0))))) (=> (or false (or (and (= a@0 a@0) (= unallocated@1 unallocated@0)) (and (and (select unallocated@0 count@0) (= unallocated@1 (store unallocated@0 count@0 false))) (= a@0 a@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= a@0 a@0) (= unallocated@1 unallocated@0)) (and (= count@0 tid) (= count@0 i))))) (=> (=> false (and (and (= a@0 a@0) (= unallocated@1 unallocated@0)) (and (= count@0 tid) (= count@0 i)))) (=> (and (and (= Civl_pc@0  (=> (and (= a@0 a@0) (= unallocated@1 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (select unallocated@0 count@0) (= unallocated@1 (store unallocated@0 count@0 false))) (= a@0 a@0)) (and (and (= count@0 tid) (= count@0 i)) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$MakeLinear$0$anon0_correct  (=> (= unallocated@1 (store unallocated@0 count@0 false)) (and (and (and (=> (= (ControlFlow 0 11) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 6) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)) (=> (= (ControlFlow 0 11) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 9) GeneratedUnifiedExit_correct)))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (select unallocated@0 count@0)) (=> (select unallocated@0 count@0) (=> (= (ControlFlow 0 12) 11) inline$MakeLinear$0$anon0_correct)))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (= count@1 (+ count@0 1)) (= (ControlFlow 0 14) 12)) anon0$1_correct)))
(let ((anon0_correct  (=> (forall ((x@@3 Int) ) (!  (or (select unallocated@0 x@@3) (< x@@3 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (=> (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array Int Bool)) false))) (= (ControlFlow 0 15) 14)) inline$AtomicAllocateLow$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((x@@4 Int) ) (!  (or (select unallocated x@@4) (< x@@4 count))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 16) 15)) anon0_correct)))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun count@0 () Int)
(declare-fun a@0 () (Array Int Int))
(declare-fun inline$AtomicReadLow$0$val@1 () Int)
(declare-fun tid () Int)
(declare-fun val () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(declare-fun count () Int)
(set-info :boogie-vc-id Civl_Read_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((x@@0 Int) ) (!  (or (select unallocated@0 x@@0) (< x@@0 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((x@@1 Int) ) (!  (or (select unallocated@0 x@@1) (< x@@1 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 6) (- 0 5))) (forall ((x@@2 Int) ) (!  (or (select unallocated@0 x@@2) (< x@@2 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= a@0 a@0) (= unallocated@0 unallocated@0)) (and (and (= inline$AtomicReadLow$0$val@1 (select a@0 tid)) (= a@0 a@0)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (= a@0 a@0) (= unallocated@0 unallocated@0)) (and (and (= inline$AtomicReadLow$0$val@1 (select a@0 tid)) (= a@0 a@0)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= a@0 a@0) (= unallocated@0 unallocated@0)) (= inline$AtomicReadLow$0$val@1 val)))) (=> (=> false (and (and (= a@0 a@0) (= unallocated@0 unallocated@0)) (= inline$AtomicReadLow$0$val@1 val))) (=> (and (and (= Civl_pc@0  (=> (and (= a@0 a@0) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (= inline$AtomicReadLow$0$val@1 (select a@0 tid)) (= a@0 a@0)) (= unallocated@0 unallocated@0)) (and (= inline$AtomicReadLow$0$val@1 val) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicReadLow$0$anon0_correct  (=> (= inline$AtomicReadLow$0$val@1 (select a@0 i)) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (and (and (= tid i) (forall ((x@@3 Int) ) (!  (or (select unallocated@0 x@@3) (< x@@3 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (= (ControlFlow 0 11) 10))) inline$AtomicReadLow$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= tid i) (=> (and (forall ((x@@4 Int) ) (!  (or (select unallocated x@@4) (< x@@4 count))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 12) 11)) anon0_correct))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun count@0 () Int)
(declare-fun a@1 () (Array Int Int))
(declare-fun a@0 () (Array Int Int))
(declare-fun tid () Int)
(declare-fun val () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i () Int)
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(declare-fun count () Int)
(set-info :boogie-vc-id Civl_Write_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((x@@0 Int) ) (!  (or (select unallocated@0 x@@0) (< x@@0 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((x@@1 Int) ) (!  (or (select unallocated@0 x@@1) (< x@@1 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 6) (- 0 5))) (forall ((x@@2 Int) ) (!  (or (select unallocated@0 x@@2) (< x@@2 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= a@1 a@0) (= unallocated@0 unallocated@0)) (and (= a@1 (store a@0 tid val)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (= a@1 a@0) (= unallocated@0 unallocated@0)) (and (= a@1 (store a@0 tid val)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= a@1 a@0) (= unallocated@0 unallocated@0)))) (=> (=> false (and (= a@1 a@0) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (= a@1 a@0) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (= a@1 (store a@0 tid val)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicWriteLow$0$anon0_correct  (=> (= a@1 (store a@0 i val)) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (and (= tid i) (forall ((x@@3 Int) ) (!  (or (select unallocated@0 x@@3) (< x@@3 count@0))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
))) (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (= (ControlFlow 0 11) 10))) inline$AtomicWriteLow$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= tid i) (=> (and (forall ((x@@4 Int) ) (!  (or (select unallocated x@@4) (< x@@4 count))
 :qid |alloctidbpl.90:11|
 :skolemid |0|
)) (= (ControlFlow 0 12) 11)) anon0_correct))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array Int Bool))
(declare-fun Civl_global_old_a@1 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield2$0$v@0 () Int)
(declare-fun a@2 () (Array Int Int))
(declare-fun a@1 () (Array Int Int))
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun a@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun inline$AtomicAllocate$0$tid@1 () Int)
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun unallocated@2 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_main_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 17) (- 0 19)) true) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 17) (- 0 16))) Civl_ok@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield2$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield2$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (= (select Civl_global_old_a@1 inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0) inline$Civl_NoninterferenceChecker_yield_Yield2$0$v@0) (= (ControlFlow 0 9) (- 0 8))) (= (select a@2 inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0) inline$Civl_NoninterferenceChecker_yield_Yield2$0$v@0)))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= a@2 a@1) (=> (and (= Civl_global_old_a@1 a@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2)) (and (=> (= (ControlFlow 0 20) 9) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 20) 10) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon2_LoopDone_correct  (=> (not true) (and (=> (= (ControlFlow 0 21) 17) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 21) 20) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct  (=> (= a@2 a@1) (=> (and (= Civl_global_old_a@1 a@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2)) (and (=> (= (ControlFlow 0 12) 9) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 12) 10) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= a@2 a@0) (=> (and (= Civl_global_old_a@1 a@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0)) (and (=> (= (ControlFlow 0 11) 9) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 11) 10) Civl_NoninterferenceChecker$1_correct))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) true) (=> (= (ControlFlow 0 6) (- 0 5)) (=> false true)))))
(let ((anon2_LoopBody$1_@2_anon2_LoopHead_correct true))
(let ((anon2_LoopBody$1_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (= (select a@1 inline$AtomicAllocate$0$tid@1) (select a@1 inline$AtomicAllocate$0$tid@1))) (=> (= (select a@1 inline$AtomicAllocate$0$tid@1) (select a@1 inline$AtomicAllocate$0$tid@1)) (and (and (=> (= (ControlFlow 0 13) 4) anon2_LoopBody$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 13) 12) anon2_LoopBody$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 13) 6) Civl_UnchangedChecker_correct))))))
(let ((inline$AtomicAllocate$0$anon0_correct  (=> (select unallocated@1 inline$AtomicAllocate$0$tid@1) (=> (and (= unallocated@2 (store unallocated@1 inline$AtomicAllocate$0$tid@1 false)) (= (ControlFlow 0 15) 13)) anon2_LoopBody$1_correct))))
(let ((anon2_LoopHead_correct  (=> (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 22) 21) anon2_LoopDone_correct) (=> (= (ControlFlow 0 22) 15) inline$AtomicAllocate$0$anon0_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((as const (Array Int Bool)) false))) (and (and (=> (= (ControlFlow 0 23) 11) anon0_@2_Civl_NoninterferenceChecker_correct) (=> (= (ControlFlow 0 23) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 23) 22) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24) 23) anon0_correct)))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@4 () (Array Int Int))
(declare-fun tid () Int)
(declare-fun a () (Array Int Int))
(declare-fun a@2 () (Array Int Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array Int Bool))
(declare-fun Civl_global_old_a@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield2$0$v@0 () Int)
(declare-fun a@3 () (Array Int Int))
(declare-fun a@1 () (Array Int Int))
(declare-fun Civl_linear_tid_available@1 () (Array Int Bool))
(declare-fun inline$AtomicWrite$0$val@0 () Int)
(declare-fun inline$AtomicRead$0$val@1 () Int)
(declare-fun a@0 () (Array Int Int))
(declare-fun unallocated@1 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array Int Bool))
(declare-fun unallocated@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_P_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (= (select a@4 tid) (+ (select a tid) 1)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= a@4 a@2) (= (ControlFlow 0 15) 14)) GeneratedUnifiedExit_correct)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) true) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> Civl_pc@0 true)) (=> (=> Civl_pc@0 true) (=> (and (and (= Civl_pc@1  (=> true Civl_pc@0)) (= Civl_ok@1  (or true Civl_ok@0))) (= (ControlFlow 0 9) (- 0 8))) Civl_ok@1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield2$0$Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield2$0$Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (= (select Civl_global_old_a@0 inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0) inline$Civl_NoninterferenceChecker_yield_Yield2$0$v@0) (= (ControlFlow 0 5) (- 0 4))) (= (select a@3 inline$Civl_NoninterferenceChecker_yield_Yield2$0$tid@0) inline$Civl_NoninterferenceChecker_yield_Yield2$0$v@0)))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= a@3 a@2) (=> (and (= Civl_global_old_a@0 a@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1)) (and (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 12) 6) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$AtomicWrite$0$anon0_correct  (=> (= a@2 (store a@1 tid inline$AtomicWrite$0$val@0)) (and (and (=> (= (ControlFlow 0 16) 9) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 16) 15) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 16) 12) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((inline$AtomicWrite$0$Entry_correct  (=> (and (= inline$AtomicWrite$0$val@0 (+ inline$AtomicRead$0$val@1 1)) (= (ControlFlow 0 17) 16)) inline$AtomicWrite$0$anon0_correct)))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (select a@0 tid) inline$AtomicRead$0$val@1)) (=> (= (select a@0 tid) inline$AtomicRead$0$val@1) (=> (= (select a@1 tid) inline$AtomicRead$0$val@1) (=> (and (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false))))) (and (exists ((Civl_partition_tid (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (= (ControlFlow 0 18) 17))) inline$AtomicWrite$0$Entry_correct)))))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= a@3 a@0) (=> (and (= Civl_global_old_a@0 a@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0)) (and (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((inline$AtomicRead$0$anon0_correct  (=> (= inline$AtomicRead$0$val@1 (select a@0 tid)) (and (and (=> (= (ControlFlow 0 20) 18) anon0_0_correct) (=> (= (ControlFlow 0 20) 7) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (and (exists ((Civl_partition_tid@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (= (select a@0 tid) (select a tid))) (and (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Bool)) false)))) (= (ControlFlow 0 21) 20))) inline$AtomicRead$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= (select a tid) (select a tid)) (= (ControlFlow 0 22) 21)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicAllocate$0$tid@0 () Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocate)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocate$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) inline$AtomicAllocate$0$tid@0 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicAllocate$0$anon0_correct  (=> (select unallocated inline$AtomicAllocate$0$tid@0) (=> (and (= unallocated@0 (store unallocated inline$AtomicAllocate$0$tid@0 false)) (= (ControlFlow 0 3) 2)) inline$AtomicAllocate$0$Return_correct))))
(let ((inline$AtomicAllocate$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocate$0$anon0_correct)))
inline$AtomicAllocate$0$Entry_correct))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun inline$AtomicRead$0$val@1 () Int)
(declare-fun a () (Array Int Int))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicRead)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicRead$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicRead$0$anon0_correct  (=> (and (= inline$AtomicRead$0$val@1 (select a tid)) (= (ControlFlow 0 3) 2)) inline$AtomicRead$0$Return_correct)))
(let ((inline$AtomicRead$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicRead$0$anon0_correct)))
inline$AtomicRead$0$Entry_correct))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () Int)
(declare-fun a@0 () (Array Int Int))
(declare-fun a () (Array Int Int))
(declare-fun val () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicWrite)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicWrite$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) tid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicWrite$0$anon0_correct  (=> (and (= a@0 (store a tid val)) (= (ControlFlow 0 3) 2)) inline$AtomicWrite$0$Return_correct)))
(let ((inline$AtomicWrite$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicWrite$0$anon0_correct)))
inline$AtomicWrite$0$Entry_correct))))
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
 :skolemid |1|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun unallocated@0 () (Array Int Bool))
(declare-fun unallocated () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_MakeLinear)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$MakeLinear$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$MakeLinear$0$anon0_correct  (=> (and (= unallocated@0 (store unallocated i false)) (= (ControlFlow 0 3) 2)) inline$MakeLinear$0$Return_correct)))
(let ((inline$MakeLinear$0$Entry_correct  (=> (and (select unallocated i) (= (ControlFlow 0 4) 3)) inline$MakeLinear$0$anon0_correct)))
inline$MakeLinear$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
