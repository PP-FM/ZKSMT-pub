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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_inc_atomic_dec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_dec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (- x@@0 1) 1))))))
(let ((inline$atomic_dec$0$anon0_correct  (=> (and (= x@1 (- x@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_dec$0$Return_correct)))
(let ((inline$atomic_inc$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_dec$0$anon0_correct)))
(let ((inline$atomic_inc$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_inc$0$anon0_correct)))
inline$atomic_inc$0$Entry_correct)))))
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
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_dec_atomic_inc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_inc$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (- (+ x@@0 1) 1))))))
(let ((inline$atomic_inc$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 3) 2)) inline$atomic_inc$0$Return_correct)))
(let ((inline$atomic_dec$0$anon0_correct  (=> (and (= x@0 (- x@@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_inc$0$anon0_correct)))
(let ((inline$atomic_dec$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_dec$0$anon0_correct)))
inline$atomic_dec$0$Entry_correct)))))
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
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun N () Int)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@2 x@0) (= x@2 x@0)))) (=> (or false (or (= x@2 x@0) (= x@2 x@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@2 x@0))) (=> (=> false (= x@2 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@2 x@0) false)) (= Civl_ok@0  (or (= x@2 x@0) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (>= N 0) (and (=> (= (ControlFlow 0 6) (- 0 8)) (>= N 0)) (=> (>= N 0) (=> (= x@1 (+ x@0 N)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (>= N 0)) (=> (>= N 0) (=> (= x@2 (- x@1 N)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= N 0) (= (ControlFlow 0 9) 6)) anon0_correct)))
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
(declare-fun x@2 () Int)
(declare-fun x@@0 () Int)
(declare-fun N () Int)
(declare-fun i@0 () Int)
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(declare-fun i@1 () Int)
(set-info :boogie-vc-id Civl_inc_by_N_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= x@2 (+ x@@0 N)))))
(let ((anon2_LoopDone_correct  (=> (= i@0 N) (=> (and (= x@2 x@0) (= (ControlFlow 0 7) 6)) GeneratedUnifiedExit_correct))))
(let ((anon2_LoopBody$1_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= x@1 (+ x@@0 i@1)))))
(let ((inline$atomic_inc$0$anon0_correct  (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 3) 2)) anon2_LoopBody$1_correct)))
(let ((anon2_LoopBody_correct  (=> (not (= i@0 N)) (=> (and (= i@1 (+ i@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_inc$0$anon0_correct))))
(let ((anon2_LoopHead_correct  (=> (= x@0 (+ x@@0 i@0)) (and (=> (= (ControlFlow 0 8) 7) anon2_LoopDone_correct) (=> (= (ControlFlow 0 8) 4) anon2_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (= x@@0 (+ x@@0 0))) (=> (= x@@0 (+ x@@0 0)) (=> (= (ControlFlow 0 9) 8) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= N 0) (= (ControlFlow 0 11) 9)) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@2 () Int)
(declare-fun x@@0 () Int)
(declare-fun N () Int)
(declare-fun i@0 () Int)
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(declare-fun i@1 () Int)
(set-info :boogie-vc-id Civl_dec_by_N_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (= x@2 (- x@@0 N)))))
(let ((anon2_LoopDone_correct  (=> (= i@0 N) (=> (and (= x@2 x@0) (= (ControlFlow 0 7) 6)) GeneratedUnifiedExit_correct))))
(let ((anon2_LoopBody$1_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= x@1 (- x@@0 i@1)))))
(let ((inline$atomic_dec$0$anon0_correct  (=> (and (= x@1 (- x@0 1)) (= (ControlFlow 0 3) 2)) anon2_LoopBody$1_correct)))
(let ((anon2_LoopBody_correct  (=> (not (= i@0 N)) (=> (and (= i@1 (+ i@0 1)) (= (ControlFlow 0 4) 3)) inline$atomic_dec$0$anon0_correct))))
(let ((anon2_LoopHead_correct  (=> (= x@0 (- x@@0 i@0)) (and (=> (= (ControlFlow 0 8) 7) anon2_LoopDone_correct) (=> (= (ControlFlow 0 8) 4) anon2_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (= x@@0 (- x@@0 0))) (=> (= x@@0 (- x@@0 0)) (=> (= (ControlFlow 0 9) 8) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (>= N 0) (= (ControlFlow 0 11) 9)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
