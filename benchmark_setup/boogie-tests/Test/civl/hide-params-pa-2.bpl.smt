(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@PA 0)) (((A (|i#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspa2bpl.9:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$SPEC$0$PAs@1 () (Array T@PA Int))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_SPEC)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$SPEC$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$SPEC$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$SPEC$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$SPEC$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |6|
)))))))
(let ((inline$SPEC$0$anon0_correct  (=> (and (= inline$SPEC$0$PAs@1 (store (|lambda#0| 0) (A 1) 1)) (= (ControlFlow 0 4) 2)) inline$SPEC$0$Return_correct)))
(let ((inline$SPEC$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$SPEC$0$anon0_correct)))
inline$SPEC$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|i#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspa2bpl.9:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_b_0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) true)
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
(declare-datatypes ((T@PA 0)) (((A (|i#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspa2bpl.9:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_collectedPAs@0 () (Array T@PA Int))
(declare-fun Civl_collectedPAs () (Array T@PA Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_c_0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= Civl_collectedPAs@0 Civl_collectedPAs))) (=> (=> false (= Civl_collectedPAs@0 Civl_collectedPAs)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or (= Civl_collectedPAs@0 (store (|lambda#0| 0) (A 1) 1)) (and (= Civl_collectedPAs@0 Civl_collectedPAs) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (and (forall ((Civl_pa T@PA) ) (! (= (select Civl_collectedPAs Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |3|
)) (= Civl_collectedPAs@0 (store Civl_collectedPAs (A 1) (+ (select Civl_collectedPAs (A 1)) 1)))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-datatypes ((T@PA 0)) (((A (|i#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspa2bpl.9:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_collectedPAs@0 () (Array T@PA Int))
(declare-fun Civl_collectedPAs () (Array T@PA Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(set-info :boogie-vc-id Civl_b_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= Civl_collectedPAs@0 Civl_collectedPAs))) (=> (=> false (= Civl_collectedPAs@0 Civl_collectedPAs)) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or (= Civl_collectedPAs@0 (store (|lambda#0| 0) (A 1) 1)) (and (= Civl_collectedPAs@0 Civl_collectedPAs) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (and (forall ((Civl_pa T@PA) ) (! (= (select Civl_collectedPAs Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |4|
)) (= Civl_collectedPAs@0 (store Civl_collectedPAs (A 1) (+ (select Civl_collectedPAs (A 1)) 1)))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-datatypes ((T@PA 0)) (((A (|i#A| Int) ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspa2bpl.9:27|
 :skolemid |7|
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
