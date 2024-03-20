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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun |inline$AtomicEnter#1$0$p@1| () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun stopped () Bool)
(declare-fun first_i () Int)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(set-info :boogie-vc-id |Civl_GatePreservationChecker_AtomicCheckAssert#1_AtomicEnter#1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((|inline$AtomicEnter#1$0$Return_correct|  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (not stopped))) (=> (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (not stopped)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm@@1 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver@0 first_i))))))))
(let ((|inline$AtomicEnter#1$0$anon0_correct|  (=> (and (and (not stoppingFlag) (= usersInDriver@0 (store usersInDriver second_i true))) (and (= |inline$AtomicEnter#1$0$p@1| (Right second_i)) (= (ControlFlow 0 4) 2))) |inline$AtomicEnter#1$0$Return_correct|)))
(let ((|inline$AtomicEnter#1$0$Entry_correct|  (=> (and (exists ((Civl_partition_perm@@2 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (not stopped)) (=> (and (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)) (and (<= 1 second_i) (= (ControlFlow 0 5) 4))) |inline$AtomicEnter#1$0$anon0_correct|))))
|inline$AtomicEnter#1$0$Entry_correct|))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$AtomicEnter#1$0$p@1| () T@Perm)
(declare-fun second_i () Int)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id |Civl_CommutativityChecker_AtomicEnter#1_AtomicExit|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicExit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@1) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@1) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
))) (and (and (and (not stoppingFlag) (= usersInDriver@1 (store (store usersInDriver second_i false) first_i true))) (= |inline$AtomicEnter#1$0$p@1| (Right first_i))) (= stoppingFlag stoppingFlag))))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@1 (store usersInDriver@0 second_i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$0$Return_correct)))
(let ((|inline$AtomicEnter#1$0$anon0_correct|  (=> (and (and (not stoppingFlag) (= usersInDriver@0 (store usersInDriver first_i true))) (and (= |inline$AtomicEnter#1$0$p@1| (Right first_i)) (= (ControlFlow 0 4) 3))) inline$AtomicExit$0$anon0_correct)))
(let ((|inline$AtomicEnter#1$0$Entry_correct|  (=> (and (exists ((Civl_partition_perm@@1 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (<= 1 first_i)) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 5) 4)) |inline$AtomicEnter#1$0$anon0_correct|))))
|inline$AtomicEnter#1$0$Entry_correct|)))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun first_i () Int)
(declare-fun |inline$AtomicEnter#1$0$p@1| () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(set-info :boogie-vc-id |Civl_GatePreservationChecker_AtomicExit_AtomicEnter#1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((|inline$AtomicEnter#1$0$Return_correct|  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 3))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver@0 first_i))))))
(let ((|inline$AtomicEnter#1$0$anon0_correct|  (=> (and (and (not stoppingFlag) (= usersInDriver@0 (store usersInDriver second_i true))) (and (= |inline$AtomicEnter#1$0$p@1| (Right second_i)) (= (ControlFlow 0 3) 2))) |inline$AtomicEnter#1$0$Return_correct|)))
(let ((|inline$AtomicEnter#1$0$Entry_correct|  (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)) (and (<= 1 second_i) (= (ControlFlow 0 4) 3))) |inline$AtomicEnter#1$0$anon0_correct|))))
|inline$AtomicEnter#1$0$Entry_correct|))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun stopped () Bool)
(declare-fun first_i () Int)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id |Civl_FailurePreservationChecker_AtomicCheckAssert#1_AtomicExit|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicExit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (not (and (not stopped) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver@0 first_i))))))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver second_i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$0$Return_correct)))
(let ((inline$AtomicExit$0$Entry_correct  (=> (and (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (not (and (not stopped) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i))))) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 4) 3)) inline$AtomicExit$0$anon0_correct))))
inline$AtomicExit$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun stopped () Bool)
(declare-fun first_i () Int)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id |Civl_GatePreservationChecker_AtomicCheckAssert#1_AtomicExit|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicExit$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (not stopped))) (=> (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (not stopped)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm@@1 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver@0 first_i))))))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver second_i false)) (= (ControlFlow 0 4) 2)) inline$AtomicExit$0$Return_correct)))
(let ((inline$AtomicExit$0$Entry_correct  (=> (and (exists ((Civl_partition_perm@@2 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (not stopped)) (=> (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 5) 4)) inline$AtomicExit$0$anon0_correct)))))
inline$AtomicExit$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_i () Int)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun first_p () T@Perm)
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicExit_AtomicExit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicExit$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@1) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (= usersInDriver@1 (store (store usersInDriver second_i false) first_i false))))))
(let ((inline$AtomicExit$1$anon0_correct  (=> (and (= usersInDriver@1 (store usersInDriver@0 second_i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$1$Return_correct)))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver first_i false)) (= (ControlFlow 0 4) 3)) inline$AtomicExit$1$anon0_correct)))
(let ((inline$AtomicExit$0$Entry_correct  (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 5) 4)) inline$AtomicExit$0$anon0_correct)))))
inline$AtomicExit$0$Entry_correct)))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun first_i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicExit_AtomicExit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicExit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver@0 first_i))))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver second_i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$0$Return_correct)))
(let ((inline$AtomicExit$0$Entry_correct  (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 4) 3)) inline$AtomicExit$0$anon0_correct)))))
inline$AtomicExit$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun first_i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicExit_AtomicExit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicExit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (not (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver@0 first_i)))))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver second_i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$0$Return_correct)))
(let ((inline$AtomicExit$0$Entry_correct  (=> (and (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (not (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)))) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 4) 3)) inline$AtomicExit$0$anon0_correct))))
inline$AtomicExit$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_p () T@Perm)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun stopped () Bool)
(set-info :boogie-vc-id |Civl_GatePreservationChecker_AtomicCheckAssert#1_AtomicWaitAndStop|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicWaitAndStop$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (not true))) (=> (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm@@1 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i))))))))
(let ((inline$AtomicWaitAndStop$0$anon0_correct  (=> (and (= usersInDriver ((as const (Array Int Bool)) false)) (= (ControlFlow 0 4) 2)) inline$AtomicWaitAndStop$0$Return_correct)))
(let ((inline$AtomicWaitAndStop$0$Entry_correct  (=> (and (exists ((Civl_partition_perm@@2 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) first_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (not stopped)) (=> (and (and (and (= first_p (Right first_i)) (<= 1 first_i)) (select usersInDriver first_i)) (= (ControlFlow 0 5) 4)) inline$AtomicWaitAndStop$0$anon0_correct))))
inline$AtomicWaitAndStop$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_p () T@Perm)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicWaitAndStop_AtomicExit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicExit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (and (and (= usersInDriver@0 ((as const (Array Int Bool)) false)) (= usersInDriver@0 (store usersInDriver second_i false))) (= true true))))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver second_i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$0$Return_correct)))
(let ((inline$AtomicWaitAndStop$0$anon0_correct  (=> (and (= usersInDriver ((as const (Array Int Bool)) false)) (= (ControlFlow 0 4) 3)) inline$AtomicExit$0$anon0_correct)))
(let ((inline$AtomicWaitAndStop$0$Entry_correct  (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) second_p true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (= second_p (Right second_i)) (<= 1 second_i)) (select usersInDriver second_i)) (= (ControlFlow 0 5) 4)) inline$AtomicWaitAndStop$0$anon0_correct))))
inline$AtomicWaitAndStop$0$Entry_correct)))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stopped () Bool)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_AtomicCheckAssert_AtomicSetStopped)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetStopped$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true true))))
(let ((inline$AtomicSetStopped$0$Entry_correct  (=> (and stopped (= (ControlFlow 0 3) 2)) inline$AtomicSetStopped$0$Return_correct)))
inline$AtomicSetStopped$0$Entry_correct)))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$AtomicEnter#1$0$p@1| () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun second_i () Int)
(declare-fun first_i () Int)
(set-info :boogie-vc-id |Civl_CommutativityChecker_AtomicSetStoppingFlag_AtomicEnter#1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((|inline$AtomicEnter#1$0$Return_correct|  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
)) (and (and (and (not stoppingFlag) (= usersInDriver@0 (store usersInDriver second_i true))) (= |inline$AtomicEnter#1$0$p@1| (Right second_i))) (= true true))))))
(let ((|inline$AtomicEnter#1$0$anon0_correct|  (=> (and (and (not true) (= usersInDriver@0 (store usersInDriver second_i true))) (and (= |inline$AtomicEnter#1$0$p@1| (Right second_i)) (= (ControlFlow 0 3) 2))) |inline$AtomicEnter#1$0$Return_correct|)))
(let ((inline$AtomicSetStoppingFlag$0$Entry_correct  (=> (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true))) (= ((_ map =>) (|lambda#0| usersInDriver) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 2))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (= first_i 0) (not stoppingFlag)) (and (<= 1 second_i) (= (ControlFlow 0 4) 3))) |inline$AtomicEnter#1$0$anon0_correct|))))
inline$AtomicSetStoppingFlag$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingFlag () Bool)
(declare-fun pendingIo@0 () Int)
(declare-fun pendingIo () Int)
(declare-fun first_i () Int)
(declare-fun second_i () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSetStoppingFlag_AtomicEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicEnter$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (not stoppingFlag) (= pendingIo@0 (+ pendingIo 1))) (= true true))))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (not true) (=> (and (= pendingIo@0 (+ pendingIo 1)) (= (ControlFlow 0 3) 2)) inline$AtomicEnter$0$Return_correct))))
(let ((inline$AtomicSetStoppingFlag$0$Entry_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (=> (and (and (= first_i 0) (not stoppingFlag)) (and (<= 1 second_i) (= (ControlFlow 0 4) 3))) inline$AtomicEnter$0$anon0_correct))))
inline$AtomicSetStoppingFlag$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_i () Int)
(declare-fun second_i () Int)
(declare-fun stoppingFlag () Bool)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSetStoppingFlag_AtomicSetStoppingFlag)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetStoppingFlag$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= true true)))))
(let ((inline$AtomicSetStoppingFlag$0$Entry_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (= first_i 0) (not stoppingFlag)) (=> (and (and (= second_i 0) (not stoppingFlag)) (= (ControlFlow 0 3) 2)) inline$AtomicSetStoppingFlag$1$Return_correct)))))
inline$AtomicSetStoppingFlag$0$Entry_correct)))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_i () Int)
(declare-fun second_i () Int)
(declare-fun stoppingFlag () Bool)
(set-info :boogie-vc-id Civl_GatePreservationChecker_AtomicSetStoppingFlag_AtomicSetStoppingFlag)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetStoppingFlag$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= first_i 0) (not true))))))
(let ((inline$AtomicSetStoppingFlag$0$Entry_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left first_i) true) (Right first_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left second_i) true) (Right second_i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |32|
)) (=> (and (= first_i 0) (not stoppingFlag)) (=> (and (and (= second_i 0) (not stoppingFlag)) (= (ControlFlow 0 3) 2)) inline$AtomicSetStoppingFlag$0$Return_correct)))))
inline$AtomicSetStoppingFlag$0$Entry_correct)))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@4 () Bool)
(declare-fun stoppingFlag@4 () Bool)
(declare-fun usersInDriver@4 () (Array Int Bool))
(declare-fun pendingIo@4 () Int)
(declare-fun stoppingEvent@6 () Bool)
(declare-fun stoppingFlag@6 () Bool)
(declare-fun usersInDriver@6 () (Array Int Bool))
(declare-fun pendingIo@6 () Int)
(declare-fun stoppingEvent@1 () Bool)
(declare-fun pendingIo@1 () Int)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun stoppingFlag@1 () Bool)
(declare-fun Civl_global_old_stoppingEvent@1 () Bool)
(declare-fun Civl_global_old_stoppingFlag@1 () Bool)
(declare-fun Civl_global_old_usersInDriver@1 () (Array Int Bool))
(declare-fun Civl_global_old_pendingIo@1 () Int)
(declare-fun stoppingEvent@5 () Bool)
(declare-fun stoppingFlag@5 () Bool)
(declare-fun usersInDriver@5 () (Array Int Bool))
(declare-fun pendingIo@5 () Int)
(declare-fun stoppingEvent@3 () Bool)
(declare-fun stoppingFlag@3 () Bool)
(declare-fun usersInDriver@3 () (Array Int Bool))
(declare-fun pendingIo@3 () Int)
(declare-fun Civl_linear_perm_available@5 () (Array T@Perm Bool))
(declare-fun i () Int)
(declare-fun stoppingEvent@2 () Bool)
(declare-fun stoppingFlag@2 () Bool)
(declare-fun usersInDriver@2 () (Array Int Bool))
(declare-fun pendingIo@2 () Int)
(declare-fun Civl_linear_perm_available@4 () (Array T@Perm Bool))
(declare-fun call6formal@Civl_0_p@0 () T@Perm)
(declare-fun Civl_linear_perm_available@3 () (Array T@Perm Bool))
(declare-fun Civl_linear_perm_available@2 () (Array T@Perm Bool))
(declare-fun stoppingEvent@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@0 () Int)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id Civl_User_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 35) (let ((anon2_LoopBody_0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> stoppingEvent@4 (and stoppingFlag@4 (= usersInDriver@4 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@4 (and stoppingFlag@4 (= usersInDriver@4 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 18) (- 0 17)) (= pendingIo@4 (+ (Size_98 usersInDriver@4) (ite stoppingFlag@4 0 1))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> stoppingEvent@6 (and stoppingFlag@6 (= usersInDriver@6 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@6 (and stoppingFlag@6 (= usersInDriver@6 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 12) (- 0 11)) (= pendingIo@6 (+ (Size_98 usersInDriver@6) (ite stoppingFlag@6 0 1))))))))
(let ((Civl_UnifiedReturn_correct  (=> (= stoppingEvent@6 stoppingEvent@1) (=> (and (and (= pendingIo@6 pendingIo@1) (= usersInDriver@6 usersInDriver@1)) (and (= stoppingFlag@6 stoppingFlag@1) (= (ControlFlow 0 14) 12))) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_UnchangedChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> Civl_global_old_stoppingEvent@1 (and Civl_global_old_stoppingFlag@1 (= Civl_global_old_usersInDriver@1 ((as const (Array Int Bool)) false)))) (= Civl_global_old_pendingIo@1 (+ (Size_98 Civl_global_old_usersInDriver@1) (ite Civl_global_old_stoppingFlag@1 0 1)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> stoppingEvent@5 (and stoppingFlag@5 (= usersInDriver@5 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@5 (and stoppingFlag@5 (= usersInDriver@5 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 3) (- 0 2)) (= pendingIo@5 (+ (Size_98 usersInDriver@5) (ite stoppingFlag@5 0 1)))))))))
(let ((anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@5 stoppingFlag@4) (= usersInDriver@5 usersInDriver@4)) (and (= pendingIo@5 pendingIo@4) (= stoppingEvent@5 stoppingEvent@4))) (and (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@4) (= Civl_global_old_usersInDriver@1 usersInDriver@4)) (and (= Civl_global_old_pendingIo@1 pendingIo@4) (= Civl_global_old_stoppingEvent@1 stoppingEvent@4)))) (and (=> (= (ControlFlow 0 20) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 20) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody_0_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (=> stoppingEvent@3 (and stoppingFlag@3 (= usersInDriver@3 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@3 (and stoppingFlag@3 (= usersInDriver@3 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= pendingIo@3 (+ (Size_98 usersInDriver@3) (ite stoppingFlag@3 0 1)))) (=> (= pendingIo@3 (+ (Size_98 usersInDriver@3) (ite stoppingFlag@3 0 1))) (=> (and (and (=> stoppingEvent@4 (and stoppingFlag@4 (= usersInDriver@4 ((as const (Array Int Bool)) false)))) (= pendingIo@4 (+ (Size_98 usersInDriver@4) (ite stoppingFlag@4 0 1)))) (and (= Civl_linear_perm_available@5 ((_ map or) (|lambda#0| usersInDriver@4) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))) (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@4) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |42|
)))) (and (and (=> (= (ControlFlow 0 21) 18) anon2_LoopBody_0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 21) 20) anon2_LoopBody_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 21) 8) Civl_UnchangedChecker_correct)))))))))
(let ((anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@5 stoppingFlag@3) (= usersInDriver@5 usersInDriver@3)) (and (= pendingIo@5 pendingIo@3) (= stoppingEvent@5 stoppingEvent@3))) (and (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@3) (= Civl_global_old_usersInDriver@1 usersInDriver@3)) (and (= Civl_global_old_pendingIo@1 pendingIo@3) (= Civl_global_old_stoppingEvent@1 stoppingEvent@3)))) (and (=> (= (ControlFlow 0 16) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 16) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody_1_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (=> stoppingEvent@2 (and stoppingFlag@2 (= usersInDriver@2 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@2 (and stoppingFlag@2 (= usersInDriver@2 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= pendingIo@2 (+ (Size_98 usersInDriver@2) (ite stoppingFlag@2 0 1)))) (=> (= pendingIo@2 (+ (Size_98 usersInDriver@2) (ite stoppingFlag@2 0 1))) (=> (and (and (=> stoppingEvent@3 (and stoppingFlag@3 (= usersInDriver@3 ((as const (Array Int Bool)) false)))) (= pendingIo@3 (+ (Size_98 usersInDriver@3) (ite stoppingFlag@3 0 1)))) (and (= Civl_linear_perm_available@4 ((_ map or) (|lambda#0| usersInDriver@3) ((_ map or) (store ((as const (Array T@Perm Bool)) false) call6formal@Civl_0_p@0 true) ((as const (Array T@Perm Bool)) false)))) (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) call6formal@Civl_0_p@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@3) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |41|
)))) (and (and (=> (= (ControlFlow 0 24) 21) anon2_LoopBody_0_correct) (=> (= (ControlFlow 0 24) 16) anon2_LoopBody_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 8) Civl_UnchangedChecker_correct)))))))))
(let ((anon2_LoopBody_2_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@5 stoppingFlag@2) (= usersInDriver@5 usersInDriver@2)) (and (= pendingIo@5 pendingIo@2) (= stoppingEvent@5 stoppingEvent@2))) (and (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@2) (= Civl_global_old_usersInDriver@1 usersInDriver@2)) (and (= Civl_global_old_pendingIo@1 pendingIo@2) (= Civl_global_old_stoppingEvent@1 stoppingEvent@2)))) (and (=> (= (ControlFlow 0 15) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 15) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody_2_correct  (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> stoppingEvent@1 (and stoppingFlag@1 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@1 (and stoppingFlag@1 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@1 0 1)))) (=> (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@1 0 1))) (=> (and (and (=> stoppingEvent@2 (and stoppingFlag@2 (= usersInDriver@2 ((as const (Array Int Bool)) false)))) (= pendingIo@2 (+ (Size_98 usersInDriver@2) (ite stoppingFlag@2 0 1)))) (and (= Civl_linear_perm_available@3 ((_ map or) (|lambda#0| usersInDriver@2) ((_ map or) (store ((as const (Array T@Perm Bool)) false) call6formal@Civl_0_p@0 true) ((as const (Array T@Perm Bool)) false)))) (exists ((Civl_partition_perm@@1 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) call6formal@Civl_0_p@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@2) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |40|
)))) (and (and (=> (= (ControlFlow 0 27) 24) anon2_LoopBody_1_correct) (=> (= (ControlFlow 0 27) 15) anon2_LoopBody_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 27) 8) Civl_UnchangedChecker_correct)))))))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@5 stoppingFlag@1) (= usersInDriver@5 usersInDriver@1)) (and (= pendingIo@5 pendingIo@1) (= stoppingEvent@5 stoppingEvent@1))) (and (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@1) (= Civl_global_old_usersInDriver@1 usersInDriver@1)) (and (= Civl_global_old_pendingIo@1 pendingIo@1) (= Civl_global_old_stoppingEvent@1 stoppingEvent@1)))) (and (=> (= (ControlFlow 0 10) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 10) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@5 stoppingFlag@1) (= usersInDriver@5 usersInDriver@1)) (and (= pendingIo@5 pendingIo@1) (= stoppingEvent@5 stoppingEvent@1))) (and (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@1) (= Civl_global_old_usersInDriver@1 usersInDriver@1)) (and (= Civl_global_old_pendingIo@1 pendingIo@1) (= Civl_global_old_stoppingEvent@1 stoppingEvent@1)))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 7) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopHead_correct  (=> (and (and (exists ((Civl_partition_perm@@2 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@1) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@2 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |43|
)) (=> stoppingEvent@1 (and stoppingFlag@1 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (and (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@1 0 1))) (= Civl_linear_perm_available@2 ((_ map or) (|lambda#0| usersInDriver@1) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))))) (and (and (and (and (and (=> (= (ControlFlow 0 30) 27) anon2_LoopBody_2_correct) (=> (= (ControlFlow 0 30) 7) anon2_LoopBody_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 30) 8) Civl_UnchangedChecker_correct)) (=> (= (ControlFlow 0 30) 9) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 30) 14) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 30) 10) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (=> (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1))) (=> (= (ControlFlow 0 31) 30) anon2_LoopHead_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@5 stoppingFlag@0) (= usersInDriver@5 usersInDriver@0)) (and (= pendingIo@5 pendingIo@0) (= stoppingEvent@5 stoppingEvent@0))) (and (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@0) (= Civl_global_old_usersInDriver@1 usersInDriver@0)) (and (= Civl_global_old_pendingIo@1 pendingIo@0) (= Civl_global_old_stoppingEvent@1 stoppingEvent@0)))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_correct  (=> (and (and (exists ((Civl_partition_perm@@3 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@3 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@3 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (and (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1))) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))))) (and (and (=> (= (ControlFlow 0 34) 31) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 34) 6) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 35) 34)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@4 () Bool)
(declare-fun stoppingFlag@4 () Bool)
(declare-fun usersInDriver@4 () (Array Int Bool))
(declare-fun pendingIo@4 () Int)
(declare-fun stoppingEvent@2 () Bool)
(declare-fun pendingIo@2 () Int)
(declare-fun usersInDriver@2 () (Array Int Bool))
(declare-fun stoppingFlag@2 () Bool)
(declare-fun Civl_global_old_stoppingEvent@0 () Bool)
(declare-fun Civl_global_old_stoppingFlag@0 () Bool)
(declare-fun Civl_global_old_usersInDriver@0 () (Array Int Bool))
(declare-fun Civl_global_old_pendingIo@0 () Int)
(declare-fun stoppingEvent@3 () Bool)
(declare-fun stoppingFlag@3 () Bool)
(declare-fun usersInDriver@3 () (Array Int Bool))
(declare-fun pendingIo@3 () Int)
(declare-fun stoppingEvent@1 () Bool)
(declare-fun stoppingFlag@1 () Bool)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun pendingIo@1 () Int)
(declare-fun Civl_linear_perm_available@2 () (Array T@Perm Bool))
(declare-fun i () Int)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@0 () Int)
(declare-fun stoppingEvent@0 () Bool)
(declare-fun Civl_linear_perm_available@1 () (Array T@Perm Bool))
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id Civl_Stopper_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> stoppingEvent@4 (and stoppingFlag@4 (= usersInDriver@4 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@4 (and stoppingFlag@4 (= usersInDriver@4 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 11) (- 0 10)) (= pendingIo@4 (+ (Size_98 usersInDriver@4) (ite stoppingFlag@4 0 1))))))))
(let ((Civl_UnifiedReturn_correct  (=> (= stoppingEvent@4 stoppingEvent@2) (=> (and (and (= pendingIo@4 pendingIo@2) (= usersInDriver@4 usersInDriver@2)) (and (= stoppingFlag@4 stoppingFlag@2) (= (ControlFlow 0 13) 11))) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> Civl_global_old_stoppingEvent@0 (and Civl_global_old_stoppingFlag@0 (= Civl_global_old_usersInDriver@0 ((as const (Array Int Bool)) false)))) (= Civl_global_old_pendingIo@0 (+ (Size_98 Civl_global_old_usersInDriver@0) (ite Civl_global_old_stoppingFlag@0 0 1)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> stoppingEvent@3 (and stoppingFlag@3 (= usersInDriver@3 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@3 (and stoppingFlag@3 (= usersInDriver@3 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 3) (- 0 2)) (= pendingIo@3 (+ (Size_98 usersInDriver@3) (ite stoppingFlag@3 0 1)))))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@3 stoppingFlag@2) (= usersInDriver@3 usersInDriver@2)) (and (= pendingIo@3 pendingIo@2) (= stoppingEvent@3 stoppingEvent@2))) (and (and (= Civl_global_old_stoppingFlag@0 stoppingFlag@2) (= Civl_global_old_usersInDriver@0 usersInDriver@2)) (and (= Civl_global_old_pendingIo@0 pendingIo@2) (= Civl_global_old_stoppingEvent@0 stoppingEvent@2)))) (and (=> (= (ControlFlow 0 9) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 9) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> stoppingEvent@1 (and stoppingFlag@1 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@1 (and stoppingFlag@1 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@1 0 1)))) (=> (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@1 0 1))) (=> (and (and (=> stoppingEvent@2 (and stoppingFlag@2 (= usersInDriver@2 ((as const (Array Int Bool)) false)))) (= pendingIo@2 (+ (Size_98 usersInDriver@2) (ite stoppingFlag@2 0 1)))) (and (= Civl_linear_perm_available@2 ((_ map or) (|lambda#0| usersInDriver@2) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))) (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@2) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |45|
)))) (and (and (=> (= (ControlFlow 0 14) 8) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 13) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 14) 9) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@3 stoppingFlag@1) (= usersInDriver@3 usersInDriver@1)) (and (= pendingIo@3 pendingIo@1) (= stoppingEvent@3 stoppingEvent@1))) (and (and (= Civl_global_old_stoppingFlag@0 stoppingFlag@1) (= Civl_global_old_usersInDriver@0 usersInDriver@1)) (and (= Civl_global_old_pendingIo@0 pendingIo@1) (= Civl_global_old_stoppingEvent@0 stoppingEvent@1)))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 7) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (and (= stoppingFlag@3 stoppingFlag@0) (= usersInDriver@3 usersInDriver@0)) (and (= pendingIo@3 pendingIo@0) (= stoppingEvent@3 stoppingEvent@0))) (and (and (= Civl_global_old_stoppingFlag@0 stoppingFlag@0) (= Civl_global_old_usersInDriver@0 usersInDriver@0)) (and (= Civl_global_old_pendingIo@0 pendingIo@0) (= Civl_global_old_stoppingEvent@0 stoppingEvent@0)))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_1_correct  (and (=> (= (ControlFlow 0 17) (- 0 19)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (=> (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1))) (=> (and (and (=> stoppingEvent@1 (and stoppingFlag@1 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@1 0 1)))) (and (= Civl_linear_perm_available@1 ((_ map or) (|lambda#0| usersInDriver@1) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))) (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@1) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |44|
)))) (and (and (=> (= (ControlFlow 0 17) 14) anon0_0_correct) (=> (= (ControlFlow 0 17) 7) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 17) 1) Civl_RefinementChecker_correct)))))))))
(let ((anon0_correct  (=> (and (and (exists ((Civl_partition_perm@@1 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@1 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (and (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1))) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))))) (and (and (=> (= (ControlFlow 0 20) 17) anon0_1_correct) (=> (= (ControlFlow 0 20) 6) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 21) 20)) anon0_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun pendingIo@1 () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@0 () Int)
(declare-fun stopped@0 () Bool)
(declare-fun i () Int)
(declare-fun inline$AddToBarrier$0$p@1 () T@Perm)
(declare-fun p@@0 () T@Perm)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id |Civl_Enter#1_1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 10) (- 0 9)) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@0 0 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@0 0 1)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) (and (and (and (and (not stoppingFlag@0) (= usersInDriver@1 (store usersInDriver@0 i true))) (= inline$AddToBarrier$0$p@1 (Right i))) (= stoppingFlag@0 stoppingFlag@0)) (= stopped@0 stopped@0))))) (=> (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) (and (and (and (and (not stoppingFlag@0) (= usersInDriver@1 (store usersInDriver@0 i true))) (= inline$AddToBarrier$0$p@1 (Right i))) (= stoppingFlag@0 stoppingFlag@0)) (= stopped@0 stopped@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) (= inline$AddToBarrier$0$p@1 p@@0)))) (=> (=> false (and (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) (= inline$AddToBarrier$0$p@1 p@@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) false)) (= Civl_ok@0  (or (and (and (and (and (not stoppingFlag@0) (= usersInDriver@1 (store usersInDriver@0 i true))) (= inline$AddToBarrier$0$p@1 (Right i))) (= stoppingFlag@0 stoppingFlag@0)) (= stopped@0 stopped@0)) (and (= inline$AddToBarrier$0$p@1 p@@0) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AddToBarrier$0$anon0_correct  (=> (and (= usersInDriver@1 (store usersInDriver@0 i true)) (= inline$AddToBarrier$0$p@1 (Right i))) (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) GeneratedUnifiedExit_correct)))))
(let ((anon0$1_correct  (=> (and (= (+ (Size_98 (store usersInDriver@0 i false)) 1) (Size_98 (store usersInDriver@0 i true))) (= (ControlFlow 0 13) 12)) inline$AddToBarrier$0$anon0_correct)))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (not stoppingFlag@0) (=> (and (= pendingIo@1 (+ pendingIo@0 1)) (= (ControlFlow 0 14) 13)) anon0$1_correct))))
(let ((anon0_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)) (=> (and (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (<= 1 i) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= 1 i)) (=> (<= 1 i) (=> (= (ControlFlow 0 15) 14) inline$AtomicEnter$0$anon0_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 17) 15)) anon0_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@0 () Int)
(declare-fun stopped@0 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun p@@0 () T@Perm)
(declare-fun i () Int)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id |Civl_CheckAssert#1_1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 10) (- 0 9)) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0))))) (=> (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)))) (=> (=> false (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) false)) (= Civl_ok@0  (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |37|
)) (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (=> (and (and (not stopped@0) (and (and (= p@@0 (Right i)) (<= 1 i)) (select usersInDriver@0 i))) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((as const (Array T@Perm Bool)) false))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not stopped@0)) (=> (not stopped@0) (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) GeneratedUnifiedExit_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 14) 12)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@1 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun pendingIo@1 () Int)
(declare-fun stoppingEvent@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@0 () Int)
(declare-fun stopped@0 () Bool)
(declare-fun i () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun call0formal@X@0 () (Array Int Bool))
(declare-fun p@@0 () T@Perm)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id Civl_Exit_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> stoppingEvent@1 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@1 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 10) (- 0 9)) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@0 0 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> stoppingEvent@1 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@1 (and stoppingFlag@0 (= usersInDriver@1 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= pendingIo@1 (+ (Size_98 usersInDriver@1) (ite stoppingFlag@0 0 1)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) (and (and (= usersInDriver@1 (store usersInDriver@0 i false)) (= stoppingFlag@0 stoppingFlag@0)) (= stopped@0 stopped@0))))) (=> (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) (and (and (= usersInDriver@1 (store usersInDriver@0 i false)) (= stoppingFlag@0 stoppingFlag@0)) (= stopped@0 stopped@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)))) (=> (=> false (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= stoppingFlag@0 stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@1 usersInDriver@0)) false)) (= Civl_ok@0  (or (and (and (= usersInDriver@1 (store usersInDriver@0 i false)) (= stoppingFlag@0 stoppingFlag@0)) (= stopped@0 stopped@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$2_correct  (=> (= call0formal@X@0 ((as const (Array Int Bool)) false)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= ((_ map =>) call0formal@X@0 usersInDriver@1) ((as const (Array Int Bool)) true))) (=> (= ((_ map =>) call0formal@X@0 usersInDriver@1) ((as const (Array Int Bool)) true)) (=> (or (= call0formal@X@0 usersInDriver@1) (< (Size_98 call0formal@X@0) (Size_98 usersInDriver@1))) (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) GeneratedUnifiedExit_correct))))))))
(let ((inline$RemoveFromBarrier$0$anon0_correct  (=> (and (= usersInDriver@1 (store usersInDriver@0 i false)) (= (ControlFlow 0 14) 12)) anon0$2_correct)))
(let ((anon0$1_correct  (=> (= (+ (Size_98 (store usersInDriver@0 i false)) 1) (Size_98 (store usersInDriver@0 i true))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (= p@@0 (Right i)) (select usersInDriver@0 i))) (=> (and (= p@@0 (Right i)) (select usersInDriver@0 i)) (=> (= (ControlFlow 0 15) 14) inline$RemoveFromBarrier$0$anon0_correct))))))
(let ((inline$AtomicDeleteReference$0$anon2_Else_correct  (=> (not (= pendingIo@1 0)) (=> (and (= stoppingEvent@1 stoppingEvent@0) (= (ControlFlow 0 18) 15)) anon0$1_correct))))
(let ((inline$AtomicDeleteReference$0$anon2_Then_correct  (=> (= pendingIo@1 0) (=> (and (= stoppingEvent@1 true) (= (ControlFlow 0 17) 15)) anon0$1_correct))))
(let ((inline$AtomicDeleteReference$0$anon0_correct  (=> (= pendingIo@1 (- pendingIo@0 1)) (and (=> (= (ControlFlow 0 19) 17) inline$AtomicDeleteReference$0$anon2_Then_correct) (=> (= (ControlFlow 0 19) 18) inline$AtomicDeleteReference$0$anon2_Else_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |38|
)) (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (=> (and (and (and (= p@@0 (Right i)) (<= 1 i)) (select usersInDriver@0 i)) (and (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((as const (Array T@Perm Bool)) false)))) (= (ControlFlow 0 20) 19))) inline$AtomicDeleteReference$0$anon0_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 21) 20)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@1 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@1 () Int)
(declare-fun stoppingEvent@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun pendingIo@0 () Int)
(declare-fun stopped@0 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun call0formal@X@0 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id Civl_Close_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> stoppingEvent@1 (and true (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@1 (and true (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 10) (- 0 9)) (= pendingIo@1 (+ (Size_98 usersInDriver@0) (ite true 0 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> stoppingEvent@1 (and true (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@1 (and true (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= pendingIo@1 (+ (Size_98 usersInDriver@0) (ite true 0 1)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= true stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) (and (and (= true true) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0))))) (=> (or false (or (and (and (= true stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) (and (and (= true true) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= true stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)))) (=> (=> false (and (and (= true stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= true stoppingFlag@0) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) false)) (= Civl_ok@0  (or (and (and (= true true) (= stopped@0 stopped@0)) (= usersInDriver@0 usersInDriver@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$2_correct  (=> (= call0formal@X@0 ((as const (Array Int Bool)) false)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= ((_ map =>) call0formal@X@0 usersInDriver@0) ((as const (Array Int Bool)) true))) (=> (= ((_ map =>) call0formal@X@0 usersInDriver@0) ((as const (Array Int Bool)) true)) (=> (or (= call0formal@X@0 usersInDriver@0) (< (Size_98 call0formal@X@0) (Size_98 usersInDriver@0))) (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) GeneratedUnifiedExit_correct))))))))
(let ((inline$AtomicDeleteReference$0$anon2_Else_correct  (=> (not (= pendingIo@1 0)) (=> (and (= stoppingEvent@1 stoppingEvent@0) (= (ControlFlow 0 15) 12)) anon0$2_correct))))
(let ((inline$AtomicDeleteReference$0$anon2_Then_correct  (=> (= pendingIo@1 0) (=> (and (= stoppingEvent@1 true) (= (ControlFlow 0 14) 12)) anon0$2_correct))))
(let ((inline$AtomicDeleteReference$0$anon0_correct  (=> (= pendingIo@1 (- pendingIo@0 1)) (and (=> (= (ControlFlow 0 16) 14) inline$AtomicDeleteReference$0$anon2_Then_correct) (=> (= (ControlFlow 0 16) 15) inline$AtomicDeleteReference$0$anon2_Else_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |39|
)) (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (=> (and (and (= i 0) (not stoppingFlag@0)) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (= i 0) (not stoppingFlag@0))) (=> (and (= i 0) (not stoppingFlag@0)) (=> (= (ControlFlow 0 17) 16) inline$AtomicDeleteReference$0$anon0_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 19) 17)) anon0_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingEvent@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun pendingIo@0 () Int)
(declare-fun stopped@0 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stoppingEvent () Bool)
(declare-fun stoppingFlag () Bool)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id Civl_WaitAndStop_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 10) (- 0 9)) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct  (=> (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false))))) (=> (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (=> (= (ControlFlow 0 6) (- 0 5)) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= true stopped@0)) (= usersInDriver@0 usersInDriver@0)) (and (and (and (= usersInDriver@0 ((as const (Array Int Bool)) false)) (= true true)) (= stoppingFlag@0 stoppingFlag@0)) (= usersInDriver@0 usersInDriver@0))))) (=> (or false (or (and (and (= stoppingFlag@0 stoppingFlag@0) (= true stopped@0)) (= usersInDriver@0 usersInDriver@0)) (and (and (and (= usersInDriver@0 ((as const (Array Int Bool)) false)) (= true true)) (= stoppingFlag@0 stoppingFlag@0)) (= usersInDriver@0 usersInDriver@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= stoppingFlag@0 stoppingFlag@0) (= true stopped@0)) (= usersInDriver@0 usersInDriver@0)))) (=> (=> false (and (and (= stoppingFlag@0 stoppingFlag@0) (= true stopped@0)) (= usersInDriver@0 usersInDriver@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (= stoppingFlag@0 stoppingFlag@0) (= true stopped@0)) (= usersInDriver@0 usersInDriver@0)) false)) (= Civl_ok@0  (or (and (and (and (= usersInDriver@0 ((as const (Array Int Bool)) false)) (= true true)) (= stoppingFlag@0 stoppingFlag@0)) (= usersInDriver@0 usersInDriver@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicWaitOnStoppingEvent$0$anon0_correct  (=> stoppingEvent@0 (and (and (and (=> (= (ControlFlow 0 12) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 12) 6) inline$Civl_NoninterferenceChecker_yield_Inv1$0$L0_correct)) (=> (= (ControlFlow 0 12) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 12) 10) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (and (and (=> stoppingEvent@0 (and stoppingFlag@0 (= usersInDriver@0 ((as const (Array Int Bool)) false)))) (= pendingIo@0 (+ (Size_98 usersInDriver@0) (ite stoppingFlag@0 0 1)))) (and (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((as const (Array T@Perm Bool)) false))) (= (ControlFlow 0 13) 12))) inline$AtomicWaitOnStoppingEvent$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (=> stoppingEvent (and stoppingFlag (= usersInDriver ((as const (Array Int Bool)) false)))) (=> (and (= pendingIo (+ (Size_98 usersInDriver) (ite stoppingFlag 0 1))) (= (ControlFlow 0 14) 13)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stoppingFlag@1 () Bool)
(declare-fun stopped@1 () Bool)
(declare-fun stopped@3 () Bool)
(declare-fun stoppingFlag@3 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_stopped@1 () Bool)
(declare-fun Civl_global_old_stoppingFlag@1 () Bool)
(declare-fun stopped@2 () Bool)
(declare-fun stoppingFlag@2 () Bool)
(declare-fun usersInDriver@3 () (Array Int Bool))
(declare-fun usersInDriver@2 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun |inline$AtomicEnter#1$0$p@2| () T@Perm)
(declare-fun usersInDriver@1 () (Array Int Bool))
(declare-fun Civl_linear_perm_available@2 () (Array T@Perm Bool))
(declare-fun stopped@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stopped () Bool)
(declare-fun stoppingFlag () Bool)
(set-info :boogie-vc-id Civl_User_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 35) (let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (= stoppingFlag@1 stoppingFlag@1)) (=> (= stoppingFlag@1 stoppingFlag@1) (=> (= (ControlFlow 0 20) (- 0 19)) (=> false true))))))
(let ((anon2_LoopBody$3_@2_anon2_LoopHead_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (=> stopped@1 stoppingFlag@1))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (=> stopped@3 stoppingFlag@3))))
(let ((Civl_UnifiedReturn_correct  (=> (= stopped@3 stopped@1) (=> (and (= stoppingFlag@3 stoppingFlag@1) (= (ControlFlow 0 15) 14)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) (or false (or (= stoppingFlag@1 stoppingFlag@1) (= stoppingFlag@1 stoppingFlag@1)))) (=> (or false (or (= stoppingFlag@1 stoppingFlag@1) (= stoppingFlag@1 stoppingFlag@1))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> false (= stoppingFlag@1 stoppingFlag@1))) (=> (=> false (= stoppingFlag@1 stoppingFlag@1)) (=> (and (and (= Civl_pc@0  (=> (= stoppingFlag@1 stoppingFlag@1) false)) (= Civl_ok@0  (or (= stoppingFlag@1 stoppingFlag@1) false))) (= (ControlFlow 0 9) (- 0 8))) Civl_ok@0)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv2$0$L0_correct  (=> (and (and (=> Civl_global_old_stopped@1 Civl_global_old_stoppingFlag@1) (= (ControlFlow 0 5) (- 0 4))) stopped@2) stoppingFlag@2)))
(let ((anon2_LoopBody$3_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= stoppingFlag@2 stoppingFlag@1) (= stopped@2 stopped@1)) (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@1) (= Civl_global_old_stopped@1 stopped@1))) (and (=> (= (ControlFlow 0 18) 5) inline$Civl_NoninterferenceChecker_yield_Inv2$0$L0_correct) (=> (= (ControlFlow 0 18) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (= usersInDriver@3 (store usersInDriver@2 i false)) (and (and (=> (= (ControlFlow 0 22) 17) anon2_LoopBody$3_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 22) 18) anon2_LoopBody$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 22) 20) Civl_UnchangedChecker_correct)))))
(let ((anon2_LoopBody$2_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (and (= |inline$AtomicEnter#1$0$p@2| (Right i)) (<= 1 i)) (select usersInDriver@2 i))) (=> (and (and (= |inline$AtomicEnter#1$0$p@2| (Right i)) (<= 1 i)) (select usersInDriver@2 i)) (=> (= (ControlFlow 0 23) 22) inline$AtomicExit$0$anon0_correct)))))
(let ((anon2_LoopBody$1_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (not stopped@1)) (=> (not stopped@1) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (and (= |inline$AtomicEnter#1$0$p@2| (Right i)) (<= 1 i)) (select usersInDriver@2 i))) (=> (and (and (= |inline$AtomicEnter#1$0$p@2| (Right i)) (<= 1 i)) (select usersInDriver@2 i)) (=> (= (ControlFlow 0 25) 23) anon2_LoopBody$2_correct)))))))
(let ((|inline$AtomicEnter#1$0$anon0_correct|  (=> (and (and (not stoppingFlag@1) (= usersInDriver@2 (store usersInDriver@1 i true))) (and (= |inline$AtomicEnter#1$0$p@2| (Right i)) (= (ControlFlow 0 28) 25))) anon2_LoopBody$1_correct)))
(let ((anon2_LoopBody_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (<= 1 i)) (=> (<= 1 i) (=> (= (ControlFlow 0 29) 28) |inline$AtomicEnter#1$0$anon0_correct|)))))
(let ((anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= stoppingFlag@2 stoppingFlag@1) (= stopped@2 stopped@1)) (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@1) (= Civl_global_old_stopped@1 stopped@1))) (and (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_yield_Inv2$0$L0_correct) (=> (= (ControlFlow 0 12) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon2_LoopHead_correct  (=> (and (and (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@1) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |51|
)) (or false true)) (and (=> stopped@1 stoppingFlag@1) (= Civl_linear_perm_available@2 ((_ map or) (|lambda#0| usersInDriver@1) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))))) (and (and (and (=> (= (ControlFlow 0 31) 29) anon2_LoopBody_correct) (=> (= (ControlFlow 0 31) 9) Civl_ReturnChecker_correct)) (=> (= (ControlFlow 0 31) 15) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 31) 12) anon2_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_@2_anon2_LoopHead_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (=> stopped@0 stoppingFlag@0)) (=> (=> stopped@0 stoppingFlag@0) (=> (= (ControlFlow 0 32) 31) anon2_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= stoppingFlag@2 stoppingFlag@0) (= stopped@2 stopped@0)) (and (= Civl_global_old_stoppingFlag@1 stoppingFlag@0) (= Civl_global_old_stopped@1 stopped@0))) (and (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_yield_Inv2$0$L0_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= stoppingFlag@0 stoppingFlag@0) (= stoppingFlag@0 stoppingFlag@0)))) (=> (or false (or (= stoppingFlag@0 stoppingFlag@0) (= stoppingFlag@0 stoppingFlag@0))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= stoppingFlag@0 stoppingFlag@0)))))))
(let ((anon0_correct  (=> (and (and (exists ((Civl_partition_perm@@0 (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm@@0 ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |49|
)) (<= 1 i)) (and (=> stopped@0 stoppingFlag@0) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false)))))) (and (and (=> (= (ControlFlow 0 34) 32) anon0_@2_anon2_LoopHead_correct) (=> (= (ControlFlow 0 34) 7) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 34) 2) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (<= 1 i) (=> (and (=> stopped stoppingFlag) (= (ControlFlow 0 35) 34)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stopped@0 () Bool)
(declare-fun stoppingFlag@0 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun Civl_linear_perm_available@0 () (Array T@Perm Bool))
(declare-fun stopped () Bool)
(declare-fun stoppingFlag () Bool)
(set-info :boogie-vc-id Civl_Stopper_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (=> true true))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Inv2$0$L0_correct  (=> (and (and (=> stopped@0 stoppingFlag@0) (= (ControlFlow 0 6) (- 0 5))) true) true)))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= true stoppingFlag@0) (= true true)))) (=> (or false (or (= true stoppingFlag@0) (= true true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= true stoppingFlag@0))) (=> (=> false (= true stoppingFlag@0)) (=> (and (and (= Civl_pc@0  (=> (= true stoppingFlag@0) false)) (= Civl_ok@0  (or (= true true) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicWaitAndStop$0$anon0_correct  (=> (= usersInDriver@0 ((as const (Array Int Bool)) false)) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_Inv2$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct)))))
(let ((anon0_correct  (=> (exists ((Civl_partition_perm (Array T@Perm Int)) ) (!  (and (= ((_ map =>) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)) (= ((_ map =>) (|lambda#0| usersInDriver@0) ((_ map (= (Int Int) Bool)) Civl_partition_perm ((as const (Array T@Perm Int)) 1))) ((as const (Array T@Perm Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |50|
)) (=> (and (= i 0) (=> stopped@0 stoppingFlag@0)) (=> (and (and (= i 0) (not stoppingFlag@0)) (= Civl_linear_perm_available@0 ((_ map or) (|lambda#0| usersInDriver@0) ((_ map or) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Bool)) false))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (= i 0) (not stoppingFlag@0))) (=> (and (= i 0) (not stoppingFlag@0)) (=> (= (ControlFlow 0 11) 10) inline$AtomicWaitAndStop$0$anon0_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= i 0) (=> (and (=> stopped stoppingFlag) (= (ControlFlow 0 13) 11)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$AtomicEnter#1$0$p@1| () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun usersInDriver () (Array Int Bool))
(declare-fun stoppingFlag () Bool)
(set-info :boogie-vc-id |Civl_LinearityChecker_AtomicEnter#1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((|inline$AtomicEnter#1$0$Return_correct|  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Perm Bool)) false) |inline$AtomicEnter#1$0$p@1| true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver@0) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)))) ((as const (Array T@Perm Bool)) true)))))
(let ((|inline$AtomicEnter#1$0$anon0_correct|  (=> (and (and (not stoppingFlag) (= usersInDriver@0 (store usersInDriver i true))) (and (= |inline$AtomicEnter#1$0$p@1| (Right i)) (= (ControlFlow 0 3) 2))) |inline$AtomicEnter#1$0$Return_correct|)))
(let ((|inline$AtomicEnter#1$0$Entry_correct|  (=> (and (<= 1 i) (= (ControlFlow 0 4) 3)) |inline$AtomicEnter#1$0$anon0_correct|)))
|inline$AtomicEnter#1$0$Entry_correct|))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun p@@0 () T@Perm)
(declare-fun stopped () Bool)
(declare-fun i () Int)
(declare-fun usersInDriver () (Array Int Bool))
(set-info :boogie-vc-id |Civl_LinearityChecker_AtomicCheckAssert#1|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((|inline$AtomicCheckAssert#1$0$Return_correct|  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)))))
(let ((|inline$AtomicCheckAssert#1$0$Entry_correct|  (=> (not stopped) (=> (and (and (and (= p@@0 (Right i)) (<= 1 i)) (select usersInDriver i)) (= (ControlFlow 0 3) 2)) |inline$AtomicCheckAssert#1$0$Return_correct|))))
|inline$AtomicCheckAssert#1$0$Entry_correct|)))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun p@@0 () T@Perm)
(declare-fun usersInDriver () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicExit)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicExit$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver@0) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)))) ((as const (Array T@Perm Bool)) true)))))
(let ((inline$AtomicExit$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver i false)) (= (ControlFlow 0 3) 2)) inline$AtomicExit$0$Return_correct)))
(let ((inline$AtomicExit$0$Entry_correct  (=> (and (and (and (= p@@0 (Right i)) (<= 1 i)) (select usersInDriver i)) (= (ControlFlow 0 4) 3)) inline$AtomicExit$0$anon0_correct)))
inline$AtomicExit$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun stoppingFlag () Bool)
(declare-fun pendingIo@0 () Int)
(declare-fun pendingIo () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicEnter)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicEnter$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)))))
(let ((inline$AtomicEnter$0$anon0_correct  (=> (not stoppingFlag) (=> (and (= pendingIo@0 (+ pendingIo 1)) (= (ControlFlow 0 3) 2)) inline$AtomicEnter$0$Return_correct))))
(let ((inline$AtomicEnter$0$Entry_correct  (=> (and (<= 1 i) (= (ControlFlow 0 4) 3)) inline$AtomicEnter$0$anon0_correct)))
inline$AtomicEnter$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun stoppingFlag () Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSetStoppingFlag)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$AtomicSetStoppingFlag$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((as const (Array T@Perm Bool)) true)))))
(let ((inline$AtomicSetStoppingFlag$0$Entry_correct  (=> (and (and (= i 0) (not stoppingFlag)) (= (ControlFlow 0 3) 2)) inline$AtomicSetStoppingFlag$0$Return_correct)))
inline$AtomicSetStoppingFlag$0$Entry_correct)))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AddToBarrier$0$p@1 () T@Perm)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun usersInDriver () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AddToBarrier)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AddToBarrier$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Perm Bool)) false) inline$AddToBarrier$0$p@1 true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver@0) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)))) ((as const (Array T@Perm Bool)) true)))))
(let ((inline$AddToBarrier$0$anon0_correct  (=> (= usersInDriver@0 (store usersInDriver i true)) (=> (and (= inline$AddToBarrier$0$p@1 (Right i)) (= (ControlFlow 0 3) 2)) inline$AddToBarrier$0$Return_correct))))
(let ((inline$AddToBarrier$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AddToBarrier$0$anon0_correct)))
inline$AddToBarrier$0$Entry_correct))))
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
(declare-datatypes ((T@Perm 0)) (((Left (|i#Left| Int) ) (Right (|i#Right| Int) ) ) ))
(declare-fun |lambda#0| ((Array Int Bool)) (Array T@Perm Bool))
(declare-fun Identity () (Array Int Int))
(declare-fun Size_98 ((Array Int Bool)) Int)
(assert (forall ((|l#0| (Array Int Bool)) (p T@Perm) ) (! (= (select (|lambda#0| |l#0|) p)  (and (is-Left p) (select |l#0| (|i#Left| p))))
 :qid |bluetoothbpl.23:53|
 :skolemid |52|
 :pattern ( (select (|lambda#0| |l#0|) p))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |1|
)))
(assert (forall ((set (Array Int Bool)) ) (! (>= (Size_98 set) 0)
 :qid |bluetoothbpl.29:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun usersInDriver@0 () (Array Int Bool))
(declare-fun p@@0 () T@Perm)
(declare-fun usersInDriver () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_RemoveFromBarrier)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RemoveFromBarrier$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store (store ((as const (Array T@Perm Bool)) false) (Left i) true) (Right i) true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver@0) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Perm Bool)) false) p@@0 true) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (|lambda#0| usersInDriver) ((as const (Array T@Perm Int)) 1) ((as const (Array T@Perm Int)) 0)))) ((as const (Array T@Perm Bool)) true)))))
(let ((inline$RemoveFromBarrier$0$anon0_correct  (=> (and (= usersInDriver@0 (store usersInDriver i false)) (= (ControlFlow 0 3) 2)) inline$RemoveFromBarrier$0$Return_correct)))
(let ((inline$RemoveFromBarrier$0$Entry_correct  (=> (and (and (= p@@0 (Right i)) (select usersInDriver i)) (= (ControlFlow 0 4) 3)) inline$RemoveFromBarrier$0$anon0_correct)))
inline$RemoveFromBarrier$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
