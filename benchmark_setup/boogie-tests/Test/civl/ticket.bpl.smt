(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicGetTicketAbstract$0$m@0 () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun T@1 () (Array Int Bool))
(declare-fun T () (Array Int Bool))
(declare-fun T@0 () (Array Int Bool))
(declare-fun first_tid () T@X)
(declare-fun second_xls () (Array T@X Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicGetTicketAbstract_AtomicInitAbstract)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicInitAbstract$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (not (select (RightOpen 0) inline$AtomicGetTicketAbstract$0$m@0)) (= nil nil)) (= 0 0)) (= T@1 (store (RightOpen 0) inline$AtomicGetTicketAbstract$0$m@0 true)))))))
(let ((inline$AtomicInitAbstract$0$anon0_correct  (=> (and (= T@1 (RightOpen 0)) (= (ControlFlow 0 3) 2)) inline$AtomicInitAbstract$0$Return_correct)))
(let ((inline$AtomicGetTicketAbstract$0$anon0_correct  (=> (not (select T inline$AtomicGetTicketAbstract$0$m@0)) (=> (and (= T@0 (store T inline$AtomicGetTicketAbstract$0$m@0 true)) (= (ControlFlow 0 4) 3)) inline$AtomicInitAbstract$0$anon0_correct))))
(let ((inline$AtomicGetTicketAbstract$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) second_xls ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (= second_xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 5) 4)) inline$AtomicGetTicketAbstract$0$anon0_correct))))
inline$AtomicGetTicketAbstract$0$Entry_correct)))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun T () (Array Int Bool))
(declare-fun inline$AtomicGetTicketAbstract$1$m@0 () Int)
(declare-fun inline$AtomicGetTicketAbstract$0$m@0 () Int)
(declare-fun T@1 () (Array Int Bool))
(declare-fun T@0 () (Array Int Bool))
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicGetTicketAbstract_AtomicGetTicketAbstract)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicGetTicketAbstract$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (select T inline$AtomicGetTicketAbstract$1$m@0)) (not (select (store T inline$AtomicGetTicketAbstract$1$m@0 true) inline$AtomicGetTicketAbstract$0$m@0))) (= T@1 (store (store T inline$AtomicGetTicketAbstract$1$m@0 true) inline$AtomicGetTicketAbstract$0$m@0 true)))))))
(let ((inline$AtomicGetTicketAbstract$1$anon0_correct  (=> (not (select T@0 inline$AtomicGetTicketAbstract$1$m@0)) (=> (and (= T@1 (store T@0 inline$AtomicGetTicketAbstract$1$m@0 true)) (= (ControlFlow 0 3) 2)) inline$AtomicGetTicketAbstract$1$Return_correct))))
(let ((inline$AtomicGetTicketAbstract$0$anon0_correct  (=> (not (select T inline$AtomicGetTicketAbstract$0$m@0)) (=> (and (= T@0 (store T inline$AtomicGetTicketAbstract$0$m@0 true)) (= (ControlFlow 0 4) 3)) inline$AtomicGetTicketAbstract$1$anon0_correct))))
(let ((inline$AtomicGetTicketAbstract$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (= (ControlFlow 0 5) 4)) inline$AtomicGetTicketAbstract$0$anon0_correct)))
inline$AtomicGetTicketAbstract$0$Entry_correct)))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun T@3 () (Array Int Bool))
(declare-fun t@3 () Int)
(declare-fun Civl_global_old_T@1 () (Array Int Bool))
(declare-fun Civl_global_old_t@1 () Int)
(declare-fun T@4 () (Array Int Bool))
(declare-fun t@4 () Int)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun T@2 () (Array Int Bool))
(declare-fun t@2 () Int)
(declare-fun call6formal@Civl_0_xl@0 () T@X)
(declare-fun nil () T@X)
(declare-fun call5formal@Civl_0_xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun xls@0 () (Array T@X Bool))
(declare-fun T@1 () (Array Int Bool))
(declare-fun t@1 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun t@0 () Int)
(declare-fun T@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun |xls'| () (Array T@X Bool))
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (= T@3 (RightOpen t@3)))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 10) (- 0 9))) (= T@4 (RightOpen t@4)))))
(let ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 8) (- 0 7))) (= T@4 (RightOpen t@4))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 5) (- 0 4))) (= T@4 (RightOpen t@4))))))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 3) (- 0 2))) (= T@4 (RightOpen t@4))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@3) (=> (and (and (= T@4 T@3) (= Civl_global_old_t@1 t@3)) (and (= Civl_global_old_T@1 T@3) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4))) (and (and (and (and (=> (= (ControlFlow 0 19) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 19) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 19) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 19) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (= T@2 (RightOpen t@2))) (=> (= T@2 (RightOpen t@2)) (=> (and (and (not (= call6formal@Civl_0_xl@0 nil)) (= T@3 (RightOpen t@3))) (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) call6formal@Civl_0_xl@0 true) ((_ map or) call5formal@Civl_0_xls@0 ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) call5formal@Civl_0_xls@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call6formal@Civl_0_xl@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= T@3 (RightOpen t@3))) (=> (= T@3 (RightOpen t@3)) (and (and (=> (= (ControlFlow 0 20) 18) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 20) 19) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 14) Civl_UnchangedChecker_correct)))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@2) (=> (and (and (= T@4 T@2) (= Civl_global_old_t@1 t@2)) (and (= Civl_global_old_T@1 T@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3))) (and (and (and (and (=> (= (ControlFlow 0 16) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 16) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@2) (=> (and (and (= T@4 T@2) (= Civl_global_old_t@1 t@2)) (and (= Civl_global_old_T@1 T@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3))) (and (and (and (and (=> (= (ControlFlow 0 13) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 13) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 13) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon2_LoopHead_correct  (=> (and (= T@2 (RightOpen t@2)) (= Civl_linear_tid_available@3 ((_ map or) xls@0 ((as const (Array T@X Bool)) false)))) (and (and (and (and (=> (= (ControlFlow 0 23) 20) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 23) 13) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 14) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 23) 15) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 23) 16) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (= T@1 (RightOpen t@1))) (=> (= T@1 (RightOpen t@1)) (=> (= (ControlFlow 0 24) 23) anon2_LoopHead_correct)))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@1) (=> (and (and (= T@4 T@1) (= Civl_global_old_t@1 t@1)) (and (= Civl_global_old_T@1 T@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@1))) (and (and (and (and (=> (= (ControlFlow 0 12) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 12) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 12) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@0) (=> (and (and (= T@4 T@0) (= Civl_global_old_t@1 t@0)) (and (= Civl_global_old_T@1 T@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0))) (and (and (and (and (=> (= (ControlFlow 0 11) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 11) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_0_correct  (=> (and (= T@1 (RightOpen t@1)) (= Civl_linear_tid_available@1 ((_ map or) |xls'| ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 26) 24) anon0_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 26) 12) anon0_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 1) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((_ map or) |xls'| ((as const (Array T@X Bool)) false))) (and (and (=> (= (ControlFlow 0 27) 26) anon0_0_correct) (=> (= (ControlFlow 0 27) 11) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 27) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 27) anon0_correct)))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocateLow$0$xl@0 () T@X)
(declare-fun nil () T@X)
(declare-fun T@0 () (Array Int Bool))
(declare-fun t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 () T@X)
(declare-fun |xls'| () (Array T@X Bool))
(declare-fun inline$AtomicAllocateLow$0$xls@1 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Allocate_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (not (= inline$AtomicAllocateLow$0$xl@0 nil)))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 10) (- 0 9))) (= T@0 (RightOpen t@0)))))
(let ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 8) (- 0 7))) (= T@0 (RightOpen t@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 5) (- 0 4))) (= T@0 (RightOpen t@0))))))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 3) (- 0 2))) (= T@0 (RightOpen t@0))))))
(let ((Civl_ReturnChecker_correct true))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$xl@0 nil)) (select |xls'| inline$AtomicAllocateLow$0$xl@0)) (= inline$AtomicAllocateLow$0$xls@1 (store |xls'| inline$AtomicAllocateLow$0$xl@0 false))) (and (and (and (and (and (and (=> (= (ControlFlow 0 13) 1) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 13) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 13) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)) (=> (= (ControlFlow 0 13) 12) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) |xls'| ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 14) 13)) inline$AtomicAllocateLow$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun T@3 () (Array Int Bool))
(declare-fun t@3 () Int)
(declare-fun Civl_global_old_T@1 () (Array Int Bool))
(declare-fun Civl_global_old_t@1 () Int)
(declare-fun T@4 () (Array Int Bool))
(declare-fun t@4 () Int)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun s@4 () Int)
(declare-fun s@3 () Int)
(declare-fun T@2 () (Array Int Bool))
(declare-fun t@2 () Int)
(declare-fun tid () T@X)
(declare-fun cs@3 () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun T@1 () (Array Int Bool))
(declare-fun t@1 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun T@0 () (Array Int Bool))
(declare-fun t@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun T () (Array Int Bool))
(declare-fun t () Int)
(set-info :boogie-vc-id Civl_Customer_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29) (let ((anon2_LoopBody_0$1_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (= T@3 (RightOpen t@3)))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 10) (- 0 9))) (= T@4 (RightOpen t@4)))))
(let ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 8) (- 0 7))) (= T@4 (RightOpen t@4))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 5) (- 0 4))) (= T@4 (RightOpen t@4))))))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@1)) (= (ControlFlow 0 3) (- 0 2))) (= T@4 (RightOpen t@4))))))
(let ((anon2_LoopBody_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@3) (=> (and (and (= T@4 T@3) (= Civl_global_old_t@1 t@3)) (and (= Civl_global_old_T@1 T@3) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4))) (and (and (and (and (=> (= (ControlFlow 0 19) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 19) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 19) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 19) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((inline$AtomicLeave$0$anon0_correct  (=> (= s@4 (+ s@3 1)) (and (and (=> (= (ControlFlow 0 20) 18) anon2_LoopBody_0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 20) 19) anon2_LoopBody_0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 13) Civl_UnchangedChecker_correct)))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (= T@2 (RightOpen t@2))) (=> (= T@2 (RightOpen t@2)) (=> (and (and (= T@3 (RightOpen t@3)) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (= cs@3 tid) (= (ControlFlow 0 21) 20))) inline$AtomicLeave$0$anon0_correct)))))
(let ((anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@2) (=> (and (and (= T@4 T@2) (= Civl_global_old_t@1 t@2)) (and (= Civl_global_old_T@1 T@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3))) (and (and (and (and (=> (= (ControlFlow 0 16) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 16) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon2_LoopBody_1_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (= T@1 (RightOpen t@1))) (=> (= T@1 (RightOpen t@1)) (=> (and (= T@2 (RightOpen t@2)) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 23) 21) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 23) 16) anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 13) Civl_UnchangedChecker_correct)))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@1) (=> (and (and (= T@4 T@1) (= Civl_global_old_t@1 t@1)) (and (= Civl_global_old_T@1 T@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (and (and (and (=> (= (ControlFlow 0 15) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 15) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@1) (=> (and (and (= T@4 T@1) (= Civl_global_old_t@1 t@1)) (and (= Civl_global_old_T@1 T@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (and (and (and (=> (= (ControlFlow 0 12) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 12) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 12) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon2_LoopHead_correct  (=> (and (= T@1 (RightOpen t@1)) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (and (and (=> (= (ControlFlow 0 25) 23) anon2_LoopBody_1_correct) (=> (= (ControlFlow 0 25) 12) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 25) 13) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 25) 14) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 25) 15) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (= T@0 (RightOpen t@0))) (=> (= T@0 (RightOpen t@0)) (=> (= (ControlFlow 0 26) 25) anon2_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@0) (=> (and (and (= T@4 T@0) (= Civl_global_old_t@1 t@0)) (and (= Civl_global_old_T@1 T@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0))) (and (and (and (and (=> (= (ControlFlow 0 11) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 11) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (= T@0 (RightOpen t@0)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 28) 26) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 28) 11) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 28) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= T (RightOpen t)) (= (ControlFlow 0 29) 28)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun T@3 () (Array Int Bool))
(declare-fun t@3 () Int)
(declare-fun T@1 () (Array Int Bool))
(declare-fun t@1 () Int)
(declare-fun Civl_global_old_T@0 () (Array Int Bool))
(declare-fun Civl_global_old_t@0 () Int)
(declare-fun T@2 () (Array Int Bool))
(declare-fun t@2 () Int)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun call5formal@Civl_0_m@0 () Int)
(declare-fun s@1 () Int)
(declare-fun T@0 () (Array Int Bool))
(declare-fun t@0 () Int)
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun T () (Array Int Bool))
(declare-fun t () Int)
(set-info :boogie-vc-id Civl_Enter_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (= T@3 (RightOpen t@3)))))
(let ((Civl_UnifiedReturn_correct  (=> (= T@3 T@1) (=> (and (= t@3 t@1) (= (ControlFlow 0 16) 15)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (= Civl_global_old_T@0 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 10) (- 0 9))) (= T@2 (RightOpen t@2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= Civl_global_old_T@0 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 8) (- 0 7))) (= T@2 (RightOpen t@2))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (= Civl_global_old_T@0 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 5) (- 0 4))) (= T@2 (RightOpen t@2))))))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (= Civl_global_old_T@0 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 3) (- 0 2))) (= T@2 (RightOpen t@2))))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= t@2 t@1) (=> (and (and (= T@2 T@1) (= Civl_global_old_t@0 t@1)) (and (= Civl_global_old_T@0 T@1) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1))) (and (and (and (and (=> (= (ControlFlow 0 13) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 13) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 13) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 13) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((inline$AtomicWaitAndEnter$0$anon0_correct  (=> (= call5formal@Civl_0_m@0 s@1) (and (and (=> (= (ControlFlow 0 17) 12) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 17) 16) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 17) 13) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (= T@0 (RightOpen t@0))) (=> (= T@0 (RightOpen t@0)) (=> (= T@1 (RightOpen t@1)) (=> (and (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 18) 17)) inline$AtomicWaitAndEnter$0$anon0_correct))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@2 t@0) (=> (and (and (= T@2 T@0) (= Civl_global_old_t@0 t@0)) (and (= Civl_global_old_T@0 T@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0))) (and (and (and (and (=> (= (ControlFlow 0 11) 3) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 11) 5) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 11) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 11) 8) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 11) 10) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (= T@0 (RightOpen t@0)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 20) 18) anon0_0_correct) (=> (= (ControlFlow 0 20) 11) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= T (RightOpen t)) (= (ControlFlow 0 21) 20)) anon0_correct)))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun T@1 () (Array Int Bool))
(declare-fun T@0 () (Array Int Bool))
(declare-fun t@0 () Int)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 () T@X)
(declare-fun s@0 () Int)
(declare-fun nil () T@X)
(declare-fun cs@0 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun xls () (Array T@X Bool))
(set-info :boogie-vc-id Civl_InitAbstract_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (= T@1 (RightOpen 0)))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 13) (- 0 12))) (= T@1 (RightOpen 0)))))
(let ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 11) (- 0 10))) (= T@1 (RightOpen 0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 8) (- 0 7))) (= T@1 (RightOpen 0))))))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (= T@0 (RightOpen t@0)) (= (ControlFlow 0 6) (- 0 5))) (= T@1 (RightOpen 0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= 0 s@0) (= nil cs@0)) (= T@1 T@0)) (and (and (= nil nil) (= 0 0)) (= T@1 (RightOpen 0)))))) (=> (or false (or (and (and (= 0 s@0) (= nil cs@0)) (= T@1 T@0)) (and (and (= nil nil) (= 0 0)) (= T@1 (RightOpen 0))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= 0 s@0) (= nil cs@0)) (= T@1 T@0)))) (=> (=> false (and (and (= 0 s@0) (= nil cs@0)) (= T@1 T@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= 0 s@0) (= nil cs@0)) (= T@1 T@0)) false)) (= Civl_ok@0  (or (and (and (= nil nil) (= 0 0)) (= T@1 (RightOpen 0))) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicInit$0$anon0_correct  (=> (= T@1 (RightOpen 0)) (and (and (and (and (and (and (=> (= (ControlFlow 0 16) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 16) 6) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 8) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 16) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 11) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 16) 13) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)) (=> (= (ControlFlow 0 16) 15) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (= xls ((as const (Array T@X Bool)) true)) (= Civl_linear_tid_available@0 ((_ map or) xls ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (= xls ((as const (Array T@X Bool)) true))) (=> (= xls ((as const (Array T@X Bool)) true)) (=> (= (ControlFlow 0 17) 16) inline$AtomicInit$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 17) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun T@6 () (Array Int Bool))
(declare-fun t@5 () Int)
(declare-fun T@3 () (Array Int Bool))
(declare-fun t@3 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun s@2 () Int)
(declare-sort T@X 0)
(declare-fun cs@2 () T@X)
(declare-fun t@1 () Int)
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_global_old_T@1 () (Array Int Bool))
(declare-fun Civl_global_old_t@0 () Int)
(declare-fun T@5 () (Array Int Bool))
(declare-fun t@4 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun s@1 () Int)
(declare-fun cs@1 () T@X)
(declare-fun T@2 () (Array Int Bool))
(declare-fun T@1 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun m () Int)
(declare-fun Civl_ok@0 () Bool)
(declare-fun t@2 () Int)
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun t@0 () Int)
(declare-fun T@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@2 () Bool)
(declare-fun s@3 () Int)
(declare-fun Civl_global_old_s@0 () Int)
(declare-fun cs@3 () T@X)
(declare-fun Civl_global_old_cs@0 () T@X)
(declare-fun T@4 () (Array Int Bool))
(declare-fun Civl_global_old_T@0 () (Array Int Bool))
(declare-fun m@0 () Int)
(declare-fun Civl_old_m@0 () Int)
(declare-fun s@0 () Int)
(declare-fun cs@0 () T@X)
(declare-fun T () (Array Int Bool))
(declare-fun t () Int)
(set-info :boogie-vc-id Civl_GetTicketAbstract_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 23) (- 0 22)) (= T@6 (RightOpen t@5)))))
(let ((Civl_UnifiedReturn_correct  (=> (= T@6 T@3) (=> (and (= t@5 t@3) (= (ControlFlow 0 24) 23)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (or Civl_pc@1 (or (and (and (= s@2 s@2) (= cs@2 cs@2)) (= T@3 T@3)) (and (and (and (not (select T@3 t@1)) (= T@3 (store T@3 t@1 true))) (= s@2 s@2)) (= cs@2 cs@2))))) (=> (or Civl_pc@1 (or (and (and (= s@2 s@2) (= cs@2 cs@2)) (= T@3 T@3)) (and (and (and (not (select T@3 t@1)) (= T@3 (store T@3 t@1 true))) (= s@2 s@2)) (= cs@2 cs@2)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> Civl_pc@1 (and (and (and (= s@2 s@2) (= cs@2 cs@2)) (= T@3 T@3)) (= t@1 t@1)))) (=> (=> Civl_pc@1 (and (and (and (= s@2 s@2) (= cs@2 cs@2)) (= T@3 T@3)) (= t@1 t@1))) (=> (and (and (= Civl_pc@3  (=> (and (and (= s@2 s@2) (= cs@2 cs@2)) (= T@3 T@3)) Civl_pc@1)) (= Civl_ok@2  (or (and (and (and (not (select T@3 t@1)) (= T@3 (store T@3 t@1 true))) (= s@2 s@2)) (= cs@2 cs@2)) (and (= t@1 t@1) Civl_ok@1)))) (= (ControlFlow 0 18) (- 0 17))) Civl_ok@2)))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 13) (- 0 12))) (= T@5 (RightOpen t@4)))))
(let ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$xls@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 11) (- 0 10))) (= T@5 (RightOpen t@4))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 8) (- 0 7))) (= T@5 (RightOpen t@4))))))
(let ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (= Civl_global_old_T@1 (RightOpen Civl_global_old_t@0)) (= (ControlFlow 0 6) (- 0 5))) (= T@5 (RightOpen t@4))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@3) (=> (and (and (= T@5 T@3) (= Civl_global_old_t@0 t@3)) (and (= Civl_global_old_T@1 T@3) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (and (and (=> (= (ControlFlow 0 21) 6) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 21) 8) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 21) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 11) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 21) 13) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@1  (=> (and (and (= s@1 s@1) (= cs@1 cs@1)) (= T@2 T@1)) Civl_pc@0)) (= Civl_ok@1  (or (and (and (and (not (select T@1 t@1)) (= T@2 (store T@1 t@1 true))) (= s@1 s@1)) (= cs@1 cs@1)) (and (= t@1 m) Civl_ok@0)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (= T@2 (RightOpen t@2))) (=> (= T@2 (RightOpen t@2)) (=> (= T@3 (RightOpen t@3)) (=> (and (or Civl_pc@1 true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 25) 18) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 25) 24) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 25) 21) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon0_1$1_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@2) (=> (and (and (= T@5 T@2) (= Civl_global_old_t@0 t@1)) (and (= Civl_global_old_T@1 T@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@1))) (and (and (and (and (=> (= (ControlFlow 0 15) 6) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 15) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 11) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 15) 13) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= t@4 t@0) (=> (and (and (= T@5 T@0) (= Civl_global_old_t@0 t@0)) (and (= Civl_global_old_T@1 T@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))) (and (and (and (and (=> (= (ControlFlow 0 14) 6) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L0_correct) (=> (= (ControlFlow 0 14) 8) inline$Civl_NoninterferenceChecker_proc_GetTicketAbstract_1$0$L1_correct)) (=> (= (ControlFlow 0 14) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 11) inline$Civl_NoninterferenceChecker_proc_InitAbstract_1$0$L0_correct)) (=> (= (ControlFlow 0 14) 13) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@2 (or (and (and (= s@3 Civl_global_old_s@0) (= cs@3 Civl_global_old_cs@0)) (= T@4 Civl_global_old_T@0)) (and (and (and (not (select Civl_global_old_T@0 m@0)) (= T@4 (store Civl_global_old_T@0 m@0 true))) (= s@3 Civl_global_old_s@0)) (= cs@3 Civl_global_old_cs@0))))) (=> (or Civl_pc@2 (or (and (and (= s@3 Civl_global_old_s@0) (= cs@3 Civl_global_old_cs@0)) (= T@4 Civl_global_old_T@0)) (and (and (and (not (select Civl_global_old_T@0 m@0)) (= T@4 (store Civl_global_old_T@0 m@0 true))) (= s@3 Civl_global_old_s@0)) (= cs@3 Civl_global_old_cs@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@2 (and (and (and (= s@3 Civl_global_old_s@0) (= cs@3 Civl_global_old_cs@0)) (= T@4 Civl_global_old_T@0)) (= m@0 Civl_old_m@0))))))))
(let ((anon0_1$1_@2_Civl_RefinementChecker_correct  (=> (and (= s@3 s@1) (= cs@3 cs@1)) (=> (and (and (and (= T@4 T@2) (= Civl_global_old_s@0 s@1)) (and (= Civl_global_old_cs@0 cs@1) (= Civl_global_old_T@0 T@1))) (and (and (= Civl_pc@2 Civl_pc@0) (= Civl_old_m@0 m)) (and (= m@0 t@1) (= (ControlFlow 0 16) 2)))) Civl_RefinementChecker_correct))))
(let ((inline$AtomicGetTicket$0$anon0_correct  (=> (and (= t@2 (+ t@1 1)) (= T@2 (store T@1 t@1 true))) (and (and (=> (= (ControlFlow 0 27) 25) anon0_0_correct) (=> (= (ControlFlow 0 27) 15) anon0_1$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 27) 16) anon0_1$1_@2_Civl_RefinementChecker_correct)))))
(let ((anon0_1_correct  (=> (and (= Civl_pc@0  (=> (and (and (= s@0 s@0) (= cs@0 cs@0)) (= T@0 T@0)) false)) (= Civl_ok@0  (or (and (and (and (not (select T@0 m)) (= T@0 (store T@0 m true))) (= s@0 s@0)) (= cs@0 cs@0)) (and (= m m) false)))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= T@0 (RightOpen t@0))) (=> (= T@0 (RightOpen t@0)) (=> (and (and (= T@1 (RightOpen t@1)) (or Civl_pc@0 true)) (and (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 28) 27))) inline$AtomicGetTicket$0$anon0_correct))))))
(let ((anon0_@2_Civl_RefinementChecker_correct  (=> (and (= s@3 s@0) (= cs@3 cs@0)) (=> (and (and (and (= T@4 T@0) (= Civl_global_old_s@0 s@0)) (and (= Civl_global_old_cs@0 cs@0) (= Civl_global_old_T@0 T@0))) (and (and (= Civl_pc@2 false) (= Civl_old_m@0 m)) (and (= m@0 m) (= (ControlFlow 0 4) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_correct  (=> (and (= T@0 (RightOpen t@0)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 30) 28) anon0_1_correct) (=> (= (ControlFlow 0 30) 14) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 4) anon0_@2_Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= T (RightOpen t)) (= (ControlFlow 0 31) 30)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun cs@2 () T@X)
(declare-fun nil () T@X)
(declare-fun T@3 () (Array Int Bool))
(declare-fun s@2 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun Civl_global_old_cs@1 () T@X)
(declare-fun cs@3 () T@X)
(declare-fun Civl_global_old_T@1 () (Array Int Bool))
(declare-fun Civl_global_old_s@1 () Int)
(declare-fun T@4 () (Array Int Bool))
(declare-fun s@3 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun cs@1 () T@X)
(declare-fun T@2 () (Array Int Bool))
(declare-fun s@1 () Int)
(declare-fun call6formal@Civl_0_xl@0 () T@X)
(declare-fun call5formal@Civl_0_xls@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun xls@0 () (Array T@X Bool))
(declare-fun T@1 () (Array Int Bool))
(declare-fun s@0 () Int)
(declare-fun cs@0 () T@X)
(declare-fun T@0 () (Array Int Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun |xls'| () (Array T@X Bool))
(set-info :boogie-vc-id Civl_main_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 32) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 20) (- 0 19)) (ite (= cs@2 nil) (= T@3 (RightOpen s@2)) (= T@3 (RightClosed s@2))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) true) (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 15) (- 0 14))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (= (ControlFlow 0 12) (- 0 11)) (=> false true)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= Civl_global_old_cs@1 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0)) (= (ControlFlow 0 8) (- 0 7))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= cs@3 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (ite (= Civl_global_old_cs@1 nil) (= Civl_global_old_T@1 (RightOpen Civl_global_old_s@1)) (= Civl_global_old_T@1 (RightClosed Civl_global_old_s@1))) (= (ControlFlow 0 5) (- 0 4))) (ite (= cs@3 nil) (= T@4 (RightOpen s@3)) (= T@4 (RightClosed s@3))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (= s@3 s@2) (=> (and (= cs@3 cs@2) (= T@4 T@3)) (=> (and (and (= Civl_global_old_s@1 s@2) (= Civl_global_old_cs@1 cs@2)) (and (= Civl_global_old_T@1 T@3) (= Civl_linear_tid_available@4 Civl_linear_tid_available@3))) (and (and (=> (= (ControlFlow 0 21) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 21) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 22) (- 0 25)) (ite (= cs@1 nil) (= T@2 (RightOpen s@1)) (= T@2 (RightClosed s@1)))) (=> (ite (= cs@1 nil) (= T@2 (RightOpen s@1)) (= T@2 (RightClosed s@1))) (=> (not (= call6formal@Civl_0_xl@0 nil)) (=> (and (and (ite (= cs@2 nil) (= T@3 (RightOpen s@2)) (= T@3 (RightClosed s@2))) (or false true)) (and (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) call6formal@Civl_0_xl@0 true) ((_ map or) call5formal@Civl_0_xls@0 ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) call5formal@Civl_0_xls@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) call6formal@Civl_0_xl@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (not (= call6formal@Civl_0_xl@0 nil))) (=> (not (= call6formal@Civl_0_xl@0 nil)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (ite (= cs@2 nil) (= T@3 (RightOpen s@2)) (= T@3 (RightClosed s@2)))) (=> (ite (= cs@2 nil) (= T@3 (RightOpen s@2)) (= T@3 (RightClosed s@2))) (and (and (=> (= (ControlFlow 0 22) 20) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 22) 21) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 22) 12) Civl_UnchangedChecker_correct))))))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= s@3 s@1) (=> (and (= cs@3 cs@1) (= T@4 T@2)) (=> (and (and (= Civl_global_old_s@1 s@1) (= Civl_global_old_cs@1 cs@1)) (and (= Civl_global_old_T@1 T@2) (= Civl_linear_tid_available@4 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 18) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 18) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= s@3 s@1) (=> (and (= cs@3 cs@1) (= T@4 T@2)) (=> (and (and (= Civl_global_old_s@1 s@1) (= Civl_global_old_cs@1 cs@1)) (and (= Civl_global_old_T@1 T@2) (= Civl_linear_tid_available@4 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 10) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 10) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((anon2_LoopHead_correct  (=> (or false true) (=> (and (ite (= cs@1 nil) (= T@2 (RightOpen s@1)) (= T@2 (RightClosed s@1))) (= Civl_linear_tid_available@2 ((_ map or) xls@0 ((as const (Array T@X Bool)) false)))) (and (and (and (and (=> (= (ControlFlow 0 26) 22) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 26) 10) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 12) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 26) 15) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 26) 18) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct))))))
(let ((anon0$1_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (ite (= nil nil) (= T@1 (RightOpen 0)) (= T@1 (RightClosed 0)))) (=> (ite (= nil nil) (= T@1 (RightOpen 0)) (= T@1 (RightClosed 0))) (=> (= (ControlFlow 0 27) 26) anon2_LoopHead_correct)))))
(let ((anon0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= s@3 0) (=> (and (= cs@3 nil) (= T@4 T@1)) (=> (and (and (= Civl_global_old_s@1 s@0) (= Civl_global_old_cs@1 cs@0)) (and (= Civl_global_old_T@1 T@0) (= Civl_linear_tid_available@4 Civl_linear_tid_available@0))) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 9) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((inline$AtomicInitAbstract$0$anon0_correct  (=> (= T@1 (RightOpen 0)) (and (and (=> (= (ControlFlow 0 29) 27) anon0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 29) 9) anon0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 29) 2) Civl_RefinementChecker_correct)))))
(let ((anon0_correct  (=> (and (= |xls'| ((as const (Array T@X Bool)) true)) (= Civl_linear_tid_available@0 ((_ map or) |xls'| ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (= |xls'| ((as const (Array T@X Bool)) true))) (=> (= |xls'| ((as const (Array T@X Bool)) true)) (=> (= (ControlFlow 0 30) 29) inline$AtomicInitAbstract$0$anon0_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= |xls'| ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 32) 30)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocateLow$0$xl@0 () T@X)
(declare-fun nil () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun cs@0 () T@X)
(declare-fun T@0 () (Array Int Bool))
(declare-fun s@0 () Int)
(declare-fun inline$AtomicAllocateLow$0$xls@1 () (Array T@X Bool))
(declare-fun xls () (Array T@X Bool))
(declare-fun xl () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun |xls'| () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Allocate_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (not (= inline$AtomicAllocateLow$0$xl@0 nil)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= cs@0 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0)) (= (ControlFlow 0 9) (- 0 8))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= cs@0 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0))) (= (ControlFlow 0 6) (- 0 5))) (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= inline$AtomicAllocateLow$0$xls@1 xls) (= inline$AtomicAllocateLow$0$xl@0 xl)))) (=> (=> false (and (= inline$AtomicAllocateLow$0$xls@1 xls) (= inline$AtomicAllocateLow$0$xl@0 xl))) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true (and (and (= inline$AtomicAllocateLow$0$xls@1 xls) (= inline$AtomicAllocateLow$0$xl@0 xl)) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$xl@0 nil)) (select |xls'| inline$AtomicAllocateLow$0$xl@0)) (= inline$AtomicAllocateLow$0$xls@1 (store |xls'| inline$AtomicAllocateLow$0$xl@0 false))) (and (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)) (=> (= (ControlFlow 0 12) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 9) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)) (=> (= (ControlFlow 0 12) 11) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) |xls'| ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 13) 12)) inline$AtomicAllocateLow$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun T@3 () (Array Int Bool))
(declare-fun s@4 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun Civl_global_old_cs@1 () T@X)
(declare-fun cs@4 () T@X)
(declare-fun Civl_global_old_T@1 () (Array Int Bool))
(declare-fun Civl_global_old_s@1 () Int)
(declare-fun T@4 () (Array Int Bool))
(declare-fun s@5 () Int)
(declare-fun s@3 () Int)
(declare-fun cs@3 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun cs@2 () T@X)
(declare-fun T@2 () (Array Int Bool))
(declare-fun s@2 () Int)
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun cs@1 () T@X)
(declare-fun T@1 () (Array Int Bool))
(declare-fun s@1 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun cs@0 () T@X)
(declare-fun T@0 () (Array Int Bool))
(declare-fun s@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun cs () T@X)
(declare-fun T () (Array Int Bool))
(declare-fun s () Int)
(set-info :boogie-vc-id Civl_Customer_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 35) (let ((anon2_LoopBody_0$1_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 21) (- 0 20)) (ite (= nil nil) (= T@3 (RightOpen s@4)) (= T@3 (RightClosed s@4))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) true) (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 15) (- 0 14))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (= (ControlFlow 0 12) (- 0 11)) (=> false true)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= Civl_global_old_cs@1 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0)) (= (ControlFlow 0 8) (- 0 7))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= cs@4 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (ite (= Civl_global_old_cs@1 nil) (= Civl_global_old_T@1 (RightOpen Civl_global_old_s@1)) (= Civl_global_old_T@1 (RightClosed Civl_global_old_s@1))) (= (ControlFlow 0 5) (- 0 4))) (ite (= cs@4 nil) (= T@4 (RightOpen s@5)) (= T@4 (RightClosed s@5))))))
(let ((anon2_LoopBody_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (= s@5 s@4) (=> (and (= cs@4 nil) (= T@4 T@3)) (=> (and (and (= Civl_global_old_s@1 s@3) (= Civl_global_old_cs@1 cs@3)) (and (= Civl_global_old_T@1 T@3) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4))) (and (and (=> (= (ControlFlow 0 22) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 22) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 22) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((inline$AtomicLeave$0$anon0_correct  (=> (= s@4 (+ s@3 1)) (and (and (=> (= (ControlFlow 0 23) 21) anon2_LoopBody_0$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 23) 22) anon2_LoopBody_0$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 12) Civl_UnchangedChecker_correct)))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 24) (- 0 27)) (ite (= cs@2 nil) (= T@2 (RightOpen s@2)) (= T@2 (RightClosed s@2)))) (=> (ite (= cs@2 nil) (= T@2 (RightOpen s@2)) (= T@2 (RightClosed s@2))) (and (=> (= (ControlFlow 0 24) (- 0 26)) (and (not (= tid nil)) (= cs@2 tid))) (=> (and (not (= tid nil)) (= cs@2 tid)) (=> (ite (= cs@3 nil) (= T@3 (RightOpen s@3)) (= T@3 (RightClosed s@3))) (=> (and (and (not (= tid nil)) (= cs@3 tid)) (and (or false true) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= cs@3 tid)) (=> (= cs@3 tid) (=> (= (ControlFlow 0 24) 23) inline$AtomicLeave$0$anon0_correct)))))))))))
(let ((anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct  (=> (= s@5 s@2) (=> (and (= cs@4 cs@2) (= T@4 T@2)) (=> (and (and (= Civl_global_old_s@1 s@2) (= Civl_global_old_cs@1 cs@2)) (and (= Civl_global_old_T@1 T@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3))) (and (and (=> (= (ControlFlow 0 19) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 19) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((anon2_LoopBody_1_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (not (= tid nil))) (=> (not (= tid nil)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (ite (= cs@1 nil) (= T@1 (RightOpen s@1)) (= T@1 (RightClosed s@1)))) (=> (ite (= cs@1 nil) (= T@1 (RightOpen s@1)) (= T@1 (RightClosed s@1))) (=> (and (and (and (not (= tid nil)) (= cs@2 tid)) (ite (= cs@2 nil) (= T@2 (RightOpen s@2)) (= T@2 (RightClosed s@2)))) (and (or false true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 28) 24) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 28) 19) anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 28) 12) Civl_UnchangedChecker_correct)))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= s@5 s@1) (=> (and (= cs@4 cs@1) (= T@4 T@1)) (=> (and (and (= Civl_global_old_s@1 s@1) (= Civl_global_old_cs@1 cs@1)) (and (= Civl_global_old_T@1 T@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 18) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 18) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= s@5 s@1) (=> (and (= cs@4 cs@1) (= T@4 T@1)) (=> (and (and (= Civl_global_old_s@1 s@1) (= Civl_global_old_cs@1 cs@1)) (and (= Civl_global_old_T@1 T@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 10) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 10) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((anon2_LoopHead_correct  (=> (or false true) (=> (and (ite (= cs@1 nil) (= T@1 (RightOpen s@1)) (= T@1 (RightClosed s@1))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (and (and (=> (= (ControlFlow 0 31) 28) anon2_LoopBody_1_correct) (=> (= (ControlFlow 0 31) 10) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 31) 12) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 31) 15) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 31) 18) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct))))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0)))) (=> (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0))) (=> (= (ControlFlow 0 32) 31) anon2_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= s@5 s@0) (=> (and (= cs@4 cs@0) (= T@4 T@0)) (=> (and (and (= Civl_global_old_s@1 s@0) (= Civl_global_old_cs@1 cs@0)) (and (= Civl_global_old_T@1 T@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0))) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct) (=> (= (ControlFlow 0 9) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 8) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (not (= tid nil)) (=> (and (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 34) 32) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 34) 9) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (ite (= cs nil) (= T (RightOpen s)) (= T (RightClosed s))) (= (ControlFlow 0 35) 34)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun T@1 () (Array Int Bool))
(declare-fun s@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun cs@0 () T@X)
(declare-fun T@0 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$AtomicGetTicketAbstract$0$m@0 () Int)
(declare-fun cs () T@X)
(declare-fun T () (Array Int Bool))
(declare-fun s () Int)
(set-info :boogie-vc-id Civl_Enter_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 11) (- 0 10)) (ite (= tid nil) (= T@1 (RightOpen s@0)) (= T@1 (RightClosed s@0))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= cs@0 inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0)) (= (ControlFlow 0 9) (- 0 8))) (and (not (= inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0 nil)) (= tid inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$tid@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0))) (= (ControlFlow 0 6) (- 0 5))) (ite (= tid nil) (= T@1 (RightOpen s@0)) (= T@1 (RightClosed s@0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicWaitAndEnter$0$anon0_correct  (=> (= inline$AtomicGetTicketAbstract$0$m@0 s@0) (and (and (and (and (=> (= (ControlFlow 0 13) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 6) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)) (=> (= (ControlFlow 0 13) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 9) inline$Civl_NoninterferenceChecker_yield_YieldSpec$0$L0_correct)) (=> (= (ControlFlow 0 13) 11) GeneratedUnifiedExit_correct)))))
(let ((inline$AtomicGetTicketAbstract$0$anon0_correct  (=> (not (select T@0 inline$AtomicGetTicketAbstract$0$m@0)) (=> (and (= T@1 (store T@0 inline$AtomicGetTicketAbstract$0$m@0 true)) (= (ControlFlow 0 14) 13)) inline$AtomicWaitAndEnter$0$anon0_correct))))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (ite (= cs@0 nil) (= T@0 (RightOpen s@0)) (= T@0 (RightClosed s@0)))) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 15) 14))) inline$AtomicGetTicketAbstract$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= tid nil)) (=> (and (ite (= cs nil) (= T (RightOpen s)) (= T (RightClosed s))) (= (ControlFlow 0 16) 15)) anon0_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun xls () (Array T@X Bool))
(declare-fun T@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicInitAbstract)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicInitAbstract$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) xls ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) xls ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicInitAbstract$0$anon0_correct  (=> (and (= T@0 (RightOpen 0)) (= (ControlFlow 0 3) 2)) inline$AtomicInitAbstract$0$Return_correct)))
(let ((inline$AtomicInitAbstract$0$Entry_correct  (=> (and (= xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 4) 3)) inline$AtomicInitAbstract$0$anon0_correct)))
inline$AtomicInitAbstract$0$Entry_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun T () (Array Int Bool))
(declare-fun inline$AtomicGetTicketAbstract$0$m@0 () Int)
(declare-fun T@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicGetTicketAbstract)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicGetTicketAbstract$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicGetTicketAbstract$0$anon0_correct  (=> (not (select T inline$AtomicGetTicketAbstract$0$m@0)) (=> (and (= T@0 (store T inline$AtomicGetTicketAbstract$0$m@0 true)) (= (ControlFlow 0 3) 2)) inline$AtomicGetTicketAbstract$0$Return_correct))))
(let ((inline$AtomicGetTicketAbstract$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicGetTicketAbstract$0$anon0_correct)))
inline$AtomicGetTicketAbstract$0$Entry_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun xls () (Array T@X Bool))
(declare-fun T@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicInit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicInit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) xls ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) xls ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicInit$0$anon0_correct  (=> (and (= T@0 (RightOpen 0)) (= (ControlFlow 0 3) 2)) inline$AtomicInit$0$Return_correct)))
(let ((inline$AtomicInit$0$Entry_correct  (=> (and (= xls ((as const (Array T@X Bool)) true)) (= (ControlFlow 0 4) 3)) inline$AtomicInit$0$anon0_correct)))
inline$AtomicInit$0$Entry_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun t@0 () Int)
(declare-fun t () Int)
(declare-fun T@0 () (Array Int Bool))
(declare-fun T () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicGetTicket)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicGetTicket$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicGetTicket$0$anon0_correct  (=> (= t@0 (+ t 1)) (=> (and (= T@0 (store T t true)) (= (ControlFlow 0 3) 2)) inline$AtomicGetTicket$0$Return_correct))))
(let ((inline$AtomicGetTicket$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicGetTicket$0$anon0_correct)))
inline$AtomicGetTicket$0$Entry_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun m () Int)
(declare-fun s () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicWaitAndEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicWaitAndEnter$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicWaitAndEnter$0$anon0_correct  (=> (and (= m s) (= (ControlFlow 0 3) 2)) inline$AtomicWaitAndEnter$0$Return_correct)))
(let ((inline$AtomicWaitAndEnter$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicWaitAndEnter$0$anon0_correct)))
inline$AtomicWaitAndEnter$0$Entry_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun s@0 () Int)
(declare-fun s () Int)
(declare-fun cs () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLeave)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLeave$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicLeave$0$anon0_correct  (=> (and (= s@0 (+ s 1)) (= (ControlFlow 0 3) 2)) inline$AtomicLeave$0$Return_correct)))
(let ((inline$AtomicLeave$0$Entry_correct  (=> (and (= cs tid) (= (ControlFlow 0 4) 3)) inline$AtomicLeave$0$anon0_correct)))
inline$AtomicLeave$0$Entry_correct))))
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
(declare-fun RightOpen (Int) (Array Int Bool))
(declare-fun RightClosed (Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) (y Int) ) (! (= (select (RightOpen x) y) (< y x))
 :qid |ticketbpl.6:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (select (RightClosed x@@0) y@@0) (<= y@@0 x@@0))
 :qid |ticketbpl.7:15|
 :skolemid |1|
)))
(assert (forall ((x@@1 Int) ) (! (= (select Identity x@@1) x@@1)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |2|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocateLow$0$xls@1 () (Array T@X Bool))
(declare-fun inline$AtomicAllocateLow$0$xl@0 () T@X)
(declare-fun |xls'| () (Array T@X Bool))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocateLow)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocateLow$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) inline$AtomicAllocateLow$0$xls@1 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocateLow$0$xl@0 true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((_ map (ite (Bool Int Int) Int)) |xls'| ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAllocateLow$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocateLow$0$xl@0 nil)) (select |xls'| inline$AtomicAllocateLow$0$xl@0)) (and (= inline$AtomicAllocateLow$0$xls@1 (store |xls'| inline$AtomicAllocateLow$0$xl@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocateLow$0$Return_correct)))
(let ((inline$AtomicAllocateLow$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocateLow$0$anon0_correct)))
inline$AtomicAllocateLow$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
