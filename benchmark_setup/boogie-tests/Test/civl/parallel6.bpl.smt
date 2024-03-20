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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_incr_by_two_atomic_incr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_incr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (+ x@@0 1) 2))))))
(let ((inline$atomic_incr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_incr$0$Return_correct)))
(let ((inline$atomic_incr_by_two$0$anon0_correct  (=> (and (= x@0 (+ x@@0 2)) (= (ControlFlow 0 4) 3)) inline$atomic_incr$0$anon0_correct)))
(let ((inline$atomic_incr_by_two$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_incr_by_two$0$anon0_correct)))
inline$atomic_incr_by_two$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_incr_by_two_atomic_decr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_decr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (- x@@0 1) 2))))))
(let ((inline$atomic_decr$0$anon0_correct  (=> (and (= x@1 (- x@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_decr$0$Return_correct)))
(let ((inline$atomic_incr_by_two$0$anon0_correct  (=> (and (= x@0 (+ x@@0 2)) (= (ControlFlow 0 4) 3)) inline$atomic_decr$0$anon0_correct)))
(let ((inline$atomic_incr_by_two$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_incr_by_two$0$anon0_correct)))
inline$atomic_incr_by_two$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_incr_atomic_incr_by_two)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_incr_by_two$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (+ x@@0 2) 1))))))
(let ((inline$atomic_incr_by_two$0$anon0_correct  (=> (and (= x@1 (+ x@0 2)) (= (ControlFlow 0 3) 2)) inline$atomic_incr_by_two$0$Return_correct)))
(let ((inline$atomic_incr$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_incr_by_two$0$anon0_correct)))
(let ((inline$atomic_incr$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_incr$0$anon0_correct)))
inline$atomic_incr$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_incr_atomic_decr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_decr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (- x@@0 1) 1))))))
(let ((inline$atomic_decr$0$anon0_correct  (=> (and (= x@1 (- x@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_decr$0$Return_correct)))
(let ((inline$atomic_incr$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_decr$0$anon0_correct)))
(let ((inline$atomic_incr$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_incr$0$anon0_correct)))
inline$atomic_incr$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_decr_atomic_incr_by_two)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_incr_by_two$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (- (+ x@@0 2) 1))))))
(let ((inline$atomic_incr_by_two$0$anon0_correct  (=> (and (= x@1 (+ x@0 2)) (= (ControlFlow 0 3) 2)) inline$atomic_incr_by_two$0$Return_correct)))
(let ((inline$atomic_decr$0$anon0_correct  (=> (and (= x@0 (- x@@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_incr_by_two$0$anon0_correct)))
(let ((inline$atomic_decr$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_decr$0$anon0_correct)))
inline$atomic_decr$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_decr_atomic_incr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_incr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (- (+ x@@0 1) 1))))))
(let ((inline$atomic_incr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_incr$0$Return_correct)))
(let ((inline$atomic_decr$0$anon0_correct  (=> (and (= x@0 (- x@@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_incr$0$anon0_correct)))
(let ((inline$atomic_decr$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_decr$0$anon0_correct)))
inline$atomic_decr$0$Entry_correct)))))
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
(declare-fun x@5 () Int)
(declare-fun x@3 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@4 () Int)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_incr_by_two_bad_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (or Civl_pc@0 (or (= x@5 x@3) (= x@5 (+ x@3 2))))) (=> (or Civl_pc@0 (or (= x@5 x@3) (= x@5 (+ x@3 2)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> Civl_pc@0 (= x@5 x@3))) (=> (=> Civl_pc@0 (= x@5 x@3)) (=> (and (and (= Civl_pc@1  (=> (= x@5 x@3) Civl_pc@0)) (= Civl_ok@1  (or (= x@5 (+ x@3 2)) Civl_ok@0))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@1)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$atomic_incr$3$anon0_correct  (=> (= x@5 (+ x@4 1)) (and (=> (= (ControlFlow 0 9) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$atomic_incr$2$anon0_correct  (=> (and (= x@4 (+ x@3 1)) (= (ControlFlow 0 10) 9)) inline$atomic_incr$3$anon0_correct)))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 2)) false))) (and (or Civl_pc@0 true) (= (ControlFlow 0 11) 10))) inline$atomic_incr$2$anon0_correct)))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= x@2 x@0) (= x@2 (+ x@0 2))))) (=> (or false (or (= x@2 x@0) (= x@2 (+ x@0 2)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= x@2 x@0)))))))
(let ((inline$atomic_incr$1$anon0_correct  (=> (= x@2 (+ x@1 1)) (and (and (=> (= (ControlFlow 0 12) 11) anon0_0_correct) (=> (= (ControlFlow 0 12) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 12) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$atomic_incr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 13) 12)) inline$atomic_incr$1$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 14) 13) inline$atomic_incr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-fun x@5 () Int)
(declare-fun x@3 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun x@4 () Int)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_incr_by_two_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (or Civl_pc@0 (or (= x@5 x@3) (= x@5 (+ x@3 2))))) (=> (or Civl_pc@0 (or (= x@5 x@3) (= x@5 (+ x@3 2)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> Civl_pc@0 (= x@5 x@3))) (=> (=> Civl_pc@0 (= x@5 x@3)) (=> (and (and (= Civl_pc@1  (=> (= x@5 x@3) Civl_pc@0)) (= Civl_ok@1  (or (= x@5 (+ x@3 2)) Civl_ok@0))) (= (ControlFlow 0 6) (- 0 5))) Civl_ok@1)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$atomic_incr$2$anon0_correct  (=> (= x@5 (+ x@4 1)) (and (=> (= (ControlFlow 0 9) 6) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 9) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$atomic_incr$1$anon0_correct  (=> (and (= x@4 (+ x@3 1)) (= (ControlFlow 0 10) 9)) inline$atomic_incr$2$anon0_correct)))
(let ((anon0_0_correct  (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 (+ x@0 2)) false))) (and (or Civl_pc@0 true) (= (ControlFlow 0 11) 10))) inline$atomic_incr$1$anon0_correct)))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= x@2 x@0) (= x@2 (+ x@0 2))))) (=> (or false (or (= x@2 x@0) (= x@2 (+ x@0 2)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= x@2 x@0)))))))
(let ((inline$atomic_decr$0$anon0_correct  (=> (= x@2 (- x@1 1)) (and (and (=> (= (ControlFlow 0 12) 11) anon0_0_correct) (=> (= (ControlFlow 0 12) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 12) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$atomic_incr$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 13) 12)) inline$atomic_decr$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 14) 13) inline$atomic_incr$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
