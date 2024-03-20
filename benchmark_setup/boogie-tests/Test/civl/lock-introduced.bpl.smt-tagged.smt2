(set-logic AUFLIA)
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
(declare-sort T@X 0)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicEnter_AtomicEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicEnter$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= lock nil) (not (= second_tid nil))) (= second_tid nil)) (not (= first_tid nil))) (= second_tid first_tid))))))
(let ((inline$AtomicEnter$1$anon0_correct  (=> (and (and (= first_tid nil) (not (= second_tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicEnter$1$Return_correct)))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (and (and (= lock nil) (not (= first_tid nil))) (= (ControlFlow 0 4) 3)) inline$AtomicEnter$1$anon0_correct)))
(let ((inline$AtomicEnter$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (= (ControlFlow 0 5) 4)) inline$AtomicEnter$0$anon0_correct)))
inline$AtomicEnter$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun lock () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicEnter_AtomicLeave)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLeave$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= nil nil) (not (= first_tid nil))) (= nil first_tid))))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (and (and (= lock nil) (not (= first_tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicLeave$0$Return_correct)))
(let ((inline$AtomicEnter$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (= lock second_tid) (not (= second_tid nil))) (= (ControlFlow 0 4) 3)) inline$AtomicEnter$0$anon0_correct))))
inline$AtomicEnter$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicLeave_AtomicEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicEnter$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_tid first_tid) (not (= first_tid nil)))))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (and (and (= lock nil) (not (= second_tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicEnter$0$Return_correct)))
(let ((inline$AtomicEnter$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (= lock first_tid) (not (= first_tid nil))) (= (ControlFlow 0 4) 3)) inline$AtomicEnter$0$anon0_correct))))
inline$AtomicEnter$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLeave_AtomicLeave)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicLeave$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$AtomicLeave$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (= lock first_tid) (not (= first_tid nil))) (=> (and (and (= lock second_tid) (not (= second_tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicLeave$1$Return_correct)))))
inline$AtomicLeave$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicLeave_AtomicLeave)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicLeave$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil first_tid) (not (= first_tid nil)))))))
(let ((inline$AtomicLeave$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (= lock first_tid) (not (= first_tid nil))) (=> (and (and (= lock second_tid) (not (= second_tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicLeave$0$Return_correct)))))
inline$AtomicLeave$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun lock () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicLeave_AtomicLeave)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicLeave$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= nil first_tid) (not (= first_tid nil))))))))
(let ((inline$AtomicLeave$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (not (and (= lock first_tid) (not (= first_tid nil))))) (=> (and (and (= lock second_tid) (not (= second_tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicLeave$0$Return_correct))))
inline$AtomicLeave$0$Entry_correct)))
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
 (=> (= (ControlFlow 0 0) 10) true)
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
(set-info :boogie-vc-id Civl_Enter_1)
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
(set-info :boogie-vc-id Civl_Leave_1)
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
(declare-sort T@X 0)
(declare-fun lock@2 () T@X)
(declare-fun lock@1 () T@X)
(declare-fun tid () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun b@2 () Bool)
(declare-fun inline$AtomicCAS$0$status@2 () Bool)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun b@0 () Bool)
(declare-fun lock@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_LowerEnter_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (or false (or (and (= b@3 b@1) (= lock@2 lock@1)) (and (and (not b@1) (= b@3 true)) (= lock@2 tid))))) (=> (or false (or (and (= b@3 b@1) (= lock@2 lock@1)) (and (and (not b@1) (= b@3 true)) (= lock@2 tid)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> false (and (= b@3 b@1) (= lock@2 lock@1)))) (=> (=> false (and (= b@3 b@1) (= lock@2 lock@1))) (=> (and (and (= Civl_pc@0  (=> (and (= b@3 b@1) (= lock@2 lock@1)) false)) (= Civl_ok@0  (or (and (and (not b@1) (= b@3 true)) (= lock@2 tid)) false))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@0)))))))
(let ((anon3_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= b@3 b@1) (=> (and (= lock@2 lock@1) (= (ControlFlow 0 18) 11)) Civl_ReturnChecker_correct))))
(let ((anon4_Then$1_@2_Civl_ReturnChecker_correct  (=> (= b@3 b@2) (=> (and (= lock@2 tid) (= (ControlFlow 0 14) 11)) Civl_ReturnChecker_correct))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (= b@2 b@1) (= lock@1 lock@1))) (=> (and (= b@2 b@1) (= lock@1 lock@1)) (=> (= (ControlFlow 0 7) (- 0 6)) (=> false true))))))
(let ((anon4_Else_@2_anon3_LoopHead_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon3_LoopDone_correct  (=> (not true) (and (=> (= (ControlFlow 0 19) 18) anon3_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 19) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Then_correct  (=> inline$AtomicCAS$0$status@2 (and (=> (= (ControlFlow 0 15) 14) anon4_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Else_correct  (=> (not inline$AtomicCAS$0$status@2) (and (and (=> (= (ControlFlow 0 9) 5) anon4_Else_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 9) 7) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicCAS$0$anon3_Else_correct  (=> (= b@1  (not false)) (=> (and (= b@2 b@1) (= inline$AtomicCAS$0$status@2 false)) (and (=> (= (ControlFlow 0 17) 15) anon4_Then_correct) (=> (= (ControlFlow 0 17) 9) anon4_Else_correct))))))
(let ((inline$AtomicCAS$0$anon3_Then_correct  (=> (= b@1 false) (=> (and (= b@2 true) (= inline$AtomicCAS$0$status@2 true)) (and (=> (= (ControlFlow 0 16) 15) anon4_Then_correct) (=> (= (ControlFlow 0 16) 9) anon4_Else_correct))))))
(let ((anon3_LoopHead_correct  (=> (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 20) 19) anon3_LoopDone_correct) (=> (= (ControlFlow 0 20) 16) inline$AtomicCAS$0$anon3_Then_correct)) (=> (= (ControlFlow 0 20) 17) inline$AtomicCAS$0$anon3_Else_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= b@0 b@0) (= lock@0 lock@0)) (and (and (not b@0) (= b@0 true)) (= lock@0 tid))))) (=> (or false (or (and (= b@0 b@0) (= lock@0 lock@0)) (and (and (not b@0) (= b@0 true)) (= lock@0 tid)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= b@0 b@0) (= lock@0 lock@0))))))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (and (and (=> (= (ControlFlow 0 21) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 21) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 20) anon3_LoopHead_correct)))))
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
(declare-fun b@0 () Bool)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun lock@0 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_LowerLeave_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= false b@0) (= nil lock@0)) (and (= false false) (= nil nil))))) (=> (or false (or (and (= false b@0) (= nil lock@0)) (and (= false false) (= nil nil)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= false b@0) (= nil lock@0)))) (=> (=> false (and (= false b@0) (= nil lock@0))) (=> (and (and (= Civl_pc@0  (=> (and (= false b@0) (= nil lock@0)) false)) (= Civl_ok@0  (or (and (= false false) (= nil nil)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((as const (Array T@X Bool)) false)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun lock@3 () T@X)
(declare-fun b@3 () Bool)
(declare-fun lock@5 () T@X)
(declare-fun b@5 () Bool)
(declare-fun lock@1 () T@X)
(declare-fun b@1 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun Civl_global_old_lock@1 () T@X)
(declare-fun Civl_global_old_b@1 () Bool)
(declare-fun lock@4 () T@X)
(declare-fun b@4 () Bool)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun lock@2 () T@X)
(declare-fun b@2 () Bool)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_Customer_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 15) (- 0 14)) (and (not (= tid nil)) (= (not (= lock@3 nil)) b@3)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (and (not (= tid nil)) (= (not (= lock@5 nil)) b@5)))))
(let ((Civl_UnifiedReturn_correct  (=> (= lock@5 lock@1) (=> (and (= b@5 b@1) (= (ControlFlow 0 12) 11)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 nil)) (= (not (= Civl_global_old_lock@1 nil)) Civl_global_old_b@1)) (= (ControlFlow 0 3) (- 0 2))) (and (not (= inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 nil)) (= (not (= lock@4 nil)) b@4))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (= b@4 b@3) (=> (and (and (= lock@4 lock@3) (= Civl_global_old_b@1 b@3)) (and (= Civl_global_old_lock@1 lock@3) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4))) (and (=> (= (ControlFlow 0 16) 3) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct) (=> (= (ControlFlow 0 16) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (not (= tid nil)) (= (not (= lock@2 nil)) b@2))) (=> (and (not (= tid nil)) (= (not (= lock@2 nil)) b@2)) (=> (and (and (not (= tid nil)) (= (not (= lock@3 nil)) b@3)) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 17) 15) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 17) 16) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 17) 7) Civl_UnchangedChecker_correct)))))))
(let ((anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct  (=> (= b@4 b@2) (=> (and (and (= lock@4 lock@2) (= Civl_global_old_b@1 b@2)) (and (= Civl_global_old_lock@1 lock@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3))) (and (=> (= (ControlFlow 0 13) 3) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct) (=> (= (ControlFlow 0 13) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon2_LoopBody_1_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (not (= tid nil)) (= (not (= lock@1 nil)) b@1))) (=> (and (not (= tid nil)) (= (not (= lock@1 nil)) b@1)) (=> (and (and (not (= tid nil)) (= (not (= lock@2 nil)) b@2)) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 19) 17) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 19) 13) anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 19) 7) Civl_UnchangedChecker_correct)))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= b@4 b@1) (=> (and (and (= lock@4 lock@1) (= Civl_global_old_b@1 b@1)) (and (= Civl_global_old_lock@1 lock@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (=> (= (ControlFlow 0 9) 3) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (= b@4 b@1) (=> (and (and (= lock@4 lock@1) (= Civl_global_old_b@1 b@1)) (and (= Civl_global_old_lock@1 lock@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct) (=> (= (ControlFlow 0 6) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon2_LoopHead_correct  (=> (and (and (not (= tid nil)) (= (not (= lock@1 nil)) b@1)) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (and (and (and (=> (= (ControlFlow 0 21) 19) anon2_LoopBody_1_correct) (=> (= (ControlFlow 0 21) 6) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 21) 7) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 21) 8) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 21) 12) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 21) 9) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0))) (=> (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (=> (= (ControlFlow 0 22) 21) anon2_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= b@4 b@0) (=> (and (and (= lock@4 lock@0) (= Civl_global_old_b@1 b@0)) (and (= Civl_global_old_lock@1 lock@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 24) 22) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 24) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= tid nil)) (= (not (= lock nil)) b)) (= (ControlFlow 0 25) 24)) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_Enter_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (and (not (= tid nil)) (= (not (= tid nil)) true)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 nil)) (= (not (= lock@0 nil)) b@0)) (= (ControlFlow 0 6) (- 0 5))) (and (not (= inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 nil)) (= (not (= tid nil)) true))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= tid lock@0) (and (and (= lock@0 nil) (not (= tid nil))) (= tid tid))))) (=> (or false (or (= tid lock@0) (and (and (= lock@0 nil) (not (= tid nil))) (= tid tid)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= tid lock@0))) (=> (=> false (= tid lock@0)) (=> (and (and (= Civl_pc@0  (=> (= tid lock@0) false)) (= Civl_ok@0  (or (and (and (= lock@0 nil) (not (= tid nil))) (= tid tid)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicLowerEnter$0$anon0_correct  (=> (not b@0) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 11) 10))) inline$AtomicLowerEnter$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= tid nil)) (= (not (= lock nil)) b)) (= (ControlFlow 0 12) 11)) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock@0 () T@X)
(declare-fun b@0 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun lock () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_Leave_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (and (not (= tid nil)) (= (not (= nil nil)) false)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_Yield$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 nil)) (= (not (= lock@0 nil)) b@0)) (= (ControlFlow 0 6) (- 0 5))) (and (not (= inline$Civl_NoninterferenceChecker_yield_Yield$0$tid@0 nil)) (= (not (= nil nil)) false))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= nil lock@0) (= nil nil)))) (=> (or false (or (= nil lock@0) (= nil nil))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= nil lock@0))) (=> (=> false (= nil lock@0)) (=> (and (and (= Civl_pc@0  (=> (= nil lock@0) false)) (= Civl_ok@0  (or (= nil nil) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (not (= tid nil)) (= (not (= lock@0 nil)) b@0)) (=> (and (and (= lock@0 tid) (not (= tid nil))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= tid nil)) (= (not (= lock nil)) b)) (= (ControlFlow 0 11) 10)) anon0_correct)))
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
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun lock@1 () T@X)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_Customer_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) true) (=> (= (ControlFlow 0 11) (- 0 10)) (=> false true)))))
(let ((anon2_LoopBody$2_@2_anon2_LoopHead_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon2_LoopBody$1_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (and (= tid tid) (not (= tid nil)))) (=> (and (= tid tid) (not (= tid nil))) (and (and (=> (= (ControlFlow 0 13) 9) anon2_LoopBody$2_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 13) 11) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 13) 4) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (and (and (= lock@1 nil) (not (= tid nil))) (= (ControlFlow 0 15) 13)) anon2_LoopBody$1_correct)))
(let ((anon2_LoopHead_correct  (=> (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 16) 15) inline$AtomicEnter$0$anon0_correct) (=> (= (ControlFlow 0 16) 6) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 16) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (and (and (=> (= (ControlFlow 0 17) 2) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 17) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 16) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicEnter$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (and (and (= lock nil) (not (= tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicEnter$0$Return_correct)))
(let ((inline$AtomicEnter$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicEnter$0$anon0_correct)))
inline$AtomicEnter$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun lock () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLeave)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicLeave$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicLeave$0$Entry_correct  (=> (and (and (= lock tid) (not (= tid nil))) (= (ControlFlow 0 3) 2)) inline$AtomicLeave$0$Return_correct)))
inline$AtomicLeave$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun b () Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLowerEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLowerEnter$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicLowerEnter$0$anon0_correct  (=> (and (not b) (= (ControlFlow 0 3) 2)) inline$AtomicLowerEnter$0$Return_correct)))
(let ((inline$AtomicLowerEnter$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicLowerEnter$0$anon0_correct)))
inline$AtomicLowerEnter$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
