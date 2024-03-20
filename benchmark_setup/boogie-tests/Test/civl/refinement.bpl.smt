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
(declare-fun x@1 () Int)
(declare-fun x@@0 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_INCR_DECR)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$DECR$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (- x@@0 1) 1))))))
(let ((inline$DECR$0$anon0_correct  (=> (and (= x@1 (- x@0 1)) (= (ControlFlow 0 3) 2)) inline$DECR$0$Return_correct)))
(let ((inline$INCR$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 4) 3)) inline$DECR$0$anon0_correct)))
(let ((inline$INCR$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$INCR$0$anon0_correct)))
inline$INCR$0$Entry_correct)))))
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
(declare-fun x@@0 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_DECR_INCR)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$INCR$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (- (+ x@@0 1) 1))))))
(let ((inline$INCR$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 3) 2)) inline$INCR$0$Return_correct)))
(let ((inline$DECR$0$anon0_correct  (=> (and (= x@0 (- x@@0 1)) (= (ControlFlow 0 4) 3)) inline$INCR$0$anon0_correct)))
(let ((inline$DECR$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$DECR$0$anon0_correct)))
inline$DECR$0$Entry_correct)))))
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
(declare-fun x@3 () Int)
(declare-fun x@2 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_p_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (or Civl_pc@0 (or (= x@3 x@2) (= x@3 (+ x@2 1))))) (=> (or Civl_pc@0 (or (= x@3 x@2) (= x@3 (+ x@2 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> Civl_pc@0 (= x@3 x@2))) (=> (=> Civl_pc@0 (= x@3 x@2)) (=> (and (and (= Civl_pc@1  (=> (= x@3 x@2) Civl_pc@0)) (= Civl_ok@1  (or (= x@3 (+ x@2 1)) Civl_ok@0))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@1)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$INCR$1$anon0_correct  (=> (= x@3 (+ x@2 1)) (and (=> (= (ControlFlow 0 9) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> (= x@1 x@0) false)) (= Civl_ok@0  (or (= x@1 (+ x@0 1)) false))) (and (or Civl_pc@0 true) (= (ControlFlow 0 10) 9))) inline$INCR$1$anon0_correct)))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= x@1 x@0) (= x@1 (+ x@0 1))))) (=> (or false (or (= x@1 x@0) (= x@1 (+ x@0 1)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= x@1 x@0)))))))
(let ((inline$INCR$0$anon0_correct  (=> (= x@1 (+ x@0 1)) (and (and (=> (= (ControlFlow 0 11) 10) anon0_0_correct) (=> (= (ControlFlow 0 11) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 11) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 12) 11) inline$INCR$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 6) (- 7))))
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
(declare-fun Civl_pc@0 () Bool)
(declare-fun x@3 () Int)
(declare-fun x@2 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_q_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (or Civl_pc@0 (or (= x@3 x@2) (= x@3 (+ x@2 1))))) (=> (or Civl_pc@0 (or (= x@3 x@2) (= x@3 (+ x@2 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> Civl_pc@0 (= x@3 x@2))) (=> (=> Civl_pc@0 (= x@3 x@2)) (=> (and (and (= Civl_pc@1  (=> (= x@3 x@2) Civl_pc@0)) (= Civl_ok@1  (or (= x@3 (+ x@2 1)) Civl_ok@0))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@1)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$INCR$0$anon0_correct  (=> (= x@3 (+ x@2 1)) (and (=> (= (ControlFlow 0 9) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> (= x@1 x@0) false)) (= Civl_ok@0  (or (= x@1 (+ x@0 1)) false))) (and (or Civl_pc@0 true) (= (ControlFlow 0 10) 9))) inline$INCR$0$anon0_correct)))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= x@1 x@0) (= x@1 (+ x@0 1))))) (=> (or false (or (= x@1 x@0) (= x@1 (+ x@0 1)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= x@1 x@0)))))))
(let ((inline$DECR$0$anon0_correct  (=> (= x@1 (- x@0 1)) (and (and (=> (= (ControlFlow 0 11) 10) anon0_0_correct) (=> (= (ControlFlow 0 11) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 11) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 12) 11) inline$DECR$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun Civl_pc@1 () Bool)
(declare-fun x@10 () Int)
(declare-fun x@5 () Int)
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_pc@2 () Bool)
(declare-fun x@6 () Int)
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@4 () Int)
(declare-fun x@3 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun x@9 () Int)
(declare-fun x@8 () Int)
(declare-fun x@7 () Int)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_r_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 8) (- 0 10)) (or Civl_pc@1 (or (= x@10 x@5) (= x@10 (+ x@5 1))))) (=> (or Civl_pc@1 (or (= x@10 x@5) (= x@10 (+ x@5 1)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> Civl_pc@1 (= x@10 x@5))) (=> (=> Civl_pc@1 (= x@10 x@5)) (=> (and (and (= Civl_pc@3  (=> (= x@10 x@5) Civl_pc@1)) (= Civl_ok@2  (or (= x@10 (+ x@5 1)) Civl_ok@1))) (= (ControlFlow 0 8) (- 0 7))) Civl_ok@2)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (or Civl_pc@2 (or (= x@6 Civl_global_old_x@0) (= x@6 (+ Civl_global_old_x@0 1))))) (=> (or Civl_pc@2 (or (= x@6 Civl_global_old_x@0) (= x@6 (+ Civl_global_old_x@0 1)))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> Civl_pc@2 (= x@6 Civl_global_old_x@0)))))))
(let ((anon0_1$1_@2_Civl_RefinementChecker_correct  (=> (and (and (= x@6 x@4) (= Civl_global_old_x@0 x@3)) (and (= Civl_pc@2 Civl_pc@0) (= (ControlFlow 0 6) 3))) Civl_RefinementChecker_correct)))
(let ((anon0$2_@2_Civl_RefinementChecker_correct  (=> (and (and (= x@6 x@2) (= Civl_global_old_x@0 x@0)) (and (= Civl_pc@2 false) (= (ControlFlow 0 5) 3))) Civl_RefinementChecker_correct)))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$DECR$2$anon0_correct  (=> (= x@10 (- x@9 1)) (and (=> (= (ControlFlow 0 11) 8) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 1) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$DECR$1$anon0_correct  (=> (and (= x@9 (- x@8 1)) (= (ControlFlow 0 12) 11)) inline$DECR$2$anon0_correct)))
(let ((inline$INCR$3$anon0_correct  (=> (and (= x@8 (+ x@7 1)) (= (ControlFlow 0 13) 12)) inline$DECR$1$anon0_correct)))
(let ((inline$INCR$2$anon0_correct  (=> (and (= x@7 (+ x@5 1)) (= (ControlFlow 0 14) 13)) inline$INCR$3$anon0_correct)))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@1  (=> (= x@4 x@3) Civl_pc@0)) (= Civl_ok@1  (or (= x@4 (+ x@3 1)) Civl_ok@0))) (and (or Civl_pc@1 true) (= (ControlFlow 0 15) 14))) inline$INCR$2$anon0_correct)))
(let ((inline$INCR$1$anon0_correct  (=> (= x@4 (+ x@3 1)) (and (and (=> (= (ControlFlow 0 16) 15) anon0_0_correct) (=> (= (ControlFlow 0 16) 6) anon0_1$1_@2_Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 16) 1) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_1_correct  (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 1)) false))) (and (or Civl_pc@0 true) (= (ControlFlow 0 17) 16))) inline$INCR$1$anon0_correct)))
(let ((inline$DECR$0$anon0_correct  (=> (= x@2 (- x@1 1)) (and (and (=> (= (ControlFlow 0 18) 17) anon0_1_correct) (=> (= (ControlFlow 0 18) 5) anon0$2_@2_Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 18) 1) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$INCR$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 19) 18)) inline$DECR$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 20) 19) inline$INCR$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 20) anon0_correct)))
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
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_s_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@0 x@0) (= x@0 (+ x@0 1))))) (=> (or false (or (= x@0 x@0) (= x@0 (+ x@0 1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@0 x@0))) (=> (=> false (= x@0 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@0 x@0) false)) (= Civl_ok@0  (or (= x@0 (+ x@0 1)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@5 () Int)
(declare-fun x@4 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_pc@1 () Bool)
(declare-fun x@3 () Int)
(declare-fun Civl_global_old_x@0 () Int)
(declare-fun x@2 () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_t_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20) (let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (= x@5 x@4)) (=> (= x@5 x@4) (=> (= (ControlFlow 0 13) (- 0 12)) (=> Civl_pc@0 true))))))
(let ((anon2_LoopBody$1_@2_anon2_LoopHead_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 8) (- 0 10)) (or Civl_pc@0 (or (= x@4 x@4) (= x@4 (+ x@4 1))))) (=> (or Civl_pc@0 (or (= x@4 x@4) (= x@4 (+ x@4 1)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> Civl_pc@0 (= x@4 x@4))) (=> (=> Civl_pc@0 (= x@4 x@4)) (=> (and (and (= Civl_pc@2  (=> (= x@4 x@4) Civl_pc@0)) (= Civl_ok@1  (or (= x@4 (+ x@4 1)) Civl_ok@0))) (= (ControlFlow 0 8) (- 0 7))) Civl_ok@1)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (or Civl_pc@1 (or (= x@3 Civl_global_old_x@0) (= x@3 (+ Civl_global_old_x@0 1))))) (=> (or Civl_pc@1 (or (= x@3 Civl_global_old_x@0) (= x@3 (+ Civl_global_old_x@0 1)))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> Civl_pc@1 (= x@3 Civl_global_old_x@0)))))))
(let ((anon0_0_@2_Civl_RefinementChecker_correct  (=> (and (and (= x@3 x@2) (= Civl_global_old_x@0 x@2)) (and (= Civl_pc@1 Civl_pc@0) (= (ControlFlow 0 6) 3))) Civl_RefinementChecker_correct)))
(let ((anon0$1_@2_Civl_RefinementChecker_correct  (=> (and (and (= x@3 x@1) (= Civl_global_old_x@0 x@0)) (and (= Civl_pc@1 false) (= (ControlFlow 0 5) 3))) Civl_RefinementChecker_correct)))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$INCR$1$anon0_correct  (=> (= x@5 (+ x@4 1)) (and (and (=> (= (ControlFlow 0 15) 11) anon2_LoopBody$1_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 15) 13) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 15) 1) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopHead_correct  (=> (or Civl_pc@0 true) (and (and (=> (= (ControlFlow 0 16) 15) inline$INCR$1$anon0_correct) (=> (= (ControlFlow 0 16) 8) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 16) 1) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> (= x@1 x@0) false)) (= Civl_ok@0  (or (= x@1 (+ x@0 1)) false))) (or Civl_pc@0 true)) (and (and (=> (= (ControlFlow 0 17) 6) anon0_0_@2_Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 17) 1) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 16) anon2_LoopHead_correct)))))
(let ((inline$INCR$0$anon0_correct  (=> (= x@1 (+ x@0 1)) (and (and (=> (= (ControlFlow 0 18) 17) anon0_0_correct) (=> (= (ControlFlow 0 18) 5) anon0$1_@2_Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 18) 1) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19) 18) inline$INCR$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 13) (- 14))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)