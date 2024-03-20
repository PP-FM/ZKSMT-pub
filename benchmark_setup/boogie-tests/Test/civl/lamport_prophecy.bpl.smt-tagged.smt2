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
(declare-fun N () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (> N 0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_i () Int)
(declare-fun c () Int)
(declare-fun first_i () Int)
(declare-fun y@5 () (Array Int Int))
(declare-fun y () (Array Int Int))
(declare-fun y@4 () (Array Int Int))
(declare-fun y@2 () (Array Int Int))
(declare-fun y@3 () (Array Int Int))
(declare-fun y@1 () (Array Int Int))
(declare-fun y@0 () (Array Int Int))
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_update_y_abs_atomic_update_y_abs)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_update_y_abs$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (or (or (and (and (= second_i (mod (+ c 1) N)) (= first_i (mod (+ c 1) N))) (= y@5 (store (store y second_i 1) first_i 1))) (and (and (= second_i (mod (+ c 1) N)) (not (= first_i (mod (+ c 1) N)))) (= y@5 (store (store y second_i 1) first_i (select y@5 first_i))))) (exists ((|Civl_y#1| (Array Int Int)) ) (!  (and (and (and (not (= second_i (mod (+ c 1) N))) (= |Civl_y#1| (store y second_i (select |Civl_y#1| second_i)))) (= first_i (mod (+ c 1) N))) (= y@5 (store |Civl_y#1| first_i 1)))
 :qid |unknown.0:0|
 :skolemid |3|
))) (exists ((|Civl_y#1@@0| (Array Int Int)) ) (!  (and (and (and (not (= second_i (mod (+ c 1) N))) (= |Civl_y#1@@0| (store y second_i (select |Civl_y#1@@0| second_i)))) (not (= first_i (mod (+ c 1) N)))) (= y@5 (store |Civl_y#1@@0| first_i (select y@5 first_i))))
 :qid |unknown.0:0|
 :skolemid |4|
)))))))
(let ((inline$atomic_update_y_abs$1$anon3_Else_correct  (=> (and (and (not (= second_i (mod (+ c 1) N))) (= y@4 (store y@2 second_i (select y@4 second_i)))) (and (= y@5 y@4) (= (ControlFlow 0 4) 2))) inline$atomic_update_y_abs$1$Return_correct)))
(let ((inline$atomic_update_y_abs$1$anon3_Then_correct  (=> (and (and (= second_i (mod (+ c 1) N)) (= y@3 (store y@2 second_i 1))) (and (= y@5 y@3) (= (ControlFlow 0 3) 2))) inline$atomic_update_y_abs$1$Return_correct)))
(let ((inline$atomic_update_y_abs$0$anon3_Else_correct  (=> (not (= first_i (mod (+ c 1) N))) (=> (and (= y@1 (store y first_i (select y@1 first_i))) (= y@2 y@1)) (and (=> (= (ControlFlow 0 6) 3) inline$atomic_update_y_abs$1$anon3_Then_correct) (=> (= (ControlFlow 0 6) 4) inline$atomic_update_y_abs$1$anon3_Else_correct))))))
(let ((inline$atomic_update_y_abs$0$anon3_Then_correct  (=> (= first_i (mod (+ c 1) N)) (=> (and (= y@0 (store y first_i 1)) (= y@2 y@0)) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_update_y_abs$1$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_update_y_abs$1$anon3_Else_correct))))))
(let ((inline$atomic_update_y_abs$0$Entry_correct  (and (=> (= (ControlFlow 0 7) 5) inline$atomic_update_y_abs$0$anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) inline$atomic_update_y_abs$0$anon3_Else_correct))))
inline$atomic_update_y_abs$0$Entry_correct)))))))
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
(declare-fun N () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (> N 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun c () Int)
(declare-fun y () (Array Int Int))
(set-info :boogie-vc-id Civl_CooperationChecker_atomic_update_y_abs)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((init_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (= i (mod (+ c 1) N)) (exists ((|Civl_y#1| (Array Int Int)) ) (!  (and (not (= i (mod (+ c 1) N))) (= |Civl_y#1| (store y i (select |Civl_y#1| i))))
 :qid |unknown.0:0|
 :skolemid |5|
))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) init_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
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
(declare-fun N () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (> N 0))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun p () Int)
(declare-fun i () Int)
(set-info :boogie-vc-id Civl_CooperationChecker_backward_assign_p)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((init_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (exists ((|Civl_p#1| Int) ) (!  (and (= p i) (and (<= 0 |Civl_p#1|) (< |Civl_p#1| N)))
 :qid |unknown.0:0|
 :skolemid |6|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) init_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
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
(declare-fun N () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (> N 0))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@0 () Int)
(declare-fun p@1 () Int)
(declare-fun c () Int)
(declare-fun x@1 () (Array Int Int))
(declare-fun i@1 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 () Int)
(declare-fun Civl_global_old_p@0 () Int)
(declare-fun Civl_global_old_x@0 () (Array Int Int))
(declare-fun p@2 () Int)
(declare-fun x@2 () (Array Int Int))
(declare-fun p@0 () Int)
(declare-fun x@0 () (Array Int Int))
(declare-fun p () Int)
(declare-fun x@@0 () (Array Int Int))
(set-info :boogie-vc-id Civl_Main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((Civl_ReturnChecker_correct true))
(let ((anon2_LoopBody_correct  (=> (< i@0 N) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (and (and (and (<= 0 i@0) (< i@0 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1)))) (=> (and (and (and (and (<= 0 i@0) (< i@0 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1))) (=> (and (= i@1 (+ i@0 1)) (= (ControlFlow 0 9) (- 0 8))) (and (and (and (or (and (<= 0 i@1) (< i@1 N)) (= i@1 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1)))))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (and (and (<= 0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (< inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 N)) (and (<= 0 Civl_global_old_p@0) (< Civl_global_old_p@0 N))) (and (<= 0 c) (< c N))) (or (= Civl_global_old_p@0 c) (= (select Civl_global_old_x@0 c) 1))) (= (ControlFlow 0 6) (- 0 5))) (and (and (and (and (<= 0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (< inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 N)) (and (<= 0 p@2) (< p@2 N))) (and (<= 0 c) (< c N))) (or (= p@2 c) (= (select x@2 c) 1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct  (=> (and (= (select Civl_global_old_x@0 c) 1) (= (ControlFlow 0 3) (- 0 2))) (= (select x@2 c) 1))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@2 x@1) (= p@2 p@1)) (and (= Civl_global_old_x@0 x@1) (= Civl_global_old_p@0 p@1))) (and (and (=> (= (ControlFlow 0 12) 3) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct) (=> (= (ControlFlow 0 12) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))
(let ((anon2_LoopDone_correct  (=> (<= N i@0) (and (=> (= (ControlFlow 0 13) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 13) 12) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon2_LoopHead_correct  (=> (and (and (and (or (and (<= 0 i@0) (< i@0 N)) (= i@0 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1))) (and (=> (= (ControlFlow 0 14) 13) anon2_LoopDone_correct) (=> (= (ControlFlow 0 14) 9) anon2_LoopBody_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (and (and (and (<= 0 0) (< 0 N)) (and (<= 0 p@0) (< p@0 N))) (and (<= 0 c) (< c N))) (or (= p@0 c) (= (select x@0 c) 1)))) (=> (and (and (and (and (<= 0 0) (< 0 N)) (and (<= 0 p@0) (< p@0 N))) (and (<= 0 c) (< c N))) (or (= p@0 c) (= (select x@0 c) 1))) (=> (and (and (and (and (<= 0 0) (< 0 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (and (and (or (and (<= 0 0) (< 0 N)) (= 0 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1)))) (=> (and (and (and (or (and (<= 0 0) (< 0 N)) (= 0 N)) (and (<= 0 p@1) (< p@1 N))) (and (<= 0 c) (< c N))) (or (= p@1 c) (= (select x@1 c) 1))) (=> (= (ControlFlow 0 15) 14) anon2_LoopHead_correct))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@2 x@0) (= p@2 p@0)) (and (= Civl_global_old_x@0 x@0) (= Civl_global_old_p@0 p@0))) (and (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 7) 6) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (and (and (and (<= 0 0) (< 0 N)) (and (<= 0 p@0) (< p@0 N))) (and (<= 0 c) (< c N))) (or (= p@0 c) (= (select x@0 c) 1))) (and (and (=> (= (ControlFlow 0 18) 15) anon0_0_correct) (=> (= (ControlFlow 0 18) 7) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and (<= 0 0) (< 0 N)) (and (<= 0 p) (< p N))) (and (<= 0 c) (< c N))) (or (= p c) (= (select x@@0 c) 1))) (= (ControlFlow 0 19) 18)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
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
(declare-fun N () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (> N 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun y@2 () (Array Int Int))
(declare-fun y@1 () (Array Int Int))
(declare-fun i () Int)
(declare-fun c () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 () Int)
(declare-fun Civl_global_old_p@0 () Int)
(declare-fun Civl_global_old_x@0 () (Array Int Int))
(declare-fun p@3 () Int)
(declare-fun x@3 () (Array Int Int))
(declare-fun x@2 () (Array Int Int))
(declare-fun p@2 () Int)
(declare-fun y@0 () (Array Int Int))
(declare-fun x@1 () (Array Int Int))
(declare-fun p@1 () Int)
(declare-fun x@0 () (Array Int Int))
(declare-fun p@0 () Int)
(declare-fun p () Int)
(declare-fun x@@0 () (Array Int Int))
(set-info :boogie-vc-id Civl_Proc_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (or Civl_pc@0 (or (= y@2 y@1) (or (and (= i (mod (+ c 1) N)) (= y@2 (store y@1 i 1))) (and (not (= i (mod (+ c 1) N))) (= y@2 (store y@1 i (select y@2 i)))))))) (=> (or Civl_pc@0 (or (= y@2 y@1) (or (and (= i (mod (+ c 1) N)) (= y@2 (store y@1 i 1))) (and (not (= i (mod (+ c 1) N))) (= y@2 (store y@1 i (select y@2 i))))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> Civl_pc@0 (= y@2 y@1))) (=> (=> Civl_pc@0 (= y@2 y@1)) (=> (and (and (= Civl_pc@1  (=> (= y@2 y@1) Civl_pc@0)) (= Civl_ok@1  (or (or (and (= i (mod (+ c 1) N)) (= y@2 (store y@1 i 1))) (and (not (= i (mod (+ c 1) N))) (= y@2 (store y@1 i (select y@2 i))))) Civl_ok@0))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@1)))))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct  (=> (and (and (and (and (and (<= 0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (< inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 N)) (and (<= 0 Civl_global_old_p@0) (< Civl_global_old_p@0 N))) (and (<= 0 c) (< c N))) (or (= Civl_global_old_p@0 c) (= (select Civl_global_old_x@0 c) 1))) (= (ControlFlow 0 8) (- 0 7))) (and (and (and (and (<= 0 inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0) (< inline$Civl_NoninterferenceChecker_yield_Yield$0$i@0 N)) (and (<= 0 p@3) (< p@3 N))) (and (<= 0 c) (< c N))) (or (= p@3 c) (= (select x@3 c) 1))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct  (=> (and (= (select Civl_global_old_x@0 c) 1) (= (ControlFlow 0 5) (- 0 4))) (= (select x@3 c) 1))))
(let ((anon0_0$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@3 x@2) (= p@3 p@2)) (and (= Civl_global_old_x@0 x@2) (= Civl_global_old_p@0 p@2))) (and (and (=> (= (ControlFlow 0 14) 5) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct) (=> (= (ControlFlow 0 14) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 8) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))
(let ((inline$atomic_update_y$0$anon0_correct  (=> (= y@2 (store y@1 i (select x@2 (mod (- i 1) N)))) (and (=> (= (ControlFlow 0 15) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 15) 14) anon0_0$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (= y@0 y@0) false)) (= Civl_ok@0  (or (or (and (= i (mod (+ c 1) N)) (= y@0 (store y@0 i 1))) (and (not (= i (mod (+ c 1) N))) (= y@0 (store y@0 i (select y@0 i))))) false))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= (select x@1 c) 1)) (=> (= (select x@1 c) 1) (=> (or Civl_pc@0 true) (=> (and (= (select x@2 c) 1) (= (ControlFlow 0 16) 15)) inline$atomic_update_y$0$anon0_correct)))))))
(let ((anon0$2_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= x@3 x@1) (= p@3 p@1)) (and (= Civl_global_old_x@0 x@0) (= Civl_global_old_p@0 p@0))) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_impl_Proc_1$0$L0_correct) (=> (= (ControlFlow 0 9) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 8) inline$Civl_NoninterferenceChecker_yield_Yield$0$L0_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= y@0 y@0) (or (and (= i (mod (+ c 1) N)) (= y@0 (store y@0 i 1))) (and (not (= i (mod (+ c 1) N))) (= y@0 (store y@0 i (select y@0 i)))))))) (=> (or false (or (= y@0 y@0) (or (and (= i (mod (+ c 1) N)) (= y@0 (store y@0 i 1))) (and (not (= i (mod (+ c 1) N))) (= y@0 (store y@0 i (select y@0 i))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= y@0 y@0)))))))
(let ((inline$backward_assign_p$0$anon0_correct  (=> (= p@0 i) (=> (and (<= 0 p@1) (< p@1 N)) (and (and (=> (= (ControlFlow 0 18) 16) anon0_0_correct) (=> (= (ControlFlow 0 18) 9) anon0$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 2) Civl_RefinementChecker_correct))))))
(let ((inline$atomic_update_x$0$anon0_correct  (=> (and (= x@1 (store x@0 i 1)) (= (ControlFlow 0 19) 18)) inline$backward_assign_p$0$anon0_correct)))
(let ((anon0_correct  (=> (and (and (and (and (and (<= 0 i) (< i N)) (and (<= 0 p@0) (< p@0 N))) (and (<= 0 c) (< c N))) (or (= p@0 c) (= (select x@0 c) 1))) (= (ControlFlow 0 20) 19)) inline$atomic_update_x$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and (<= 0 i) (< i N)) (and (<= 0 p) (< p N))) (and (<= 0 c) (< c N))) (or (= p c) (= (select x@@0 c) 1))) (= (ControlFlow 0 21) 20)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
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
(declare-fun N () Int)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (> N 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@1 () (Array Int Int))
(declare-fun y@0 () (Array Int Int))
(declare-fun c () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i@0 () Int)
(declare-fun i@1 () Int)
(declare-fun y@4 () (Array Int Int))
(declare-fun y@3 () (Array Int Int))
(declare-fun y@2 () (Array Int Int))
(set-info :boogie-vc-id Civl_Main_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (or false (or (= y@1 y@0) (exists ((|Civl_y'#0| (Array Int Int)) ) (!  (and (= (select |Civl_y'#0| (mod (+ c 1) N)) 1) (= y@1 |Civl_y'#0|))
 :qid |unknown.0:0|
 :skolemid |7|
))))) (=> (or false (or (= y@1 y@0) (exists ((|Civl_y'#0@@0| (Array Int Int)) ) (!  (and (= (select |Civl_y'#0@@0| (mod (+ c 1) N)) 1) (= y@1 |Civl_y'#0@@0|))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> false (= y@1 y@0))) (=> (=> false (= y@1 y@0)) (=> (and (and (= Civl_pc@0  (=> (= y@1 y@0) false)) (= Civl_ok@0  (or (exists ((|Civl_y'#0@@1| (Array Int Int)) ) (!  (and (= (select |Civl_y'#0@@1| (mod (+ c 1) N)) 1) (= y@1 |Civl_y'#0@@1|))
 :qid |unknown.0:0|
 :skolemid |7|
)) false))) (= (ControlFlow 0 7) (- 0 6))) Civl_ok@0)))))))
(let ((anon2_LoopDone_correct  (=> (<= N i@0) (and (=> (= (ControlFlow 0 11) 7) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 10) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody$1_correct  (=> (and (= i@1 (+ i@0 1)) (= (ControlFlow 0 2) (- 0 1))) (and (and (or (and (<= 0 i@1) (< i@1 N)) (= i@1 N)) (and (<= 0 c) (< c N))) (or (<= i@1 (mod (+ c 1) N)) (= (select y@4 (mod (+ c 1) N)) 1))))))
(let ((inline$atomic_update_y_abs$0$anon3_Else_correct  (=> (and (and (not (= i@0 (mod (+ c 1) N))) (= y@3 (store y@1 i@0 (select y@3 i@0)))) (and (= y@4 y@3) (= (ControlFlow 0 4) 2))) anon2_LoopBody$1_correct)))
(let ((inline$atomic_update_y_abs$0$anon3_Then_correct  (=> (and (and (= i@0 (mod (+ c 1) N)) (= y@2 (store y@1 i@0 1))) (and (= y@4 y@2) (= (ControlFlow 0 3) 2))) anon2_LoopBody$1_correct)))
(let ((anon2_LoopBody_correct  (=> (< i@0 N) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_update_y_abs$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_update_y_abs$0$anon3_Else_correct)))))
(let ((anon2_LoopHead_correct  (=> (and (and (or (and (<= 0 i@0) (< i@0 N)) (= i@0 N)) (and (<= 0 c) (< c N))) (or (<= i@0 (mod (+ c 1) N)) (= (select y@1 (mod (+ c 1) N)) 1))) (and (=> (= (ControlFlow 0 12) 11) anon2_LoopDone_correct) (=> (= (ControlFlow 0 12) 5) anon2_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (<= 0 c) (< c N)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (and (and (or (and (<= 0 0) (< 0 N)) (= 0 N)) (and (<= 0 c) (< c N))) (or (<= 0 (mod (+ c 1) N)) (= (select y@0 (mod (+ c 1) N)) 1)))) (=> (and (and (or (and (<= 0 0) (< 0 N)) (= 0 N)) (and (<= 0 c) (< c N))) (or (<= 0 (mod (+ c 1) N)) (= (select y@0 (mod (+ c 1) N)) 1))) (=> (= (ControlFlow 0 13) 12) anon2_LoopHead_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
