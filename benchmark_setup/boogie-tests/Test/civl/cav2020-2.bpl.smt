(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l () T@Option_1882)
(declare-fun second_tid () T@Tid)
(declare-fun l@1 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun l@0 () T@Option_1882)
(set-info :boogie-vc-id Civl_CommutativityChecker_AcquireSpec_AcquireSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AcquireSpec$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= l None_1882) (= (Some_1882 second_tid) None_1882)) (= l@1 (Some_1882 first_tid)))))))
(let ((inline$AcquireSpec$1$anon0_correct  (=> (= l@0 None_1882) (=> (and (= l@1 (Some_1882 second_tid)) (= (ControlFlow 0 3) 2)) inline$AcquireSpec$1$Return_correct))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l None_1882) (=> (and (= l@0 (Some_1882 first_tid)) (= (ControlFlow 0 4) 3)) inline$AcquireSpec$1$anon0_correct))))
(let ((inline$AcquireSpec$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (= (ControlFlow 0 5) 4)) inline$AcquireSpec$0$anon0_correct)))
inline$AcquireSpec$0$Entry_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@1 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun l () T@Option_1882)
(declare-fun l@0 () T@Option_1882)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_AcquireSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= None_1882 None_1882) (= l@1 (Some_1882 first_tid)))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@1 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l None_1882) (=> (and (= l@0 (Some_1882 first_tid)) (= (ControlFlow 0 4) 3)) inline$ReleaseSpec$0$anon0_correct))))
(let ((inline$AcquireSpec$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 5) 4)) inline$AcquireSpec$0$anon0_correct))))
inline$AcquireSpec$0$Entry_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun l () T@Option_1882)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_ReleaseSpec_AcquireSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AcquireSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@0 (Some_1882 first_tid))))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l None_1882) (=> (and (= l@0 (Some_1882 second_tid)) (= (ControlFlow 0 3) 2)) inline$AcquireSpec$0$Return_correct))))
(let ((inline$AcquireSpec$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (=> (and (= l (Some_1882 first_tid)) (= (ControlFlow 0 4) 3)) inline$AcquireSpec$0$anon0_correct))))
inline$AcquireSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun l () T@Option_1882)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_ReadSpec_AcquireSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AcquireSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@0 (Some_1882 first_tid))))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l None_1882) (=> (and (= l@0 (Some_1882 second_tid)) (= (ControlFlow 0 3) 2)) inline$AcquireSpec$0$Return_correct))))
(let ((inline$AcquireSpec$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (=> (and (= l (Some_1882 first_tid)) (= (ControlFlow 0 4) 3)) inline$AcquireSpec$0$anon0_correct))))
inline$AcquireSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun l () T@Option_1882)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WriteSpec_AcquireSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AcquireSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@0 (Some_1882 first_tid))))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l None_1882) (=> (and (= l@0 (Some_1882 second_tid)) (= (ControlFlow 0 3) 2)) inline$AcquireSpec$0$Return_correct))))
(let ((inline$AcquireSpec$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (=> (and (= l (Some_1882 first_tid)) (= (ControlFlow 0 4) 3)) inline$AcquireSpec$0$anon0_correct))))
inline$AcquireSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@1 () T@Option_1882)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_CommutativityChecker_ReleaseSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ReleaseSpec$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@1 None_1882)))))
(let ((inline$ReleaseSpec$1$anon0_correct  (=> (and (= l@1 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$1$Return_correct)))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 4) 3)) inline$ReleaseSpec$1$anon0_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 5) 4))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_GatePreservationChecker_ReleaseSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@0 (Some_1882 first_tid))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 4) 3))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_ReleaseSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= l@0 (Some_1882 first_tid)))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (not (= l (Some_1882 first_tid)))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 4) 3))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_GatePreservationChecker_ReadSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@0 (Some_1882 first_tid))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 4) 3))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_GatePreservationChecker_WriteSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= l@0 (Some_1882 first_tid))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 4) 3))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_ReadSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= l@0 (Some_1882 first_tid)))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (not (= l (Some_1882 first_tid)))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 4) 3))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_v () Int)
(declare-fun count () Int)
(declare-fun l () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ReadSpec_WriteSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WriteSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_v second_v) (= count second_v)) (= l l))))))
(let ((inline$ReadSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 3) 2))) inline$WriteSpec$0$Return_correct)))
inline$ReadSpec$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_WriteSpec_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= l@0 (Some_1882 first_tid)))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (not (= l (Some_1882 first_tid)))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 4) 3))) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_v () Int)
(declare-fun count () Int)
(declare-fun l () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WriteSpec_ReadSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$ReadSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= first_v count) (= first_v first_v)) (= l l))))))
(let ((inline$WriteSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 3) 2))) inline$ReadSpec$0$Return_correct)))
inline$WriteSpec$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun second_v () Int)
(declare-fun first_v () Int)
(declare-fun l () T@Option_1882)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_WriteSpec_WriteSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WriteSpec$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= second_v first_v) (= l l))))))
(let ((inline$WriteSpec$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (= l (Some_1882 first_tid))) (and (= l (Some_1882 second_tid)) (= (ControlFlow 0 3) 2))) inline$WriteSpec$1$Return_correct)))
inline$WriteSpec$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@6 () Bool)
(declare-fun l@6 () T@Option_1882)
(declare-fun l@4 () T@Option_1882)
(declare-fun b@4 () Bool)
(declare-fun Civl_global_old_b@0 () Bool)
(declare-fun Civl_global_old_l@0 () T@Option_1882)
(declare-fun b@5 () Bool)
(declare-fun l@5 () T@Option_1882)
(declare-fun b@3 () Bool)
(declare-fun l@3 () T@Option_1882)
(declare-fun Civl_linear_tid_available@4 () (Array T@Tid Bool))
(declare-fun tid () T@Tid)
(declare-fun b@2 () Bool)
(declare-fun l@2 () T@Option_1882)
(declare-fun b@1 () Bool)
(declare-fun l@1 () T@Option_1882)
(declare-fun b@0 () Bool)
(declare-fun l@0 () T@Option_1882)
(declare-fun call1formal@Civl_0_v@0 () Int)
(declare-fun call4formal@Civl_0_v@0 () Int)
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@1 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun b () Bool)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_Incr_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (= b@6 (not (= l@6 None_1882))))))
(let ((Civl_UnifiedReturn_correct  (=> (= l@6 l@4) (=> (and (= b@6 b@4) (= (ControlFlow 0 13) 12)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct true))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct  (=> (and (= Civl_global_old_b@0 (not (= Civl_global_old_l@0 None_1882))) (= (ControlFlow 0 3) (- 0 2))) (= b@5 (not (= l@5 None_1882))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@4) (= l@5 l@4)) (and (= Civl_global_old_b@0 b@4) (= Civl_global_old_l@0 l@4))) (and (=> (= (ControlFlow 0 10) 3) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 10) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (= b@3 (not (= l@3 None_1882)))) (=> (= b@3 (not (= l@3 None_1882))) (=> (and (= b@4 (not (= l@4 None_1882))) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 14) 9) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 14) 13) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 14) 10) anon0_0_@2_Civl_NoninterferenceChecker_correct)))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@3) (= l@5 l@3)) (and (= Civl_global_old_b@0 b@3) (= Civl_global_old_l@0 l@3))) (and (=> (= (ControlFlow 0 8) 3) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 8) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_2_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@2) (= l@5 l@2)) (and (= Civl_global_old_b@0 b@2) (= Civl_global_old_l@0 l@2))) (and (=> (= (ControlFlow 0 7) 3) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 7) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_3_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@1) (= l@5 l@1)) (and (= Civl_global_old_b@0 b@1) (= Civl_global_old_l@0 l@1))) (and (=> (= (ControlFlow 0 6) 3) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 6) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@0) (= l@5 l@0)) (and (= Civl_global_old_b@0 b@0) (= Civl_global_old_l@0 l@0))) (and (=> (= (ControlFlow 0 5) 3) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 5) 4) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon0_1_correct  (=> (= call1formal@Civl_0_v@0 (+ call4formal@Civl_0_v@0 1)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (= b@2 (not (= l@2 None_1882)))) (=> (= b@2 (not (= l@2 None_1882))) (=> (and (= b@3 (not (= l@3 None_1882))) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 16) 14) anon0_0_correct) (=> (= (ControlFlow 0 16) 8) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 16) 1) Civl_RefinementChecker_correct))))))))
(let ((anon0_2_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (= b@1 (not (= l@1 None_1882)))) (=> (= b@1 (not (= l@1 None_1882))) (=> (and (= b@2 (not (= l@2 None_1882))) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 18) 16) anon0_1_correct) (=> (= (ControlFlow 0 18) 7) anon0_2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 18) 1) Civl_RefinementChecker_correct)))))))
(let ((anon0_3_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (= b@0 (not (= l@0 None_1882)))) (=> (= b@0 (not (= l@0 None_1882))) (=> (and (= b@1 (not (= l@1 None_1882))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 20) 18) anon0_2_correct) (=> (= (ControlFlow 0 20) 6) anon0_3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 1) Civl_RefinementChecker_correct)))))))
(let ((anon0_correct  (=> (and (= b@0 (not (= l@0 None_1882))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 22) 20) anon0_3_correct) (=> (= (ControlFlow 0 22) 5) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 22) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= b (not (= l None_1882))) (= (ControlFlow 0 23) 22)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@6 () Bool)
(declare-fun l@7 () T@Option_1882)
(declare-fun l@5 () T@Option_1882)
(declare-fun b@4 () Bool)
(declare-fun b@1 () Bool)
(declare-fun inline$set_l$0$v@0 () T@Option_1882)
(declare-fun b@2 () Bool)
(declare-fun l@1 () T@Option_1882)
(declare-fun Civl_pc@0 () Bool)
(declare-fun count@3 () Int)
(declare-fun Civl_global_old_count@0 () Int)
(declare-fun l@4 () T@Option_1882)
(declare-fun Civl_global_old_l@0 () T@Option_1882)
(declare-fun tid () T@Tid)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun count@0 () Int)
(declare-fun l@0 () T@Option_1882)
(declare-fun count@1 () Int)
(declare-fun count@2 () Int)
(declare-fun l@3 () T@Option_1882)
(declare-fun l@2 () T@Option_1882)
(declare-fun Civl_global_old_b@0 () Bool)
(declare-fun Civl_global_old_l@1 () T@Option_1882)
(declare-fun b@5 () Bool)
(declare-fun l@6 () T@Option_1882)
(declare-fun b@0 () Bool)
(declare-fun inline$atomic_CAS$0$success@1 () Bool)
(declare-fun Civl_linear_tid_available@1 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun b () Bool)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_Acquire_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 34) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (= b@6 (not (= l@7 None_1882))))))
(let ((Civl_UnifiedReturn_correct  (=> (= l@7 l@5) (=> (and (= b@6 b@4) (= (ControlFlow 0 19) 18)) GeneratedUnifiedExit_correct))))
(let ((anon3_Then$1_@2_Civl_UnifiedReturn_correct  (=> (= b@4 b@1) (=> (and (= l@5 inline$set_l$0$v@0) (= (ControlFlow 0 26) 19)) Civl_UnifiedReturn_correct))))
(let ((anon3_Else_0_@2_Civl_UnifiedReturn_correct  (=> (= b@4 b@2) (=> (and (= l@5 l@1) (= (ControlFlow 0 20) 19)) Civl_UnifiedReturn_correct))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) (or Civl_pc@0 (or (and (= count@3 Civl_global_old_count@0) (= l@4 Civl_global_old_l@0)) (and (and (= Civl_global_old_l@0 None_1882) (= l@4 (Some_1882 tid))) (= count@3 Civl_global_old_count@0))))) (=> (or Civl_pc@0 (or (and (= count@3 Civl_global_old_count@0) (= l@4 Civl_global_old_l@0)) (and (and (= Civl_global_old_l@0 None_1882) (= l@4 (Some_1882 tid))) (= count@3 Civl_global_old_count@0)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> Civl_pc@0 (and (= count@3 Civl_global_old_count@0) (= l@4 Civl_global_old_l@0)))) (=> (=> Civl_pc@0 (and (= count@3 Civl_global_old_count@0) (= l@4 Civl_global_old_l@0))) (=> (and (and (= Civl_pc@1  (=> (and (= count@3 Civl_global_old_count@0) (= l@4 Civl_global_old_l@0)) Civl_pc@0)) (= Civl_ok@1  (or (and (and (= Civl_global_old_l@0 None_1882) (= l@4 (Some_1882 tid))) (= count@3 Civl_global_old_count@0)) Civl_ok@0))) (= (ControlFlow 0 9) (- 0 8))) Civl_ok@1)))))))
(let ((anon3_Then$1_@2_Civl_ReturnChecker_correct  (=> (= count@3 count@0) (=> (and (= l@4 inline$set_l$0$v@0) (= Civl_global_old_count@0 count@0)) (=> (and (and (= Civl_global_old_l@0 l@0) (= Civl_pc@0 false)) (and (= Civl_ok@0 false) (= (ControlFlow 0 25) 9))) Civl_ReturnChecker_correct)))))
(let ((anon3_Else_0_@2_Civl_ReturnChecker_correct  (=> (= count@3 count@1) (=> (and (= l@4 l@1) (= Civl_global_old_count@0 count@1)) (=> (and (and (= Civl_global_old_l@0 l@1) (= Civl_pc@0 true)) (and (= Civl_ok@0 true) (= (ControlFlow 0 15) 9))) Civl_ReturnChecker_correct)))))
(let ((inline$AcquireSpec$0$Return_correct  (=> (= count@3 count@2) (=> (and (= l@4 l@3) (= Civl_global_old_count@0 count@2)) (=> (and (and (= Civl_global_old_l@0 l@2) (= Civl_pc@0 false)) (and (= Civl_ok@0 false) (= (ControlFlow 0 12) 9))) Civl_ReturnChecker_correct)))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l@2 None_1882) (=> (and (= l@3 (Some_1882 tid)) (= (ControlFlow 0 13) 12)) inline$AcquireSpec$0$Return_correct))))
(let ((Civl_call_refinement_0_correct  (=> (and (or false true) (= (ControlFlow 0 14) 13)) inline$AcquireSpec$0$anon0_correct)))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct  (=> (and (= Civl_global_old_b@0 (not (= Civl_global_old_l@1 None_1882))) (= (ControlFlow 0 5) (- 0 4))) (= b@5 (not (= l@6 None_1882))))))
(let ((anon3_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@1) (= l@6 inline$set_l$0$v@0)) (and (= Civl_global_old_b@0 b@0) (= Civl_global_old_l@1 l@0))) (and (=> (= (ControlFlow 0 27) 5) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 27) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((inline$set_l$0$Entry_correct  (=> (= inline$set_l$0$v@0 (Some_1882 tid)) (and (and (=> (= (ControlFlow 0 28) 25) anon3_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 28) 26) anon3_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 28) 27) anon3_Then$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon3_Then_correct  (=> (and inline$atomic_CAS$0$success@1 (= (ControlFlow 0 29) 28)) inline$set_l$0$Entry_correct)))
(let ((anon3_Else_0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@2) (= l@6 l@1)) (and (= Civl_global_old_b@0 b@2) (= Civl_global_old_l@1 l@1))) (and (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 16) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon3_Else_0_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= b@1 (not (= l@0 None_1882)))) (=> (= b@1 (not (= l@0 None_1882))) (=> (= b@2 (not (= l@1 None_1882))) (=> (and (or true true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 21) 15) anon3_Else_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 21) 20) anon3_Else_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 21) 16) anon3_Else_0_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon3_Else_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= b@5 b@1) (= l@6 l@0)) (and (= Civl_global_old_b@0 b@0) (= Civl_global_old_l@1 l@0))) (and (=> (= (ControlFlow 0 7) 5) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct) (=> (= (ControlFlow 0 7) 6) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= count@0 count@0) (= l@0 l@0)) (and (and (= l@0 None_1882) (= l@0 (Some_1882 tid))) (= count@0 count@0))))) (=> (or false (or (and (= count@0 count@0) (= l@0 l@0)) (and (and (= l@0 None_1882) (= l@0 (Some_1882 tid))) (= count@0 count@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= count@0 count@0) (= l@0 l@0))))))))
(let ((anon3_Else_correct  (=> (not inline$atomic_CAS$0$success@1) (and (and (and (=> (= (ControlFlow 0 24) 21) anon3_Else_0_correct) (=> (= (ControlFlow 0 24) 14) Civl_call_refinement_0_correct)) (=> (= (ControlFlow 0 24) 7) anon3_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 24) 2) Civl_RefinementChecker_correct)))))
(let ((inline$atomic_CAS$0$anon2_Else_correct  (=> (and (not inline$atomic_CAS$0$success@1) (= b@1 b@0)) (and (=> (= (ControlFlow 0 31) 29) anon3_Then_correct) (=> (= (ControlFlow 0 31) 24) anon3_Else_correct)))))
(let ((inline$atomic_CAS$0$anon2_Then_correct  (=> (and inline$atomic_CAS$0$success@1 (= b@1 true)) (and (=> (= (ControlFlow 0 30) 29) anon3_Then_correct) (=> (= (ControlFlow 0 30) 24) anon3_Else_correct)))))
(let ((inline$atomic_CAS$0$anon0_correct  (=> (= inline$atomic_CAS$0$success@1 (= b@0 false)) (and (=> (= (ControlFlow 0 32) 30) inline$atomic_CAS$0$anon2_Then_correct) (=> (= (ControlFlow 0 32) 31) inline$atomic_CAS$0$anon2_Else_correct)))))
(let ((anon0_correct  (=> (= b@0 (not (= l@0 None_1882))) (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (= (ControlFlow 0 33) 32)) inline$atomic_CAS$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= b (not (= l None_1882))) (= (ControlFlow 0 34) 33)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@1 () Bool)
(declare-fun inline$set_l$0$v@0 () T@Option_1882)
(declare-fun b@0 () Bool)
(declare-fun l@0 () T@Option_1882)
(declare-fun count@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$atomic_CAS$0$success@1 () Bool)
(declare-fun tid () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun b () Bool)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_Release_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (= b@1 (not (= inline$set_l$0$v@0 None_1882))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct  (=> (and (= b@0 (not (= l@0 None_1882))) (= (ControlFlow 0 6) (- 0 5))) (= b@1 (not (= inline$set_l$0$v@0 None_1882))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= count@0 count@0) (= inline$set_l$0$v@0 l@0)) (and (= inline$set_l$0$v@0 None_1882) (= count@0 count@0))))) (=> (or false (or (and (= count@0 count@0) (= inline$set_l$0$v@0 l@0)) (and (= inline$set_l$0$v@0 None_1882) (= count@0 count@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= count@0 count@0) (= inline$set_l$0$v@0 l@0)))) (=> (=> false (and (= count@0 count@0) (= inline$set_l$0$v@0 l@0))) (=> (and (and (= Civl_pc@0  (=> (and (= count@0 count@0) (= inline$set_l$0$v@0 l@0)) false)) (= Civl_ok@0  (or (and (= inline$set_l$0$v@0 None_1882) (= count@0 count@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$set_l$0$Entry_correct  (=> (= inline$set_l$0$v@0 None_1882) (and (and (and (=> (= (ControlFlow 0 10) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 10) 6) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct)) (=> (= (ControlFlow 0 10) 7) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 10) 9) GeneratedUnifiedExit_correct)))))
(let ((inline$atomic_CAS$0$anon2_Else_correct  (=> (not inline$atomic_CAS$0$success@1) (=> (and (= b@1 b@0) (= (ControlFlow 0 12) 10)) inline$set_l$0$Entry_correct))))
(let ((inline$atomic_CAS$0$anon2_Then_correct  (=> inline$atomic_CAS$0$success@1 (=> (and (= b@1 false) (= (ControlFlow 0 11) 10)) inline$set_l$0$Entry_correct))))
(let ((inline$atomic_CAS$0$anon0_correct  (=> (= inline$atomic_CAS$0$success@1 (= b@0 true)) (and (=> (= (ControlFlow 0 13) 11) inline$atomic_CAS$0$anon2_Then_correct) (=> (= (ControlFlow 0 13) 12) inline$atomic_CAS$0$anon2_Else_correct)))))
(let ((anon0_correct  (=> (and (and (= b@0 (not (= l@0 None_1882))) (= l@0 (Some_1882 tid))) (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (= (ControlFlow 0 14) 13))) inline$atomic_CAS$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= b (not (= l None_1882))) (= (ControlFlow 0 15) 14)) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun l@0 () T@Option_1882)
(declare-fun count@0 () Int)
(declare-fun v () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_Read_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct  (=> (and (= b@0 (not (= l@0 None_1882))) (= (ControlFlow 0 6) (- 0 5))) (= b@0 (not (= l@0 None_1882))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= count@0 count@0) (= l@0 l@0)) (and (and (= count@0 count@0) (= count@0 count@0)) (= l@0 l@0))))) (=> (or false (or (and (= count@0 count@0) (= l@0 l@0)) (and (and (= count@0 count@0) (= count@0 count@0)) (= l@0 l@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= count@0 count@0) (= l@0 l@0)) (= count@0 v)))) (=> (=> false (and (and (= count@0 count@0) (= l@0 l@0)) (= count@0 v))) (=> (and (and (= Civl_pc@0  (=> (and (= count@0 count@0) (= l@0 l@0)) false)) (= Civl_ok@0  (or (and (and (= count@0 count@0) (= count@0 count@0)) (= l@0 l@0)) (and (= count@0 v) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (= l@0 (Some_1882 tid)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 8) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct)) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun l@0 () T@Option_1882)
(declare-fun v () Int)
(declare-fun count@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_Write_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct  (=> (and (= b@0 (not (= l@0 None_1882))) (= (ControlFlow 0 6) (- 0 5))) (= b@0 (not (= l@0 None_1882))))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= v count@0) (= l@0 l@0)) (and (= v v) (= l@0 l@0))))) (=> (or false (or (and (= v count@0) (= l@0 l@0)) (and (= v v) (= l@0 l@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (= v count@0) (= l@0 l@0)))) (=> (=> false (and (= v count@0) (= l@0 l@0))) (=> (and (and (= Civl_pc@0  (=> (and (= v count@0) (= l@0 l@0)) false)) (= Civl_ok@0  (or (and (= v v) (= l@0 l@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (= l@0 (Some_1882 tid)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 8) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 8) 6) inline$Civl_NoninterferenceChecker_yield_LockInv$0$L0_correct)) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$WriteSpec$0$v@0 () Int)
(declare-fun count@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun l@2 () T@Option_1882)
(declare-fun l@1 () T@Option_1882)
(declare-fun tid () T@Tid)
(declare-fun l@0 () T@Option_1882)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_Incr_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (= inline$WriteSpec$0$v@0 count@0) (= inline$WriteSpec$0$v@0 (+ count@0 1))))) (=> (or false (or (= inline$WriteSpec$0$v@0 count@0) (= inline$WriteSpec$0$v@0 (+ count@0 1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (= inline$WriteSpec$0$v@0 count@0))) (=> (=> false (= inline$WriteSpec$0$v@0 count@0)) (=> (and (and (= Civl_pc@0  (=> (= inline$WriteSpec$0$v@0 count@0) false)) (= Civl_ok@0  (or (= inline$WriteSpec$0$v@0 (+ count@0 1)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (= l@2 None_1882) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (= l@1 (Some_1882 tid))) (=> (= l@1 (Some_1882 tid)) (=> (= (ControlFlow 0 7) 6) inline$ReleaseSpec$0$anon0_correct)))))
(let ((inline$WriteSpec$0$Entry_correct  (=> (and (= inline$WriteSpec$0$v@0 (+ count@0 1)) (= (ControlFlow 0 9) 7)) anon0$3_correct)))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (= l@1 (Some_1882 tid))) (=> (= l@1 (Some_1882 tid)) (=> (= (ControlFlow 0 10) 9) inline$WriteSpec$0$Entry_correct)))))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (= l@1 (Some_1882 tid))) (=> (= l@1 (Some_1882 tid)) (=> (= (ControlFlow 0 12) 10) anon0$2_correct)))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l@0 None_1882) (=> (and (= l@1 (Some_1882 tid)) (= (ControlFlow 0 14) 12)) anon0$1_correct))))
(let ((anon0_correct  (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (= (ControlFlow 0 15) 14)) inline$AcquireSpec$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun l () T@Option_1882)
(declare-fun l@0 () T@Option_1882)
(set-info :boogie-vc-id Civl_LinearityChecker_AcquireSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AcquireSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$AcquireSpec$0$anon0_correct  (=> (= l None_1882) (=> (and (= l@0 (Some_1882 tid)) (= (ControlFlow 0 3) 2)) inline$AcquireSpec$0$Return_correct))))
(let ((inline$AcquireSpec$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AcquireSpec$0$anon0_correct)))
inline$AcquireSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun l@0 () T@Option_1882)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_LinearityChecker_ReleaseSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ReleaseSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ReleaseSpec$0$anon0_correct  (=> (and (= l@0 None_1882) (= (ControlFlow 0 3) 2)) inline$ReleaseSpec$0$Return_correct)))
(let ((inline$ReleaseSpec$0$Entry_correct  (=> (and (= l (Some_1882 tid)) (= (ControlFlow 0 4) 3)) inline$ReleaseSpec$0$anon0_correct)))
inline$ReleaseSpec$0$Entry_correct))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_LinearityChecker_ReadSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$ReadSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ReadSpec$0$Entry_correct  (=> (and (= l (Some_1882 tid)) (= (ControlFlow 0 3) 2)) inline$ReadSpec$0$Return_correct)))
inline$ReadSpec$0$Entry_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_1882 0)) (((None_1882 ) (Some_1882 (|t#Some_1882| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun l () T@Option_1882)
(set-info :boogie-vc-id Civl_LinearityChecker_WriteSpec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$WriteSpec$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$WriteSpec$0$Entry_correct  (=> (and (= l (Some_1882 tid)) (= (ControlFlow 0 3) 2)) inline$WriteSpec$0$Return_correct)))
inline$WriteSpec$0$Entry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
