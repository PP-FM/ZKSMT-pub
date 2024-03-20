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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$B$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_B)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$B$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$B$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |8|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$B$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |8|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$B$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |9|
)))))))
(let ((inline$B$0$anon0_correct  (=> (and (= inline$B$0$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 4) 2)) inline$B$0$Return_correct)))
(let ((inline$B$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$B$0$anon0_correct)))
inline$B$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$C$0$PAs@3 () (Array T@PA Int))
(declare-fun flag () Bool)
(declare-fun inline$C$0$PAs@1 () (Array T@PA Int))
(declare-fun inline$C$0$PAs@2 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_C)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$C$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$C$0$PAs@3 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |10|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$C$0$PAs@3 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$C$0$PAs@3 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |11|
)))))))
(let ((inline$C$0$anon2_Else_correct  (=> (not flag) (=> (and (= inline$C$0$PAs@3 inline$C$0$PAs@1) (= (ControlFlow 0 5) 2)) inline$C$0$Return_correct))))
(let ((inline$C$0$anon2_Then_correct  (=> (and (and flag (= inline$C$0$PAs@2 (store inline$C$0$PAs@1 A 1))) (and (= inline$C$0$PAs@3 inline$C$0$PAs@2) (= (ControlFlow 0 4) 2))) inline$C$0$Return_correct)))
(let ((inline$C$0$anon0_correct  (=> (= inline$C$0$PAs@1 (|lambda#0| 0)) (and (=> (= (ControlFlow 0 6) 4) inline$C$0$anon2_Then_correct) (=> (= (ControlFlow 0 6) 5) inline$C$0$anon2_Else_correct)))))
(let ((inline$C$0$Entry_correct  (=> (= (ControlFlow 0 7) 6) inline$C$0$anon0_correct)))
inline$C$0$Entry_correct))))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$TEST1$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_TEST1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$TEST1$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$TEST1$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |12|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$TEST1$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$TEST1$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |13|
)))))))
(let ((inline$TEST1$0$anon0_correct  (=> (and (= inline$TEST1$0$PAs@1 (store (|lambda#0| 0) A 2)) (= (ControlFlow 0 4) 2)) inline$TEST1$0$Return_correct)))
(let ((inline$TEST1$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$TEST1$0$anon0_correct)))
inline$TEST1$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$TEST2$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_TEST2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$TEST2$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$TEST2$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |14|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$TEST2$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$TEST2$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |15|
)))))))
(let ((inline$TEST2$0$anon0_correct  (=> (and (= inline$TEST2$0$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 4) 2)) inline$TEST2$0$Return_correct)))
(let ((inline$TEST2$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$TEST2$0$anon0_correct)))
inline$TEST2$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$TEST5$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_TEST5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$TEST5$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$TEST5$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |16|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$TEST5$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$TEST5$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |17|
)))))))
(let ((inline$TEST5$0$anon0_correct  (=> (and (= inline$TEST5$0$PAs@1 (store (|lambda#0| 0) A 10)) (= (ControlFlow 0 4) 2)) inline$TEST5$0$Return_correct)))
(let ((inline$TEST5$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$TEST5$0$anon0_correct)))
inline$TEST5$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun flag () Bool)
(set-info :boogie-vc-id Civl_CooperationChecker_C)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((init_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or flag (not flag)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) init_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_collectedPAs@1 () (Array T@PA Int))
(declare-fun Civl_collectedPAs () (Array T@PA Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_collectedPAs@0 () (Array T@PA Int))
(declare-fun inline$B$1$PAs@1 () (Array T@PA Int))
(declare-fun inline$B$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_test1_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= Civl_collectedPAs@1 Civl_collectedPAs))) (=> (=> false (= Civl_collectedPAs@1 Civl_collectedPAs)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or (= Civl_collectedPAs@1 (store (|lambda#0| 0) A 2)) (and (= Civl_collectedPAs@1 Civl_collectedPAs) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0$2_correct  (=> (= Civl_collectedPAs@1 ((_ map (+ (Int Int) Int)) Civl_collectedPAs@0 inline$B$1$PAs@1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$B$1$anon0_correct  (=> (and (= inline$B$1$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 7) 6)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (and (= Civl_collectedPAs@0 ((_ map (+ (Int Int) Int)) Civl_collectedPAs inline$B$0$PAs@1)) (= (ControlFlow 0 8) 7)) inline$B$1$anon0_correct)))
(let ((inline$B$0$anon0_correct  (=> (and (= inline$B$0$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 9) 8)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (forall ((Civl_pa T@PA) ) (! (= (select Civl_collectedPAs Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |3|
)) (= (ControlFlow 0 10) 9)) inline$B$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_collectedPAs@1 () (Array T@PA Int))
(declare-fun Civl_collectedPAs () (Array T@PA Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_collectedPAs@0 () (Array T@PA Int))
(declare-fun inline$B$1$PAs@1 () (Array T@PA Int))
(declare-fun inline$B$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_test2_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= Civl_collectedPAs@1 Civl_collectedPAs))) (=> (=> false (= Civl_collectedPAs@1 Civl_collectedPAs)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or (= Civl_collectedPAs@1 (store (|lambda#0| 0) A 1)) (and (= Civl_collectedPAs@1 Civl_collectedPAs) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0$2_correct  (=> (= Civl_collectedPAs@1 ((_ map (+ (Int Int) Int)) Civl_collectedPAs@0 inline$B$1$PAs@1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$B$1$anon0_correct  (=> (and (= inline$B$1$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 7) 6)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (and (= Civl_collectedPAs@0 ((_ map (+ (Int Int) Int)) Civl_collectedPAs inline$B$0$PAs@1)) (= (ControlFlow 0 8) 7)) inline$B$1$anon0_correct)))
(let ((inline$B$0$anon0_correct  (=> (and (= inline$B$0$PAs@1 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 9) 8)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (forall ((Civl_pa T@PA) ) (! (= (select Civl_collectedPAs Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |4|
)) (= (ControlFlow 0 10) 9)) inline$B$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$C$0$PAs@3 () (Array T@PA Int))
(declare-fun inline$C$0$PAs@1 () (Array T@PA Int))
(declare-fun inline$C$0$PAs@2 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_test3_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((Civl_pa T@PA) ) (! (= (select inline$C$0$PAs@3 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (= (select inline$C$0$PAs@3 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |5|
)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$C$0$anon2_Else_correct  (=> (not true) (=> (and (= inline$C$0$PAs@3 inline$C$0$PAs@1) (= (ControlFlow 0 9) 6)) anon0$1_correct))))
(let ((inline$C$0$anon2_Then_correct  (=> (= inline$C$0$PAs@2 (store inline$C$0$PAs@1 A 1)) (=> (and (= inline$C$0$PAs@3 inline$C$0$PAs@2) (= (ControlFlow 0 8) 6)) anon0$1_correct))))
(let ((inline$C$0$anon0_correct  (=> (= inline$C$0$PAs@1 (|lambda#0| 0)) (and (=> (= (ControlFlow 0 10) 8) inline$C$0$anon2_Then_correct) (=> (= (ControlFlow 0 10) 9) inline$C$0$anon2_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 11) 10) inline$C$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$C$0$PAs@3 () (Array T@PA Int))
(declare-fun inline$C$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_test4_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) true) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 3) (- 0 2))) Civl_ok@0))))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((Civl_pa T@PA) ) (! (= (select inline$C$0$PAs@3 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |6|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (= (select inline$C$0$PAs@3 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |6|
)) (and (=> (= (ControlFlow 0 7) 3) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$C$0$anon2_Else_correct  (=> (not false) (=> (and (= inline$C$0$PAs@3 inline$C$0$PAs@1) (= (ControlFlow 0 9) 7)) anon0$1_correct))))
(let ((inline$C$0$anon2_Then_correct true))
(let ((inline$C$0$anon0_correct  (=> (= inline$C$0$PAs@1 (|lambda#0| 0)) (and (=> (= (ControlFlow 0 10) 1) inline$C$0$anon2_Then_correct) (=> (= (ControlFlow 0 10) 9) inline$C$0$anon2_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 11) 10) inline$C$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PAs@0 () (Array T@PA Int))
(declare-fun PAs () (Array T@PA Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i@0 () Int)
(declare-fun PAs@1 () (Array T@PA Int))
(declare-fun inline$B$0$PAs@2 () (Array T@PA Int))
(declare-fun i@1 () Int)
(set-info :boogie-vc-id Civl_test5_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> false (= PAs@0 PAs))) (=> (=> false (= PAs@0 PAs)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or (= PAs@0 (store (|lambda#0| 0) A 10)) (and (= PAs@0 PAs) false)))) (= (ControlFlow 0 7) (- 0 6))) Civl_ok@0))))))
(let ((anon2_LoopDone_correct  (=> (<= 10 i@0) (and (=> (= (ControlFlow 0 11) 7) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 11) 10) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody$1_correct  (=> (and (= PAs@1 ((_ map (+ (Int Int) Int)) PAs@0 inline$B$0$PAs@2)) (= i@1 (+ i@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 i@1) (<= i@1 10))) (=> (and (<= 0 i@1) (<= i@1 10)) (=> (= (ControlFlow 0 2) (- 0 1)) (= PAs@1 (store (|lambda#0| 0) A i@1))))))))
(let ((inline$B$0$anon0_correct  (=> (and (= inline$B$0$PAs@2 (store (|lambda#0| 0) A 1)) (= (ControlFlow 0 4) 2)) anon2_LoopBody$1_correct)))
(let ((anon2_LoopBody_correct  (=> (and (< i@0 10) (= (ControlFlow 0 5) 4)) inline$B$0$anon0_correct)))
(let ((anon2_LoopHead_correct  (=> (and (and (<= 0 i@0) (<= i@0 10)) (= PAs@0 (store (|lambda#0| 0) A i@0))) (and (=> (= (ControlFlow 0 12) 11) anon2_LoopDone_correct) (=> (= (ControlFlow 0 12) 5) anon2_LoopBody_correct)))))
(let ((anon0_correct  (=> (forall ((Civl_pa T@PA) ) (! (= (select PAs Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |7|
)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (and (<= 0 0) (<= 0 10))) (=> (and (<= 0 0) (<= 0 10)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= PAs (store (|lambda#0| 0) A 0))) (=> (= PAs (store (|lambda#0| 0) A 0)) (=> (= (ControlFlow 0 13) 12) anon2_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 13) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((A ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |pendingasync1bpl.8:20|
 :skolemid |18|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_PendingAsyncNoninterferenceChecker_A_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
