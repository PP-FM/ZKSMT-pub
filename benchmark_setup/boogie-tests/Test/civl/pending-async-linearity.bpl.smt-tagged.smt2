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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M0$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M0$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M0$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M0$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M0$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |4|
)))))))
(let ((inline$M0$0$anon0_correct  (=> (and (= inline$M0$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (= (ControlFlow 0 4) 2)) inline$M0$0$Return_correct)))
(let ((inline$M0$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M0$0$anon0_correct)))
inline$M0$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M1$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M1$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M1$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |5|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M1$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M1$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |6|
)))))))
(let ((inline$M1$0$anon0_correct  (=> (and (= inline$M1$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (= (ControlFlow 0 4) 2)) inline$M1$0$Return_correct)))
(let ((inline$M1$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M1$0$anon0_correct)))
inline$M1$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M2$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M2$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M2$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |7|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M2$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M2$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |8|
)))))))
(let ((inline$M2$0$anon0_correct  (=> (and (= inline$M2$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (= (ControlFlow 0 4) 2)) inline$M2$0$Return_correct)))
(let ((inline$M2$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M2$0$anon0_correct)))
inline$M2$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M3$0$PAs@1 () (Array T@PA Int))
(declare-fun pid1 () Int)
(declare-fun pid2 () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M3$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M3$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |9|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M3$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |9|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M3$0$PAs@1 Civl_pa@@1) 0) (or (is-A Civl_pa@@1) (is-B Civl_pa@@1)))
 :qid |unknown.0:0|
 :skolemid |10|
)))))))
(let ((inline$M3$0$anon0_correct  (=> (and (= inline$M3$0$PAs@1 (store (store (|lambda#0| 0) (A pid1) 1) (B pid2) 1)) (= (ControlFlow 0 4) 2)) inline$M3$0$Return_correct)))
(let ((inline$M3$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M3$0$anon0_correct)))
inline$M3$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M4$0$PAs@1 () (Array T@PA Int))
(declare-fun pid1 () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M4$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M4$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |11|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M4$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M4$0$PAs@1 Civl_pa@@1) 0) (or (is-A Civl_pa@@1) (is-B Civl_pa@@1)))
 :qid |unknown.0:0|
 :skolemid |12|
)))))))
(let ((inline$M4$0$anon0_correct  (=> (and (= inline$M4$0$PAs@1 (store (store (|lambda#0| 0) (A pid1) 1) (B pid1) 1)) (= (ControlFlow 0 4) 2)) inline$M4$0$Return_correct)))
(let ((inline$M4$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M4$0$anon0_correct)))
inline$M4$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M5$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M5$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M5$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |13|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M5$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M5$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |14|
)))))))
(let ((inline$M5$0$anon0_correct  (=> (and (= inline$M5$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (= (ControlFlow 0 4) 2)) inline$M5$0$Return_correct)))
(let ((inline$M5$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M5$0$anon0_correct)))
inline$M5$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M6$0$PAs@1 () (Array T@PA Int))
(declare-fun pid1 () Int)
(declare-fun pid2 () Int)
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M6)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M6$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M6$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |15|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M6$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M6$0$PAs@1 Civl_pa@@1) 0) (or (is-A Civl_pa@@1) (is-B Civl_pa@@1)))
 :qid |unknown.0:0|
 :skolemid |16|
)))))))
(let ((inline$M6$0$anon0_correct  (=> (and (= inline$M6$0$PAs@1 (store (store (|lambda#0| 0) (A pid1) 1) (B pid2) 1)) (= (ControlFlow 0 4) 2)) inline$M6$0$Return_correct)))
(let ((inline$M6$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$M6$0$anon0_correct)))
inline$M6$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M7$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () (Array Int Bool))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M7)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M7$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M7$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |17|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M7$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M7$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |18|
)))))))
(let ((inline$M7$0$anon0_correct  (=> (and (= inline$M7$0$PAs@1 (store (|lambda#0| 0) (A 5) 1)) (= (ControlFlow 0 4) 2)) inline$M7$0$Return_correct)))
(let ((inline$M7$0$Entry_correct  (=> (and (= pid (|lambda#1| 1 10)) (= (ControlFlow 0 5) 4)) inline$M7$0$anon0_correct)))
inline$M7$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$M8$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () (Array Int Bool))
(set-info :boogie-vc-id Civl_PendingAsyncChecker_M8)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$M8$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((Civl_pa T@PA) ) (! (>= (select inline$M8$0$PAs@1 Civl_pa) 0)
 :qid |unknown.0:0|
 :skolemid |19|
))) (=> (forall ((Civl_pa@@0 T@PA) ) (! (>= (select inline$M8$0$PAs@1 Civl_pa@@0) 0)
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((Civl_pa@@1 T@PA) ) (!  (=> (> (select inline$M8$0$PAs@1 Civl_pa@@1) 0) (is-A Civl_pa@@1))
 :qid |unknown.0:0|
 :skolemid |20|
)))))))
(let ((inline$M8$0$anon0_correct  (=> (and (= inline$M8$0$PAs@1 (store (|lambda#0| 0) (A 0) 1)) (= (ControlFlow 0 4) 2)) inline$M8$0$Return_correct)))
(let ((inline$M8$0$Entry_correct  (=> (and (= pid (|lambda#1| 1 10)) (= (ControlFlow 0 5) 4)) inline$M8$0$anon0_correct)))
inline$M8$0$Entry_correct))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M0$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M0$0$PAs@1 Civl_pa1) 1) (>= (select inline$M0$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M0$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M0$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((inline$M0$0$anon0_correct  (=> (= inline$M0$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (and (and (=> (= (ControlFlow 0 7) 2) pid_single_A_correct) (=> (= (ControlFlow 0 7) 4) pid_identical_A_correct)) (=> (= (ControlFlow 0 7) 6) pid_distinct_A_A_correct)))))
(let ((inline$M0$0$Entry_correct  (=> (= (ControlFlow 0 8) 7) inline$M0$0$anon0_correct)))
inline$M0$0$Entry_correct))))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M1$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M1$0$PAs@1 Civl_pa1) 1) (>= (select inline$M1$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M1$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M1$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$M1$0$anon0_correct  (=> (= inline$M1$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (and (and (=> (= (ControlFlow 0 7) 2) pid_single_A_correct) (=> (= (ControlFlow 0 7) 4) pid_identical_A_correct)) (=> (= (ControlFlow 0 7) 6) pid_distinct_A_A_correct)))))
(let ((inline$M1$0$Entry_correct  (=> (= (ControlFlow 0 8) 7) inline$M1$0$anon0_correct)))
inline$M1$0$Entry_correct))))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M2$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M2$0$PAs@1 Civl_pa1) 1) (>= (select inline$M2$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 8) (- 0 7))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M2$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M2$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$M2$0$anon0_correct  (=> (= inline$M2$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (and (and (and (=> (= (ControlFlow 0 9) 2) pid_variables_correct) (=> (= (ControlFlow 0 9) 4) pid_single_A_correct)) (=> (= (ControlFlow 0 9) 6) pid_identical_A_correct)) (=> (= (ControlFlow 0 9) 8) pid_distinct_A_A_correct)))))
(let ((inline$M2$0$Entry_correct  (=> (= (ControlFlow 0 10) 9) inline$M2$0$anon0_correct)))
inline$M2$0$Entry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 4) (- 3))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M3$0$PAs@1 () (Array T@PA Int))
(declare-fun pid1 () Int)
(declare-fun pid2 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((pid_distinct_B_B_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-B Civl_pa1) (is-B Civl_pa2))) (and (>= (select inline$M3$0$PAs@1 Civl_pa1) 1) (>= (select inline$M3$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 14) (- 0 13))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_distinct_A_B_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-B Civl_pa2))) (and (>= (select inline$M3$0$PAs@1 Civl_pa1) 1) (>= (select inline$M3$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 12) (- 0 11))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M3$0$PAs@1 Civl_pa1) 1) (>= (select inline$M3$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 10) (- 0 9))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_B_correct  (=> (and (and (is-B Civl_pa1) (>= (select inline$M3$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 8) (- 0 7))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_B_correct  (=> (and (and (is-B Civl_pa1) (= (select inline$M3$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M3$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M3$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$M3$0$anon0_correct  (=> (= inline$M3$0$PAs@1 (store (store (|lambda#0| 0) (A pid1) 1) (B pid2) 1)) (and (and (and (and (and (and (=> (= (ControlFlow 0 15) 2) pid_single_A_correct) (=> (= (ControlFlow 0 15) 4) pid_identical_A_correct)) (=> (= (ControlFlow 0 15) 6) pid_single_B_correct)) (=> (= (ControlFlow 0 15) 8) pid_identical_B_correct)) (=> (= (ControlFlow 0 15) 10) pid_distinct_A_A_correct)) (=> (= (ControlFlow 0 15) 12) pid_distinct_A_B_correct)) (=> (= (ControlFlow 0 15) 14) pid_distinct_B_B_correct)))))
(let ((inline$M3$0$Entry_correct  (=> (= (ControlFlow 0 16) 15) inline$M3$0$anon0_correct)))
inline$M3$0$Entry_correct))))))))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M4$0$PAs@1 () (Array T@PA Int))
(declare-fun pid1 () Int)
(declare-fun pid2 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((pid_distinct_B_B_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-B Civl_pa1) (is-B Civl_pa2))) (and (>= (select inline$M4$0$PAs@1 Civl_pa1) 1) (>= (select inline$M4$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 14) (- 0 13))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_distinct_A_B_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-B Civl_pa2))) (and (>= (select inline$M4$0$PAs@1 Civl_pa1) 1) (>= (select inline$M4$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 12) (- 0 11))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M4$0$PAs@1 Civl_pa1) 1) (>= (select inline$M4$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 10) (- 0 9))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_B_correct  (=> (and (and (is-B Civl_pa1) (>= (select inline$M4$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 8) (- 0 7))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_B_correct  (=> (and (and (is-B Civl_pa1) (= (select inline$M4$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M4$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M4$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$M4$0$anon0_correct  (=> (= inline$M4$0$PAs@1 (store (store (|lambda#0| 0) (A pid1) 1) (B pid1) 1)) (and (and (and (and (and (and (=> (= (ControlFlow 0 15) 2) pid_single_A_correct) (=> (= (ControlFlow 0 15) 4) pid_identical_A_correct)) (=> (= (ControlFlow 0 15) 6) pid_single_B_correct)) (=> (= (ControlFlow 0 15) 8) pid_identical_B_correct)) (=> (= (ControlFlow 0 15) 10) pid_distinct_A_A_correct)) (=> (= (ControlFlow 0 15) 12) pid_distinct_A_B_correct)) (=> (= (ControlFlow 0 15) 14) pid_distinct_B_B_correct)))))
(let ((inline$M4$0$Entry_correct  (=> (= (ControlFlow 0 16) 15) inline$M4$0$anon0_correct)))
inline$M4$0$Entry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 12) (- 11))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M5$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M5$0$PAs@1 Civl_pa1) 1) (>= (select inline$M5$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 8) (- 0 7))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M5$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M5$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$M5$0$anon0_correct  (=> (= inline$M5$0$PAs@1 (store (|lambda#0| 0) (A pid) 1)) (and (and (and (=> (= (ControlFlow 0 9) 2) pid_variables_correct) (=> (= (ControlFlow 0 9) 4) pid_single_A_correct)) (=> (= (ControlFlow 0 9) 6) pid_identical_A_correct)) (=> (= (ControlFlow 0 9) 8) pid_distinct_A_A_correct)))))
(let ((inline$M5$0$Entry_correct  (=> (= (ControlFlow 0 10) 9) inline$M5$0$anon0_correct)))
inline$M5$0$Entry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 4) (- 3))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M6$0$PAs@1 () (Array T@PA Int))
(declare-fun pid1 () Int)
(declare-fun pid2 () Int)
(declare-fun pid3 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_M6)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((pid_distinct_B_B_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-B Civl_pa1) (is-B Civl_pa2))) (and (>= (select inline$M6$0$PAs@1 Civl_pa1) 1) (>= (select inline$M6$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 16) (- 0 15))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_distinct_A_B_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-B Civl_pa2))) (and (>= (select inline$M6$0$PAs@1 Civl_pa1) 1) (>= (select inline$M6$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 14) (- 0 13))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M6$0$PAs@1 Civl_pa1) 1) (>= (select inline$M6$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 12) (- 0 11))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_B_correct  (=> (and (and (is-B Civl_pa1) (>= (select inline$M6$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 10) (- 0 9))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_B_correct  (=> (and (and (is-B Civl_pa1) (= (select inline$M6$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 8) (- 0 7))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#B| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M6$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M6$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((pid_variables_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid1 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid2 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) pid3 true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$M6$0$anon0_correct  (=> (= inline$M6$0$PAs@1 (store (store (|lambda#0| 0) (A pid1) 1) (B pid2) 1)) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 17) 2) pid_variables_correct) (=> (= (ControlFlow 0 17) 4) pid_single_A_correct)) (=> (= (ControlFlow 0 17) 6) pid_identical_A_correct)) (=> (= (ControlFlow 0 17) 8) pid_single_B_correct)) (=> (= (ControlFlow 0 17) 10) pid_identical_B_correct)) (=> (= (ControlFlow 0 17) 12) pid_distinct_A_A_correct)) (=> (= (ControlFlow 0 17) 14) pid_distinct_A_B_correct)) (=> (= (ControlFlow 0 17) 16) pid_distinct_B_B_correct)))))
(let ((inline$M6$0$Entry_correct  (=> (= (ControlFlow 0 18) 17) inline$M6$0$anon0_correct)))
inline$M6$0$Entry_correct)))))))))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M7$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_M7)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M7$0$PAs@1 Civl_pa1) 1) (>= (select inline$M7$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) pid ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M7$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M7$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) pid ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$M7$0$anon0_correct  (=> (= inline$M7$0$PAs@1 (store (|lambda#0| 0) (A 5) 1)) (and (and (=> (= (ControlFlow 0 7) 2) pid_single_A_correct) (=> (= (ControlFlow 0 7) 4) pid_identical_A_correct)) (=> (= (ControlFlow 0 7) 6) pid_distinct_A_A_correct)))))
(let ((inline$M7$0$Entry_correct  (=> (and (= pid (|lambda#1| 1 10)) (= (ControlFlow 0 8) 7)) inline$M7$0$anon0_correct)))
inline$M7$0$Entry_correct))))))
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
(declare-datatypes ((T@PA 0)) (((A (|pid#A| Int) ) (B (|pid#B| Int) ) ) ))
(declare-fun |lambda#1| (Int Int) (Array Int Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Int) (Array T@PA Int))
(assert (forall ((|l#0| Int) (|l#1| Int) (i Int) ) (! (= (select (|lambda#1| |l#0| |l#1|) i)  (and (<= |l#0| i) (<= i |l#1|)))
 :qid |pendingasynclinearitybpl.76:34|
 :skolemid |22|
 :pattern ( (select (|lambda#1| |l#0| |l#1|) i))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(assert (forall ((|l#0@@0| Int) (pa T@PA) ) (! (= (select (|lambda#0| |l#0@@0|) pa) |l#0@@0|)
 :qid |pendingasynclinearitybpl.11:20|
 :skolemid |21|
 :pattern ( (select (|lambda#0| |l#0@@0|) pa))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pa1 () T@PA)
(declare-fun Civl_pa2 () T@PA)
(declare-fun inline$M8$0$PAs@1 () (Array T@PA Int))
(declare-fun pid () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_M8)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((pid_distinct_A_A_correct  (=> (and (and (and (not (= Civl_pa1 Civl_pa2)) (and (is-A Civl_pa1) (is-A Civl_pa2))) (and (>= (select inline$M8$0$PAs@1 Civl_pa1) 1) (>= (select inline$M8$0$PAs@1 Civl_pa2) 1))) (= (ControlFlow 0 6) (- 0 5))) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa2) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) pid ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((pid_identical_A_correct  (=> (and (and (is-A Civl_pa1) (>= (select inline$M8$0$PAs@1 Civl_pa1) 2)) (= (ControlFlow 0 4) (- 0 3))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((as const (Array Int Int)) 0)) ((as const (Array Int Bool)) true)))))
(let ((pid_single_A_correct  (=> (and (and (is-A Civl_pa1) (= (select inline$M8$0$PAs@1 Civl_pa1) 1)) (= (ControlFlow 0 2) (- 0 1))) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) (|pid#A| Civl_pa1) true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) pid ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$M8$0$anon0_correct  (=> (= inline$M8$0$PAs@1 (store (|lambda#0| 0) (A 0) 1)) (and (and (=> (= (ControlFlow 0 7) 2) pid_single_A_correct) (=> (= (ControlFlow 0 7) 4) pid_identical_A_correct)) (=> (= (ControlFlow 0 7) 6) pid_distinct_A_A_correct)))))
(let ((inline$M8$0$Entry_correct  (=> (and (= pid (|lambda#1| 1 10)) (= (ControlFlow 0 8) 7)) inline$M8$0$anon0_correct)))
inline$M8$0$Entry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
