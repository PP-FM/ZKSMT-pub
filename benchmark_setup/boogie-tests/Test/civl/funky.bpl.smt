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
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLockA_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockA$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= A nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockA$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockA$1$Return_correct)))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 4) 3)) inline$AtomicLockA$1$anon0_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockA$0$anon0_correct)))
inline$AtomicLockA$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicIncrA_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (not (= first_tid nil)) (= A first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicDecrA_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (and (not (= first_tid nil)) (= A first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun A () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLockA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 4) 3)) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicUnlockA_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (and (not (= first_tid nil)) (= A first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertA_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (>= counter (- 0 1)))) (=> (=> true (>= counter (- 0 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 4) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (>= counter (- 0 1))) (=> (and (and (not (= first_tid nil)) (= A first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertB_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter 0))) (=> (=> true (= counter 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= second_tid first_tid)) (= B first_tid))))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 4) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsAssertA_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (>= counter (- 0 1)))) (=> (=> true (>= counter (- 0 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 4) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (>= counter (- 0 1))) (=> (and (and (not (= first_tid nil)) (= A first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsAssertB_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter 0))) (=> (=> true (= counter 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= second_tid first_tid)) (= B first_tid))))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 4) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockA$0$anon0_correct))))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicIncrA_AtomicIncrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrA$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= counter@1 (+ (+ counter 1) 1)) (= A A))))))
(let ((inline$AtomicIncrA$1$anon0_correct  (=> (and (= counter@1 (+ counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrA$1$Return_correct)))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrA$1$anon0_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicIncrA$0$anon0_correct)))))
inline$AtomicIncrA$0$Entry_correct)))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicIncrA_AtomicDecrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicDecrA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= counter@1 (+ (- counter 1) 1)) (= A A))))))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@1 (- counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicDecrA$0$Return_correct)))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicDecrA$0$anon0_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicIncrA$0$anon0_correct)))))
inline$AtomicIncrA$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicIncrA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (not (and (not (= first_tid nil)) (= A first_tid)))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicIncrA_AtomicIncrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= counter@1 (+ (+ counter 1) 1)) (= A A)) (= B B))))))
(let ((inline$AtomicIncrB$0$anon0_correct  (=> (and (= counter@1 (+ counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrB$0$Return_correct)))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrB$0$anon0_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicIncrA$0$anon0_correct)))))
inline$AtomicIncrA$0$Entry_correct)))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicIncrA_AtomicDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicDecrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= counter@1 (+ (- counter 1) 1)) (= A A)) (= B B))))))
(let ((inline$AtomicDecrB$0$anon0_correct  (=> (and (= counter@1 (- counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicDecrB$0$Return_correct)))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicDecrB$0$anon0_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicIncrA$0$anon0_correct)))))
inline$AtomicIncrA$0$Entry_correct)))))
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
(declare-fun counter@0 () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertA_AtomicIncrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (>= counter@0 (- 0 1)))) (=> (=> true (>= counter@0 (- 0 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= A first_tid))))))))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 4) 2)) inline$AtomicIncrA$0$Return_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (and (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= counter (- 0 1))) (and (not (= first_tid nil)) (= A first_tid))) (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4))) inline$AtomicIncrA$0$anon0_correct)))
inline$AtomicIncrA$0$Entry_correct))))
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
(declare-fun counter@0 () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertB_AtomicIncrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter@0 0))) (=> (=> true (= counter@0 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))))))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 4) 2)) inline$AtomicIncrA$0$Return_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4))) inline$AtomicIncrA$0$anon0_correct))))
inline$AtomicIncrA$0$Entry_correct))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicDecrA_AtomicIncrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= counter@1 (- (+ counter 1) 1)) (= A A))))))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@1 (+ counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrA$0$Return_correct)))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrA$0$anon0_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicDecrA$0$anon0_correct)))))
inline$AtomicDecrA$0$Entry_correct)))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicDecrA_AtomicDecrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicDecrA$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= counter@1 (- (- counter 1) 1)) (= A A))))))
(let ((inline$AtomicDecrA$1$anon0_correct  (=> (and (= counter@1 (- counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicDecrA$1$Return_correct)))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicDecrA$1$anon0_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicDecrA$0$anon0_correct)))))
inline$AtomicDecrA$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicDecrA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (not (and (not (= first_tid nil)) (= A first_tid)))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicDecrA_AtomicIncrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= counter@1 (- (+ counter 1) 1)) (= A A)) (= B B))))))
(let ((inline$AtomicIncrB$0$anon0_correct  (=> (and (= counter@1 (+ counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrB$0$Return_correct)))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrB$0$anon0_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicDecrA$0$anon0_correct)))))
inline$AtomicDecrA$0$Entry_correct)))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicDecrA_AtomicDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicDecrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= counter@1 (- (- counter 1) 1)) (= A A)) (= B B))))))
(let ((inline$AtomicDecrB$0$anon0_correct  (=> (and (= counter@1 (- counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicDecrB$0$Return_correct)))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicDecrB$0$anon0_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 5) 4)) inline$AtomicDecrA$0$anon0_correct)))))
inline$AtomicDecrA$0$Entry_correct)))))
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
(declare-fun counter@0 () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertA_AtomicDecrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicDecrA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (>= counter@0 (- 0 1)))) (=> (=> true (>= counter@0 (- 0 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= A first_tid))))))))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 2)) inline$AtomicDecrA$0$Return_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (and (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (>= counter (- 0 1))) (and (not (= first_tid nil)) (= A first_tid))) (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4))) inline$AtomicDecrA$0$anon0_correct)))
inline$AtomicDecrA$0$Entry_correct))))
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
(declare-fun counter@0 () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertB_AtomicDecrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicDecrA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter@0 0))) (=> (=> true (= counter@0 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))))))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 2)) inline$AtomicDecrA$0$Return_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 5) 4))) inline$AtomicDecrA$0$anon0_correct))))
inline$AtomicDecrA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicUnlockA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$1$Return_correct)))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicUnlockA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (not (= first_tid nil)) (= A first_tid)) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct)))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicUnlockA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (not (and (not (= first_tid nil)) (= A first_tid)))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsAssertA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicUnlockA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (>= counter (- 0 1)))) (=> (=> true (>= counter (- 0 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
)) (>= counter (- 0 1))) (and (not (= first_tid nil)) (= A first_tid))) (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 4) 2))) inline$AtomicUnlockA$0$Return_correct)))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsAssertB_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicUnlockA$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter 0))) (=> (=> true (= counter 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= nil first_tid)) (= B first_tid))))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 4) 2))) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun B () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLockB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockB$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= B nil) (= second_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockB$1$anon0_correct  (=> (and (= first_tid nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockB$1$Return_correct)))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 4) 3)) inline$AtomicLockB$1$anon0_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (not (= first_tid nil))) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockB$0$anon0_correct)))
inline$AtomicLockB$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicIncrB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |32|
)) (=> (and (and (not (= first_tid nil)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicDecrB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |33|
)) (=> (and (and (not (= first_tid nil)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun B () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLockB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nil nil) (= nil first_tid))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (not (= first_tid nil))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 4) 3)) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicUnlockB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= second_tid first_tid))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> (and (and (not (= first_tid nil)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockB$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter 0))) (=> (=> true (= counter 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= A first_tid)) (= second_tid first_tid))))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 4) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun counter () Int)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsDecrB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= second_tid first_tid)) (= counter 0))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |37|
)) (=> (and (and (and (not (= first_tid nil)) (= B first_tid)) (= counter 0)) (and (not (= second_tid nil)) (= (ControlFlow 0 4) 3))) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsAssertB_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicLockB$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter 0))) (=> (=> true (= counter 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= A first_tid)) (= second_tid first_tid))))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 4) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |38|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (not (= second_tid nil)) (= (ControlFlow 0 5) 4))) inline$AtomicLockB$0$anon0_correct))))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicIncrB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |39|
)) (not (and (not (= first_tid nil)) (= B first_tid)))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicDecrB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |40|
)) (not (and (not (= first_tid nil)) (= B first_tid)))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicUnlockB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nil nil)))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |41|
)) (=> (and (not (= first_tid nil)) (= B first_tid)) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$1$Return_correct)))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicUnlockB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= nil first_tid))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |42|
)) (=> (and (not (= first_tid nil)) (= B first_tid)) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct)))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicUnlockB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (not (= first_tid nil)) (= nil first_tid)))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |43|
)) (not (and (not (= first_tid nil)) (= B first_tid)))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsAssertB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicUnlockB$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter 0))) (=> (=> true (= counter 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= A first_tid)) (= nil first_tid))))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |44|
)) (= counter 0)) (=> (and (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 4) 2))) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAssertA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (>= counter (- 0 1)) (and (not (= first_tid nil)) (= nil first_tid))))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |45|
)) (not (and (>= counter (- 0 1)) (and (not (= first_tid nil)) (= A first_tid))))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAssertB_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= counter 0) (and (and (not (= first_tid nil)) (= nil first_tid)) (= B first_tid))))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |46|
)) (not (and (= counter 0) (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAssertB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= counter 0) (and (and (not (= first_tid nil)) (= A first_tid)) (= nil first_tid))))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |47|
)) (not (and (= counter 0) (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocTid$0$tid@0 () T@X)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$1$tid@0 () T@X)
(declare-fun nil () T@X)
(declare-fun unallocated () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAllocTid_AtomicAllocTid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAllocTid$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |48|
)) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$1$tid@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true))) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 2))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |49|
))) (and (and (and (and (not (= inline$AtomicAllocTid$1$tid@0 nil)) (select unallocated inline$AtomicAllocTid$1$tid@0)) (not (= inline$AtomicAllocTid$0$tid@0 nil))) (select (store unallocated inline$AtomicAllocTid$1$tid@0 false) inline$AtomicAllocTid$0$tid@0)) (= unallocated@1 (store (store unallocated inline$AtomicAllocTid$1$tid@0 false) inline$AtomicAllocTid$0$tid@0 false)))))))
(let ((inline$AtomicAllocTid$1$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$1$tid@0 nil)) (select unallocated@0 inline$AtomicAllocTid$1$tid@0)) (and (= unallocated@1 (store unallocated@0 inline$AtomicAllocTid$1$tid@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocTid$1$Return_correct)))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@0 nil)) (select unallocated inline$AtomicAllocTid$0$tid@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocTid$0$tid@0 false)) (= (ControlFlow 0 4) 3))) inline$AtomicAllocTid$1$anon0_correct)))
(let ((inline$AtomicAllocTid$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$AtomicAllocTid$0$anon0_correct)))
inline$AtomicAllocTid$0$Entry_correct)))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAbsDecrB_AtomicIncrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicIncrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= counter@1 (- (+ counter 1) 1)) (= B B))))))
(let ((inline$AtomicIncrB$0$anon0_correct  (=> (and (= counter@1 (+ counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrB$0$Return_correct)))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrB$0$anon0_correct)))
(let ((inline$AtomicAbsDecrB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |50|
)) (=> (and (and (and (not (= first_tid nil)) (= B first_tid)) (= counter 0)) (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 5) 4))) inline$AtomicAbsDecrB$0$anon0_correct))))
inline$AtomicAbsDecrB$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAbsDecrB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (not (= first_tid nil)) (= nil first_tid)) (= counter 0)))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |51|
)) (not (and (and (not (= first_tid nil)) (= B first_tid)) (= counter 0)))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-fun counter@0 () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertA_AtomicAbsDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAbsDecrB$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (>= counter@0 (- 0 1)))) (=> (=> true (>= counter@0 (- 0 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_tid nil)) (= A first_tid))))))))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 2)) inline$AtomicAbsDecrB$0$Return_correct)))
(let ((inline$AtomicAbsDecrB$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |52|
)) (>= counter (- 0 1))) (and (not (= first_tid nil)) (= A first_tid))) (=> (and (and (and (not (= second_tid nil)) (= B second_tid)) (= counter 0)) (= (ControlFlow 0 5) 4)) inline$AtomicAbsDecrB$0$anon0_correct))))
inline$AtomicAbsDecrB$0$Entry_correct))))
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
(declare-fun counter@0 () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun B () T@X)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAssertB_AtomicAbsDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAbsDecrB$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= counter@0 0))) (=> (=> true (= counter@0 0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))))))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 2)) inline$AtomicAbsDecrB$0$Return_correct)))
(let ((inline$AtomicAbsDecrB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |53|
)) (= counter 0)) (=> (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid)) (=> (and (and (and (not (= second_tid nil)) (= B second_tid)) (= counter 0)) (= (ControlFlow 0 5) 4)) inline$AtomicAbsDecrB$0$anon0_correct)))))
inline$AtomicAbsDecrB$0$Entry_correct))))
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
(declare-fun counter@1 () Int)
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicAbsDecrB_AtomicAbsDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicAbsDecrB$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= counter@1 (- (- counter 1) 1)) (= B B))))))
(let ((inline$AtomicAbsDecrB$1$anon0_correct  (=> (and (= counter@1 (- counter@0 1)) (= (ControlFlow 0 3) 2)) inline$AtomicAbsDecrB$1$Return_correct)))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 4) 3)) inline$AtomicAbsDecrB$1$anon0_correct)))
(let ((inline$AtomicAbsDecrB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |54|
)) (=> (and (and (not (= first_tid nil)) (= B first_tid)) (= counter 0)) (=> (and (and (and (not (= second_tid nil)) (= B second_tid)) (= counter 0)) (= (ControlFlow 0 5) 4)) inline$AtomicAbsDecrB$0$anon0_correct)))))
inline$AtomicAbsDecrB$0$Entry_correct)))))
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
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(declare-fun counter@0 () Int)
(declare-fun counter () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicAbsDecrB_AtomicAbsDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAbsDecrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not (= first_tid nil)) (= B first_tid)) (= counter@0 0))))))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 3) 2)) inline$AtomicAbsDecrB$0$Return_correct)))
(let ((inline$AtomicAbsDecrB$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |55|
)) (=> (and (and (not (= first_tid nil)) (= B first_tid)) (= counter 0)) (=> (and (and (and (not (= second_tid nil)) (= B second_tid)) (= counter 0)) (= (ControlFlow 0 4) 3)) inline$AtomicAbsDecrB$0$anon0_correct)))))
inline$AtomicAbsDecrB$0$Entry_correct))))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAbsAssertA_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (>= counter (- 0 1)) (and (not (= first_tid nil)) (= nil first_tid))))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |56|
)) (not (and (>= counter (- 0 1)) (and (not (= first_tid nil)) (= A first_tid))))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(declare-fun second_tid () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAbsAssertB_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= counter 0) (and (and (not (= first_tid nil)) (= nil first_tid)) (= B first_tid))))))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |57|
)) (not (and (= counter 0) (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))) (=> (and (and (not (= second_tid nil)) (= A second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct))))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-fun counter () Int)
(declare-sort T@X 0)
(declare-fun first_tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun second_tid () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicAbsAssertB_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= counter 0) (and (and (not (= first_tid nil)) (= A first_tid)) (= nil first_tid))))))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |58|
)) (not (and (= counter 0) (and (and (not (= first_tid nil)) (= A first_tid)) (= B first_tid))))) (=> (and (and (not (= second_tid nil)) (= B second_tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct))))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun A@0 () T@X)
(declare-fun B@0 () T@X)
(declare-fun counter@1 () Int)
(declare-fun counter@0 () Int)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_AbsDecrB_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@1 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= counter@1 (- counter@0 1)) (= A@0 A@0)) (= B@0 B@0)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@1 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= counter@1 (- counter@0 1)) (= A@0 A@0)) (= B@0 B@0)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@1 counter@0)) (= unallocated@0 unallocated@0)))) (=> (=> false (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@1 counter@0)) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@1 counter@0)) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (and (= counter@1 (- counter@0 1)) (= A@0 A@0)) (= B@0 B@0)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicDecrB$0$anon0_correct  (=> (= counter@1 (- counter@0 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |63|
)) (=> (and (and (and (not (= tid nil)) (= B@0 tid)) (= counter@0 0)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (not (= tid nil)) (= B@0 tid))) (=> (and (not (= tid nil)) (= B@0 tid)) (=> (= (ControlFlow 0 7) 6) inline$AtomicDecrB$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(set-info :boogie-vc-id Civl_AbsAssertA_1)
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
(set-info :boogie-vc-id Civl_AbsAssertB_1)
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
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun A@0 () T@X)
(declare-fun B@0 () T@X)
(declare-fun counter@2 () Int)
(declare-fun counter@0 () Int)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun counter@1 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_TA_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)))) (=> (=> false (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (and (= nil A@0) (= B@0 B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@2 (- counter@1 1)) (= (ControlFlow 0 8) 6)) anon0$3_correct)))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 9) 8) inline$AtomicDecrA$0$anon0_correct)))))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@1 (+ counter@0 1)) (= (ControlFlow 0 11) 9)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 12) 11) inline$AtomicIncrA$0$anon0_correct)))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A@0 nil) (= (ControlFlow 0 14) 12)) anon0$1_correct)))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |66|
)) (=> (and (not (= tid nil)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 15) 14) inline$AtomicLockA$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 17) 15)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(set-info :boogie-vc-id Civl_TB_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) true)
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
(set-info :boogie-vc-id Civl_AbsTB_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) true)
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun A@5 () T@X)
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun unallocated@7 () (Array T@X Bool))
(declare-fun B@5 () T@X)
(declare-fun B@4 () T@X)
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun unallocated@6 () (Array T@X Bool))
(declare-fun A@3 () T@X)
(declare-fun unallocated@5 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$0$tid@1 () T@X)
(declare-fun unallocated@3 () (Array T@X Bool))
(declare-fun unallocated@4 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$1$tid@1 () T@X)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_main_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((anon5_0$2_@2_anon6_LoopHead_correct true))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((anon5_0$1_correct  (=> (and (not (= tid nil)) (= A@5 tid)) (and (and (=> (= (ControlFlow 0 6) 5) anon5_0$2_@2_anon6_LoopHead_correct) (=> (= (ControlFlow 0 6) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 6) 2) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon5_0_correct  (=> (and (= Civl_linear_tid_available@6 ((_ map or) unallocated@7 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@7 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |73|
))) (=> (and (and (not (= tid nil)) (= B@5 tid)) (= (ControlFlow 0 7) 6)) anon5_0$1_correct))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (= B@4 nil) (and (and (=> (= (ControlFlow 0 8) 7) anon5_0_correct) (=> (= (ControlFlow 0 8) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 8) 2) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon5_1_correct  (=> (and (and (= Civl_linear_tid_available@5 ((_ map or) unallocated@6 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@6 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |72|
))) (and (not (= tid nil)) (= (ControlFlow 0 9) 8))) inline$AtomicLockB$0$anon0_correct)))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (= A@3 nil) (and (and (=> (= (ControlFlow 0 10) 9) anon5_1_correct) (=> (= (ControlFlow 0 10) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 10) 2) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon5_2_correct  (=> (and (and (exists ((Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@5 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |76|
)) (= Civl_linear_tid_available@4 ((_ map or) unallocated@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (not (= tid nil)) (= (ControlFlow 0 11) 10))) inline$AtomicLockA$0$anon0_correct)))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (not (= inline$AtomicAllocTid$0$tid@1 nil)) (=> (and (select unallocated@3 inline$AtomicAllocTid$0$tid@1) (= unallocated@4 (store unallocated@3 inline$AtomicAllocTid$0$tid@1 false))) (and (and (=> (= (ControlFlow 0 12) 11) anon5_2_correct) (=> (= (ControlFlow 0 12) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 12) 2) Civl_NoninterferenceChecker$1_correct))))))
(let ((anon3_0_correct  (=> (and (exists ((Civl_partition_tid@@2 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@3 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |75|
)) (= Civl_linear_tid_available@3 ((_ map or) unallocated@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (and (=> (= (ControlFlow 0 13) 11) anon5_2_correct) (=> (= (ControlFlow 0 13) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 13) 2) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 13) 12) inline$AtomicAllocTid$0$anon0_correct)))))
(let ((anon7_Then$1_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (= inline$AtomicAllocTid$1$tid@1 nil))) (=> (not (= inline$AtomicAllocTid$1$tid@1 nil)) (and (and (=> (= (ControlFlow 0 14) 13) anon3_0_correct) (=> (= (ControlFlow 0 14) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 14) 2) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$AtomicAllocTid$1$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$1$tid@1 nil)) (select unallocated@1 inline$AtomicAllocTid$1$tid@1)) (and (= unallocated@2 (store unallocated@1 inline$AtomicAllocTid$1$tid@1 false)) (= (ControlFlow 0 16) 14))) anon7_Then$1_correct)))
(let ((anon6_LoopHead_correct  (=> (and (exists ((Civl_partition_tid@@3 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@3 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |74|
)) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (and (and (=> (= (ControlFlow 0 17) 13) anon3_0_correct) (=> (= (ControlFlow 0 17) 3) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 17) 2) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 17) 16) inline$AtomicAllocTid$1$anon0_correct)) (=> (= (ControlFlow 0 17) 4) Civl_ReturnChecker_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_tid@@4 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@4 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@4 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |69|
)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 18) 1) Civl_RefinementChecker_correct) (=> (= (ControlFlow 0 18) 2) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 17) anon6_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(declare-sort T@X 0)
(declare-fun A@0 () T@X)
(declare-fun B@0 () T@X)
(declare-fun counter@0 () Int)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_AbsAssertA_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)))) (=> (=> false (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |80|
)) (=> (and (and (>= counter@0 (- 0 1)) (and (not (= tid nil)) (= A@0 tid))) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (>= counter@0 (- 0 1))) (=> (>= counter@0 (- 0 1)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid nil)) (= A@0 tid))) (=> (and (not (= tid nil)) (= A@0 tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 6) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun A@0 () T@X)
(declare-fun B@0 () T@X)
(declare-fun counter@0 () Int)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_AbsAssertB_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)))) (=> (=> false (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (and (= A@0 A@0) (= B@0 B@0)) (= counter@0 counter@0)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |81|
)) (=> (and (and (= counter@0 0) (and (and (not (= tid nil)) (= A@0 tid)) (= B@0 tid))) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (= counter@0 0)) (=> (= counter@0 0) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (and (not (= tid nil)) (= A@0 tid)) (= B@0 tid))) (=> (and (and (not (= tid nil)) (= A@0 tid)) (= B@0 tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 6) anon0_correct)))
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
(declare-sort T@X 0)
(declare-fun A@0 () T@X)
(declare-fun nil () T@X)
(declare-fun B@0 () T@X)
(declare-fun counter@2 () Int)
(declare-fun counter@0 () Int)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun counter@1 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(set-info :boogie-vc-id Civl_TB_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0))))) (=> (or false (or (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)))) (=> (=> false (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) false)) (= Civl_ok@0  (or (and (and (and (= A@0 A@0) (= nil B@0)) (= counter@2 counter@0)) (= unallocated@0 unallocated@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$AtomicIncrB$0$anon0_correct  (=> (and (= counter@2 (+ counter@1 1)) (= (ControlFlow 0 8) 6)) anon0$3_correct)))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 9) 8) inline$AtomicIncrB$0$anon0_correct)))))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@1 (- counter@0 1)) (= (ControlFlow 0 11) 9)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (and (not (= tid nil)) (= tid tid)) (= counter@0 0))) (=> (and (and (not (= tid nil)) (= tid tid)) (= counter@0 0)) (=> (= (ControlFlow 0 12) 11) inline$AtomicAbsDecrB$0$anon0_correct)))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B@0 nil) (= (ControlFlow 0 14) 12)) anon0$1_correct)))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |82|
)) (=> (and (and (not (= tid nil)) (= counter@0 0)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 15) 14) inline$AtomicLockB$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 15) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(set-info :boogie-vc-id Civl_AbsTB_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) true)
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
(set-info :boogie-vc-id Civl_main_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) true)
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
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun counter@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 () T@X)
(declare-fun nil () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 () T@X)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun counter () Int)
(set-info :boogie-vc-id Civl_AbsTB_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |93|
)) (=> (and (= counter@0 0) (= (ControlFlow 0 15) (- 0 14))) (= counter@0 0)))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |92|
)) (=> (and (= counter@0 0) (= (ControlFlow 0 13) (- 0 12))) (= counter@0 0)))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |91|
)) (=> (and (= counter@0 0) (= (ControlFlow 0 11) (- 0 10))) (= counter@0 0)))))
(let ((inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |94|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 nil)) (= counter@0 0)) (= (ControlFlow 0 9) (- 0 8))) (and (not (= inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 nil)) (= counter@0 0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_main_3$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |95|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 nil)) (= counter@0 0)) (= (ControlFlow 0 6) (- 0 5))) (and (not (= inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 nil)) (= counter@0 0))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0))))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |96|
)) (=> (and (and (not (= tid nil)) (= counter@0 0)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (= counter@0 0)) (=> (= counter@0 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (not (= tid nil)) (= counter@0 0))) (=> (and (not (= tid nil)) (= counter@0 0)) (and (and (and (and (and (and (=> (= (ControlFlow 0 16) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 16) 6) inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct)) (=> (= (ControlFlow 0 16) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 9) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct)) (=> (= (ControlFlow 0 16) 11) inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct)) (=> (= (ControlFlow 0 16) 13) inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct)) (=> (= (ControlFlow 0 16) 15) inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= tid nil)) (= counter 0)) (= (ControlFlow 0 19) 16)) anon0_correct)))
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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun counter@3 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-sort T@X 0)
(declare-fun inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun Civl_global_old_counter@1 () Int)
(declare-fun counter@4 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 () T@X)
(declare-fun nil () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun tid () T@X)
(declare-fun B@3 () T@X)
(declare-fun A@3 () T@X)
(declare-fun counter@2 () Int)
(declare-fun unallocated@5 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$0$tid@1 () T@X)
(declare-fun unallocated@3 () (Array T@X Bool))
(declare-fun unallocated@4 () (Array T@X Bool))
(declare-fun counter@1 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun inline$AtomicAllocTid$1$tid@1 () T@X)
(declare-fun unallocated@1 () (Array T@X Bool))
(declare-fun unallocated@2 () (Array T@X Bool))
(declare-fun counter@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun counter () Int)
(set-info :boogie-vc-id Civl_main_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 57) (let ((anon5_0$6_@2_anon6_LoopHead_correct  (=> (= (ControlFlow 0 27) (- 0 26)) (= counter@3 0))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) true) (and (=> (= (ControlFlow 0 21) (- 0 22)) (=> false true)) (=> (=> false true) (=> (and (and (= Civl_pc@0  (=> true false)) (= Civl_ok@0  (or true false))) (= (ControlFlow 0 21) (- 0 20))) Civl_ok@0))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) true) (=> (= (ControlFlow 0 18) (- 0 17)) (=> false true)))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |93|
)) (=> (and (= Civl_global_old_counter@1 0) (= (ControlFlow 0 14) (- 0 13))) (= counter@4 0)))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |92|
)) (=> (and (= Civl_global_old_counter@1 0) (= (ControlFlow 0 12) (- 0 11))) (= counter@4 0)))))
(let ((inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_main_3$0$Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |91|
)) (=> (and (= Civl_global_old_counter@1 0) (= (ControlFlow 0 10) (- 0 9))) (= counter@4 0)))))
(let ((inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |94|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 nil)) (= Civl_global_old_counter@1 0)) (= (ControlFlow 0 8) (- 0 7))) (and (not (= inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$tid@0 nil)) (= counter@4 0))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_main_3$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_main_3$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |95|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 nil)) (= Civl_global_old_counter@1 0)) (= (ControlFlow 0 5) (- 0 4))) (and (not (= inline$Civl_NoninterferenceChecker_proc_main_3$0$tid@0 nil)) (= counter@4 0))))))
(let ((anon5_0$6_@2_Civl_NoninterferenceChecker_correct  (=> (= counter@4 counter@3) (=> (and (= Civl_global_old_counter@1 counter@3) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4)) (and (and (and (and (and (=> (= (ControlFlow 0 28) 5) inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct) (=> (= (ControlFlow 0 28) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 28) 8) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct)) (=> (= (ControlFlow 0 28) 10) inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct)) (=> (= (ControlFlow 0 28) 12) inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct)) (=> (= (ControlFlow 0 28) 14) inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct))))))
(let ((anon5_0$5_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (and (and (=> (= (ControlFlow 0 29) 27) anon5_0$6_@2_anon6_LoopHead_correct) (=> (= (ControlFlow 0 29) 28) anon5_0$6_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 29) 18) Civl_UnchangedChecker_correct))))))
(let ((anon5_0$4_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 31) 29) anon5_0$5_correct)))))
(let ((anon5_0$3_correct  (and (=> (= (ControlFlow 0 33) (- 0 35)) (= counter@3 0)) (=> (= counter@3 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (and (and (not (= tid nil)) (= tid tid)) (= tid tid))) (=> (and (and (not (= tid nil)) (= tid tid)) (= tid tid)) (=> (= (ControlFlow 0 33) 31) anon5_0$4_correct)))))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B@3 nil) (= (ControlFlow 0 36) 33)) anon5_0$3_correct)))
(let ((anon5_0$2_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 37) 36) inline$AtomicLockB$0$anon0_correct)))))
(let ((anon5_0$1_correct  (and (=> (= (ControlFlow 0 39) (- 0 41)) (>= counter@3 (- 0 1))) (=> (>= counter@3 (- 0 1)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (and (not (= tid nil)) (= tid tid))) (=> (and (not (= tid nil)) (= tid tid)) (=> (= (ControlFlow 0 39) 37) anon5_0$2_correct)))))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A@3 nil) (= (ControlFlow 0 42) 39)) anon5_0$1_correct)))
(let ((anon5_0_correct  (and (=> (= (ControlFlow 0 43) (- 0 45)) (= counter@2 0)) (=> (= counter@2 0) (=> (and (and (or false true) (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@5 ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |100|
))) (and (= Civl_linear_tid_available@4 ((_ map or) unallocated@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (= counter@3 0))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (not (= tid nil))) (=> (not (= tid nil)) (=> (= (ControlFlow 0 43) 42) inline$AtomicLockA$0$anon0_correct))))))))
(let ((anon5_@2_Civl_NoninterferenceChecker_correct  (=> (= counter@4 counter@2) (=> (and (= Civl_global_old_counter@1 counter@2) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3)) (and (and (and (and (and (=> (= (ControlFlow 0 25) 5) inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct) (=> (= (ControlFlow 0 25) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 25) 8) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct)) (=> (= (ControlFlow 0 25) 10) inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct)) (=> (= (ControlFlow 0 25) 12) inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct)) (=> (= (ControlFlow 0 25) 14) inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct))))))
(let ((anon8_Then$1_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (and (not (= inline$AtomicAllocTid$0$tid@1 nil)) (= counter@2 0))) (=> (and (not (= inline$AtomicAllocTid$0$tid@1 nil)) (= counter@2 0)) (and (and (=> (= (ControlFlow 0 46) 43) anon5_0_correct) (=> (= (ControlFlow 0 46) 25) anon5_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 46) 18) Civl_UnchangedChecker_correct))))))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@1 nil)) (select unallocated@3 inline$AtomicAllocTid$0$tid@1)) (and (= unallocated@4 (store unallocated@3 inline$AtomicAllocTid$0$tid@1 false)) (= (ControlFlow 0 48) 46))) anon8_Then$1_correct)))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 49) (- 0 50)) (= counter@1 0)) (=> (= counter@1 0) (=> (and (and (or false true) (exists ((Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@3 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |99|
))) (and (= Civl_linear_tid_available@3 ((_ map or) unallocated@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (= counter@2 0))) (and (and (and (=> (= (ControlFlow 0 49) 43) anon5_0_correct) (=> (= (ControlFlow 0 49) 25) anon5_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 49) 18) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 49) 48) inline$AtomicAllocTid$0$anon0_correct)))))))
(let ((anon6_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= counter@4 counter@1) (=> (and (= Civl_global_old_counter@1 counter@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2)) (and (and (and (and (and (=> (= (ControlFlow 0 24) 5) inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct) (=> (= (ControlFlow 0 24) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 24) 8) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct)) (=> (= (ControlFlow 0 24) 10) inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct)) (=> (= (ControlFlow 0 24) 12) inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct)) (=> (= (ControlFlow 0 24) 14) inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct))))))
(let ((anon3_@2_Civl_NoninterferenceChecker_correct  (=> (= counter@4 counter@1) (=> (and (= Civl_global_old_counter@1 counter@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2)) (and (and (and (and (and (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct) (=> (= (ControlFlow 0 16) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 8) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct)) (=> (= (ControlFlow 0 16) 10) inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct)) (=> (= (ControlFlow 0 16) 12) inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct)) (=> (= (ControlFlow 0 16) 14) inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct))))))
(let ((inline$AtomicAllocTid$1$anon0_correct  (=> (not (= inline$AtomicAllocTid$1$tid@1 nil)) (=> (and (select unallocated@1 inline$AtomicAllocTid$1$tid@1) (= unallocated@2 (store unallocated@1 inline$AtomicAllocTid$1$tid@1 false))) (and (and (=> (= (ControlFlow 0 51) 49) anon3_0_correct) (=> (= (ControlFlow 0 51) 16) anon3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 51) 18) Civl_UnchangedChecker_correct))))))
(let ((anon6_LoopHead_correct  (=> (and (and (exists ((Civl_partition_tid@@1 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@1 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@1 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |98|
)) (= counter@1 0)) (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) unallocated@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))))) (and (and (and (and (and (=> (= (ControlFlow 0 52) 49) anon3_0_correct) (=> (= (ControlFlow 0 52) 16) anon3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 52) 18) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 52) 51) inline$AtomicAllocTid$1$anon0_correct)) (=> (= (ControlFlow 0 52) 21) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 52) 24) anon6_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon6_LoopHead_correct  (and (=> (= (ControlFlow 0 53) (- 0 54)) (= counter@0 0)) (=> (= counter@0 0) (=> (= (ControlFlow 0 53) 52) anon6_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= counter@4 counter@0) (=> (and (= Civl_global_old_counter@1 counter@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0)) (and (and (and (and (and (=> (= (ControlFlow 0 15) 5) inline$Civl_NoninterferenceChecker_proc_main_3$0$L0_correct) (=> (= (ControlFlow 0 15) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 8) inline$Civl_NoninterferenceChecker_proc_AbsTB_3$0$L0_correct)) (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_impl_main_3$0$L0_correct)) (=> (= (ControlFlow 0 15) 12) inline$Civl_NoninterferenceChecker_impl_main_3$0$L1_correct)) (=> (= (ControlFlow 0 15) 14) inline$Civl_NoninterferenceChecker_impl_main_3$0$L2_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false true)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_tid@@2 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) unallocated@0 ((_ map (= (Int Int) Bool)) Civl_partition_tid@@2 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |97|
)) (=> (and (and (not (= tid nil)) (= counter@0 0)) (= Civl_linear_tid_available@0 ((_ map or) unallocated@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (= counter@0 0)) (=> (= counter@0 0) (and (and (=> (= (ControlFlow 0 55) 53) anon0_@2_anon6_LoopHead_correct) (=> (= (ControlFlow 0 55) 15) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 55) 2) Civl_RefinementChecker_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= tid nil)) (= counter 0)) (= (ControlFlow 0 57) 55)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun A () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicLockA$0$anon0_correct  (=> (and (= A nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockA$0$Return_correct)))
(let ((inline$AtomicLockA$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$AtomicLockA$0$anon0_correct)))
inline$AtomicLockA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter@0 () Int)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicIncrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicIncrA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicIncrA$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrA$0$Return_correct)))
(let ((inline$AtomicIncrA$0$Entry_correct  (=> (and (and (not (= tid nil)) (= A tid)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrA$0$anon0_correct)))
inline$AtomicIncrA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter@0 () Int)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicDecrA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicDecrA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicDecrA$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 3) 2)) inline$AtomicDecrA$0$Return_correct)))
(let ((inline$AtomicDecrA$0$Entry_correct  (=> (and (and (not (= tid nil)) (= A tid)) (= (ControlFlow 0 4) 3)) inline$AtomicDecrA$0$anon0_correct)))
inline$AtomicDecrA$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicUnlockA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicUnlockA$0$Entry_correct  (=> (and (and (not (= tid nil)) (= A tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockA$0$Return_correct)))
inline$AtomicUnlockA$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun B () T@X)
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicLockB$0$anon0_correct  (=> (and (= B nil) (= (ControlFlow 0 3) 2)) inline$AtomicLockB$0$Return_correct)))
(let ((inline$AtomicLockB$0$Entry_correct  (=> (and (not (= tid nil)) (= (ControlFlow 0 4) 3)) inline$AtomicLockB$0$anon0_correct)))
inline$AtomicLockB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter@0 () Int)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicIncrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicIncrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicIncrB$0$anon0_correct  (=> (and (= counter@0 (+ counter 1)) (= (ControlFlow 0 3) 2)) inline$AtomicIncrB$0$Return_correct)))
(let ((inline$AtomicIncrB$0$Entry_correct  (=> (and (and (not (= tid nil)) (= B tid)) (= (ControlFlow 0 4) 3)) inline$AtomicIncrB$0$anon0_correct)))
inline$AtomicIncrB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter@0 () Int)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicDecrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 3) 2)) inline$AtomicDecrB$0$Return_correct)))
(let ((inline$AtomicDecrB$0$Entry_correct  (=> (and (and (not (= tid nil)) (= B tid)) (= (ControlFlow 0 4) 3)) inline$AtomicDecrB$0$anon0_correct)))
inline$AtomicDecrB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicUnlockB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicUnlockB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicUnlockB$0$Entry_correct  (=> (and (and (not (= tid nil)) (= B tid)) (= (ControlFlow 0 3) 2)) inline$AtomicUnlockB$0$Return_correct)))
inline$AtomicUnlockB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAssertA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicAssertA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAssertA$0$Entry_correct  (=> (>= counter (- 0 1)) (=> (and (and (not (= tid nil)) (= A tid)) (= (ControlFlow 0 3) 2)) inline$AtomicAssertA$0$Return_correct))))
inline$AtomicAssertA$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAssertB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicAssertB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAssertB$0$Entry_correct  (=> (= counter 0) (=> (and (and (and (not (= tid nil)) (= A tid)) (= B tid)) (= (ControlFlow 0 3) 2)) inline$AtomicAssertB$0$Return_correct))))
inline$AtomicAssertB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun inline$AtomicAllocTid$0$tid@0 () T@X)
(declare-fun unallocated@0 () (Array T@X Bool))
(declare-fun unallocated () (Array T@X Bool))
(declare-fun nil () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAllocTid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAllocTid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) inline$AtomicAllocTid$0$tid@0 true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) unallocated@0 ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((_ map (ite (Bool Int Int) Int)) unallocated ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAllocTid$0$anon0_correct  (=> (and (and (not (= inline$AtomicAllocTid$0$tid@0 nil)) (select unallocated inline$AtomicAllocTid$0$tid@0)) (and (= unallocated@0 (store unallocated inline$AtomicAllocTid$0$tid@0 false)) (= (ControlFlow 0 3) 2))) inline$AtomicAllocTid$0$Return_correct)))
(let ((inline$AtomicAllocTid$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAllocTid$0$anon0_correct)))
inline$AtomicAllocTid$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter@0 () Int)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAbsDecrB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAbsDecrB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAbsDecrB$0$anon0_correct  (=> (and (= counter@0 (- counter 1)) (= (ControlFlow 0 3) 2)) inline$AtomicAbsDecrB$0$Return_correct)))
(let ((inline$AtomicAbsDecrB$0$Entry_correct  (=> (and (and (and (not (= tid nil)) (= B tid)) (= counter 0)) (= (ControlFlow 0 4) 3)) inline$AtomicAbsDecrB$0$anon0_correct)))
inline$AtomicAbsDecrB$0$Entry_correct))))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAbsAssertA)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicAbsAssertA$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAbsAssertA$0$Entry_correct  (=> (>= counter (- 0 1)) (=> (and (and (not (= tid nil)) (= A tid)) (= (ControlFlow 0 3) 2)) inline$AtomicAbsAssertA$0$Return_correct))))
inline$AtomicAbsAssertA$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun counter () Int)
(declare-fun nil () T@X)
(declare-fun A () T@X)
(declare-fun B () T@X)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAbsAssertB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicAbsAssertB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicAbsAssertB$0$Entry_correct  (=> (= counter 0) (=> (and (and (and (not (= tid nil)) (= A tid)) (= B tid)) (= (ControlFlow 0 3) 2)) inline$AtomicAbsAssertB$0$Return_correct))))
inline$AtomicAbsAssertB$0$Entry_correct)))
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
(declare-sort T@X 0)
(declare-fun tid () T@X)
(declare-fun nil () T@X)
(declare-fun counter () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicTB)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicTB$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicTB$0$Entry_correct  (=> (and (and (not (= tid nil)) (= counter 0)) (= (ControlFlow 0 3) 2)) inline$AtomicTB$0$Return_correct)))
inline$AtomicTB$0$Entry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
