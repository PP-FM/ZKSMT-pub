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
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_i () Int)
(declare-fun Addrs@1 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AddAddr_RemoveAddr_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RemoveAddr_1$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@1 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (= Addrs@1 (store (store Addrs second_i false) first_i true))))))
(let ((inline$RemoveAddr_1$0$anon0_correct  (=> (and (= Addrs@1 (store Addrs@0 second_i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_1$0$Return_correct)))
(let ((inline$AddAddr$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs first_i true)) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_1$0$anon0_correct)))
(let ((inline$AddAddr$0$Entry_correct  (=> (exists ((Civl_partition_addr@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs ((_ map (= (Int Int) Bool)) Civl_partition_addr@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (select Addrs second_i) (= (ControlFlow 0 5) 4)) inline$AddAddr$0$anon0_correct))))
inline$AddAddr$0$Entry_correct)))))
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
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun second_i () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RemoveAddr_1_AddAddr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AddAddr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@0 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (select Addrs@0 first_i)))))
(let ((inline$AddAddr$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs second_i true)) (= (ControlFlow 0 3) 2)) inline$AddAddr$0$Return_correct)))
(let ((inline$AddAddr$0$Entry_correct  (=> (exists ((Civl_partition_addr@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs ((_ map (= (Int Int) Bool)) Civl_partition_addr@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (select Addrs first_i) (= (ControlFlow 0 4) 3)) inline$AddAddr$0$anon0_correct))))
inline$AddAddr$0$Entry_correct))))
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
(declare-fun second_i () Int)
(declare-fun Addrs@1 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AddAddr_RemoveAddr_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RemoveAddr_2$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@1 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (= Addrs@1 (store (store Addrs second_i false) first_i true))))))
(let ((inline$RemoveAddr_2$0$anon0_correct  (=> (and (= Addrs@1 (store Addrs@0 second_i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_2$0$Return_correct)))
(let ((inline$AddAddr$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs first_i true)) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_2$0$anon0_correct)))
(let ((inline$AddAddr$0$Entry_correct  (=> (and (exists ((Civl_partition_addr@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs ((_ map (= (Int Int) Bool)) Civl_partition_addr@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (= (ControlFlow 0 5) 4)) inline$AddAddr$0$anon0_correct)))
inline$AddAddr$0$Entry_correct)))))
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
(declare-fun second_i () Int)
(declare-fun Addrs@1 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_RemoveAddr_1_RemoveAddr_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RemoveAddr_1$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@1 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (= Addrs@1 (store (store Addrs second_i false) first_i false))))))
(let ((inline$RemoveAddr_1$1$anon0_correct  (=> (and (= Addrs@1 (store Addrs@0 second_i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_1$1$Return_correct)))
(let ((inline$RemoveAddr_1$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs first_i false)) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_1$1$anon0_correct)))
(let ((inline$RemoveAddr_1$0$Entry_correct  (=> (select Addrs first_i) (=> (and (select Addrs second_i) (= (ControlFlow 0 5) 4)) inline$RemoveAddr_1$0$anon0_correct))))
inline$RemoveAddr_1$0$Entry_correct)))))
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
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun second_i () Int)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RemoveAddr_1_RemoveAddr_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RemoveAddr_1$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@0 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (select Addrs@0 first_i)))))
(let ((inline$RemoveAddr_1$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs second_i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_1$0$Return_correct)))
(let ((inline$RemoveAddr_1$0$Entry_correct  (=> (select Addrs first_i) (=> (and (select Addrs second_i) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_1$0$anon0_correct))))
inline$RemoveAddr_1$0$Entry_correct))))
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
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun second_i () Int)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_RemoveAddr_1_RemoveAddr_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RemoveAddr_1$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@0 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (not (select Addrs@0 first_i))))))
(let ((inline$RemoveAddr_1$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs second_i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_1$0$Return_correct)))
(let ((inline$RemoveAddr_1$0$Entry_correct  (=> (not (select Addrs first_i)) (=> (and (select Addrs second_i) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_1$0$anon0_correct))))
inline$RemoveAddr_1$0$Entry_correct))))
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
(declare-fun second_i () Int)
(declare-fun Addrs@1 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(declare-fun first_i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_RemoveAddr_2_RemoveAddr_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RemoveAddr_2$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_addr (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_i true) ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Addrs@1 ((_ map (= (Int Int) Bool)) Civl_partition_addr ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (= Addrs@1 (store (store Addrs second_i false) first_i false))))))
(let ((inline$RemoveAddr_2$1$anon0_correct  (=> (and (= Addrs@1 (store Addrs@0 second_i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_2$1$Return_correct)))
(let ((inline$RemoveAddr_2$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs first_i false)) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_2$1$anon0_correct)))
(let ((inline$RemoveAddr_2$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$RemoveAddr_2$0$anon0_correct)))
inline$RemoveAddr_2$0$Entry_correct)))))
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
(declare-fun Addrs@0 () (Array Int Bool))
(declare-fun i () Int)
(declare-fun Addrs () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AddAddr)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AddAddr$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) Addrs@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) Addrs ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$AddAddr$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs i true)) (= (ControlFlow 0 3) 2)) inline$AddAddr$0$Return_correct)))
(let ((inline$AddAddr$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AddAddr$0$anon0_correct)))
inline$AddAddr$0$Entry_correct))))
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
(declare-fun i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_RemoveAddr_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RemoveAddr_1$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) Addrs@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) Addrs ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$RemoveAddr_1$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_1$0$Return_correct)))
(let ((inline$RemoveAddr_1$0$Entry_correct  (=> (and (select Addrs i) (= (ControlFlow 0 4) 3)) inline$RemoveAddr_1$0$anon0_correct)))
inline$RemoveAddr_1$0$Entry_correct))))
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
(declare-fun i () Int)
(declare-fun Addrs@0 () (Array Int Bool))
(declare-fun Addrs () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_RemoveAddr_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RemoveAddr_2$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) i true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) Addrs@0 ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (ite (Bool Int Int) Int)) Addrs ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$RemoveAddr_2$0$anon0_correct  (=> (and (= Addrs@0 (store Addrs i false)) (= (ControlFlow 0 3) 2)) inline$RemoveAddr_2$0$Return_correct)))
(let ((inline$RemoveAddr_2$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$RemoveAddr_2$0$anon0_correct)))
inline$RemoveAddr_2$0$Entry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
