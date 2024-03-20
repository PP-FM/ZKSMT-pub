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
(declare-fun second_n () Int)
(declare-fun first_n () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_ADD_ADD)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ADD$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= x@1 (+ (+ x@@0 second_n) first_n))))))
(let ((inline$ADD$1$anon0_correct  (=> (and (= x@1 (+ x@0 second_n)) (= (ControlFlow 0 3) 2)) inline$ADD$1$Return_correct)))
(let ((inline$ADD$0$anon0_correct  (=> (and (= x@0 (+ x@@0 first_n)) (= (ControlFlow 0 4) 3)) inline$ADD$1$anon0_correct)))
(let ((inline$ADD$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$ADD$0$anon0_correct)))
inline$ADD$0$Entry_correct)))))
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
(declare-fun x@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= x@1 x@0) (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 0))))) (=> (or false (or (= x@1 x@0) (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= x@1 x@0))) (=> (=> false (= x@1 x@0)) (=> (and (and (= Civl_pc@0  (=> (= x@1 x@0) false)) (= Civl_ok@0  (or (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 0)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_a_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0$1_correct  (=> (and (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 5)) (= (ControlFlow 0 2) (- 0 1))) (and (> x@1 x@@0) (= (mod (- x@1 x@@0) 6) 0)))))
(let ((inline$ADD$0$anon0_correct  (=> (and (= x@0 (+ x@@0 1)) (= (ControlFlow 0 3) 2)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 4) 3) inline$ADD$0$anon0_correct)))
anon0_correct))))
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
(declare-fun x@0 () Int)
(declare-fun x@@0 () Int)
(set-info :boogie-vc-id Civl_b_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0$1_correct  (=> (and (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 3)) (= (ControlFlow 0 2) (- 0 1))) (and (> x@1 x@@0) (= (mod (- x@1 x@@0) 6) 5)))))
(let ((inline$ADD$0$anon0_correct  (=> (and (= x@0 (+ x@@0 2)) (= (ControlFlow 0 3) 2)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 4) 3) inline$ADD$0$anon0_correct)))
anon0_correct))))
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
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Civl_c_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (and (> x@2 x@@0) (= (mod (- x@2 x@@0) 6) 3)))))
(let ((anon2_Else_correct  (=> (and (= x@2 x@0) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon2_Then_correct  (=> (and (and (> x@1 x@0) (= (mod (- x@1 x@0) 6) 0)) (and (= x@2 x@1) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct)))
(let ((inline$ADD$0$anon0_correct  (=> (= x@0 (+ x@@0 3)) (and (=> (= (ControlFlow 0 5) 3) anon2_Then_correct) (=> (= (ControlFlow 0 5) 4) anon2_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 6) 5) inline$ADD$0$anon0_correct)))
anon0_correct))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)