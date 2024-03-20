(set-logic ALIRA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@PA 0)) (((SKIP ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspabpl.27:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$A$0$PAs@1 () (Array T@PA Int))
(declare-fun |inline$A$0$i'@0| () Int)
(declare-fun i () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_A)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$A$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$A$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$A$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$A$0$PAs@1 Civl_pa@@1) 0) false)
 :qid |unknown.0:0|
 :skolemid |6|
)))))))
(let ((inline$A$0$anon0_correct  (=> (= inline$A$0$PAs@1 (|lambda#0| 0)) (=> (and (> |inline$A$0$i'@0| i) (= (ControlFlow 0 4) 2)) inline$A$0$Return_correct))))
(let ((inline$A$0$Entry_correct  (=> (and (> i 0) (= (ControlFlow 0 5) 4)) inline$A$0$anon0_correct)))
inline$A$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((SKIP ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspabpl.27:27|
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
(declare-datatypes ((T@PA 0)) (((SKIP ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspabpl.27:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b'| () Bool)
(declare-fun |i'@0| () Int)
(declare-fun |i'| () Int)
(declare-fun |r'| () Real)
(declare-fun Civl_collectedPAs () (Array T@PA Int))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun i () Int)
(set-info :boogie-vc-id Civl_a_0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= |b'| |b'|) (= |i'@0| |i'|)) (= |r'| |r'|)) (= Civl_collectedPAs Civl_collectedPAs)))) (=> (=> false (and (and (and (= |b'| |b'|) (= |i'@0| |i'|)) (= |r'| |r'|)) (= Civl_collectedPAs Civl_collectedPAs))) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or (and (> |i'@0| i) (= Civl_collectedPAs (|lambda#0| 0))) (and (and (and (and (= |b'| |b'|) (= |i'@0| |i'|)) (= |r'| |r'|)) (= Civl_collectedPAs Civl_collectedPAs)) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (> i 0) (=> (and (forall ((Civl_pa T@PA) ) (! (= (select Civl_collectedPAs Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |3|
)) (= |i'@0| (+ i 1))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
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
(declare-datatypes ((T@PA 0)) (((SKIP ) ) ))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0|) pa) |l#0|)
 :qid |hideparamspabpl.27:27|
 :skolemid |7|
 :pattern ( (select (|lambda#0| |l#0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$A$0$PAs@1 () (Array T@PA Int))
(declare-fun |inline$A$0$i'@0| () Int)
(set-info :boogie-vc-id Civl_b_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((Civl_pa T@PA) ) (! (= (select inline$A$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |4|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (= (select inline$A$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$A$0$anon0_correct  (=> (= inline$A$0$PAs@1 (|lambda#0| 0)) (=> (and (> |inline$A$0$i'@0| 1) (= (ControlFlow 0 8) 6)) anon0$1_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (> 1 0)) (=> (> 1 0) (=> (= (ControlFlow 0 9) 8) inline$A$0$anon0_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
