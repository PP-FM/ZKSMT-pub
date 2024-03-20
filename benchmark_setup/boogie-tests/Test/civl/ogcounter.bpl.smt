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
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(declare-sort T@X 0)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_IncrBy2_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@2 x@0) (= x@2 (+ x@0 2))))) (=> (or false (or (= x@2 x@0) (= x@2 (+ x@0 2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@2 x@0))) (=> (=> false (= x@2 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 2)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicIncr$1$anon0_correct  (=> (= x@2 (+ x@1 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicIncr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 7) 6)) inline$AtomicIncr$1$anon0_correct)))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((as const (Array T@X Bool)) false)) (= (ControlFlow 0 8) 7)) inline$AtomicIncr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
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
(set-info :boogie-vc-id Civl_EqualTo2_1)
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
(declare-fun x@1 () Int)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun x@0 () Int)
(declare-fun MainTid () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_EqualTo2_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (= x@1 2))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= x@0 2) (= (ControlFlow 0 8) (- 0 7))) (= x@1 2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (and (= inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$tid@0 MainTid) (= x@0 0)) (= (ControlFlow 0 6) (- 0 5))) (and (= inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$tid@0 MainTid) (= x@1 0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((inline$AtomicIncrBy2$0$anon0_correct  (=> (= x@1 (+ x@0 2)) (and (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) inline$Civl_NoninterferenceChecker_proc_EqualTo2_2$0$L1_correct)) (=> (= (ControlFlow 0 12) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 11) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (and (= tid MainTid) (= x@0 0)) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= (ControlFlow 0 13) 12))) inline$AtomicIncrBy2$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (= tid MainTid) (= x@@0 0)) (= (ControlFlow 0 14) 13)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
