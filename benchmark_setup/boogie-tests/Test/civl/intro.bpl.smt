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
(set-info :boogie-vc-id Civl_read_y_0)
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
(set-info :boogie-vc-id Civl_write_y_0)
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
(declare-fun x@0 () Int)
(declare-fun v () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_read_x_0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@0 x@0) (and (= x@0 x@0) (= x@0 x@0))))) (=> (or false (or (= x@0 x@0) (and (= x@0 x@0) (= x@0 x@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= x@0 x@0) (= x@0 v)))) (=> (=> false (and (= x@0 x@0) (= x@0 v))) (=> (and (and (= Civl_pc@0  (=> (= x@0 x@0) false)) (= Civl_ok@0  (or (and (= x@0 x@0) (= x@0 x@0)) (and (= x@0 v) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))
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
(declare-fun |x'| () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_write_x_0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= |x'| x@0) (= |x'| |x'|)))) (=> (or false (or (= |x'| x@0) (= |x'| |x'|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= |x'| x@0))) (=> (=> false (= |x'| x@0)) (=> (and (and (= Civl_pc@0  (=> (= |x'| x@0) false)) (= Civl_ok@0  (or (= |x'| |x'|) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))
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
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun v () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@@0 () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id Civl_read_y_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((inline$Civl_NoninterferenceChecker_proc_read_y_1$0$L0_correct  (=> (and (= x@0 y@0) (= (ControlFlow 0 9) (- 0 8))) (= x@0 y@0))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_write_y_1$0$L0_correct  (=> (and (= x@0 y@0) (= (ControlFlow 0 6) (- 0 5))) (= x@0 y@0))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= y@0 y@0) (and (= x@0 y@0) (= y@0 y@0))))) (=> (or false (or (= y@0 y@0) (and (= x@0 y@0) (= y@0 y@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= y@0 y@0) (= x@0 v)))) (=> (=> false (and (= y@0 y@0) (= x@0 v))) (=> (and (and (= Civl_pc@0  (=> (= y@0 y@0) false)) (= Civl_ok@0  (or (and (= x@0 y@0) (= y@0 y@0)) (and (= x@0 v) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (= x@0 y@0) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_proc_write_y_1$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) inline$Civl_NoninterferenceChecker_proc_read_y_1$0$L0_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= x@@0 y) (= (ControlFlow 0 11) 10)) anon0_correct)))
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
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun |y'| () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@@0 () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id Civl_write_y_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((inline$Civl_NoninterferenceChecker_proc_read_y_1$0$L0_correct  (=> (and (= x@0 y@0) (= (ControlFlow 0 9) (- 0 8))) (= |y'| |y'|))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_write_y_1$0$L0_correct  (=> (and (= x@0 y@0) (= (ControlFlow 0 6) (- 0 5))) (= |y'| |y'|))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= |y'| y@0) (= |y'| |y'|)))) (=> (or false (or (= |y'| y@0) (= |y'| |y'|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= |y'| y@0))) (=> (=> false (= |y'| y@0)) (=> (and (and (= Civl_pc@0  (=> (= |y'| y@0) false)) (= Civl_ok@0  (or (= |y'| |y'|) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (= x@0 y@0) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_proc_write_y_1$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) inline$Civl_NoninterferenceChecker_proc_read_y_1$0$L0_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= x@@0 y) (= (ControlFlow 0 11) 10)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
