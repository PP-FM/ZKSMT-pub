(set-logic AUFLIA)
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$STALE_READ_SEQ$0$r@0 () Int)
(declare-fun seq@0 () Int)
(declare-fun seq () Int)
(declare-fun lock () T@Option_2247)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_STALE_READ_SEQ_LOCKED_INC_SEQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$LOCKED_INC_SEQ$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (<= inline$STALE_READ_SEQ$0$r@0 seq@0) (= seq@0 (+ seq 1))) (= lock lock))))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@0 (+ seq 1)) (= (ControlFlow 0 3) 2)) inline$LOCKED_INC_SEQ$0$Return_correct)))
(let ((inline$STALE_READ_SEQ$0$anon0_correct  (=> (and (<= inline$STALE_READ_SEQ$0$r@0 seq) (= (ControlFlow 0 4) 3)) inline$LOCKED_INC_SEQ$0$anon0_correct)))
(let ((inline$STALE_READ_SEQ$0$Entry_correct  (=> (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4)) inline$STALE_READ_SEQ$0$anon0_correct)))
inline$STALE_READ_SEQ$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun seq@0 () Int)
(declare-fun first_seq1 () Int)
(declare-fun seq () Int)
(declare-fun inline$STALE_READ_X$0$r@1 () Int)
(declare-fun x@@0 () Int)
(declare-fun lock () T@Option_2247)
(declare-fun inline$STALE_READ_X$0$r@0 () Int)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_STALE_READ_X_LOCKED_INC_SEQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$LOCKED_INC_SEQ$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 first_seq1)) (= seq@0 (+ seq 1))) (= inline$STALE_READ_X$0$r@1 x@@0)) (= x@@0 x@@0)) (= lock lock)) (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 first_seq1))) (= seq@0 (+ seq 1))) (= x@@0 x@@0)) (= lock lock)))))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@0 (+ seq 1)) (= (ControlFlow 0 3) 2)) inline$LOCKED_INC_SEQ$0$Return_correct)))
(let ((inline$STALE_READ_X$0$anon2_Else_correct  (=> (not (and (= (mod seq 2) 0) (= seq first_seq1))) (=> (and (= inline$STALE_READ_X$0$r@1 inline$STALE_READ_X$0$r@0) (= (ControlFlow 0 5) 3)) inline$LOCKED_INC_SEQ$0$anon0_correct))))
(let ((inline$STALE_READ_X$0$anon2_Then_correct  (=> (and (and (= (mod seq 2) 0) (= seq first_seq1)) (and (= inline$STALE_READ_X$0$r@1 x@@0) (= (ControlFlow 0 4) 3))) inline$LOCKED_INC_SEQ$0$anon0_correct)))
(let ((inline$STALE_READ_X$0$Entry_correct  (=> (and (>= seq first_seq1) (= lock (Some_2247 second_tid))) (and (=> (= (ControlFlow 0 6) 4) inline$STALE_READ_X$0$anon2_Then_correct) (=> (= (ControlFlow 0 6) 5) inline$STALE_READ_X$0$anon2_Else_correct)))))
inline$STALE_READ_X$0$Entry_correct))))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun seq () Int)
(declare-fun first_seq1 () Int)
(declare-fun second_v () Int)
(declare-fun inline$STALE_READ_X$0$r@1 () Int)
(declare-fun lock () T@Option_2247)
(declare-fun inline$STALE_READ_X$0$r@0 () Int)
(declare-fun x@@0 () Int)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_STALE_READ_X_LOCKED_WRITE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$LOCKED_WRITE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (= (mod seq 2) 0) (= seq first_seq1)) (= second_v second_v)) (= inline$STALE_READ_X$0$r@1 second_v)) (= seq seq)) (= lock lock)) (and (and (and (not (and (= (mod seq 2) 0) (= seq first_seq1))) (= second_v second_v)) (= seq seq)) (= lock lock)))))))
(let ((inline$STALE_READ_X$0$anon2_Else_correct  (=> (not (and (= (mod seq 2) 0) (= seq first_seq1))) (=> (and (= inline$STALE_READ_X$0$r@1 inline$STALE_READ_X$0$r@0) (= (ControlFlow 0 4) 2)) inline$LOCKED_WRITE_X$0$Return_correct))))
(let ((inline$STALE_READ_X$0$anon2_Then_correct  (=> (and (and (= (mod seq 2) 0) (= seq first_seq1)) (and (= inline$STALE_READ_X$0$r@1 x@@0) (= (ControlFlow 0 3) 2))) inline$LOCKED_WRITE_X$0$Return_correct)))
(let ((inline$STALE_READ_X$0$Entry_correct  (=> (>= seq first_seq1) (=> (and (= lock (Some_2247 second_tid)) (not (= (mod seq 2) 0))) (and (=> (= (ControlFlow 0 5) 3) inline$STALE_READ_X$0$anon2_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$STALE_READ_X$0$anon2_Else_correct))))))
inline$STALE_READ_X$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun seq@0 () Int)
(declare-fun first_seq1 () Int)
(declare-fun seq () Int)
(declare-fun inline$STALE_READ_Y$0$r@1 () Int)
(declare-fun y () Int)
(declare-fun lock () T@Option_2247)
(declare-fun inline$STALE_READ_Y$0$r@0 () Int)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_STALE_READ_Y_LOCKED_INC_SEQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$LOCKED_INC_SEQ$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 first_seq1)) (= seq@0 (+ seq 1))) (= inline$STALE_READ_Y$0$r@1 y)) (= y y)) (= lock lock)) (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 first_seq1))) (= seq@0 (+ seq 1))) (= y y)) (= lock lock)))))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@0 (+ seq 1)) (= (ControlFlow 0 3) 2)) inline$LOCKED_INC_SEQ$0$Return_correct)))
(let ((inline$STALE_READ_Y$0$anon2_Else_correct  (=> (not (and (= (mod seq 2) 0) (= seq first_seq1))) (=> (and (= inline$STALE_READ_Y$0$r@1 inline$STALE_READ_Y$0$r@0) (= (ControlFlow 0 5) 3)) inline$LOCKED_INC_SEQ$0$anon0_correct))))
(let ((inline$STALE_READ_Y$0$anon2_Then_correct  (=> (and (and (= (mod seq 2) 0) (= seq first_seq1)) (and (= inline$STALE_READ_Y$0$r@1 y) (= (ControlFlow 0 4) 3))) inline$LOCKED_INC_SEQ$0$anon0_correct)))
(let ((inline$STALE_READ_Y$0$Entry_correct  (=> (and (>= seq first_seq1) (= lock (Some_2247 second_tid))) (and (=> (= (ControlFlow 0 6) 4) inline$STALE_READ_Y$0$anon2_Then_correct) (=> (= (ControlFlow 0 6) 5) inline$STALE_READ_Y$0$anon2_Else_correct)))))
inline$STALE_READ_Y$0$Entry_correct))))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun seq () Int)
(declare-fun first_seq1 () Int)
(declare-fun second_v () Int)
(declare-fun inline$STALE_READ_Y$0$r@1 () Int)
(declare-fun lock () T@Option_2247)
(declare-fun inline$STALE_READ_Y$0$r@0 () Int)
(declare-fun y () Int)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_STALE_READ_Y_LOCKED_WRITE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$LOCKED_WRITE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (= (mod seq 2) 0) (= seq first_seq1)) (= second_v second_v)) (= inline$STALE_READ_Y$0$r@1 second_v)) (= seq seq)) (= lock lock)) (and (and (and (not (and (= (mod seq 2) 0) (= seq first_seq1))) (= second_v second_v)) (= seq seq)) (= lock lock)))))))
(let ((inline$STALE_READ_Y$0$anon2_Else_correct  (=> (not (and (= (mod seq 2) 0) (= seq first_seq1))) (=> (and (= inline$STALE_READ_Y$0$r@1 inline$STALE_READ_Y$0$r@0) (= (ControlFlow 0 4) 2)) inline$LOCKED_WRITE_Y$0$Return_correct))))
(let ((inline$STALE_READ_Y$0$anon2_Then_correct  (=> (and (and (= (mod seq 2) 0) (= seq first_seq1)) (and (= inline$STALE_READ_Y$0$r@1 y) (= (ControlFlow 0 3) 2))) inline$LOCKED_WRITE_Y$0$Return_correct)))
(let ((inline$STALE_READ_Y$0$Entry_correct  (=> (>= seq first_seq1) (=> (and (= lock (Some_2247 second_tid)) (not (= (mod seq 2) 0))) (and (=> (= (ControlFlow 0 5) 3) inline$STALE_READ_Y$0$anon2_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$STALE_READ_Y$0$anon2_Else_correct))))))
inline$STALE_READ_Y$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq@0 () Int)
(declare-fun seq () Int)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_WRITE_X_LOCKED_INC_SEQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$LOCKED_INC_SEQ$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= lock (Some_2247 first_tid)))) (=> (=> true (= lock (Some_2247 first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= (mod seq@0 2) 0))))))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@0 (+ seq 1)) (= (ControlFlow 0 4) 2)) inline$LOCKED_INC_SEQ$0$Return_correct)))
(let ((inline$LOCKED_INC_SEQ$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (and (and (= lock (Some_2247 first_tid)) (not (= (mod seq 2) 0))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4))) inline$LOCKED_INC_SEQ$0$anon0_correct))))
inline$LOCKED_INC_SEQ$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq@0 () Int)
(declare-fun seq () Int)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_WRITE_Y_LOCKED_INC_SEQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$LOCKED_INC_SEQ$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= lock (Some_2247 first_tid)))) (=> (=> true (= lock (Some_2247 first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= (mod seq@0 2) 0))))))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@0 (+ seq 1)) (= (ControlFlow 0 4) 2)) inline$LOCKED_INC_SEQ$0$Return_correct)))
(let ((inline$LOCKED_INC_SEQ$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |4|
)) (=> (and (and (= lock (Some_2247 first_tid)) (not (= (mod seq 2) 0))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4))) inline$LOCKED_INC_SEQ$0$anon0_correct))))
inline$LOCKED_INC_SEQ$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_LOCKED_INC_SEQ_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= lock@0 (Some_2247 first_tid)))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |5|
)) (not (= lock (Some_2247 first_tid)))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 4) 3))) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun seq () Int)
(declare-fun second_seq1 () Int)
(declare-fun inline$STALE_READ_X$0$r@1 () Int)
(declare-fun x@@0 () Int)
(declare-fun first_v () Int)
(declare-fun lock () T@Option_2247)
(declare-fun inline$STALE_READ_X$0$r@0 () Int)
(declare-fun first_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_LOCKED_WRITE_X_STALE_READ_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$STALE_READ_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (= (mod seq 2) 0) (= seq second_seq1)) (= inline$STALE_READ_X$0$r@1 x@@0)) (= first_v first_v)) (= lock lock)) (= seq seq)) (and (and (and (not (and (= (mod seq 2) 0) (= seq second_seq1))) (= first_v first_v)) (= lock lock)) (= seq seq)))))))
(let ((inline$STALE_READ_X$0$anon2_Else_correct  (=> (not (and (= (mod seq 2) 0) (= seq second_seq1))) (=> (and (= inline$STALE_READ_X$0$r@1 inline$STALE_READ_X$0$r@0) (= (ControlFlow 0 4) 2)) inline$STALE_READ_X$0$Return_correct))))
(let ((inline$STALE_READ_X$0$anon2_Then_correct  (=> (and (and (= (mod seq 2) 0) (= seq second_seq1)) (and (= inline$STALE_READ_X$0$r@1 first_v) (= (ControlFlow 0 3) 2))) inline$STALE_READ_X$0$Return_correct)))
(let ((inline$LOCKED_WRITE_X$0$Entry_correct  (=> (= lock (Some_2247 first_tid)) (=> (and (not (= (mod seq 2) 0)) (>= seq second_seq1)) (and (=> (= (ControlFlow 0 5) 3) inline$STALE_READ_X$0$anon2_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$STALE_READ_X$0$anon2_Else_correct))))))
inline$LOCKED_WRITE_X$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
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
(declare-fun lock () T@Option_2247)
(declare-fun seq () Int)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_LOCKED_WRITE_X_LOCKED_WRITE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$LOCKED_WRITE_X$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_v first_v) (= lock lock)) (= seq seq))))))
(let ((inline$LOCKED_WRITE_X$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |6|
)) (= lock (Some_2247 first_tid))) (=> (and (and (not (= (mod seq 2) 0)) (= lock (Some_2247 second_tid))) (and (not (= (mod seq 2) 0)) (= (ControlFlow 0 3) 2))) inline$LOCKED_WRITE_X$1$Return_correct))))
inline$LOCKED_WRITE_X$0$Entry_correct)))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq () Int)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_LOCKED_WRITE_X_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= lock@0 (Some_2247 first_tid)) (not (= (mod seq 2) 0))))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |7|
)) (not (and (= lock (Some_2247 first_tid)) (not (= (mod seq 2) 0))))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 4) 3))) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun seq () Int)
(declare-fun second_seq1 () Int)
(declare-fun inline$STALE_READ_Y$0$r@1 () Int)
(declare-fun y () Int)
(declare-fun first_v () Int)
(declare-fun lock () T@Option_2247)
(declare-fun inline$STALE_READ_Y$0$r@0 () Int)
(declare-fun first_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_LOCKED_WRITE_Y_STALE_READ_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$STALE_READ_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (= (mod seq 2) 0) (= seq second_seq1)) (= inline$STALE_READ_Y$0$r@1 y)) (= first_v first_v)) (= lock lock)) (= seq seq)) (and (and (and (not (and (= (mod seq 2) 0) (= seq second_seq1))) (= first_v first_v)) (= lock lock)) (= seq seq)))))))
(let ((inline$STALE_READ_Y$0$anon2_Else_correct  (=> (not (and (= (mod seq 2) 0) (= seq second_seq1))) (=> (and (= inline$STALE_READ_Y$0$r@1 inline$STALE_READ_Y$0$r@0) (= (ControlFlow 0 4) 2)) inline$STALE_READ_Y$0$Return_correct))))
(let ((inline$STALE_READ_Y$0$anon2_Then_correct  (=> (and (and (= (mod seq 2) 0) (= seq second_seq1)) (and (= inline$STALE_READ_Y$0$r@1 first_v) (= (ControlFlow 0 3) 2))) inline$STALE_READ_Y$0$Return_correct)))
(let ((inline$LOCKED_WRITE_Y$0$Entry_correct  (=> (= lock (Some_2247 first_tid)) (=> (and (not (= (mod seq 2) 0)) (>= seq second_seq1)) (and (=> (= (ControlFlow 0 5) 3) inline$STALE_READ_Y$0$anon2_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$STALE_READ_Y$0$anon2_Else_correct))))))
inline$LOCKED_WRITE_Y$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
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
(declare-fun lock () T@Option_2247)
(declare-fun seq () Int)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_LOCKED_WRITE_Y_LOCKED_WRITE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$LOCKED_WRITE_Y$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= second_v first_v) (= lock lock)) (= seq seq))))))
(let ((inline$LOCKED_WRITE_Y$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |8|
)) (= lock (Some_2247 first_tid))) (=> (and (and (not (= (mod seq 2) 0)) (= lock (Some_2247 second_tid))) (and (not (= (mod seq 2) 0)) (= (ControlFlow 0 3) 2))) inline$LOCKED_WRITE_Y$1$Return_correct))))
inline$LOCKED_WRITE_Y$0$Entry_correct)))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq () Int)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_LOCKED_WRITE_Y_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (= lock@0 (Some_2247 first_tid)) (not (= (mod seq 2) 0))))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |9|
)) (not (and (= lock (Some_2247 first_tid)) (not (= (mod seq 2) 0))))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 4) 3))) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_INC_SEQ_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= lock@0 (Some_2247 first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 second_tid)) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (= lock (Some_2247 first_tid)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq () Int)
(declare-fun lock () T@Option_2247)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_WRITE_X_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ACQUIRE$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= lock@0 (Some_2247 first_tid)))) (=> (=> true (= lock@0 (Some_2247 first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= (mod seq 2) 0))))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 second_tid)) (= (ControlFlow 0 4) 2)) inline$ACQUIRE$0$Return_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (= lock (Some_2247 first_tid))) (and (not (= (mod seq 2) 0)) (= (ControlFlow 0 5) 4))) inline$ACQUIRE$0$anon0_correct)))
inline$ACQUIRE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq () Int)
(declare-fun lock () T@Option_2247)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_WRITE_Y_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ACQUIRE$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= lock@0 (Some_2247 first_tid)))) (=> (=> true (= lock@0 (Some_2247 first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= (mod seq 2) 0))))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 second_tid)) (= (ControlFlow 0 4) 2)) inline$ACQUIRE$0$Return_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (= lock (Some_2247 first_tid))) (and (not (= (mod seq 2) 0)) (= (ControlFlow 0 5) 4))) inline$ACQUIRE$0$anon0_correct)))
inline$ACQUIRE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () T@Option_2247)
(declare-fun second_tid () T@Tid)
(declare-fun lock@1 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun lock@0 () T@Option_2247)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$ACQUIRE$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= lock None_2247) (= (Some_2247 second_tid) None_2247)) (= lock@1 (Some_2247 first_tid)))))))
(let ((inline$ACQUIRE$1$anon0_correct  (=> (= lock@0 None_2247) (=> (and (= lock@1 (Some_2247 second_tid)) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$1$Return_correct))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 first_tid)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE$1$anon0_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (= (ControlFlow 0 5) 4)) inline$ACQUIRE$0$anon0_correct)))
inline$ACQUIRE$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@1 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(declare-fun lock@0 () T@Option_2247)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_CommutativityChecker_ACQUIRE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= None_2247 None_2247) (= lock@1 (Some_2247 first_tid)))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@1 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 first_tid)) (= (ControlFlow 0 4) 3)) inline$RELEASE$0$anon0_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4)) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(declare-fun second_tid () T@Tid)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= lock@0 (Some_2247 first_tid))))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 second_tid)) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (= lock (Some_2247 first_tid)) (= (ControlFlow 0 4) 3)) inline$ACQUIRE$0$anon0_correct))))
inline$ACQUIRE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq () Int)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_WRITE_X_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RELEASE$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= lock@0 (Some_2247 first_tid)))) (=> (=> true (= lock@0 (Some_2247 first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= (mod seq 2) 0))))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 4) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (= lock (Some_2247 first_tid)) (not (= (mod seq 2) 0))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4))) inline$RELEASE$0$anon0_correct))))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun seq () Int)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_GatePreservationChecker_LOCKED_WRITE_Y_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RELEASE$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= lock@0 (Some_2247 first_tid)))) (=> (=> true (= lock@0 (Some_2247 first_tid))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= (mod seq 2) 0))))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 4) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (and (and (= lock (Some_2247 first_tid)) (not (= (mod seq 2) 0))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4))) inline$RELEASE$0$anon0_correct))))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@1 () T@Option_2247)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_CommutativityChecker_RELEASE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$RELEASE$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= lock@1 None_2247)))))
(let ((inline$RELEASE$1$anon0_correct  (=> (and (= lock@1 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$1$Return_correct)))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 4) 3)) inline$RELEASE$1$anon0_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (= lock (Some_2247 first_tid))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 5) 4))) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct)))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_GatePreservationChecker_RELEASE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= lock@0 (Some_2247 first_tid))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (= lock (Some_2247 first_tid))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 4) 3))) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun first_tid () T@Tid)
(declare-fun second_tid () T@Tid)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_RELEASE_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (= lock@0 (Some_2247 first_tid)))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (not (= lock (Some_2247 first_tid)))) (and (= lock (Some_2247 second_tid)) (= (ControlFlow 0 4) 3))) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_read_1)
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Civl_write_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) true)
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun r () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_stale_read_seq_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (<= seq@0 seq@0) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0))))) (=> (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (<= seq@0 seq@0) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (= seq@0 r)))) (=> (=> false (and (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (= seq@0 r))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) false)) (= Civl_ok@0  (or (and (and (and (and (<= seq@0 seq@0) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (= seq@0 r) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((as const (Array T@Tid Bool)) false)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun seq1 () Int)
(declare-fun r () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_stale_read_x_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (or (and (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 seq1)) (= x@0 x@0)) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 seq1))) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)))))) (=> (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (or (and (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 seq1)) (= x@0 x@0)) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 seq1))) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (= x@0 r)))) (=> (=> false (and (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (= x@0 r))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) false)) (= Civl_ok@0  (or (or (and (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 seq1)) (= x@0 x@0)) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 seq1))) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0))) (and (= x@0 r) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (>= seq@0 seq1) (= Civl_linear_tid_available@0 ((as const (Array T@Tid Bool)) false))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun seq1 () Int)
(declare-fun r () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_stale_read_y_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (or (and (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 seq1)) (= y@0 y@0)) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 seq1))) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)))))) (=> (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (or (and (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 seq1)) (= y@0 y@0)) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 seq1))) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (= y@0 r)))) (=> (=> false (and (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (= y@0 r))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) false)) (= Civl_ok@0  (or (or (and (and (and (and (and (and (= (mod seq@0 2) 0) (= seq@0 seq1)) (= y@0 y@0)) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (and (not (and (= (mod seq@0 2) 0) (= seq@0 seq1))) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) (= y@0 y@0))) (and (= y@0 r) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (>= seq@0 seq1) (= Civl_linear_tid_available@0 ((as const (Array T@Tid Bool)) false))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@1 () Int)
(declare-fun seq@0 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_locked_inc_seq_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= lock@0 lock@0) (= seq@1 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (= seq@1 (+ seq@0 1)) (= lock@0 lock@0)) (= x@0 x@0)) (= y@0 y@0))))) (=> (or false (or (and (and (and (= lock@0 lock@0) (= seq@1 seq@0)) (= x@0 x@0)) (= y@0 y@0)) (and (and (and (= seq@1 (+ seq@0 1)) (= lock@0 lock@0)) (= x@0 x@0)) (= y@0 y@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= lock@0 lock@0) (= seq@1 seq@0)) (= x@0 x@0)) (= y@0 y@0)))) (=> (=> false (and (and (and (= lock@0 lock@0) (= seq@1 seq@0)) (= x@0 x@0)) (= y@0 y@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= lock@0 lock@0) (= seq@1 seq@0)) (= x@0 x@0)) (= y@0 y@0)) false)) (= Civl_ok@0  (or (and (and (and (= seq@1 (+ seq@0 1)) (= lock@0 lock@0)) (= x@0 x@0)) (= y@0 y@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$INC_SEQ$0$anon0_correct  (=> (= seq@1 (+ seq@0 1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon0_correct  (=> (= lock@0 (Some_2247 tid)) (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (= (ControlFlow 0 7) 6)) inline$INC_SEQ$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun v () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_locked_write_x_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= v x@0)) (= y@0 y@0)) (and (and (and (= v v) (= lock@0 lock@0)) (= seq@0 seq@0)) (= y@0 y@0))))) (=> (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= v x@0)) (= y@0 y@0)) (and (and (and (= v v) (= lock@0 lock@0)) (= seq@0 seq@0)) (= y@0 y@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= v x@0)) (= y@0 y@0)))) (=> (=> false (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= v x@0)) (= y@0 y@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= v x@0)) (= y@0 y@0)) false)) (= Civl_ok@0  (or (and (and (and (= v v) (= lock@0 lock@0)) (= seq@0 seq@0)) (= y@0 y@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (and (= lock@0 (Some_2247 tid)) (not (= (mod seq@0 2) 0))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun x@0 () Int)
(declare-fun v () Int)
(declare-fun y@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@Tid)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_locked_write_y_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= v y@0)) (and (and (and (= v v) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0))))) (=> (or false (or (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= v y@0)) (and (and (and (= v v) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= v y@0)))) (=> (=> false (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= v y@0))) (=> (and (and (= Civl_pc@0  (=> (and (and (and (= lock@0 lock@0) (= seq@0 seq@0)) (= x@0 x@0)) (= v y@0)) false)) (= Civl_ok@0  (or (and (and (and (= v v) (= lock@0 lock@0)) (= seq@0 seq@0)) (= x@0 x@0)) false))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0_correct  (=> (and (and (= lock@0 (Some_2247 tid)) (not (= (mod seq@0 2) 0))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct)))))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun v@2 () Int)
(declare-fun w@2 () Int)
(declare-fun v@0 () Int)
(declare-fun w@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$STALE_READ_Y$0$r@2 () Int)
(declare-fun inline$STALE_READ_X$0$r@2 () Int)
(declare-fun Civl_global_old_lock@1 () T@Option_2247)
(declare-fun Civl_global_old_seq@1 () Int)
(declare-fun lock@2 () T@Option_2247)
(declare-fun seq@2 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0 () T@Tid)
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun lock@1 () T@Option_2247)
(declare-fun seq@1 () Int)
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun inline$STALE_READ_SEQ$0$r@1 () Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun v@1 () Int)
(declare-fun w@1 () Int)
(declare-fun inline$STALE_READ_Y$0$r@1 () Int)
(declare-fun inline$STALE_READ_X$0$r@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun v () Int)
(declare-fun w () Int)
(set-info :boogie-vc-id Civl_read_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 23) (- 0 25)) (or false (or (and (= x@1 x@1) (= y@1 y@1)) (and (and (and (= v@2 x@1) (= w@2 y@1)) (= x@1 x@1)) (= y@1 y@1))))) (=> (or false (or (and (= x@1 x@1) (= y@1 y@1)) (and (and (and (= v@2 x@1) (= w@2 y@1)) (= x@1 x@1)) (= y@1 y@1)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> false (and (and (= x@1 x@1) (= y@1 y@1)) (and (= v@2 v@0) (= w@2 w@0))))) (=> (=> false (and (and (= x@1 x@1) (= y@1 y@1)) (and (= v@2 v@0) (= w@2 w@0)))) (=> (and (and (= Civl_pc@0  (=> (and (= x@1 x@1) (= y@1 y@1)) false)) (= Civl_ok@0  (or (and (and (and (= v@2 x@1) (= w@2 y@1)) (= x@1 x@1)) (= y@1 y@1)) (and (and (= v@2 v@0) (= w@2 w@0)) false)))) (= (ControlFlow 0 23) (- 0 22))) Civl_ok@0)))))))
(let ((anon4_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= w@2 w@0) (=> (and (= v@2 v@0) (= (ControlFlow 0 37) 23)) Civl_ReturnChecker_correct))))
(let ((anon6_Then_@2_Civl_ReturnChecker_correct  (=> (= w@2 inline$STALE_READ_Y$0$r@2) (=> (and (= v@2 inline$STALE_READ_X$0$r@2) (= (ControlFlow 0 26) 23)) Civl_ReturnChecker_correct))))
(let ((anon6_Else_@2_anon4_LoopHead_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct  (=> (and (= (= Civl_global_old_lock@1 None_2247) (= (mod Civl_global_old_seq@1 2) 0)) (= (ControlFlow 0 13) (- 0 12))) (= (= lock@2 None_2247) (= (mod seq@2 2) 0)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_HoldLock$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (=> (and (= Civl_global_old_lock@1 (Some_2247 inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0)) (= (ControlFlow 0 10) (- 0 9))) (= lock@2 (Some_2247 inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0))))))
(let ((anon4_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@2 lock@1) (=> (and (and (= seq@2 seq@1) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_seq@1 seq@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 38) 10) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 38) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 38) 13) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((anon4_LoopDone_correct  (=> (not true) (and (=> (= (ControlFlow 0 39) 37) anon4_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 39) 38) anon4_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@2 lock@1) (=> (and (and (= seq@2 seq@1) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_seq@1 seq@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 21) 10) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 21) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 21) 13) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((anon6_Then_correct  (=> (= inline$STALE_READ_SEQ$0$r@1 seq@1) (and (=> (= (ControlFlow 0 27) 26) anon6_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 27) 21) anon6_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@2 lock@1) (=> (and (and (= seq@2 seq@1) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_seq@1 seq@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 18) 10) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 18) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 18) 13) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((anon5_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@2 lock@1) (=> (and (and (= seq@2 seq@1) (= Civl_global_old_lock@1 lock@1)) (and (= Civl_global_old_seq@1 seq@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))) (and (and (=> (= (ControlFlow 0 15) 10) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 15) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 15) 13) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@2 lock@0) (=> (and (and (= seq@2 seq@0) (= Civl_global_old_lock@1 lock@0)) (and (= Civl_global_old_seq@1 seq@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))) (and (and (=> (= (ControlFlow 0 14) 10) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 14) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 13) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (= x@1 x@1) (= y@1 y@1))) (=> (and (= x@1 x@1) (= y@1 y@1)) (=> (= (ControlFlow 0 6) (- 0 5)) (=> false (and (= v@1 v@0) (= w@1 w@0))))))))
(let ((anon6_Else_@2_Civl_UnchangedChecker_correct  (=> (= w@1 inline$STALE_READ_Y$0$r@2) (=> (and (= v@1 inline$STALE_READ_X$0$r@2) (= (ControlFlow 0 19) 6)) Civl_UnchangedChecker_correct))))
(let ((anon6_Else_correct  (=> (not (= inline$STALE_READ_SEQ$0$r@1 seq@1)) (and (and (=> (= (ControlFlow 0 20) 17) anon6_Else_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 20) 18) anon6_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 20) 19) anon6_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$STALE_READ_Y$0$anon2_Else_correct  (=> (and (not (and (= (mod seq@1 2) 0) (= seq@1 inline$STALE_READ_SEQ$0$r@1))) (= inline$STALE_READ_Y$0$r@2 inline$STALE_READ_Y$0$r@1)) (and (=> (= (ControlFlow 0 29) 27) anon6_Then_correct) (=> (= (ControlFlow 0 29) 20) anon6_Else_correct)))))
(let ((inline$STALE_READ_Y$0$anon2_Then_correct  (=> (and (and (= (mod seq@1 2) 0) (= seq@1 inline$STALE_READ_SEQ$0$r@1)) (= inline$STALE_READ_Y$0$r@2 y@1)) (and (=> (= (ControlFlow 0 28) 27) anon6_Then_correct) (=> (= (ControlFlow 0 28) 20) anon6_Else_correct)))))
(let ((anon5_Then$1_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (>= seq@1 inline$STALE_READ_SEQ$0$r@1)) (=> (>= seq@1 inline$STALE_READ_SEQ$0$r@1) (and (=> (= (ControlFlow 0 30) 28) inline$STALE_READ_Y$0$anon2_Then_correct) (=> (= (ControlFlow 0 30) 29) inline$STALE_READ_Y$0$anon2_Else_correct))))))
(let ((inline$STALE_READ_X$0$anon2_Else_correct  (=> (not (and (= (mod seq@1 2) 0) (= seq@1 inline$STALE_READ_SEQ$0$r@1))) (=> (and (= inline$STALE_READ_X$0$r@2 inline$STALE_READ_X$0$r@1) (= (ControlFlow 0 33) 30)) anon5_Then$1_correct))))
(let ((inline$STALE_READ_X$0$anon2_Then_correct  (=> (and (and (= (mod seq@1 2) 0) (= seq@1 inline$STALE_READ_SEQ$0$r@1)) (and (= inline$STALE_READ_X$0$r@2 x@1) (= (ControlFlow 0 32) 30))) anon5_Then$1_correct)))
(let ((anon5_Then_correct  (=> (= (mod inline$STALE_READ_SEQ$0$r@1 2) 0) (and (=> (= (ControlFlow 0 34) (- 0 35)) (>= seq@1 inline$STALE_READ_SEQ$0$r@1)) (=> (>= seq@1 inline$STALE_READ_SEQ$0$r@1) (and (=> (= (ControlFlow 0 34) 32) inline$STALE_READ_X$0$anon2_Then_correct) (=> (= (ControlFlow 0 34) 33) inline$STALE_READ_X$0$anon2_Else_correct)))))))
(let ((anon5_Else_@2_Civl_UnchangedChecker_correct  (=> (= w@1 w@0) (=> (and (= v@1 v@0) (= (ControlFlow 0 8) 6)) Civl_UnchangedChecker_correct))))
(let ((anon5_Else_@2_anon4_LoopHead_correct true))
(let ((anon5_Else_correct  (=> (not (= (mod inline$STALE_READ_SEQ$0$r@1 2) 0)) (and (and (=> (= (ControlFlow 0 16) 4) anon5_Else_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 16) 15) anon5_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 16) 8) anon5_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$STALE_READ_SEQ$0$anon0_correct  (=> (<= inline$STALE_READ_SEQ$0$r@1 seq@1) (and (=> (= (ControlFlow 0 36) 34) anon5_Then_correct) (=> (= (ControlFlow 0 36) 16) anon5_Else_correct)))))
(let ((anon4_LoopHead_correct  (=> (and (or false true) (= Civl_linear_tid_available@2 ((as const (Array T@Tid Bool)) false))) (and (=> (= (ControlFlow 0 40) 39) anon4_LoopDone_correct) (=> (= (ControlFlow 0 40) 36) inline$STALE_READ_SEQ$0$anon0_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= x@0 x@0) (= y@0 y@0)) (and (and (and (= v x@0) (= w y@0)) (= x@0 x@0)) (= y@0 y@0))))) (=> (or false (or (and (= x@0 x@0) (= y@0 y@0)) (and (and (and (= v x@0) (= w y@0)) (= x@0 x@0)) (= y@0 y@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (and (= x@0 x@0) (= y@0 y@0)) (and (= v v) (= w w)))))))))
(let ((anon0_correct  (=> (= Civl_linear_tid_available@0 ((as const (Array T@Tid Bool)) false)) (and (and (=> (= (ControlFlow 0 41) 14) anon0_@2_Civl_NoninterferenceChecker_correct) (=> (= (ControlFlow 0 41) 2) Civl_RefinementChecker_correct)) (=> (= (ControlFlow 0 41) 40) anon4_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 42) 41) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@5 () T@Option_2247)
(declare-fun seq@5 () Int)
(declare-fun seq@3 () Int)
(declare-fun lock@3 () T@Option_2247)
(declare-fun Civl_pc@0 () Bool)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun v () Int)
(declare-fun w () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_global_old_lock@0 () T@Option_2247)
(declare-fun Civl_global_old_seq@0 () Int)
(declare-fun lock@4 () T@Option_2247)
(declare-fun seq@4 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0 () T@Tid)
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun lock@2 () T@Option_2247)
(declare-fun seq@2 () Int)
(declare-fun Civl_linear_tid_available@1 () (Array T@Tid Bool))
(declare-fun tid () T@Tid)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun lock@1 () T@Option_2247)
(declare-fun seq@1 () Int)
(declare-fun lock@0 () T@Option_2247)
(declare-fun seq@0 () Int)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun lock () T@Option_2247)
(declare-fun seq () Int)
(set-info :boogie-vc-id Civl_write_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 37) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (= (= lock@5 None_2247) (= (mod seq@5 2) 0)))))
(let ((Civl_UnifiedReturn_correct  (=> (= seq@5 seq@3) (=> (and (= lock@5 lock@3) (= (ControlFlow 0 17) 16)) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (or Civl_pc@0 (or (and (= x@1 x@1) (= y@1 y@1)) (and (= x@1 v) (= y@1 w))))) (=> (or Civl_pc@0 (or (and (= x@1 x@1) (= y@1 y@1)) (and (= x@1 v) (= y@1 w)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> Civl_pc@0 (and (= x@1 x@1) (= y@1 y@1)))) (=> (=> Civl_pc@0 (and (= x@1 x@1) (= y@1 y@1))) (=> (and (and (= Civl_pc@1  (=> (and (= x@1 x@1) (= y@1 y@1)) Civl_pc@0)) (= Civl_ok@1  (or (and (= x@1 v) (= y@1 w)) Civl_ok@0))) (= (ControlFlow 0 11) (- 0 10))) Civl_ok@1)))))))
(let ((inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct  (=> (and (= (= Civl_global_old_lock@0 None_2247) (= (mod Civl_global_old_seq@0 2) 0)) (= (ControlFlow 0 8) (- 0 7))) (= (= lock@4 None_2247) (= (mod seq@4 2) 0)))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_yield_HoldLock$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@2 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (=> (and (= Civl_global_old_lock@0 (Some_2247 inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0)) (= (ControlFlow 0 5) (- 0 4))) (= lock@4 (Some_2247 inline$Civl_NoninterferenceChecker_yield_HoldLock$0$tid@0))))))
(let ((anon0_0$2_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@4 lock@3) (=> (and (and (= seq@4 seq@3) (= Civl_global_old_lock@0 lock@2)) (and (= Civl_global_old_seq@0 seq@2) (= Civl_linear_tid_available@2 Civl_linear_tid_available@1))) (and (and (=> (= (ControlFlow 0 14) 5) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 14) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 14) 8) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((inline$RELEASE$0$anon0_correct  (=> (= lock@3 None_2247) (and (and (=> (= (ControlFlow 0 18) 11) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 18) 17) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 18) 14) anon0_0$2_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon0_0$1_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (= lock@2 (Some_2247 tid))) (=> (= lock@2 (Some_2247 tid)) (=> (= (ControlFlow 0 19) 18) inline$RELEASE$0$anon0_correct)))))
(let ((inline$LOCKED_INC_SEQ$1$anon0_correct  (=> (and (= seq@3 (+ seq@2 1)) (= (ControlFlow 0 21) 19)) anon0_0$1_correct)))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (and (= v x@0) (= w y@0)) false)) (= Civl_ok@0  (or (and (= v v) (= w w)) false))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (= (= lock@1 None_2247) (= (mod seq@1 2) 0))) (=> (= (= lock@1 None_2247) (= (mod seq@1 2) 0)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (= lock@1 (Some_2247 tid))) (=> (= lock@1 (Some_2247 tid)) (=> (and (and (= (= lock@2 None_2247) (= (mod seq@2 2) 0)) (= lock@2 (Some_2247 tid))) (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (= lock@2 (Some_2247 tid))) (=> (= lock@2 (Some_2247 tid)) (=> (= (ControlFlow 0 22) 21) inline$LOCKED_INC_SEQ$1$anon0_correct)))))))))))
(let ((anon0$4_@2_Civl_NoninterferenceChecker_correct  (=> (= lock@4 lock@1) (=> (and (and (= seq@4 seq@1) (= Civl_global_old_lock@0 lock@0)) (and (= Civl_global_old_seq@0 seq@0) (= Civl_linear_tid_available@2 Civl_linear_tid_available@0))) (and (and (=> (= (ControlFlow 0 9) 5) inline$Civl_NoninterferenceChecker_yield_HoldLock$0$L0_correct) (=> (= (ControlFlow 0 9) 6) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 9) 8) inline$Civl_NoninterferenceChecker_yield_SeqLockInv$0$L0_correct))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= v x@0) (= w y@0)) (and (= v v) (= w w))))) (=> (or false (or (and (= v x@0) (= w y@0)) (and (= v v) (= w w)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= v x@0) (= w y@0))))))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 26) (- 0 28)) (= lock@1 (Some_2247 tid))) (=> (= lock@1 (Some_2247 tid)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (not (= (mod seq@1 2) 0))) (=> (not (= (mod seq@1 2) 0)) (and (and (=> (= (ControlFlow 0 26) 22) anon0_0_correct) (=> (= (ControlFlow 0 26) 9) anon0$4_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 26) 2) Civl_RefinementChecker_correct))))))))
(let ((anon0$2_correct  (and (=> (= (ControlFlow 0 29) (- 0 31)) (= lock@1 (Some_2247 tid))) (=> (= lock@1 (Some_2247 tid)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (not (= (mod seq@1 2) 0))) (=> (not (= (mod seq@1 2) 0)) (=> (= (ControlFlow 0 29) 26) anon0$3_correct)))))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@1 (+ seq@0 1)) (= (ControlFlow 0 32) 29)) anon0$2_correct)))
(let ((anon0$1_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (= lock@1 (Some_2247 tid))) (=> (= lock@1 (Some_2247 tid)) (=> (= (ControlFlow 0 33) 32) inline$LOCKED_INC_SEQ$0$anon0_correct)))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock@0 None_2247) (=> (and (= lock@1 (Some_2247 tid)) (= (ControlFlow 0 35) 33)) anon0$1_correct))))
(let ((anon0_correct  (=> (= (= lock@0 None_2247) (= (mod seq@0 2) 0)) (=> (and (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (= (ControlFlow 0 36) 35)) inline$ACQUIRE$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= (= lock None_2247) (= (mod seq 2) 0)) (= (ControlFlow 0 37) 36)) anon0_correct)))
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
(declare-sort T@Tid 0)
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun seq@0 () Int)
(declare-fun seq () Int)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_LinearityChecker_LOCKED_INC_SEQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$LOCKED_INC_SEQ$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$LOCKED_INC_SEQ$0$anon0_correct  (=> (and (= seq@0 (+ seq 1)) (= (ControlFlow 0 3) 2)) inline$LOCKED_INC_SEQ$0$Return_correct)))
(let ((inline$LOCKED_INC_SEQ$0$Entry_correct  (=> (and (= lock (Some_2247 tid)) (= (ControlFlow 0 4) 3)) inline$LOCKED_INC_SEQ$0$anon0_correct)))
inline$LOCKED_INC_SEQ$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Option_2247)
(declare-fun seq () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_LOCKED_WRITE_X)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$LOCKED_WRITE_X$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$LOCKED_WRITE_X$0$Entry_correct  (=> (= lock (Some_2247 tid)) (=> (and (not (= (mod seq 2) 0)) (= (ControlFlow 0 3) 2)) inline$LOCKED_WRITE_X$0$Return_correct))))
inline$LOCKED_WRITE_X$0$Entry_correct)))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Option_2247)
(declare-fun seq () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_LOCKED_WRITE_Y)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$LOCKED_WRITE_Y$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$LOCKED_WRITE_Y$0$Entry_correct  (=> (= lock (Some_2247 tid)) (=> (and (not (= (mod seq 2) 0)) (= (ControlFlow 0 3) 2)) inline$LOCKED_WRITE_Y$0$Return_correct))))
inline$LOCKED_WRITE_Y$0$Entry_correct)))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun lock () T@Option_2247)
(declare-fun lock@0 () T@Option_2247)
(set-info :boogie-vc-id Civl_LinearityChecker_ACQUIRE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$ACQUIRE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$ACQUIRE$0$anon0_correct  (=> (= lock None_2247) (=> (and (= lock@0 (Some_2247 tid)) (= (ControlFlow 0 3) 2)) inline$ACQUIRE$0$Return_correct))))
(let ((inline$ACQUIRE$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$ACQUIRE$0$anon0_correct)))
inline$ACQUIRE$0$Entry_correct))))
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
(declare-datatypes ((T@Option_2247 0)) (((None_2247 ) (Some_2247 (|tid#Some_2247| T@Tid) ) ) ))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun lock@0 () T@Option_2247)
(declare-fun lock () T@Option_2247)
(set-info :boogie-vc-id Civl_LinearityChecker_RELEASE)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$RELEASE$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$RELEASE$0$anon0_correct  (=> (and (= lock@0 None_2247) (= (ControlFlow 0 3) 2)) inline$RELEASE$0$Return_correct)))
(let ((inline$RELEASE$0$Entry_correct  (=> (and (= lock (Some_2247 tid)) (= (ControlFlow 0 4) 3)) inline$RELEASE$0$anon0_correct)))
inline$RELEASE$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
