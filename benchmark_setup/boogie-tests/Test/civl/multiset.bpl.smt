(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(declare-fun first_i () Int)
(declare-fun lock@1 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_acquire$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= (select lock second_i) nil) (= (select (store lock second_i second_tid) first_i) nil)) (= lock@1 (store (store lock second_i second_tid) first_i first_tid)))))))
(let ((inline$atomic_acquire$1$anon0_correct  (=> (= (select lock@0 second_i) nil) (=> (and (= lock@1 (store lock@0 second_i second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_acquire$1$Return_correct))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock first_i) nil) (=> (and (= lock@0 (store lock first_i first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_acquire$1$anon0_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |10|
)) (=> (and (not (= first_tid nil)) (not (= first_tid done))) (=> (and (and (and (<= 0 first_i) (< first_i q@max)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct)))))
inline$atomic_acquire$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun first_i () Int)
(declare-fun lock@1 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_acquire_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select (store lock second_i nil) first_i) nil) (= lock@1 (store (store lock second_i nil) first_i first_tid)))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@1 (store lock@0 second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock first_i) nil) (=> (and (= lock@0 (store lock first_i first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_release$0$anon0_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (and (<= 0 first_i) (< first_i q@max))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 5) 4))) inline$atomic_acquire$0$anon0_correct)))))
inline$atomic_acquire$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock@0 first_i) first_tid))) (=> (=> true (= (select lock@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_i) (< first_i q@max))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock second_i) nil) (=> (and (= lock@0 (store lock second_i second_tid)) (= (ControlFlow 0 5) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_i) first_tid)) (=> (and (and (and (<= 0 first_i) (< first_i q@max)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 6) 5))) inline$atomic_acquire$0$anon0_correct)))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_getElt_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock second_i) nil) (=> (and (= lock@0 (store lock second_i second_tid)) (= (ControlFlow 0 5) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (= (select lock first_j) first_tid)) (and (not (= first_tid nil)) (not (= first_tid done)))) (=> (and (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 6) 5))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setElt_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_x null)) (= (select owner first_j) nil))))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock second_i) nil) (=> (and (= lock@0 (store lock second_i second_tid)) (= (ControlFlow 0 6) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (and (and (not (= first_x null)) (= (select owner first_j) nil)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setEltToNull_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (select valid@@0 first_j)))) (=> (=> true (not (select valid@@0 first_j))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select owner first_j) first_tid) (= (select lock@0 first_j) first_tid))))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock second_i) nil) (=> (and (= lock@0 (store lock second_i second_tid)) (= (ControlFlow 0 6) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (and (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setValid_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (= (select owner first_j) first_tid))) (=> (=> true (= (select owner first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock second_i) nil) (=> (and (= lock@0 (store lock second_i second_tid)) (= (ControlFlow 0 6) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (= (select owner first_j) first_tid)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (=> (and (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 7) 6))) inline$atomic_acquire$0$anon0_correct)))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_isEltThereAndValid_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_acquire$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock second_i) nil) (=> (and (= lock@0 (store lock second_i second_tid)) (= (ControlFlow 0 5) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (=> (and (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 6) 5))) inline$atomic_acquire$0$anon0_correct)))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@1 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun first_i () Int)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_release$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= lock@1 (store (store lock second_i nil) first_i nil))))))
(let ((inline$atomic_release$1$anon0_correct  (=> (and (= lock@1 (store lock@0 second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$1$Return_correct)))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock first_i nil)) (= (ControlFlow 0 4) 3)) inline$atomic_release$1$anon0_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_i) first_tid)) (and (<= 0 first_i) (< first_i q@max))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock@0 first_i) first_tid))) (=> (=> true (= (select lock@0 first_i) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_i) (< first_i q@max))))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 5) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_i) first_tid)) (and (<= 0 first_i) (< first_i q@max))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 6) 5)))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_i () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_release_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock@0 first_i) first_tid)) (and (<= 0 first_i) (< first_i q@max))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (not (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_i) first_tid)) (and (<= 0 first_i) (< first_i q@max))))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_getElt_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 5) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (= (select lock first_j) first_tid)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 6) 5))) inline$atomic_release$0$anon0_correct)))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setElt_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_x null)) (= (select owner first_j) nil))))))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 6) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= first_x null)) (= (select owner first_j) nil)))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setEltToNull_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (select valid@@0 first_j)))) (=> (=> true (not (select valid@@0 first_j))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select owner first_j) first_tid) (= (select lock@0 first_j) first_tid))))))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 6) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (and (<= 0 first_j) (< first_j q@max)) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setValid_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (= (select owner first_j) first_tid))) (=> (=> true (= (select owner first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 6) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_isEltThereAndValid_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_release$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock@0 first_j) first_tid))) (=> (=> true (= (select lock@0 first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 5) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 6) 5)))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_getElt_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (= (select lock@0 first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (and (<= 0 first_j) (< first_j q@max))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (not (and (and (= (select lock first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (and (<= 0 first_j) (< first_j q@max))))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun inline$atomic_getElt$0$elt_j@1 () Int)
(declare-fun first_j () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_getElt_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= elt@0 (store elt@@0 second_j second_x)) (= owner@0 (store owner second_j second_tid))) (= inline$atomic_getElt$0$elt_j@1 (select elt@0 first_j))) (= lock lock))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_getElt$0$anon0_correct  (=> (and (= inline$atomic_getElt$0$elt_j@1 (select elt@@0 first_j)) (= (ControlFlow 0 4) 3)) inline$atomic_setElt$0$anon0_correct)))
(let ((inline$atomic_getElt$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (= (select lock first_j) first_tid)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 5) 4))) inline$atomic_getElt$0$anon0_correct)))))
inline$atomic_getElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun inline$atomic_getElt$0$elt_j@1 () Int)
(declare-fun first_j () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_getElt_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= elt@0 (store elt@@0 second_j null)) (= owner@0 (store owner second_j nil))) (= inline$atomic_getElt$0$elt_j@1 (select elt@0 first_j))) (= lock lock)) (= valid@@0 valid@@0))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_getElt$0$anon0_correct  (=> (and (= inline$atomic_getElt$0$elt_j@1 (select elt@@0 first_j)) (= (ControlFlow 0 4) 3)) inline$atomic_setEltToNull$0$anon0_correct)))
(let ((inline$atomic_getElt$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (= (select lock first_j) first_tid)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 5) 4))) inline$atomic_getElt$0$anon0_correct)))))
inline$atomic_getElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setElt_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock@0 first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner first_j) nil))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |29|
)) (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner first_j) nil))))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_getElt$0$elt_j@1 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setElt_atomic_getElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_getElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= inline$atomic_getElt$0$elt_j@1 (select elt@@0 second_j)) (= elt@0 (store elt@@0 first_j first_x))) (= owner@0 (store owner first_j first_tid))) (= lock lock))))))
(let ((inline$atomic_getElt$0$anon0_correct  (=> (and (= inline$atomic_getElt$0$elt_j@1 (select elt@0 second_j)) (= (ControlFlow 0 3) 2)) inline$atomic_getElt$0$Return_correct)))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j first_x)) (=> (and (= owner@0 (store owner first_j first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_getElt$0$anon0_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= first_x null)) (= (select owner first_j) nil)) (= (select lock second_j) second_tid)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4))) inline$atomic_setElt$0$anon0_correct)))))
inline$atomic_setElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setElt_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setElt$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= elt@1 (store (store elt@@0 second_j second_x) first_j first_x)) (= owner@1 (store (store owner second_j second_tid) first_j first_tid))) (= lock lock))))))
(let ((inline$atomic_setElt$1$anon0_correct  (=> (= elt@1 (store elt@0 second_j second_x)) (=> (and (= owner@1 (store owner@0 second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$1$Return_correct))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j first_x)) (=> (and (= owner@0 (store owner first_j first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_setElt$1$anon0_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= first_x null)) (= (select owner first_j) nil)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 5) 4))) inline$atomic_setElt$0$anon0_correct)))))
inline$atomic_setElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setElt_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setElt$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_x null)) (= (select owner@0 first_j) nil))))))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 6) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |32|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= first_x null)) (= (select owner first_j) nil)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 7) 6))) inline$atomic_setElt$0$anon0_correct)))))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setElt_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner@0 first_j) nil))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |33|
)) (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner first_j) nil))))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 4) 3))) inline$atomic_setElt$0$anon0_correct))))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setElt_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= elt@1 (store (store elt@@0 second_j null) first_j first_x)) (= owner@1 (store (store owner second_j nil) first_j first_tid))) (= lock lock)) (= valid@@0 valid@@0))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@1 (store elt@0 second_j null)) (=> (and (= owner@1 (store owner@0 second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j first_x)) (=> (and (= owner@0 (store owner first_j first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_setEltToNull$0$anon0_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= first_x null)) (= (select owner first_j) nil)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 5) 4))) inline$atomic_setElt$0$anon0_correct)))))
inline$atomic_setElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setEltToNull_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setElt$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (select valid@@0 first_j)))) (=> (=> true (not (select valid@@0 first_j))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select owner@0 first_j) first_tid) (= (select lock first_j) first_tid))))))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 6) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (and (<= 0 first_j) (< first_j q@max)) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 7) 6))) inline$atomic_setElt$0$anon0_correct)))))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setElt_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner@0 first_j) nil))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)) (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner first_j) nil))))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 4) 3))) inline$atomic_setEltToNull$0$anon0_correct))))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setElt_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= valid@0 (store valid@@0 second_j true)) (= elt@0 (store elt@@0 first_j first_x))) (= owner@1 (store (store owner second_j done) first_j first_tid))) (= lock lock))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@1 (store owner@0 second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j first_x)) (=> (and (= owner@0 (store owner first_j first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_setValid$0$anon0_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |37|
)) (=> (and (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (and (not (= first_x null)) (= (select owner first_j) nil)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_setElt$0$anon0_correct))))
inline$atomic_setElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setValid_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setElt$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (= (select owner@0 first_j) first_tid))) (=> (=> true (= (select owner@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 6) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |38|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 7) 6))) inline$atomic_setElt$0$anon0_correct)))))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setElt_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner@0 first_j) nil))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |39|
)) (=> (and (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (not (= first_x null)) (= (select owner first_j) nil)))) (= (select owner second_j) second_tid)) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_setValid$0$anon0_correct)))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setElt_atomic_isEltThereAndValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_isEltThereAndValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 second_j) second_x) (select valid@@0 second_j))) (= elt@0 (store elt@@0 first_j first_x))) (= owner@0 (store owner first_j first_tid))) (= lock lock)) (= valid@@0 valid@@0))))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@0 second_j) second_x) (select valid@@0 second_j))) (= (ControlFlow 0 3) 2)) inline$atomic_isEltThereAndValid$0$Return_correct)))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j first_x)) (=> (and (= owner@0 (store owner first_j first_tid)) (= (ControlFlow 0 4) 3)) inline$atomic_isEltThereAndValid$0$anon0_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |40|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= first_x null)) (= (select owner first_j) nil)))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_setElt$0$anon0_correct))))
inline$atomic_setElt$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setEltToNull_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner first_j) first_tid) (= (select lock@0 first_j) first_tid))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |41|
)) (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid))))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_getElt$0$elt_j@1 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setEltToNull_atomic_getElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_getElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= inline$atomic_getElt$0$elt_j@1 (select elt@@0 second_j)) (= elt@0 (store elt@@0 first_j null))) (= owner@0 (store owner first_j nil))) (= valid@@0 valid@@0)) (= lock lock))))))
(let ((inline$atomic_getElt$0$anon0_correct  (=> (and (= inline$atomic_getElt$0$elt_j@1 (select elt@0 second_j)) (= (ControlFlow 0 3) 2)) inline$atomic_getElt$0$Return_correct)))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j null)) (=> (and (= owner@0 (store owner first_j nil)) (= (ControlFlow 0 4) 3)) inline$atomic_getElt$0$anon0_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |42|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)) (= (select lock second_j) second_tid)) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4))) inline$atomic_setEltToNull$0$anon0_correct)))))
inline$atomic_setEltToNull$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setEltToNull_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= elt@1 (store (store elt@@0 second_j second_x) first_j null)) (= owner@1 (store (store owner second_j second_tid) first_j nil))) (= valid@@0 valid@@0)) (= lock lock))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@1 (store elt@0 second_j second_x)) (=> (and (= owner@1 (store owner@0 second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j null)) (=> (and (= owner@0 (store owner first_j nil)) (= (ControlFlow 0 4) 3)) inline$atomic_setElt$0$anon0_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |43|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (and (<= 0 first_j) (< first_j q@max)) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 5) 4))) inline$atomic_setEltToNull$0$anon0_correct)))))
inline$atomic_setEltToNull$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setElt_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setEltToNull$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_x null)) (= (select owner@0 first_j) nil))))))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 6) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |44|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (and (not (= first_x null)) (= (select owner first_j) nil)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 7) 6))) inline$atomic_setEltToNull$0$anon0_correct)))))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setEltToNull_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner@0 first_j) first_tid) (= (select lock first_j) first_tid))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |45|
)) (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid))))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 4) 3))) inline$atomic_setElt$0$anon0_correct))))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setEltToNull_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setEltToNull$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= elt@1 (store (store elt@@0 second_j null) first_j null)) (= owner@1 (store (store owner second_j nil) first_j nil))) (= valid@@0 valid@@0)) (= lock lock))))))
(let ((inline$atomic_setEltToNull$1$anon0_correct  (=> (= elt@1 (store elt@0 second_j null)) (=> (and (= owner@1 (store owner@0 second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$1$Return_correct))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j null)) (=> (and (= owner@0 (store owner first_j nil)) (= (ControlFlow 0 4) 3)) inline$atomic_setEltToNull$1$anon0_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |46|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (and (<= 0 first_j) (< first_j q@max)) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 5) 4))) inline$atomic_setEltToNull$0$anon0_correct)))))
inline$atomic_setEltToNull$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setEltToNull_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setEltToNull$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (select valid@@0 first_j)))) (=> (=> true (not (select valid@@0 first_j))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select owner@0 first_j) first_tid) (= (select lock first_j) first_tid))))))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 6) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |47|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (and (<= 0 first_j) (< first_j q@max)) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 7) 6))) inline$atomic_setEltToNull$0$anon0_correct)))))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setEltToNull_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner@0 first_j) first_tid) (= (select lock first_j) first_tid))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |48|
)) (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid))))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 4) 3))) inline$atomic_setEltToNull$0$anon0_correct))))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setEltToNull_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= valid@0 (store valid@@0 second_j true)) (= elt@0 (store elt@@0 first_j null))) (= owner@1 (store (store owner second_j done) first_j nil))) (= lock lock))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@1 (store owner@0 second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j null)) (=> (and (= owner@0 (store owner first_j nil)) (= (ControlFlow 0 4) 3)) inline$atomic_setValid$0$anon0_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |49|
)) (=> (and (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_setEltToNull$0$anon0_correct))))
inline$atomic_setEltToNull$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setValid_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setEltToNull$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (= (select owner@0 first_j) first_tid))) (=> (=> true (= (select owner@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 6) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |50|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 7) 6))) inline$atomic_setEltToNull$0$anon0_correct)))))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setEltToNull_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner@0 first_j) first_tid) (= (select lock first_j) first_tid))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |51|
)) (=> (and (not (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (= (select owner second_j) second_tid)) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_setValid$0$anon0_correct)))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setEltToNull_atomic_isEltThereAndValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_isEltThereAndValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 second_j) second_x) (select valid@@0 second_j))) (= elt@0 (store elt@@0 first_j null))) (= owner@0 (store owner first_j nil))) (= valid@@0 valid@@0)) (= lock lock))))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@0 second_j) second_x) (select valid@@0 second_j))) (= (ControlFlow 0 3) 2)) inline$atomic_isEltThereAndValid$0$Return_correct)))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 first_j null)) (=> (and (= owner@0 (store owner first_j nil)) (= (ControlFlow 0 4) 3)) inline$atomic_isEltThereAndValid$0$anon0_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |52|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (and (<= 0 first_j) (< first_j q@max)) (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_setEltToNull$0$anon0_correct))))
inline$atomic_setEltToNull$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setValid_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (= (select owner first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock@0 first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |53|
)) (not (and (and (and (= (select owner first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setValid_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= elt@0 (store elt@@0 second_j second_x)) (= valid@0 (store valid@@0 first_j true))) (= owner@1 (store (store owner second_j second_tid) first_j done))) (= lock lock))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@1 (store owner@0 second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 first_j true)) (=> (and (= owner@0 (store owner first_j done)) (= (ControlFlow 0 4) 3)) inline$atomic_setElt$0$anon0_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |54|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 5) 4))) inline$atomic_setValid$0$anon0_correct)))))
inline$atomic_setValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setElt_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setValid$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (not (= first_x null)) (= (select owner@0 first_j) nil))))))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 6) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |55|
)) (=> (and (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (and (not (= first_x null)) (= (select owner first_j) nil)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_setValid$0$anon0_correct))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setValid_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (= (select owner@0 first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |56|
)) (not (and (and (and (= (select owner first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 4) 3))) inline$atomic_setElt$0$anon0_correct))))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setValid_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (= elt@0 (store elt@@0 second_j null)) (= valid@0 (store valid@@0 first_j true))) (= owner@1 (store (store owner second_j nil) first_j done))) (= lock lock))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@1 (store owner@0 second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 first_j true)) (=> (and (= owner@0 (store owner first_j done)) (= (ControlFlow 0 4) 3)) inline$atomic_setEltToNull$0$anon0_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |57|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 5) 4))) inline$atomic_setValid$0$anon0_correct)))))
inline$atomic_setValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setEltToNull_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setValid$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (select valid@0 first_j)))) (=> (=> true (not (select valid@0 first_j))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select owner@0 first_j) first_tid) (= (select lock first_j) first_tid))))))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 6) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |58|
)) (=> (and (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_setValid$0$anon0_correct))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setValid_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (= (select owner@0 first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |59|
)) (not (and (and (and (= (select owner first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 4) 3))) inline$atomic_setEltToNull$0$anon0_correct))))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun valid@1 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setValid_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setValid$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (= valid@1 (store (store valid@@0 second_j true) first_j true)) (= owner@1 (store (store owner second_j done) first_j done))) (= lock lock))))))
(let ((inline$atomic_setValid$1$anon0_correct  (=> (= valid@1 (store valid@0 second_j true)) (=> (and (= owner@1 (store owner@0 second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$1$Return_correct))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 first_j true)) (=> (and (= owner@0 (store owner first_j done)) (= (ControlFlow 0 4) 3)) inline$atomic_setValid$1$anon0_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |60|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_setValid$0$anon0_correct))))
inline$atomic_setValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setValid_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$atomic_setValid$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (= (select owner@0 first_j) first_tid))) (=> (=> true (= (select owner@0 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 6) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |61|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 7) 6)))) inline$atomic_setValid$0$anon0_correct))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_setValid_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (= (select owner@0 first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |62|
)) (=> (and (not (and (and (and (= (select owner first_j) first_tid) (and (not (= first_tid nil)) (not (= first_tid done)))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max)))) (= (select owner second_j) second_tid)) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_setValid$0$anon0_correct)))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setValid_atomic_isEltThereAndValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_isEltThereAndValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 second_j) second_x) (select valid@@0 second_j))) (= valid@0 (store valid@@0 first_j true))) (= owner@0 (store owner first_j done))) (= lock lock)) (= elt@@0 elt@@0))))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 second_j) second_x) (select valid@0 second_j))) (= (ControlFlow 0 3) 2)) inline$atomic_isEltThereAndValid$0$Return_correct)))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 first_j true)) (=> (and (= owner@0 (store owner first_j done)) (= (ControlFlow 0 4) 3)) inline$atomic_isEltThereAndValid$0$anon0_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |63|
)) (= (select owner first_j) first_tid)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_setValid$0$anon0_correct))))
inline$atomic_setValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@1 () (Array Int Int))
(declare-fun second_x () Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@2 () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_setValid_AtomicFindSlot)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$AtomicFindSlot$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$0$r@0))) (= elt@1 (store elt@@0 inline$AtomicFindSlot$0$r@0 second_x))) (= valid@0 (store valid@@0 first_j true))) (= owner@2 (store (store owner inline$AtomicFindSlot$0$r@0 second_tid) first_j done))) (= lock lock)) (and (and (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= valid@0 (store valid@@0 first_j true))) (= owner@2 (store owner first_j done))) (= lock lock)) (= elt@1 elt@@0)))))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= owner@2 owner@0)) (and (= elt@1 elt@@0) (= (ControlFlow 0 4) 2))) inline$AtomicFindSlot$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (and (and (and (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null) (= (select owner@0 inline$AtomicFindSlot$0$r@0) nil)) (and (not (select valid@0 inline$AtomicFindSlot$0$r@0)) (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 second_x)))) (and (and (= owner@1 (store owner@0 inline$AtomicFindSlot$0$r@0 second_tid)) (= owner@2 owner@1)) (and (= elt@1 elt@0) (= (ControlFlow 0 3) 2)))) inline$AtomicFindSlot$0$Return_correct))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (and (= valid@0 (store valid@@0 first_j true)) (= owner@0 (store owner first_j done))) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicFindSlot$0$anon3_Else_correct)))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |64|
)) (= (select owner first_j) first_tid)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (=> (and (and (and (<= 0 first_j) (< first_j q@max)) (not (= second_x null))) (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (ControlFlow 0 6) 5))) inline$atomic_setValid$0$anon0_correct)))))
inline$atomic_setValid$0$Entry_correct))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun second_i () Int)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_FailurePreservationChecker_atomic_isEltThereAndValid_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (not (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock@0 first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock second_i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |65|
)) (not (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_i) second_tid)) (and (and (<= 0 second_i) (< second_i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct))))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_isEltThereAndValid_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= elt@0 (store elt@@0 second_j second_x)) (= owner@0 (store owner second_j second_tid))) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@0 first_j) first_x) (select valid@@0 first_j)))) (= lock lock)) (= valid@@0 valid@@0))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j second_x)) (=> (and (= owner@0 (store owner second_j second_tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 first_j) first_x) (select valid@@0 first_j))) (= (ControlFlow 0 4) 3)) inline$atomic_setElt$0$anon0_correct)))
(let ((inline$atomic_isEltThereAndValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |66|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (and (not (= second_x null)) (= (select owner second_j) nil)) (= (ControlFlow 0 5) 4))) inline$atomic_isEltThereAndValid$0$anon0_correct)))))
inline$atomic_isEltThereAndValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_isEltThereAndValid_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= elt@0 (store elt@@0 second_j null)) (= owner@0 (store owner second_j nil))) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@0 first_j) first_x) (select valid@@0 first_j)))) (= lock lock)) (= valid@@0 valid@@0))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 second_j null)) (=> (and (= owner@0 (store owner second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 first_j) first_x) (select valid@@0 first_j))) (= (ControlFlow 0 4) 3)) inline$atomic_setEltToNull$0$anon0_correct)))
(let ((inline$atomic_isEltThereAndValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |67|
)) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (<= 0 first_j) (< first_j q@max))) (=> (and (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (<= 0 second_j) (< second_j q@max))) (and (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)) (= (ControlFlow 0 5) 4))) inline$atomic_isEltThereAndValid$0$anon0_correct)))))
inline$atomic_isEltThereAndValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun second_j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_isEltThereAndValid_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (and (= valid@0 (store valid@@0 second_j true)) (= owner@0 (store owner second_j done))) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 first_j) first_x) (select valid@0 first_j)))) (= lock lock)) (= elt@@0 elt@@0))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@0 (store owner second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 first_j) first_x) (select valid@@0 first_j))) (= (ControlFlow 0 4) 3)) inline$atomic_setValid$0$anon0_correct)))
(let ((inline$atomic_isEltThereAndValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |68|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (and (and (<= 0 first_j) (< first_j q@max)) (= (select owner second_j) second_tid))) (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (and (<= 0 second_j) (< second_j q@max)) (= (ControlFlow 0 5) 4)))) inline$atomic_isEltThereAndValid$0$anon0_correct))))
inline$atomic_isEltThereAndValid$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@1 () (Array Int Int))
(declare-fun second_x () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun second_tid () T@X)
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun first_j () Int)
(declare-fun first_x () Int)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun first_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_atomic_isEltThereAndValid_AtomicFindSlot)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$AtomicFindSlot$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$0$r@0))) (= elt@1 (store elt@@0 inline$AtomicFindSlot$0$r@0 second_x))) (= owner@1 (store owner inline$AtomicFindSlot$0$r@0 second_tid))) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@1 first_j) first_x) (select valid@@0 first_j)))) (= lock lock)) (= valid@@0 valid@@0)) (and (and (and (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@1 first_j) first_x) (select valid@@0 first_j)))) (= lock lock)) (= elt@1 elt@@0)) (= valid@@0 valid@@0)) (= owner@1 owner)))))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= elt@1 elt@@0)) (and (= owner@1 owner) (= (ControlFlow 0 4) 2))) inline$AtomicFindSlot$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (and (and (and (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (and (not (select valid@@0 inline$AtomicFindSlot$0$r@0)) (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 second_x)))) (and (and (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 second_tid)) (= elt@1 elt@0)) (and (= owner@1 owner@0) (= (ControlFlow 0 3) 2)))) inline$AtomicFindSlot$0$Return_correct))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 first_j) first_x) (select valid@@0 first_j))) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicFindSlot$0$anon3_Else_correct)))))
(let ((inline$atomic_isEltThereAndValid$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |69|
)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (=> (and (and (and (<= 0 first_j) (< first_j q@max)) (not (= second_x null))) (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (ControlFlow 0 6) 5))) inline$atomic_isEltThereAndValid$0$anon0_correct)))))
inline$atomic_isEltThereAndValid$0$Entry_correct))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun second_j () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@2 () (Array Int Int))
(declare-fun first_x () Int)
(declare-fun owner@2 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@1 () (Array Int Int))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicFindSlot_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select (store elt@@0 second_j null) inline$AtomicFindSlot$0$r@0) null)) (= (select (store owner second_j nil) inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$0$r@0))) (= elt@2 (store (store elt@@0 second_j null) inline$AtomicFindSlot$0$r@0 first_x))) (= owner@2 (store (store owner second_j nil) inline$AtomicFindSlot$0$r@0 first_tid))) (= valid@@0 valid@@0)) (= lock lock)) (and (and (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= elt@2 (store elt@@0 second_j null))) (= owner@2 (store owner second_j nil))) (= valid@@0 valid@@0)) (= lock lock)))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@2 (store elt@1 second_j null)) (=> (and (= owner@2 (store owner@1 second_j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= elt@1 elt@@0)) (and (= owner@1 owner) (= (ControlFlow 0 5) 3))) inline$atomic_setEltToNull$0$anon0_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (and (and (and (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (and (not (select valid@@0 inline$AtomicFindSlot$0$r@0)) (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x)))) (and (and (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 first_tid)) (= elt@1 elt@0)) (and (= owner@1 owner@0) (= (ControlFlow 0 4) 3)))) inline$atomic_setEltToNull$0$anon0_correct))))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |70|
)) (not (= first_x null))) (and (not (= first_tid nil)) (not (= first_tid done)))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (not (select valid@@0 second_j))) (and (and (<= 0 second_j) (< second_j q@max)) (and (= (select owner second_j) second_tid) (= (select lock second_j) second_tid)))) (and (=> (= (ControlFlow 0 6) 4) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) inline$AtomicFindSlot$0$anon3_Else_correct))))))
inline$AtomicFindSlot$0$Entry_correct))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun first_tid () T@X)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun first_j () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun elt@0 () (Array Int Int))
(declare-fun second_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setEltToNull_AtomicFindSlot)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((inline$AtomicFindSlot$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (select valid@@0 first_j)))) (=> (=> true (not (select valid@@0 first_j))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (and (<= 0 first_j) (< first_j q@max)))) (=> (=> true (and (<= 0 first_j) (< first_j q@max))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= (select owner@1 first_j) first_tid) (= (select lock first_j) first_tid))))))))))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (=> (and (= owner@1 owner) (= (ControlFlow 0 7) 2)) inline$AtomicFindSlot$0$Return_correct))))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (and (= (select owner inline$AtomicFindSlot$0$r@0) nil) (not (select valid@@0 inline$AtomicFindSlot$0$r@0)))) (and (and (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 second_x)) (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 second_tid))) (and (= owner@1 owner@0) (= (ControlFlow 0 6) 2)))) inline$AtomicFindSlot$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |71|
)) (=> (and (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (select valid@@0 first_j))) (and (<= 0 first_j) (< first_j q@max))) (and (and (and (= (select owner first_j) first_tid) (= (select lock first_j) first_tid)) (not (= second_x null))) (and (not (= second_tid nil)) (not (= second_tid done))))) (and (=> (= (ControlFlow 0 8) 6) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) inline$AtomicFindSlot$0$anon3_Else_correct))))))
inline$AtomicFindSlot$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun second_j () Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@1 () (Array Int Int))
(declare-fun first_x () Int)
(declare-fun owner@2 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicFindSlot_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (= (select (store owner second_j done) inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@0 inline$AtomicFindSlot$0$r@0))) (= valid@0 (store valid@@0 second_j true))) (= elt@1 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x))) (= owner@2 (store (store owner second_j done) inline$AtomicFindSlot$0$r@0 first_tid))) (= lock lock)) (and (and (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= valid@0 (store valid@@0 second_j true))) (= owner@2 (store owner second_j done))) (= elt@1 elt@@0)) (= lock lock)))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 second_j true)) (=> (and (= owner@2 (store owner@1 second_j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= elt@1 elt@@0)) (and (= owner@1 owner) (= (ControlFlow 0 5) 3))) inline$atomic_setValid$0$anon0_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (and (and (and (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (and (not (select valid@@0 inline$AtomicFindSlot$0$r@0)) (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x)))) (and (and (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 first_tid)) (= elt@1 elt@0)) (and (= owner@1 owner@0) (= (ControlFlow 0 4) 3)))) inline$atomic_setValid$0$anon0_correct))))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |72|
)) (not (= first_x null))) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select owner second_j) second_tid)) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (=> (= (ControlFlow 0 6) 4) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) inline$AtomicFindSlot$0$anon3_Else_correct)))))))
inline$AtomicFindSlot$0$Entry_correct))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun first_j () Int)
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun owner () (Array Int T@X))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun second_x () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_GatePreservationChecker_atomic_setValid_AtomicFindSlot)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((inline$AtomicFindSlot$0$Return_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (= (select owner@1 first_j) first_tid))) (=> (=> true (= (select owner@1 first_j) first_tid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (and (not (= first_tid nil)) (not (= first_tid done))))) (=> (=> true (and (not (= first_tid nil)) (not (= first_tid done)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> true (= (select lock first_j) first_tid))) (=> (=> true (= (select lock first_j) first_tid)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (<= 0 first_j) (< first_j q@max))))))))))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (=> (and (= owner@1 owner) (= (ControlFlow 0 7) 2)) inline$AtomicFindSlot$0$Return_correct))))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (and (= (select owner inline$AtomicFindSlot$0$r@0) nil) (not (select valid@@0 inline$AtomicFindSlot$0$r@0)))) (and (and (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 second_x)) (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 second_tid))) (and (= owner@1 owner@0) (= (ControlFlow 0 6) 2)))) inline$AtomicFindSlot$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |73|
)) (= (select owner first_j) first_tid)) (=> (and (and (not (= first_tid nil)) (not (= first_tid done))) (= (select lock first_j) first_tid)) (=> (and (and (and (<= 0 first_j) (< first_j q@max)) (not (= second_x null))) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (=> (= (ControlFlow 0 8) 6) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) inline$AtomicFindSlot$0$anon3_Else_correct)))))))
inline$AtomicFindSlot$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun second_j () Int)
(declare-fun second_x () Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun first_x () Int)
(declare-fun owner@1 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun second_tid () T@X)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicFindSlot_atomic_isEltThereAndValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$atomic_isEltThereAndValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (and (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$0$r@0))) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 second_j) second_x) (select valid@@0 second_j)))) (= elt@1 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x))) (= owner@1 (store owner inline$AtomicFindSlot$0$r@0 first_tid))) (= valid@@0 valid@@0)) (= lock lock)) (and (and (and (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@1 second_j) second_x) (select valid@@0 second_j)))) (= elt@1 elt@@0)) (= owner@1 owner)) (= valid@@0 valid@@0)) (= lock lock)))))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@1 second_j) second_x) (select valid@@0 second_j))) (= (ControlFlow 0 3) 2)) inline$atomic_isEltThereAndValid$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (and (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= elt@1 elt@@0)) (and (= owner@1 owner) (= (ControlFlow 0 5) 3))) inline$atomic_isEltThereAndValid$0$anon0_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (and (and (and (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (and (not (select valid@@0 inline$AtomicFindSlot$0$r@0)) (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x)))) (and (and (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 first_tid)) (= elt@1 elt@0)) (and (= owner@1 owner@0) (= (ControlFlow 0 4) 3)))) inline$atomic_isEltThereAndValid$0$anon0_correct))))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (and (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |74|
)) (not (= first_x null))) (and (not (= first_tid nil)) (not (= first_tid done)))) (=> (and (and (and (not (= second_tid nil)) (not (= second_tid done))) (= (select lock second_j) second_tid)) (and (<= 0 second_j) (< second_j q@max))) (and (=> (= (ControlFlow 0 6) 4) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) inline$AtomicFindSlot$0$anon3_Else_correct))))))
inline$AtomicFindSlot$0$Entry_correct))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicFindSlot$1$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun second_x () Int)
(declare-fun second_tid () T@X)
(declare-fun elt@3 () (Array Int Int))
(declare-fun first_x () Int)
(declare-fun owner@3 () (Array Int T@X))
(declare-fun first_tid () T@X)
(declare-fun elt@1 () (Array Int Int))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun elt@2 () (Array Int Int))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun owner@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicFindSlot_AtomicFindSlot)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((inline$AtomicFindSlot$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (or (or (or (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$1$r@0) null)) (= (select owner inline$AtomicFindSlot$1$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$1$r@0))) (<= 0 inline$AtomicFindSlot$0$r@0)) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select (store elt@@0 inline$AtomicFindSlot$1$r@0 second_x) inline$AtomicFindSlot$0$r@0) null)) (= (select (store owner inline$AtomicFindSlot$1$r@0 second_tid) inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$0$r@0))) (= elt@3 (store (store elt@@0 inline$AtomicFindSlot$1$r@0 second_x) inline$AtomicFindSlot$0$r@0 first_x))) (= owner@3 (store (store owner inline$AtomicFindSlot$1$r@0 second_tid) inline$AtomicFindSlot$0$r@0 first_tid))) (= valid@@0 valid@@0)) (and (and (and (and (and (and (and (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$1$r@0) null)) (= (select owner inline$AtomicFindSlot$1$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$1$r@0))) (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (= elt@3 (store elt@@0 inline$AtomicFindSlot$1$r@0 second_x))) (= owner@3 (store owner inline$AtomicFindSlot$1$r@0 second_tid))) (= valid@@0 valid@@0))) (and (and (and (and (and (and (and (and (= inline$AtomicFindSlot$1$r@0 (- 0 1)) (<= 0 inline$AtomicFindSlot$0$r@0)) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (= (select owner inline$AtomicFindSlot$0$r@0) nil)) (not (select valid@@0 inline$AtomicFindSlot$0$r@0))) (= elt@3 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x))) (= owner@3 (store owner inline$AtomicFindSlot$0$r@0 first_tid))) (= valid@@0 valid@@0))) (and (and (and (and (= inline$AtomicFindSlot$1$r@0 (- 0 1)) (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (= elt@3 elt@@0)) (= owner@3 owner)) (= valid@@0 valid@@0)))))))
(let ((inline$AtomicFindSlot$1$anon3_Else_correct  (=> (and (and (= inline$AtomicFindSlot$1$r@0 (- 0 1)) (= elt@3 elt@1)) (and (= owner@3 owner@1) (= (ControlFlow 0 4) 2))) inline$AtomicFindSlot$1$Return_correct)))
(let ((inline$AtomicFindSlot$1$anon3_Then_correct  (=> (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (=> (and (and (and (= (select elt@1 inline$AtomicFindSlot$1$r@0) null) (= (select owner@1 inline$AtomicFindSlot$1$r@0) nil)) (and (not (select valid@@0 inline$AtomicFindSlot$1$r@0)) (= elt@2 (store elt@1 inline$AtomicFindSlot$1$r@0 second_x)))) (and (and (= owner@2 (store owner@1 inline$AtomicFindSlot$1$r@0 second_tid)) (= elt@3 elt@2)) (and (= owner@3 owner@2) (= (ControlFlow 0 3) 2)))) inline$AtomicFindSlot$1$Return_correct))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (=> (and (= elt@1 elt@@0) (= owner@1 owner)) (and (=> (= (ControlFlow 0 6) 3) inline$AtomicFindSlot$1$anon3_Then_correct) (=> (= (ControlFlow 0 6) 4) inline$AtomicFindSlot$1$anon3_Else_correct))))))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null)) (and (= (select owner inline$AtomicFindSlot$0$r@0) nil) (not (select valid@@0 inline$AtomicFindSlot$0$r@0)))) (and (and (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 first_x)) (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 first_tid))) (and (= elt@1 elt@0) (= owner@1 owner@0)))) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicFindSlot$1$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicFindSlot$1$anon3_Else_correct)))))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (and (exists ((Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) first_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) (store ((as const (Array T@X Bool)) false) second_tid true) ((_ map (= (Int Int) Bool)) Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |75|
)) (not (= first_x null))) (=> (and (and (and (not (= first_tid nil)) (not (= first_tid done))) (not (= second_x null))) (and (not (= second_tid nil)) (not (= second_tid done)))) (and (=> (= (ControlFlow 0 7) 5) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 7) 6) inline$AtomicFindSlot$0$anon3_Else_correct))))))
inline$AtomicFindSlot$0$Entry_correct)))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@4 () Bool)
(declare-fun elt@9 () (Array Int Int))
(declare-fun Civl_global_old_elt@3 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun Civl_global_old_valid@3 () (Array Int Bool))
(declare-fun lock@11 () (Array Int T@X))
(declare-fun Civl_global_old_lock@3 () (Array Int T@X))
(declare-fun owner@9 () (Array Int T@X))
(declare-fun Civl_global_old_owner@3 () (Array Int T@X))
(declare-fun r@2 () Int)
(declare-fun x@@0 () Int)
(declare-fun tid () T@X)
(declare-fun Civl_old_r@3 () Int)
(declare-fun Civl_pc@5 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun elt@7 () (Array Int Int))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun lock@9 () (Array Int T@X))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun r@0 () Int)
(declare-fun elt@6 () (Array Int Int))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun lock@8 () (Array Int T@X))
(declare-fun owner@6 () (Array Int T@X))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun j@0 () Int)
(declare-fun elt@12 () (Array Int Int))
(declare-fun valid@11 () (Array Int Bool))
(declare-fun owner@12 () (Array Int T@X))
(declare-fun owner@10 () (Array Int T@X))
(declare-fun valid@9 () (Array Int Bool))
(declare-fun elt@10 () (Array Int Int))
(declare-fun elt@3 () (Array Int Int))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun j@1 () Int)
(declare-fun elt@4 () (Array Int Int))
(declare-fun Civl_global_old_elt@1 () (Array Int Int))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun Civl_global_old_valid@1 () (Array Int Bool))
(declare-fun lock@6 () (Array Int T@X))
(declare-fun Civl_global_old_lock@1 () (Array Int T@X))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun Civl_global_old_owner@1 () (Array Int T@X))
(declare-fun Civl_pc@0 () Bool)
(declare-fun r () Int)
(declare-fun Civl_old_r@1 () Int)
(declare-fun lock@5 () (Array Int T@X))
(declare-fun elt@2 () (Array Int Int))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun lock@4 () (Array Int T@X))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun lock@2 () (Array Int T@X))
(declare-fun Civl_global_old_elt@4 () (Array Int Int))
(declare-fun Civl_global_old_valid@4 () (Array Int Bool))
(declare-fun Civl_global_old_owner@4 () (Array Int T@X))
(declare-fun elt@11 () (Array Int Int))
(declare-fun valid@10 () (Array Int Bool))
(declare-fun owner@11 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@7 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun Civl_ok@0 () Bool)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun elt@5 () (Array Int Int))
(declare-fun lock@7 () (Array Int T@X))
(declare-fun owner@5 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun lock@3 () (Array Int T@X))
(declare-fun inline$atomic_getElt$0$elt_j@2 () Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@3 () Bool)
(declare-fun elt@8 () (Array Int Int))
(declare-fun Civl_global_old_elt@2 () (Array Int Int))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun Civl_global_old_valid@2 () (Array Int Bool))
(declare-fun lock@10 () (Array Int T@X))
(declare-fun Civl_global_old_lock@2 () (Array Int T@X))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun Civl_global_old_owner@2 () (Array Int T@X))
(declare-fun r@1 () Int)
(declare-fun Civl_old_r@2 () Int)
(declare-fun lock@1 () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_FindSlot_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 105) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 64) (- 0 66)) (or Civl_pc@4 (or (and (and (and (= elt@9 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3)) (or (and (and (and (and (and (and (and (and (<= 0 r@2) (< r@2 q@max)) (= (select Civl_global_old_elt@3 r@2) null)) (= (select Civl_global_old_owner@3 r@2) nil)) (not (select valid@8 r@2))) (= elt@9 (store Civl_global_old_elt@3 r@2 x@@0))) (= owner@9 (store Civl_global_old_owner@3 r@2 tid))) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (and (and (and (and (= r@2 (- 0 1)) (= elt@9 Civl_global_old_elt@3)) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3)))))) (=> (or Civl_pc@4 (or (and (and (and (= elt@9 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3)) (or (and (and (and (and (and (and (and (and (<= 0 r@2) (< r@2 q@max)) (= (select Civl_global_old_elt@3 r@2) null)) (= (select Civl_global_old_owner@3 r@2) nil)) (not (select valid@8 r@2))) (= elt@9 (store Civl_global_old_elt@3 r@2 x@@0))) (= owner@9 (store Civl_global_old_owner@3 r@2 tid))) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (and (and (and (and (= r@2 (- 0 1)) (= elt@9 Civl_global_old_elt@3)) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3))))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (=> Civl_pc@4 (and (and (and (and (= elt@9 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3)) (= r@2 Civl_old_r@3)))) (=> (=> Civl_pc@4 (and (and (and (and (= elt@9 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3)) (= r@2 Civl_old_r@3))) (=> (and (and (= Civl_pc@5  (=> (and (and (and (= elt@9 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3)) Civl_pc@4)) (= Civl_ok@4  (or (or (and (and (and (and (and (and (and (and (<= 0 r@2) (< r@2 q@max)) (= (select Civl_global_old_elt@3 r@2) null)) (= (select Civl_global_old_owner@3 r@2) nil)) (not (select valid@8 r@2))) (= elt@9 (store Civl_global_old_elt@3 r@2 x@@0))) (= owner@9 (store Civl_global_old_owner@3 r@2 tid))) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (and (and (and (and (= r@2 (- 0 1)) (= elt@9 Civl_global_old_elt@3)) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@9 Civl_global_old_owner@3))) (and (= r@2 Civl_old_r@3) Civl_ok@3)))) (= (ControlFlow 0 64) (- 0 63))) Civl_ok@4)))))))
(let ((anon4_0_@2_Civl_ReturnChecker_correct  (=> (= elt@9 elt@7) (=> (and (and (= valid@8 valid@6) (= lock@11 lock@9)) (and (= owner@9 owner@7) (= Civl_global_old_elt@3 elt@7))) (=> (and (and (and (= Civl_global_old_valid@3 valid@6) (= Civl_global_old_lock@3 lock@9)) (and (= Civl_global_old_owner@3 owner@7) (= Civl_pc@4 Civl_pc@2))) (and (and (= Civl_ok@3 Civl_ok@2) (= Civl_old_r@3 r@0)) (and (= r@2 r@0) (= (ControlFlow 0 92) 64)))) Civl_ReturnChecker_correct)))))
(let ((anon6_Then_0_@2_Civl_ReturnChecker_correct  (=> (= elt@9 elt@6) (=> (and (and (= valid@8 valid@5) (= lock@11 lock@8)) (and (= owner@9 owner@6) (= Civl_global_old_elt@3 elt@6))) (=> (and (and (and (= Civl_global_old_valid@3 valid@5) (= Civl_global_old_lock@3 lock@8)) (and (= Civl_global_old_owner@3 owner@6) (= Civl_pc@4 Civl_pc@1))) (and (and (= Civl_ok@3 Civl_ok@1) (= Civl_old_r@3 j@0)) (and (= r@2 j@0) (= (ControlFlow 0 67) 64)))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 60) (- 0 59)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@12 i) null)  (and (not (select valid@11 i)) (= (select owner@12 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= owner@12 owner@10) (= valid@11 valid@9)) (and (= elt@12 elt@10) (= (ControlFlow 0 61) 60))) GeneratedUnifiedExit_correct)))
(let ((anon4_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@10 elt@7) (= valid@9 valid@6)) (and (= owner@10 owner@7) (= (ControlFlow 0 93) 61))) Civl_UnifiedReturn_correct)))
(let ((anon6_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@10 elt@6) (= valid@9 valid@5)) (and (= owner@10 owner@6) (= (ControlFlow 0 62) 61))) Civl_UnifiedReturn_correct)))
(let ((anon3_0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select elt@3 i@@0) null)  (and (not (select valid@3 i@@0)) (= (select owner@3 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@3 i@@1) null)  (and (not (select valid@3 i@@1)) (= (select owner@3 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 45) (- 0 44)) (<= 0 j@1))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 41) (- 0 42)) (and (and (and (= elt@4 Civl_global_old_elt@1) (= valid@4 Civl_global_old_valid@1)) (= lock@6 Civl_global_old_lock@1)) (= owner@4 Civl_global_old_owner@1))) (=> (and (and (and (= elt@4 Civl_global_old_elt@1) (= valid@4 Civl_global_old_valid@1)) (= lock@6 Civl_global_old_lock@1)) (= owner@4 Civl_global_old_owner@1)) (=> (= (ControlFlow 0 41) (- 0 40)) (=> Civl_pc@0 (= r Civl_old_r@1)))))))
(let ((anon3_0_@2_Civl_UnchangedChecker_correct  (=> (and (= elt@4 elt@3) (= valid@4 valid@3)) (=> (and (and (and (= lock@6 lock@5) (= owner@4 owner@3)) (and (= Civl_global_old_elt@1 elt@3) (= Civl_global_old_valid@1 valid@3))) (and (and (= Civl_global_old_lock@1 lock@5) (= Civl_global_old_owner@1 owner@3)) (and (= Civl_old_r@1 r) (= (ControlFlow 0 48) 41)))) Civl_UnchangedChecker_correct))))
(let ((anon6_Else$1_@2_Civl_UnchangedChecker_correct  (=> (and (= elt@4 elt@2) (= valid@4 valid@2)) (=> (and (and (and (= lock@6 lock@4) (= owner@4 owner@2)) (and (= Civl_global_old_elt@1 elt@2) (= Civl_global_old_valid@1 valid@2))) (and (and (= Civl_global_old_lock@1 lock@2) (= Civl_global_old_owner@1 owner@2)) (and (= Civl_old_r@1 r) (= (ControlFlow 0 43) 41)))) Civl_UnchangedChecker_correct))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@4 i@@2) null)  (and (not (select Civl_global_old_valid@4 i@@2)) (= (select Civl_global_old_owner@4 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 35) (- 0 34))) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@11 i@@3) null)  (and (not (select valid@10 i@@3)) (= (select owner@11 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 Civl_global_old_valid@4 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 Civl_global_old_elt@4) (= (ControlFlow 0 33) (- 0 32))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 elt@11))))
(let ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |76|
)) (=> (and (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select Civl_global_old_elt@4 i@@4) null)  (and (not (select Civl_global_old_valid@4 i@@4)) (= (select Civl_global_old_owner@4 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select elt@11 i@@5) null)  (and (not (select valid@10 i@@5)) (= (select owner@11 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@11 i@@6) null)  (and (not (select valid@10 i@@6)) (= (select owner@11 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 30) (- 0 29)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |77|
)) (=> (and (and (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select Civl_global_old_elt@4 i@@7) null)  (and (not (select Civl_global_old_valid@4 i@@7)) (= (select Civl_global_old_owner@4 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0)) (and (select Civl_global_old_valid@4 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (select Civl_global_old_elt@4 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))) (and (=> (= (ControlFlow 0 25) (- 0 28)) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select elt@11 i@@8) null)  (and (not (select valid@10 i@@8)) (= (select owner@11 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select elt@11 i@@9) null)  (and (not (select valid@10 i@@9)) (= (select owner@11 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3)) (and (select valid@10 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (select elt@11 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4)) (and (select valid@10 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (select elt@11 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 25) (- 0 24)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |79|
)) (=> (and (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select Civl_global_old_elt@4 i@@10) null)  (and (not (select Civl_global_old_valid@4 i@@10)) (= (select Civl_global_old_owner@4 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 23) (- 0 22))) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select elt@11 i@@11) null)  (and (not (select valid@10 i@@11)) (= (select owner@11 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |78|
)) (=> (and (and (and (and (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select Civl_global_old_elt@4 i@@12) null)  (and (not (select Civl_global_old_valid@4 i@@12)) (= (select Civl_global_old_owner@4 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done))) (= (ControlFlow 0 21) (- 0 20))) (and (and (and (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select elt@11 i@@13) null)  (and (not (select valid@10 i@@13)) (= (select owner@11 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |81|
)) (=> (and (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select Civl_global_old_elt@4 i@@14) null)  (and (not (select Civl_global_old_valid@4 i@@14)) (= (select Civl_global_old_owner@4 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 19) (- 0 18))) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select elt@11 i@@15) null)  (and (not (select valid@10 i@@15)) (= (select owner@11 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |80|
)) (=> (and (and (and (and (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select Civl_global_old_elt@4 i@@16) null)  (and (not (select Civl_global_old_valid@4 i@@16)) (= (select Civl_global_old_owner@4 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done))) (= (ControlFlow 0 17) (- 0 16))) (and (and (and (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select elt@11 i@@17) null)  (and (not (select valid@10 i@@17)) (= (select owner@11 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |83|
)) (=> (and (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select Civl_global_old_elt@4 i@@18) null)  (and (not (select Civl_global_old_valid@4 i@@18)) (= (select Civl_global_old_owner@4 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 15) (- 0 14))) (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@11 i@@19) null)  (and (not (select valid@10 i@@19)) (= (select owner@11 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |82|
)) (=> (and (and (and (and (and (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select Civl_global_old_elt@4 i@@20) null)  (and (not (select Civl_global_old_valid@4 i@@20)) (= (select Civl_global_old_owner@4 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done))) (= (ControlFlow 0 13) (- 0 12))) (and (and (and (and (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@11 i@@21) null)  (and (not (select valid@10 i@@21)) (= (select owner@11 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |85|
)) (=> (and (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select Civl_global_old_elt@4 i@@22) null)  (and (not (select Civl_global_old_valid@4 i@@22)) (= (select Civl_global_old_owner@4 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@11 i@@23) null)  (and (not (select valid@10 i@@23)) (= (select owner@11 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |84|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 Civl_global_old_valid@4 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 Civl_global_old_elt@4) (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select Civl_global_old_elt@4 i@@24) null)  (and (not (select Civl_global_old_valid@4 i@@24)) (= (select Civl_global_old_owner@4 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@11)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@11) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@11 i@@25) null)  (and (not (select valid@10 i@@25)) (= (select owner@11 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@11 i@@26) null)  (and (not (select valid@10 i@@26)) (= (select owner@11 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done))))))))))))
(let ((anon4_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@7) (=> (and (= valid@10 valid@6) (= owner@11 owner@7)) (=> (and (and (= Civl_global_old_elt@4 elt@7) (= Civl_global_old_valid@4 valid@6)) (and (= Civl_global_old_owner@4 owner@7) (= Civl_linear_tid_available@7 Civl_linear_tid_available@6))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 94) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 94) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 94) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 94) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 94) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 94) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 94) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 94) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 94) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 94) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 94) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 94) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 94) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon4_0_correct  (=> (and (= Civl_pc@2  (=> (and (and (and (= elt@2 elt@2) (= valid@2 valid@2)) (= lock@2 lock@2)) (= owner@2 owner@2)) Civl_pc@0)) (= Civl_ok@2  (or (or (and (and (and (and (and (and (and (and (<= 0 r@0) (< r@0 q@max)) (= (select elt@2 r@0) null)) (= (select owner@2 r@0) nil)) (not (select valid@2 r@0))) (= elt@2 (store elt@2 r@0 x@@0))) (= owner@2 (store owner@2 r@0 tid))) (= valid@2 valid@2)) (= lock@2 lock@2)) (and (and (and (and (= r@0 (- 0 1)) (= elt@2 elt@2)) (= valid@2 valid@2)) (= lock@2 lock@2)) (= owner@2 owner@2))) (and (= r@0 r) Civl_ok@0)))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@2 i@@27) null)  (and (not (select valid@2 i@@27)) (= (select owner@2 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@2 i@@28) null)  (and (not (select valid@2 i@@28)) (= (select owner@2 i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@29 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 q@max)) (= (= (select elt@7 i@@29) null)  (and (not (select valid@6 i@@29)) (= (select owner@7 i@@29) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@2 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@6 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 95) 92) anon4_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 95) 93) anon4_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 95) 94) anon4_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@2) (=> (and (= valid@10 valid@2) (= owner@11 owner@2)) (=> (and (and (= Civl_global_old_elt@4 elt@2) (= Civl_global_old_valid@4 valid@2)) (and (= Civl_global_old_owner@4 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 90) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 90) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 90) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 90) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 90) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 90) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 90) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 90) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 90) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 90) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 90) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 90) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 90) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@6) (=> (and (= valid@10 valid@5) (= owner@11 owner@6)) (=> (and (and (= Civl_global_old_elt@4 elt@6) (= Civl_global_old_valid@4 valid@5)) (and (= Civl_global_old_owner@4 owner@6) (= Civl_linear_tid_available@7 Civl_linear_tid_available@5))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 58) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 58) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 58) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 58) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 58) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 58) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 58) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 58) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 58) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 58) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 58) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 58) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 58) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_0_correct  (=> (and (= Civl_pc@1  (=> (and (and (and (= elt@5 elt@2) (= valid@2 valid@2)) (= lock@7 lock@2)) (= owner@5 owner@2)) Civl_pc@0)) (= Civl_ok@1  (or (or (and (and (and (and (and (and (and (and (<= 0 j@0) (< j@0 q@max)) (= (select elt@2 j@0) null)) (= (select owner@2 j@0) nil)) (not (select valid@2 j@0))) (= elt@5 (store elt@2 j@0 x@@0))) (= owner@5 (store owner@2 j@0 tid))) (= valid@2 valid@2)) (= lock@7 lock@2)) (and (and (and (and (= j@0 (- 0 1)) (= elt@5 elt@2)) (= valid@2 valid@2)) (= lock@7 lock@2)) (= owner@5 owner@2))) (and (= j@0 r) Civl_ok@0)))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 q@max)) (= (= (select elt@5 i@@30) null)  (and (not (select valid@2 i@@30)) (= (select owner@5 i@@30) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 q@max)) (= (= (select elt@5 i@@31) null)  (and (not (select valid@2 i@@31)) (= (select owner@5 i@@31) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 q@max)) (= (= (select elt@6 i@@32) null)  (and (not (select valid@5 i@@32)) (= (select owner@6 i@@32) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@1 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 68) 67) anon6_Then_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 68) 62) anon6_Then_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 68) 58) anon6_Then_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon6_Then$2_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@5) (=> (and (= valid@10 valid@2) (= owner@11 owner@5)) (=> (and (and (= Civl_global_old_elt@4 elt@2) (= Civl_global_old_valid@4 valid@2)) (and (= Civl_global_old_owner@4 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 56) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 56) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 56) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 56) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon3_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@3) (=> (and (= valid@10 valid@3) (= owner@11 owner@3)) (=> (and (and (= Civl_global_old_elt@4 elt@3) (= Civl_global_old_valid@4 valid@3)) (and (= Civl_global_old_owner@4 owner@3) (= Civl_linear_tid_available@7 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 47) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 47) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 47) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 47) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 47) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 47) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 47) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 47) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 47) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 47) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 47) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 47) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 47) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 49) (- 0 50)) (forall ((i@@33 Int) ) (!  (=> (and (<= 0 i@@33) (< i@@33 q@max)) (= (= (select elt@2 i@@33) null)  (and (not (select valid@2 i@@33)) (= (select owner@2 i@@33) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@34 Int) ) (!  (=> (and (<= 0 i@@34) (< i@@34 q@max)) (= (= (select elt@2 i@@34) null)  (and (not (select valid@2 i@@34)) (= (select owner@2 i@@34) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (and (forall ((i@@35 Int) ) (!  (=> (and (<= 0 i@@35) (< i@@35 q@max)) (= (= (select elt@3 i@@35) null)  (and (not (select valid@3 i@@35)) (= (select owner@3 i@@35) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (or Civl_pc@0 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done)))))) (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= j@1 (+ j@0 1)))) (and (and (=> (= (ControlFlow 0 49) 45) anon3_0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 49) 47) anon3_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 49) 48) anon3_0_@2_Civl_UnchangedChecker_correct)))))))
(let ((anon6_Else$1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@2) (=> (and (= valid@10 valid@2) (= owner@11 owner@2)) (=> (and (and (= Civl_global_old_elt@4 elt@2) (= Civl_global_old_valid@4 valid@2)) (and (= Civl_global_old_owner@4 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 39) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 39) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 39) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 39) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (= lock@4 (store lock@3 j@0 nil)) (and (and (=> (= (ControlFlow 0 51) 49) anon3_0_correct) (=> (= (ControlFlow 0 51) 39) anon6_Else$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 51) 43) anon6_Else$1_@2_Civl_UnchangedChecker_correct)))))
(let ((anon6_Else_correct  (=> (not (= inline$atomic_getElt$0$elt_j@2 null)) (and (=> (= (ControlFlow 0 52) (- 0 55)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 52) (- 0 53)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 52) 51) inline$atomic_release$0$anon0_correct))))))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@1) (=> (and (= valid@10 valid@1) (= owner@11 owner@1)) (=> (and (and (= Civl_global_old_elt@4 elt@1) (= Civl_global_old_valid@4 valid@1)) (and (= Civl_global_old_owner@4 owner@1) (= Civl_linear_tid_available@7 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 37) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 37) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 37) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 37) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@11 elt@0) (=> (and (= valid@10 valid@0) (= owner@11 owner@0)) (=> (and (and (= Civl_global_old_elt@4 elt@0) (= Civl_global_old_valid@4 valid@0)) (and (= Civl_global_old_owner@4 owner@0) (= Civl_linear_tid_available@7 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 36) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 36) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 36) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 17) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 19) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 21) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 23) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 25) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 30) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 33) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 36) 35) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@3 (or (and (and (and (= elt@8 Civl_global_old_elt@2) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@8 Civl_global_old_owner@2)) (or (and (and (and (and (and (and (and (and (<= 0 r@1) (< r@1 q@max)) (= (select Civl_global_old_elt@2 r@1) null)) (= (select Civl_global_old_owner@2 r@1) nil)) (not (select valid@7 r@1))) (= elt@8 (store Civl_global_old_elt@2 r@1 x@@0))) (= owner@8 (store Civl_global_old_owner@2 r@1 tid))) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (and (and (and (and (= r@1 (- 0 1)) (= elt@8 Civl_global_old_elt@2)) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@8 Civl_global_old_owner@2)))))) (=> (or Civl_pc@3 (or (and (and (and (= elt@8 Civl_global_old_elt@2) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@8 Civl_global_old_owner@2)) (or (and (and (and (and (and (and (and (and (<= 0 r@1) (< r@1 q@max)) (= (select Civl_global_old_elt@2 r@1) null)) (= (select Civl_global_old_owner@2 r@1) nil)) (not (select valid@7 r@1))) (= elt@8 (store Civl_global_old_elt@2 r@1 x@@0))) (= owner@8 (store Civl_global_old_owner@2 r@1 tid))) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (and (and (and (and (= r@1 (- 0 1)) (= elt@8 Civl_global_old_elt@2)) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@8 Civl_global_old_owner@2))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@3 (and (and (and (and (= elt@8 Civl_global_old_elt@2) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@8 Civl_global_old_owner@2)) (= r@1 Civl_old_r@2))))))))
(let ((anon5_LoopDone_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@8 elt@2) (= valid@7 valid@2)) (and (= lock@10 lock@2) (= owner@8 owner@2))) (=> (and (and (and (= Civl_global_old_elt@2 elt@2) (= Civl_global_old_valid@2 valid@2)) (and (= Civl_global_old_lock@2 lock@2) (= Civl_global_old_owner@2 owner@2))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_r@2 r)) (and (= r@1 r@0) (= (ControlFlow 0 91) 2)))) Civl_RefinementChecker_correct))))
(let ((anon5_LoopDone_correct  (=> (and (<= q@max j@0) (= r@0 (- 0 1))) (and (and (=> (= (ControlFlow 0 97) 95) anon4_0_correct) (=> (= (ControlFlow 0 97) 90) anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 97) 91) anon5_LoopDone_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Then$2_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@8 elt@5) (= valid@7 valid@2)) (and (= lock@10 lock@7) (= owner@8 owner@5))) (=> (and (and (and (= Civl_global_old_elt@2 elt@2) (= Civl_global_old_valid@2 valid@2)) (and (= Civl_global_old_lock@2 lock@2) (= Civl_global_old_owner@2 owner@2))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_r@2 r)) (and (= r@1 j@0) (= (ControlFlow 0 57) 2)))) Civl_RefinementChecker_correct))))
(let ((inline$atomic_release$1$anon0_correct  (=> (= lock@7 (store lock@3 j@0 nil)) (and (and (=> (= (ControlFlow 0 70) 68) anon6_Then_0_correct) (=> (= (ControlFlow 0 70) 56) anon6_Then$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 70) 57) anon6_Then$2_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Then$1_correct  (and (=> (= (ControlFlow 0 71) (- 0 74)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 71) (- 0 73)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 71) (- 0 72)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 71) 70) inline$atomic_release$1$anon0_correct)))))))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@5 (store elt@2 j@0 x@@0)) (=> (and (= owner@5 (store owner@2 j@0 tid)) (= (ControlFlow 0 75) 71)) anon6_Then$1_correct))))
(let ((anon6_Then_correct  (=> (= inline$atomic_getElt$0$elt_j@2 null) (and (=> (= (ControlFlow 0 76) (- 0 80)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 76) (- 0 79)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 76) (- 0 78)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (and (not (= x@@0 null)) (= (select owner@2 j@0) nil))) (=> (and (not (= x@@0 null)) (= (select owner@2 j@0) nil)) (=> (= (ControlFlow 0 76) 75) inline$atomic_setElt$0$anon0_correct))))))))))))
(let ((inline$atomic_getElt$0$anon0_correct  (=> (= inline$atomic_getElt$0$elt_j@2 (select elt@2 j@0)) (and (=> (= (ControlFlow 0 81) 76) anon6_Then_correct) (=> (= (ControlFlow 0 81) 52) anon6_Else_correct)))))
(let ((anon5_LoopBody$1_correct  (and (=> (= (ControlFlow 0 82) (- 0 85)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 82) (- 0 84)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 82) 81) inline$atomic_getElt$0$anon0_correct)))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@2 j@0) nil) (=> (and (= lock@3 (store lock@2 j@0 tid)) (= (ControlFlow 0 86) 82)) anon5_LoopBody$1_correct))))
(let ((anon5_LoopBody_correct  (=> (< j@0 q@max) (and (=> (= (ControlFlow 0 87) (- 0 89)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 87) 86) inline$atomic_acquire$0$anon0_correct))))))))
(let ((anon5_LoopHead_correct  (=> (and (and (forall ((i@@36 Int) ) (!  (=> (and (<= 0 i@@36) (< i@@36 q@max)) (= (= (select elt@2 i@@36) null)  (and (not (select valid@2 i@@36)) (= (select owner@2 i@@36) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (<= 0 j@0)) (and (or Civl_pc@0 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 98) 97) anon5_LoopDone_correct) (=> (= (ControlFlow 0 98) 87) anon5_LoopBody_correct)))))
(let ((anon0_0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 99) (- 0 101)) (forall ((i@@37 Int) ) (!  (=> (and (<= 0 i@@37) (< i@@37 q@max)) (= (= (select elt@1 i@@37) null)  (and (not (select valid@1 i@@37)) (= (select owner@1 i@@37) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@38 Int) ) (!  (=> (and (<= 0 i@@38) (< i@@38 q@max)) (= (= (select elt@1 i@@38) null)  (and (not (select valid@1 i@@38)) (= (select owner@1 i@@38) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 99) (- 0 100)) (<= 0 0)) (=> (<= 0 0) (=> (= (ControlFlow 0 99) 98) anon5_LoopHead_correct)))))))
(let ((anon0_0_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@8 elt@1) (= valid@7 valid@1)) (and (= lock@10 lock@1) (= owner@8 owner@1))) (=> (and (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_lock@2 lock@1) (= Civl_global_old_owner@2 owner@1))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_r@2 r)) (and (= r@1 r) (= (ControlFlow 0 38) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (and (and (and (= elt@0 elt@0) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0)) false)) (= Civl_ok@0  (or (or (and (and (and (and (and (and (and (and (<= 0 r) (< r q@max)) (= (select elt@0 r) null)) (= (select owner@0 r) nil)) (not (select valid@0 r))) (= elt@0 (store elt@0 r x@@0))) (= owner@0 (store owner@0 r tid))) (= valid@0 valid@0)) (= lock@0 lock@0)) (and (and (and (and (= r (- 0 1)) (= elt@0 elt@0)) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0))) (and (= r r) false)))) (and (=> (= (ControlFlow 0 102) (- 0 103)) (forall ((i@@39 Int) ) (!  (=> (and (<= 0 i@@39) (< i@@39 q@max)) (= (= (select elt@0 i@@39) null)  (and (not (select valid@0 i@@39)) (= (select owner@0 i@@39) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@40 Int) ) (!  (=> (and (<= 0 i@@40) (< i@@40 q@max)) (= (= (select elt@0 i@@40) null)  (and (not (select valid@0 i@@40)) (= (select owner@0 i@@40) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@41 Int) ) (!  (=> (and (<= 0 i@@41) (< i@@41 q@max)) (= (= (select elt@1 i@@41) null)  (and (not (select valid@1 i@@41)) (= (select owner@1 i@@41) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@0 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 102) 99) anon0_0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 102) 37) anon0_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 102) 38) anon0_0_@2_Civl_RefinementChecker_correct)))))))))
(let ((anon0_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@8 elt@0) (= valid@7 valid@0)) (and (= lock@10 lock@0) (= owner@8 owner@0))) (=> (and (and (and (= Civl_global_old_elt@2 elt@0) (= Civl_global_old_valid@2 valid@0)) (and (= Civl_global_old_lock@2 lock@0) (= Civl_global_old_owner@2 owner@0))) (and (and (= Civl_pc@3 false) (= Civl_old_r@2 r)) (and (= r@1 r) (= (ControlFlow 0 4) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_correct  (=> (and (and (and (and (forall ((i@@42 Int) ) (!  (=> (and (<= 0 i@@42) (< i@@42 q@max)) (= (= (select elt@0 i@@42) null)  (and (not (select valid@0 i@@42)) (= (select owner@0 i@@42) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (and (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done)))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 104) 102) anon0_0_correct) (=> (= (ControlFlow 0 104) 36) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 104) 4) anon0_@2_Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (forall ((i@@43 Int) ) (!  (=> (and (<= 0 i@@43) (< i@@43 q@max)) (= (= (select elt@@0 i@@43) null)  (and (not (select valid@@0 i@@43)) (= (select owner i@@43) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (= (ControlFlow 0 105) 104)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@8 () (Array Int Int))
(declare-fun valid@9 () (Array Int Bool))
(declare-fun owner@9 () (Array Int T@X))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun elt@6 () (Array Int Int))
(declare-fun elt@5 () (Array Int Int))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun owner@6 () (Array Int T@X))
(declare-fun elt@4 () (Array Int Int))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun owner@5 () (Array Int T@X))
(declare-fun Civl_global_old_elt@0 () (Array Int Int))
(declare-fun Civl_global_old_valid@0 () (Array Int Bool))
(declare-fun Civl_global_old_owner@0 () (Array Int T@X))
(declare-fun elt@7 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun elt@2 () (Array Int Int))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun elt@3 () (Array Int Int))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun call6formal@Civl_0_r@0 () Int)
(declare-fun lock@5 () (Array Int T@X))
(declare-fun lock@4 () (Array Int T@X))
(declare-fun lock@3 () (Array Int T@X))
(declare-fun x@@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_Insert_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 40) (- 0 39)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@8 i) null)  (and (not (select valid@9 i)) (= (select owner@9 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= owner@9 owner@7) (= valid@9 valid@7)) (and (= elt@8 elt@6) (= (ControlFlow 0 41) 40))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@6 elt@5) (= valid@7 valid@6)) (and (= owner@7 owner@6) (= (ControlFlow 0 55) 41))) Civl_UnifiedReturn_correct)))
(let ((anon2_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@6 elt@4) (= valid@7 valid@5)) (and (= owner@7 owner@5) (= (ControlFlow 0 42) 41))) Civl_UnifiedReturn_correct)))
(let ((Civl_ReturnChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select Civl_global_old_elt@0 i@@0) null)  (and (not (select Civl_global_old_valid@0 i@@0)) (= (select Civl_global_old_owner@0 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 32) (- 0 31))) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@7 i@@1) null)  (and (not (select valid@8 i@@1)) (= (select owner@8 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 Civl_global_old_valid@0 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 Civl_global_old_elt@0) (= (ControlFlow 0 30) (- 0 29))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 valid@8 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 elt@7))))
(let ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |76|
)) (=> (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@0 i@@2) null)  (and (not (select Civl_global_old_valid@0 i@@2)) (= (select Civl_global_old_owner@0 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@7 i@@3) null)  (and (not (select valid@8 i@@3)) (= (select owner@8 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select elt@7 i@@4) null)  (and (not (select valid@8 i@@4)) (= (select owner@8 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 27) (- 0 26)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |77|
)) (=> (and (and (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select Civl_global_old_elt@0 i@@5) null)  (and (not (select Civl_global_old_valid@0 i@@5)) (= (select Civl_global_old_owner@0 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0)) (and (select Civl_global_old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (select Civl_global_old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@7 i@@6) null)  (and (not (select valid@8 i@@6)) (= (select owner@8 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select elt@7 i@@7) null)  (and (not (select valid@8 i@@7)) (= (select owner@8 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3)) (and (select valid@8 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (select elt@7 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4)) (and (select valid@8 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (select elt@7 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 22) (- 0 21)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |79|
)) (=> (and (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select Civl_global_old_elt@0 i@@8) null)  (and (not (select Civl_global_old_valid@0 i@@8)) (= (select Civl_global_old_owner@0 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 20) (- 0 19))) (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select elt@7 i@@9) null)  (and (not (select valid@8 i@@9)) (= (select owner@8 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |78|
)) (=> (and (and (and (and (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select Civl_global_old_elt@0 i@@10) null)  (and (not (select Civl_global_old_valid@0 i@@10)) (= (select Civl_global_old_owner@0 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done))) (= (ControlFlow 0 18) (- 0 17))) (and (and (and (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select elt@7 i@@11) null)  (and (not (select valid@8 i@@11)) (= (select owner@8 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |81|
)) (=> (and (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select Civl_global_old_elt@0 i@@12) null)  (and (not (select Civl_global_old_valid@0 i@@12)) (= (select Civl_global_old_owner@0 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 16) (- 0 15))) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select elt@7 i@@13) null)  (and (not (select valid@8 i@@13)) (= (select owner@8 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |80|
)) (=> (and (and (and (and (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select Civl_global_old_elt@0 i@@14) null)  (and (not (select Civl_global_old_valid@0 i@@14)) (= (select Civl_global_old_owner@0 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done))) (= (ControlFlow 0 14) (- 0 13))) (and (and (and (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select elt@7 i@@15) null)  (and (not (select valid@8 i@@15)) (= (select owner@8 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |83|
)) (=> (and (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select Civl_global_old_elt@0 i@@16) null)  (and (not (select Civl_global_old_valid@0 i@@16)) (= (select Civl_global_old_owner@0 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 12) (- 0 11))) (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select elt@7 i@@17) null)  (and (not (select valid@8 i@@17)) (= (select owner@8 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |82|
)) (=> (and (and (and (and (and (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select Civl_global_old_elt@0 i@@18) null)  (and (not (select Civl_global_old_valid@0 i@@18)) (= (select Civl_global_old_owner@0 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done))) (= (ControlFlow 0 10) (- 0 9))) (and (and (and (and (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@7 i@@19) null)  (and (not (select valid@8 i@@19)) (= (select owner@8 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |85|
)) (=> (and (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select Civl_global_old_elt@0 i@@20) null)  (and (not (select Civl_global_old_valid@0 i@@20)) (= (select Civl_global_old_owner@0 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 7) (- 0 6))) (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@7 i@@21) null)  (and (not (select valid@8 i@@21)) (= (select owner@8 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |84|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 Civl_global_old_valid@0 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 Civl_global_old_elt@0) (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select Civl_global_old_elt@0 i@@22) null)  (and (not (select Civl_global_old_valid@0 i@@22)) (= (select Civl_global_old_owner@0 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@8 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@7)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@8 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@7 i@@23) null)  (and (not (select valid@8 i@@23)) (= (select owner@8 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select elt@7 i@@24) null)  (and (not (select valid@8 i@@24)) (= (select owner@8 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 3) (- 0 2)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done))))))))))))
(let ((anon3_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@5) (=> (and (= valid@8 valid@6) (= owner@8 owner@6)) (=> (and (and (= Civl_global_old_elt@0 elt@5) (= Civl_global_old_valid@0 valid@6)) (and (= Civl_global_old_owner@0 owner@6) (= Civl_linear_tid_available@6 Civl_linear_tid_available@5))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 56) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 56) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 56) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 56) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 56) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 56) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon3_Then_0_correct  (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@2 i@@25) null)  (and (not (select valid@2 i@@25)) (= (select owner@2 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@2 i@@26) null)  (and (not (select valid@2 i@@26)) (= (select owner@2 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@5 i@@27) null)  (and (not (select valid@6 i@@27)) (= (select owner@6 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 57) 55) anon3_Then_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 57) 56) anon3_Then_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 57) 38) Civl_ReturnChecker_correct)))))))
(let ((anon3_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@2) (=> (and (= valid@8 valid@2) (= owner@8 owner@2)) (=> (and (and (= Civl_global_old_elt@0 elt@2) (= Civl_global_old_valid@0 valid@2)) (and (= Civl_global_old_owner@0 owner@2) (= Civl_linear_tid_available@6 Civl_linear_tid_available@2))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 54) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 54) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 54) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 54) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 54) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 54) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 54) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 54) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 54) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 54) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 54) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 54) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 54) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon2_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@4) (=> (and (= valid@8 valid@5) (= owner@8 owner@5)) (=> (and (and (= Civl_global_old_elt@0 elt@4) (= Civl_global_old_valid@0 valid@5)) (and (= Civl_global_old_owner@0 owner@5) (= Civl_linear_tid_available@6 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 37) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 37) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 37) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 37) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon2_0_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@3 i@@28) null)  (and (not (select valid@4 i@@28)) (= (select owner@4 i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@29 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 q@max)) (= (= (select elt@3 i@@29) null)  (and (not (select valid@4 i@@29)) (= (select owner@4 i@@29) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 q@max)) (= (= (select elt@4 i@@30) null)  (and (not (select valid@5 i@@30)) (= (select owner@5 i@@30) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 43) 42) anon2_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 43) 37) anon2_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 43) 38) Civl_ReturnChecker_correct)))))))
(let ((anon2_1$3_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@3) (=> (and (= valid@8 valid@4) (= owner@8 owner@4)) (=> (and (and (= Civl_global_old_elt@0 elt@3) (= Civl_global_old_valid@0 valid@3)) (and (= Civl_global_old_owner@0 owner@3) (= Civl_linear_tid_available@6 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 36) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 36) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 36) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 36) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon3_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@2) (=> (and (= valid@8 valid@2) (= owner@8 owner@2)) (=> (and (and (= Civl_global_old_elt@0 elt@2) (= Civl_global_old_valid@0 valid@2)) (and (= Civl_global_old_owner@0 owner@2) (= Civl_linear_tid_available@6 Civl_linear_tid_available@2))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 35) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 35) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 35) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 35) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@1) (=> (and (= valid@8 valid@1) (= owner@8 owner@1)) (=> (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_owner@0 owner@1) (= Civl_linear_tid_available@6 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 34) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 34) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 34) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 34) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@0) (=> (and (= valid@8 valid@0) (= owner@8 owner@0)) (=> (and (and (= Civl_global_old_elt@0 elt@0) (= Civl_global_old_valid@0 valid@0)) (and (= Civl_global_old_owner@0 owner@0) (= Civl_linear_tid_available@6 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 33) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 33) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 33) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 33) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon3_Then_correct  (=> (= call6formal@Civl_0_r@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 59) 57) anon3_Then_0_correct) (=> (= (ControlFlow 0 59) 54) anon3_Then_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 59) 1) Civl_RefinementChecker_correct)))))
(let ((inline$atomic_release$0$anon0_correct  (=> (= lock@5 (store lock@4 call6formal@Civl_0_r@0 nil)) (and (and (=> (= (ControlFlow 0 45) 43) anon2_0_correct) (=> (= (ControlFlow 0 45) 36) anon2_1$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 45) 1) Civl_RefinementChecker_correct)))))
(let ((anon2_1$2_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@4 call6formal@Civl_0_r@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 46) 45))) inline$atomic_release$0$anon0_correct)))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@4 (store valid@3 call6formal@Civl_0_r@0 true)) (=> (and (= owner@4 (store owner@3 call6formal@Civl_0_r@0 done)) (= (ControlFlow 0 47) 46)) anon2_1$2_correct))))
(let ((anon2_1$1_correct  (=> (= (select owner@3 call6formal@Civl_0_r@0) tid) (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@4 call6formal@Civl_0_r@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 48) 47))) inline$atomic_setValid$0$anon0_correct))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@3 call6formal@Civl_0_r@0) nil) (=> (and (= lock@4 (store lock@3 call6formal@Civl_0_r@0 tid)) (= (ControlFlow 0 49) 48)) anon2_1$1_correct))))
(let ((anon2_1_correct  (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 q@max)) (= (= (select elt@2 i@@31) null)  (and (not (select valid@2 i@@31)) (= (select owner@2 i@@31) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 q@max)) (= (= (select elt@2 i@@32) null)  (and (not (select valid@2 i@@32)) (= (select owner@2 i@@32) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@33 Int) ) (!  (=> (and (<= 0 i@@33) (< i@@33 q@max)) (= (= (select elt@3 i@@33) null)  (and (not (select valid@3 i@@33)) (= (select owner@3 i@@33) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (not (= call6formal@Civl_0_r@0 (- 0 1)))) (=> (not (= call6formal@Civl_0_r@0 (- 0 1))) (=> (and (not (= tid nil)) (not (= tid done))) (=> (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 50) 49)) inline$atomic_acquire$0$anon0_correct)))))))))
(let ((anon3_Else_correct  (=> (not (= call6formal@Civl_0_r@0 (- 0 1))) (and (and (=> (= (ControlFlow 0 53) 50) anon2_1_correct) (=> (= (ControlFlow 0 53) 35) anon3_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 53) 1) Civl_RefinementChecker_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 60) (- 0 61)) (and (and (and (forall ((i@@34 Int) ) (!  (=> (and (<= 0 i@@34) (< i@@34 q@max)) (= (= (select elt@1 i@@34) null)  (and (not (select valid@1 i@@34)) (= (select owner@1 i@@34) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done)))) (=> (and (and (and (forall ((i@@35 Int) ) (!  (=> (and (<= 0 i@@35) (< i@@35 q@max)) (= (= (select elt@1 i@@35) null)  (and (not (select valid@1 i@@35)) (= (select owner@1 i@@35) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (=> (and (forall ((i@@36 Int) ) (!  (=> (and (<= 0 i@@36) (< i@@36 q@max)) (= (= (select elt@2 i@@36) null)  (and (not (select valid@2 i@@36)) (= (select owner@2 i@@36) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 60) 59) anon3_Then_correct) (=> (= (ControlFlow 0 60) 53) anon3_Else_correct)))))))
(let ((anon0_1_correct  (and (=> (= (ControlFlow 0 62) (- 0 63)) (forall ((i@@37 Int) ) (!  (=> (and (<= 0 i@@37) (< i@@37 q@max)) (= (= (select elt@0 i@@37) null)  (and (not (select valid@0 i@@37)) (= (select owner@0 i@@37) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@38 Int) ) (!  (=> (and (<= 0 i@@38) (< i@@38 q@max)) (= (= (select elt@0 i@@38) null)  (and (not (select valid@0 i@@38)) (= (select owner@0 i@@38) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@39 Int) ) (!  (=> (and (<= 0 i@@39) (< i@@39 q@max)) (= (= (select elt@1 i@@39) null)  (and (not (select valid@1 i@@39)) (= (select owner@1 i@@39) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 62) 60) anon0_0_correct) (=> (= (ControlFlow 0 62) 34) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 62) 1) Civl_RefinementChecker_correct)))))))
(let ((anon0_correct  (=> (and (and (and (and (forall ((i@@40 Int) ) (!  (=> (and (<= 0 i@@40) (< i@@40 q@max)) (= (= (select elt@0 i@@40) null)  (and (not (select valid@0 i@@40)) (= (select owner@0 i@@40) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 64) 62) anon0_1_correct) (=> (= (ControlFlow 0 64) 33) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 64) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (forall ((i@@41 Int) ) (!  (=> (and (<= 0 i@@41) (< i@@41 q@max)) (= (= (select elt@@0 i@@41) null)  (and (not (select valid@@0 i@@41)) (= (select owner i@@41) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (= (ControlFlow 0 65) 64)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@13 () (Array Int Int))
(declare-fun valid@14 () (Array Int Bool))
(declare-fun owner@15 () (Array Int T@X))
(declare-fun owner@13 () (Array Int T@X))
(declare-fun valid@12 () (Array Int Bool))
(declare-fun elt@11 () (Array Int Int))
(declare-fun elt@10 () (Array Int Int))
(declare-fun valid@11 () (Array Int Bool))
(declare-fun owner@12 () (Array Int T@X))
(declare-fun elt@9 () (Array Int Int))
(declare-fun valid@10 () (Array Int Bool))
(declare-fun owner@11 () (Array Int T@X))
(declare-fun elt@6 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun Civl_global_old_elt@0 () (Array Int Int))
(declare-fun Civl_global_old_valid@0 () (Array Int Bool))
(declare-fun Civl_global_old_owner@0 () (Array Int T@X))
(declare-fun elt@12 () (Array Int Int))
(declare-fun valid@13 () (Array Int Bool))
(declare-fun owner@14 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@10 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@9 () (Array T@X Bool))
(declare-fun elt@2 () (Array Int Int))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@8 () (Array T@X Bool))
(declare-fun elt@8 () (Array Int Int))
(declare-fun valid@9 () (Array Int Bool))
(declare-fun owner@10 () (Array Int T@X))
(declare-fun elt@7 () (Array Int Int))
(declare-fun owner@9 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@7 () (Array T@X Bool))
(declare-fun elt@4 () (Array Int Int))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun elt@5 () (Array Int Int))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun owner@5 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun elt@3 () (Array Int Int))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun call6formal@Civl_0_r@0 () Int)
(declare-fun lock@13 () (Array Int T@X))
(declare-fun lock@12 () (Array Int T@X))
(declare-fun lock@11 () (Array Int T@X))
(declare-fun call6formal@Civl_0_r@0@@0 () Int)
(declare-fun lock@9 () (Array Int T@X))
(declare-fun lock@8 () (Array Int T@X))
(declare-fun lock@7 () (Array Int T@X))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun owner@6 () (Array Int T@X))
(declare-fun lock@6 () (Array Int T@X))
(declare-fun lock@5 () (Array Int T@X))
(declare-fun y () Int)
(declare-fun x@@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_InsertPair_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 91) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 42) (- 0 41)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@13 i) null)  (and (not (select valid@14 i)) (= (select owner@15 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= owner@15 owner@13) (= valid@14 valid@12)) (and (= elt@13 elt@11) (= (ControlFlow 0 43) 42))) GeneratedUnifiedExit_correct)))
(let ((anon5_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@11 elt@10) (= valid@12 valid@11)) (and (= owner@13 owner@12) (= (ControlFlow 0 81) 43))) Civl_UnifiedReturn_correct)))
(let ((anon6_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@11 elt@9) (= valid@12 valid@10)) (and (= owner@13 owner@11) (= (ControlFlow 0 63) 43))) Civl_UnifiedReturn_correct)))
(let ((anon4_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@11 elt@6) (= valid@12 valid@8)) (and (= owner@13 owner@8) (= (ControlFlow 0 44) 43))) Civl_UnifiedReturn_correct)))
(let ((Civl_ReturnChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select Civl_global_old_elt@0 i@@0) null)  (and (not (select Civl_global_old_valid@0 i@@0)) (= (select Civl_global_old_owner@0 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 32) (- 0 31))) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@12 i@@1) null)  (and (not (select valid@13 i@@1)) (= (select owner@14 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 Civl_global_old_valid@0 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 Civl_global_old_elt@0) (= (ControlFlow 0 30) (- 0 29))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 valid@13 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 elt@12))))
(let ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |76|
)) (=> (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@0 i@@2) null)  (and (not (select Civl_global_old_valid@0 i@@2)) (= (select Civl_global_old_owner@0 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@12 i@@3) null)  (and (not (select valid@13 i@@3)) (= (select owner@14 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select elt@12 i@@4) null)  (and (not (select valid@13 i@@4)) (= (select owner@14 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 27) (- 0 26)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |77|
)) (=> (and (and (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select Civl_global_old_elt@0 i@@5) null)  (and (not (select Civl_global_old_valid@0 i@@5)) (= (select Civl_global_old_owner@0 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0)) (and (select Civl_global_old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (select Civl_global_old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@12 i@@6) null)  (and (not (select valid@13 i@@6)) (= (select owner@14 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select elt@12 i@@7) null)  (and (not (select valid@13 i@@7)) (= (select owner@14 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3)) (and (select valid@13 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (select elt@12 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4)) (and (select valid@13 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (select elt@12 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 22) (- 0 21)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |79|
)) (=> (and (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select Civl_global_old_elt@0 i@@8) null)  (and (not (select Civl_global_old_valid@0 i@@8)) (= (select Civl_global_old_owner@0 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 20) (- 0 19))) (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select elt@12 i@@9) null)  (and (not (select valid@13 i@@9)) (= (select owner@14 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |78|
)) (=> (and (and (and (and (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select Civl_global_old_elt@0 i@@10) null)  (and (not (select Civl_global_old_valid@0 i@@10)) (= (select Civl_global_old_owner@0 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done))) (= (ControlFlow 0 18) (- 0 17))) (and (and (and (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select elt@12 i@@11) null)  (and (not (select valid@13 i@@11)) (= (select owner@14 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |81|
)) (=> (and (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select Civl_global_old_elt@0 i@@12) null)  (and (not (select Civl_global_old_valid@0 i@@12)) (= (select Civl_global_old_owner@0 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 16) (- 0 15))) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select elt@12 i@@13) null)  (and (not (select valid@13 i@@13)) (= (select owner@14 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |80|
)) (=> (and (and (and (and (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select Civl_global_old_elt@0 i@@14) null)  (and (not (select Civl_global_old_valid@0 i@@14)) (= (select Civl_global_old_owner@0 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done))) (= (ControlFlow 0 14) (- 0 13))) (and (and (and (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select elt@12 i@@15) null)  (and (not (select valid@13 i@@15)) (= (select owner@14 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |83|
)) (=> (and (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select Civl_global_old_elt@0 i@@16) null)  (and (not (select Civl_global_old_valid@0 i@@16)) (= (select Civl_global_old_owner@0 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 12) (- 0 11))) (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select elt@12 i@@17) null)  (and (not (select valid@13 i@@17)) (= (select owner@14 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |82|
)) (=> (and (and (and (and (and (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select Civl_global_old_elt@0 i@@18) null)  (and (not (select Civl_global_old_valid@0 i@@18)) (= (select Civl_global_old_owner@0 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done))) (= (ControlFlow 0 10) (- 0 9))) (and (and (and (and (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@12 i@@19) null)  (and (not (select valid@13 i@@19)) (= (select owner@14 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |85|
)) (=> (and (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select Civl_global_old_elt@0 i@@20) null)  (and (not (select Civl_global_old_valid@0 i@@20)) (= (select Civl_global_old_owner@0 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 7) (- 0 6))) (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@12 i@@21) null)  (and (not (select valid@13 i@@21)) (= (select owner@14 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@10 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |84|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 Civl_global_old_valid@0 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 Civl_global_old_elt@0) (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select Civl_global_old_elt@0 i@@22) null)  (and (not (select Civl_global_old_valid@0 i@@22)) (= (select Civl_global_old_owner@0 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@13 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@12)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@13 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@12) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@12 i@@23) null)  (and (not (select valid@13 i@@23)) (= (select owner@14 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select elt@12 i@@24) null)  (and (not (select valid@13 i@@24)) (= (select owner@14 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 3) (- 0 2)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done))))))))))))
(let ((anon5_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@10) (=> (and (= valid@13 valid@11) (= owner@14 owner@12)) (=> (and (and (= Civl_global_old_elt@0 elt@10) (= Civl_global_old_valid@0 valid@11)) (and (= Civl_global_old_owner@0 owner@12) (= Civl_linear_tid_available@10 Civl_linear_tid_available@9))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 82) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 82) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 82) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 82) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 82) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 82) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 82) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 82) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 82) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 82) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 82) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 82) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 82) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon5_Then_0_correct  (and (=> (= (ControlFlow 0 83) (- 0 84)) (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@2 i@@25) null)  (and (not (select valid@2 i@@25)) (= (select owner@2 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@2 i@@26) null)  (and (not (select valid@2 i@@26)) (= (select owner@2 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@10 i@@27) null)  (and (not (select valid@11 i@@27)) (= (select owner@12 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@9 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 83) 81) anon5_Then_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 83) 82) anon5_Then_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 83) 40) Civl_ReturnChecker_correct)))))))
(let ((anon5_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@2) (=> (and (= valid@13 valid@2) (= owner@14 owner@2)) (=> (and (and (= Civl_global_old_elt@0 elt@2) (= Civl_global_old_valid@0 valid@2)) (and (= Civl_global_old_owner@0 owner@2) (= Civl_linear_tid_available@10 Civl_linear_tid_available@2))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 80) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 80) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 80) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 80) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 80) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 80) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 80) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 80) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 80) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 80) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 80) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 80) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 80) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@9) (=> (and (= valid@13 valid@10) (= owner@14 owner@11)) (=> (and (and (= Civl_global_old_elt@0 elt@9) (= Civl_global_old_valid@0 valid@10)) (and (= Civl_global_old_owner@0 owner@11) (= Civl_linear_tid_available@10 Civl_linear_tid_available@8))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 64) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 64) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 64) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 64) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_0_correct  (and (=> (= (ControlFlow 0 65) (- 0 66)) (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@8 i@@28) null)  (and (not (select valid@9 i@@28)) (= (select owner@10 i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@29 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 q@max)) (= (= (select elt@8 i@@29) null)  (and (not (select valid@9 i@@29)) (= (select owner@10 i@@29) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 q@max)) (= (= (select elt@9 i@@30) null)  (and (not (select valid@10 i@@30)) (= (select owner@11 i@@30) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@8 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 65) 63) anon6_Then_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 65) 64) anon6_Then_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 65) 40) Civl_ReturnChecker_correct)))))))
(let ((anon6_Then_1$3_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@8) (=> (and (= valid@13 valid@9) (= owner@14 owner@10)) (=> (and (and (= Civl_global_old_elt@0 elt@7) (= Civl_global_old_valid@0 valid@9)) (and (= Civl_global_old_owner@0 owner@9) (= Civl_linear_tid_available@10 Civl_linear_tid_available@7))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 62) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 62) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 62) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 62) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 62) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 62) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 62) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 62) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 62) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 62) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 62) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 62) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 62) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@4) (=> (and (= valid@13 valid@4) (= owner@14 owner@4)) (=> (and (and (= Civl_global_old_elt@0 elt@4) (= Civl_global_old_valid@0 valid@4)) (and (= Civl_global_old_owner@0 owner@4) (= Civl_linear_tid_available@10 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 61) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 61) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 61) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 61) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 61) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 61) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 61) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 61) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 61) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 61) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 61) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 61) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 61) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon4_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@6) (=> (and (= valid@13 valid@8) (= owner@14 owner@8)) (=> (and (and (= Civl_global_old_elt@0 elt@6) (= Civl_global_old_valid@0 valid@8)) (and (= Civl_global_old_owner@0 owner@8) (= Civl_linear_tid_available@10 Civl_linear_tid_available@6))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 39) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 39) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 39) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 39) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 39) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 39) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon4_0_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 q@max)) (= (= (select elt@5 i@@31) null)  (and (not (select valid@7 i@@31)) (= (select owner@7 i@@31) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 q@max)) (= (= (select elt@5 i@@32) null)  (and (not (select valid@7 i@@32)) (= (select owner@7 i@@32) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@33 Int) ) (!  (=> (and (<= 0 i@@33) (< i@@33 q@max)) (= (= (select elt@6 i@@33) null)  (and (not (select valid@8 i@@33)) (= (select owner@8 i@@33) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@6 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 45) 44) anon4_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 45) 39) anon4_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 45) 40) Civl_ReturnChecker_correct)))))))
(let ((anon4_1$6_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@5) (=> (and (= valid@13 valid@7) (= owner@14 owner@7)) (=> (and (and (= Civl_global_old_elt@0 elt@5) (= Civl_global_old_valid@0 valid@5)) (and (= Civl_global_old_owner@0 owner@5) (= Civl_linear_tid_available@10 Civl_linear_tid_available@5))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 38) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 38) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 38) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 38) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 38) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 38) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 38) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 38) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 38) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 38) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 38) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 38) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 38) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@4) (=> (and (= valid@13 valid@4) (= owner@14 owner@4)) (=> (and (and (= Civl_global_old_elt@0 elt@4) (= Civl_global_old_valid@0 valid@4)) (and (= Civl_global_old_owner@0 owner@4) (= Civl_linear_tid_available@10 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 37) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 37) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 37) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 37) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 37) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 37) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon2_1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@3) (=> (and (= valid@13 valid@3) (= owner@14 owner@3)) (=> (and (and (= Civl_global_old_elt@0 elt@3) (= Civl_global_old_valid@0 valid@3)) (and (= Civl_global_old_owner@0 owner@3) (= Civl_linear_tid_available@10 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 36) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 36) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 36) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 36) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 36) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 36) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon5_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@2) (=> (and (= valid@13 valid@2) (= owner@14 owner@2)) (=> (and (and (= Civl_global_old_elt@0 elt@2) (= Civl_global_old_valid@0 valid@2)) (and (= Civl_global_old_owner@0 owner@2) (= Civl_linear_tid_available@10 Civl_linear_tid_available@2))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 35) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 35) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 35) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 35) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon0_1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@1) (=> (and (= valid@13 valid@1) (= owner@14 owner@1)) (=> (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_owner@0 owner@1) (= Civl_linear_tid_available@10 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 34) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 34) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 34) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 34) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@12 elt@0) (=> (and (= valid@13 valid@0) (= owner@14 owner@0)) (=> (and (and (= Civl_global_old_elt@0 elt@0) (= Civl_global_old_valid@0 valid@0)) (and (= Civl_global_old_owner@0 owner@0) (= Civl_linear_tid_available@10 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 33) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 33) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 33) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 33) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon5_Then_correct  (=> (= call6formal@Civl_0_r@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 85) 83) anon5_Then_0_correct) (=> (= (ControlFlow 0 85) 80) anon5_Then_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 85) 1) Civl_RefinementChecker_correct)))))
(let ((inline$atomic_release$2$anon0_correct  (=> (= lock@13 (store lock@12 call6formal@Civl_0_r@0 nil)) (and (and (=> (= (ControlFlow 0 67) 65) anon6_Then_0_correct) (=> (= (ControlFlow 0 67) 62) anon6_Then_1$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 67) 1) Civl_RefinementChecker_correct)))))
(let ((anon6_Then_1$2_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@12 call6formal@Civl_0_r@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 68) 67))) inline$atomic_release$2$anon0_correct)))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@8 (store elt@7 call6formal@Civl_0_r@0 null)) (=> (and (= owner@10 (store owner@9 call6formal@Civl_0_r@0 nil)) (= (ControlFlow 0 69) 68)) anon6_Then_1$2_correct))))
(let ((anon6_Then_1$1_correct  (=> (and (and (and (and (not (= tid nil)) (not (= tid done))) (not (select valid@9 call6formal@Civl_0_r@0))) (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max))) (and (and (= (select owner@9 call6formal@Civl_0_r@0) tid) (= (select lock@12 call6formal@Civl_0_r@0) tid)) (= (ControlFlow 0 70) 69))) inline$atomic_setEltToNull$0$anon0_correct)))
(let ((inline$atomic_acquire$2$anon0_correct  (=> (= (select lock@11 call6formal@Civl_0_r@0) nil) (=> (and (= lock@12 (store lock@11 call6formal@Civl_0_r@0 tid)) (= (ControlFlow 0 71) 70)) anon6_Then_1$1_correct))))
(let ((anon6_Then_1_correct  (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((i@@34 Int) ) (!  (=> (and (<= 0 i@@34) (< i@@34 q@max)) (= (= (select elt@4 i@@34) null)  (and (not (select valid@4 i@@34)) (= (select owner@4 i@@34) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@35 Int) ) (!  (=> (and (<= 0 i@@35) (< i@@35 q@max)) (= (= (select elt@4 i@@35) null)  (and (not (select valid@4 i@@35)) (= (select owner@4 i@@35) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (and (and (forall ((i@@36 Int) ) (!  (=> (and (<= 0 i@@36) (< i@@36 q@max)) (= (= (select elt@7 i@@36) null)  (and (not (select valid@9 i@@36)) (= (select owner@9 i@@36) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@7 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (not (= tid nil)) (not (= tid done)))) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 72) 71))) inline$atomic_acquire$2$anon0_correct)))))
(let ((anon6_Then_correct  (=> (= call6formal@Civl_0_r@0@@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 74) 72) anon6_Then_1_correct) (=> (= (ControlFlow 0 74) 61) anon6_Then_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 74) 1) Civl_RefinementChecker_correct)))))
(let ((inline$atomic_release$1$anon0_correct  (=> (= lock@9 (store lock@8 call6formal@Civl_0_r@0 nil)) (and (and (=> (= (ControlFlow 0 47) 45) anon4_0_correct) (=> (= (ControlFlow 0 47) 38) anon4_1$6_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 47) 1) Civl_RefinementChecker_correct)))))
(let ((anon4_1$5_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@8 call6formal@Civl_0_r@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 48) 47))) inline$atomic_release$1$anon0_correct)))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@8 (store lock@7 call6formal@Civl_0_r@0@@0 nil)) (= (ControlFlow 0 49) 48)) anon4_1$5_correct)))
(let ((anon4_1$4_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@7 call6formal@Civl_0_r@0@@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0@@0) (< call6formal@Civl_0_r@0@@0 q@max)) (= (ControlFlow 0 50) 49))) inline$atomic_release$0$anon0_correct)))
(let ((inline$atomic_setValid$1$anon0_correct  (=> (= valid@7 (store valid@6 call6formal@Civl_0_r@0@@0 true)) (=> (and (= owner@7 (store owner@6 call6formal@Civl_0_r@0@@0 done)) (= (ControlFlow 0 51) 50)) anon4_1$4_correct))))
(let ((anon4_1$3_correct  (=> (= (select owner@6 call6formal@Civl_0_r@0@@0) tid) (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@7 call6formal@Civl_0_r@0@@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0@@0) (< call6formal@Civl_0_r@0@@0 q@max)) (= (ControlFlow 0 52) 51))) inline$atomic_setValid$1$anon0_correct))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@6 (store valid@5 call6formal@Civl_0_r@0 true)) (=> (and (= owner@6 (store owner@5 call6formal@Civl_0_r@0 done)) (= (ControlFlow 0 53) 52)) anon4_1$3_correct))))
(let ((anon4_1$2_correct  (=> (= (select owner@5 call6formal@Civl_0_r@0) tid) (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@7 call6formal@Civl_0_r@0) tid)) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 54) 53))) inline$atomic_setValid$0$anon0_correct))))
(let ((inline$atomic_acquire$1$anon0_correct  (=> (= (select lock@6 call6formal@Civl_0_r@0@@0) nil) (=> (and (= lock@7 (store lock@6 call6formal@Civl_0_r@0@@0 tid)) (= (ControlFlow 0 55) 54)) anon4_1$2_correct))))
(let ((anon4_1$1_correct  (=> (and (not (= tid nil)) (not (= tid done))) (=> (and (and (<= 0 call6formal@Civl_0_r@0@@0) (< call6formal@Civl_0_r@0@@0 q@max)) (= (ControlFlow 0 56) 55)) inline$atomic_acquire$1$anon0_correct))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@5 call6formal@Civl_0_r@0) nil) (=> (and (= lock@6 (store lock@5 call6formal@Civl_0_r@0 tid)) (= (ControlFlow 0 57) 56)) anon4_1$1_correct))))
(let ((anon4_1_correct  (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((i@@37 Int) ) (!  (=> (and (<= 0 i@@37) (< i@@37 q@max)) (= (= (select elt@4 i@@37) null)  (and (not (select valid@4 i@@37)) (= (select owner@4 i@@37) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@38 Int) ) (!  (=> (and (<= 0 i@@38) (< i@@38 q@max)) (= (= (select elt@4 i@@38) null)  (and (not (select valid@4 i@@38)) (= (select owner@4 i@@38) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (and (and (forall ((i@@39 Int) ) (!  (=> (and (<= 0 i@@39) (< i@@39 q@max)) (= (= (select elt@5 i@@39) null)  (and (not (select valid@5 i@@39)) (= (select owner@5 i@@39) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (not (= tid nil)) (not (= tid done)))) (and (and (<= 0 call6formal@Civl_0_r@0) (< call6formal@Civl_0_r@0 q@max)) (= (ControlFlow 0 58) 57))) inline$atomic_acquire$0$anon0_correct)))))
(let ((anon6_Else_correct  (=> (not (= call6formal@Civl_0_r@0@@0 (- 0 1))) (and (and (=> (= (ControlFlow 0 60) 58) anon4_1_correct) (=> (= (ControlFlow 0 60) 37) anon6_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 60) 1) Civl_RefinementChecker_correct)))))
(let ((anon2_0_correct  (and (=> (= (ControlFlow 0 75) (- 0 76)) (and (and (and (forall ((i@@40 Int) ) (!  (=> (and (<= 0 i@@40) (< i@@40 q@max)) (= (= (select elt@3 i@@40) null)  (and (not (select valid@3 i@@40)) (= (select owner@3 i@@40) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= y null))) (not (= tid nil))) (not (= tid done)))) (=> (and (and (and (forall ((i@@41 Int) ) (!  (=> (and (<= 0 i@@41) (< i@@41 q@max)) (= (= (select elt@3 i@@41) null)  (and (not (select valid@3 i@@41)) (= (select owner@3 i@@41) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= y null))) (not (= tid nil))) (not (= tid done))) (=> (and (forall ((i@@42 Int) ) (!  (=> (and (<= 0 i@@42) (< i@@42 q@max)) (= (= (select elt@4 i@@42) null)  (and (not (select valid@4 i@@42)) (= (select owner@4 i@@42) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 75) 74) anon6_Then_correct) (=> (= (ControlFlow 0 75) 60) anon6_Else_correct)))))))
(let ((anon2_1_correct  (and (=> (= (ControlFlow 0 77) (- 0 78)) (forall ((i@@43 Int) ) (!  (=> (and (<= 0 i@@43) (< i@@43 q@max)) (= (= (select elt@2 i@@43) null)  (and (not (select valid@2 i@@43)) (= (select owner@2 i@@43) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@44 Int) ) (!  (=> (and (<= 0 i@@44) (< i@@44 q@max)) (= (= (select elt@2 i@@44) null)  (and (not (select valid@2 i@@44)) (= (select owner@2 i@@44) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@45 Int) ) (!  (=> (and (<= 0 i@@45) (< i@@45 q@max)) (= (= (select elt@3 i@@45) null)  (and (not (select valid@3 i@@45)) (= (select owner@3 i@@45) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 77) 75) anon2_0_correct) (=> (= (ControlFlow 0 77) 36) anon2_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 77) 1) Civl_RefinementChecker_correct)))))))
(let ((anon5_Else_correct  (=> (not (= call6formal@Civl_0_r@0 (- 0 1))) (and (and (=> (= (ControlFlow 0 79) 77) anon2_1_correct) (=> (= (ControlFlow 0 79) 35) anon5_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 79) 1) Civl_RefinementChecker_correct)))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 86) (- 0 87)) (and (and (and (forall ((i@@46 Int) ) (!  (=> (and (<= 0 i@@46) (< i@@46 q@max)) (= (= (select elt@1 i@@46) null)  (and (not (select valid@1 i@@46)) (= (select owner@1 i@@46) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done)))) (=> (and (and (and (forall ((i@@47 Int) ) (!  (=> (and (<= 0 i@@47) (< i@@47 q@max)) (= (= (select elt@1 i@@47) null)  (and (not (select valid@1 i@@47)) (= (select owner@1 i@@47) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (=> (and (forall ((i@@48 Int) ) (!  (=> (and (<= 0 i@@48) (< i@@48 q@max)) (= (= (select elt@2 i@@48) null)  (and (not (select valid@2 i@@48)) (= (select owner@2 i@@48) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 86) 85) anon5_Then_correct) (=> (= (ControlFlow 0 86) 79) anon5_Else_correct)))))))
(let ((anon0_1_correct  (and (=> (= (ControlFlow 0 88) (- 0 89)) (forall ((i@@49 Int) ) (!  (=> (and (<= 0 i@@49) (< i@@49 q@max)) (= (= (select elt@0 i@@49) null)  (and (not (select valid@0 i@@49)) (= (select owner@0 i@@49) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@50 Int) ) (!  (=> (and (<= 0 i@@50) (< i@@50 q@max)) (= (= (select elt@0 i@@50) null)  (and (not (select valid@0 i@@50)) (= (select owner@0 i@@50) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (forall ((i@@51 Int) ) (!  (=> (and (<= 0 i@@51) (< i@@51 q@max)) (= (= (select elt@1 i@@51) null)  (and (not (select valid@1 i@@51)) (= (select owner@1 i@@51) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 88) 86) anon0_0_correct) (=> (= (ControlFlow 0 88) 34) anon0_1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 88) 1) Civl_RefinementChecker_correct)))))))
(let ((anon0_correct  (=> (and (and (and (and (and (forall ((i@@52 Int) ) (!  (=> (and (<= 0 i@@52) (< i@@52 q@max)) (= (= (select elt@0 i@@52) null)  (and (not (select valid@0 i@@52)) (= (select owner@0 i@@52) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= y null))) (not (= tid nil))) (not (= tid done))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 90) 88) anon0_1_correct) (=> (= (ControlFlow 0 90) 33) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 90) 1) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and (forall ((i@@53 Int) ) (!  (=> (and (<= 0 i@@53) (< i@@53 q@max)) (= (= (select elt@@0 i@@53) null)  (and (not (select valid@@0 i@@53)) (= (select owner i@@53) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= y null))) (not (= tid nil))) (not (= tid done))) (= (ControlFlow 0 91) 90)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun elt@8 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun owner@6 () (Array Int T@X))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun elt@6 () (Array Int Int))
(declare-fun elt@5 () (Array Int Int))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun owner@5 () (Array Int T@X))
(declare-fun elt@4 () (Array Int Int))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun elt@3 () (Array Int Int))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun j@1 () Int)
(declare-fun old_valid@@0 () (Array Int Bool))
(declare-fun old_elt@@0 () (Array Int Int))
(declare-fun x@@0 () Int)
(declare-fun Civl_global_old_elt@1 () (Array Int Int))
(declare-fun Civl_global_old_valid@1 () (Array Int Bool))
(declare-fun Civl_global_old_owner@1 () (Array Int T@X))
(declare-fun elt@7 () (Array Int Int))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@7 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun elt@2 () (Array Int Int))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun j@0 () Int)
(declare-fun lock@4 () (Array Int T@X))
(declare-fun lock@3 () (Array Int T@X))
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@2 () Bool)
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun lock@6 () (Array Int T@X))
(declare-fun lock@2 () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_LookUp_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 81) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 52) (- 0 51)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@8 i) null)  (and (not (select valid@8 i)) (= (select owner@8 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= owner@8 owner@6) (= valid@8 valid@6)) (and (= elt@8 elt@6) (= (ControlFlow 0 53) 52))) GeneratedUnifiedExit_correct)))
(let ((anon4_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@6 elt@5) (= valid@6 valid@5)) (and (= owner@6 owner@5) (= (ControlFlow 0 65) 53))) Civl_UnifiedReturn_correct)))
(let ((anon6_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@6 elt@4) (= valid@6 valid@4)) (and (= owner@6 owner@4) (= (ControlFlow 0 54) 53))) Civl_UnifiedReturn_correct)))
(let ((Civl_ReturnChecker_correct true))
(let ((anon3_0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 38) (- 0 41)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select elt@3 i@@0) null)  (and (not (select valid@3 i@@0)) (= (select owner@3 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@3 i@@1) null)  (and (not (select valid@3 i@@1)) (= (select owner@3 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((ii@@0 Int) ) (!  (=> (and (<= 0 ii@@0) (< ii@@0 j@1)) (not (and (select old_valid@@0 ii@@0) (= (select old_elt@@0 ii@@0) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
))) (=> (forall ((ii@@1 Int) ) (!  (=> (and (<= 0 ii@@1) (< ii@@1 j@1)) (not (and (select old_valid@@0 ii@@1) (= (select old_elt@@0 ii@@1) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((ii@@2 Int) ) (!  (=> (and (and (<= 0 ii@@2) (< ii@@2 q@max)) (select old_valid@@0 ii@@2)) (and (select valid@3 ii@@2) (= (select old_elt@@0 ii@@2) (select elt@3 ii@@2))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
))) (=> (forall ((ii@@3 Int) ) (!  (=> (and (and (<= 0 ii@@3) (< ii@@3 q@max)) (select old_valid@@0 ii@@3)) (and (select valid@3 ii@@3) (= (select old_elt@@0 ii@@3) (select elt@3 ii@@3))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
)) (=> (= (ControlFlow 0 38) (- 0 37)) (<= 0 j@1))))))))))
(let ((Civl_UnchangedChecker_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct  (=> (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@1 i@@2) null)  (and (not (select Civl_global_old_valid@1 i@@2)) (= (select Civl_global_old_owner@1 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 32) (- 0 31))) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@7 i@@3) null)  (and (not (select valid@7 i@@3)) (= (select owner@7 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 Civl_global_old_valid@1 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 Civl_global_old_elt@1) (= (ControlFlow 0 30) (- 0 29))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_valid@0 valid@7 inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$old_elt@0 elt@7))))
(let ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |76|
)) (=> (and (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select Civl_global_old_elt@1 i@@4) null)  (and (not (select Civl_global_old_valid@1 i@@4)) (= (select Civl_global_old_owner@1 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select elt@7 i@@5) null)  (and (not (select valid@7 i@@5)) (= (select owner@7 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@7 i@@6) null)  (and (not (select valid@7 i@@6)) (= (select owner@7 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 27) (- 0 26)) (<= 0 inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$j@0))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |77|
)) (=> (and (and (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select Civl_global_old_elt@1 i@@7) null)  (and (not (select Civl_global_old_valid@1 i@@7)) (= (select Civl_global_old_owner@1 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0)) (and (select Civl_global_old_valid@1 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0) (select Civl_global_old_elt@1 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select elt@7 i@@8) null)  (and (not (select valid@7 i@@8)) (= (select owner@7 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select elt@7 i@@9) null)  (and (not (select valid@7 i@@9)) (= (select owner@7 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3)) (and (select valid@7 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3) (select elt@7 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4)) (and (select valid@7 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4) (select elt@7 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 22) (- 0 21)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |79|
)) (=> (and (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select Civl_global_old_elt@1 i@@10) null)  (and (not (select Civl_global_old_valid@1 i@@10)) (= (select Civl_global_old_owner@1 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 20) (- 0 19))) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select elt@7 i@@11) null)  (and (not (select valid@7 i@@11)) (= (select owner@7 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |78|
)) (=> (and (and (and (and (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select Civl_global_old_elt@1 i@@12) null)  (and (not (select Civl_global_old_valid@1 i@@12)) (= (select Civl_global_old_owner@1 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done))) (= (ControlFlow 0 18) (- 0 17))) (and (and (and (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select elt@7 i@@13) null)  (and (not (select valid@7 i@@13)) (= (select owner@7 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |81|
)) (=> (and (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select Civl_global_old_elt@1 i@@14) null)  (and (not (select Civl_global_old_valid@1 i@@14)) (= (select Civl_global_old_owner@1 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 16) (- 0 15))) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select elt@7 i@@15) null)  (and (not (select valid@7 i@@15)) (= (select owner@7 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |80|
)) (=> (and (and (and (and (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select Civl_global_old_elt@1 i@@16) null)  (and (not (select Civl_global_old_valid@1 i@@16)) (= (select Civl_global_old_owner@1 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done))) (= (ControlFlow 0 14) (- 0 13))) (and (and (and (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select elt@7 i@@17) null)  (and (not (select valid@7 i@@17)) (= (select owner@7 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_1$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |83|
)) (=> (and (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select Civl_global_old_elt@1 i@@18) null)  (and (not (select Civl_global_old_valid@1 i@@18)) (= (select Civl_global_old_owner@1 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 12) (- 0 11))) (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@7 i@@19) null)  (and (not (select valid@7 i@@19)) (= (select owner@7 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |82|
)) (=> (and (and (and (and (and (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select Civl_global_old_elt@1 i@@20) null)  (and (not (select Civl_global_old_valid@1 i@@20)) (= (select Civl_global_old_owner@1 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done))) (= (ControlFlow 0 10) (- 0 9))) (and (and (and (and (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@7 i@@21) null)  (and (not (select valid@7 i@@21)) (= (select owner@7 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |85|
)) (=> (and (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select Civl_global_old_elt@1 i@@22) null)  (and (not (select Civl_global_old_valid@1 i@@22)) (= (select Civl_global_old_owner@1 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 7) (- 0 6))) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@7 i@@23) null)  (and (not (select valid@7 i@@23)) (= (select owner@7 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |84|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 Civl_global_old_valid@1 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 Civl_global_old_elt@1) (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select Civl_global_old_elt@1 i@@24) null)  (and (not (select Civl_global_old_valid@1 i@@24)) (= (select Civl_global_old_owner@1 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@7 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@7)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_valid@0 valid@7 inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$old_elt@0 elt@7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@7 i@@25) null)  (and (not (select valid@7 i@@25)) (= (select owner@7 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@7 i@@26) null)  (and (not (select valid@7 i@@26)) (= (select owner@7 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 3) (- 0 2)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$tid@0 done))))))))))))
(let ((anon4_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@5) (=> (and (= valid@7 valid@5) (= owner@7 owner@5)) (=> (and (and (= Civl_global_old_elt@1 elt@5) (= Civl_global_old_valid@1 valid@5)) (and (= Civl_global_old_owner@1 owner@5) (= Civl_linear_tid_available@7 Civl_linear_tid_available@6))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 66) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 66) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 66) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 66) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 66) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 66) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 66) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 66) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 66) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 66) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 66) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 66) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 66) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon4_0_correct  (and (=> (= (ControlFlow 0 67) (- 0 69)) (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@2 i@@27) null)  (and (not (select valid@2 i@@27)) (= (select owner@2 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@2 i@@28) null)  (and (not (select valid@2 i@@28)) (= (select owner@2 i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2)) (=> (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2) (=> (forall ((i@@29 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 q@max)) (= (= (select elt@5 i@@29) null)  (and (not (select valid@5 i@@29)) (= (select owner@5 i@@29) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (InvLookUp old_valid@@0 valid@5 old_elt@@0 elt@5) (= Civl_linear_tid_available@6 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 67) 65) anon4_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 67) 66) anon4_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 67) 50) Civl_ReturnChecker_correct))))))))))
(let ((anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@2) (=> (and (= valid@7 valid@2) (= owner@7 owner@2)) (=> (and (and (= Civl_global_old_elt@1 elt@2) (= Civl_global_old_valid@1 valid@2)) (and (= Civl_global_old_owner@1 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 64) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 64) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 64) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 64) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 64) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 64) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@4) (=> (and (= valid@7 valid@4) (= owner@7 owner@4)) (=> (and (and (= Civl_global_old_elt@1 elt@4) (= Civl_global_old_valid@1 valid@4)) (and (= Civl_global_old_owner@1 owner@4) (= Civl_linear_tid_available@7 Civl_linear_tid_available@5))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 49) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 49) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 49) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 49) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 49) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 49) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 49) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 49) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 49) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 49) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 49) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 49) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 49) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon6_Then_0_correct  (and (=> (= (ControlFlow 0 55) (- 0 57)) (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 q@max)) (= (= (select elt@2 i@@30) null)  (and (not (select valid@2 i@@30)) (= (select owner@2 i@@30) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 q@max)) (= (= (select elt@2 i@@31) null)  (and (not (select valid@2 i@@31)) (= (select owner@2 i@@31) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2)) (=> (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2) (=> (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 q@max)) (= (= (select elt@4 i@@32) null)  (and (not (select valid@4 i@@32)) (= (select owner@4 i@@32) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (InvLookUp old_valid@@0 valid@4 old_elt@@0 elt@4) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 55) 54) anon6_Then_0_@2_Civl_UnifiedReturn_correct) (=> (= (ControlFlow 0 55) 49) anon6_Then_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 55) 50) Civl_ReturnChecker_correct))))))))))
(let ((anon6_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@2) (=> (and (= valid@7 valid@2) (= owner@7 owner@2)) (=> (and (and (= Civl_global_old_elt@1 elt@2) (= Civl_global_old_valid@1 valid@2)) (and (= Civl_global_old_owner@1 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 48) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 48) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 48) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 48) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 48) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 48) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 48) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 48) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 48) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 48) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 48) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 48) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 48) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon3_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@3) (=> (and (= valid@7 valid@3) (= owner@7 owner@3)) (=> (and (and (= Civl_global_old_elt@1 elt@3) (= Civl_global_old_valid@1 valid@3)) (and (= Civl_global_old_owner@1 owner@3) (= Civl_linear_tid_available@7 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 42) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 42) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 42) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 42) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 42) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 42) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 42) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 42) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 42) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 42) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 42) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 42) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 42) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 43) (- 0 45)) (forall ((i@@33 Int) ) (!  (=> (and (<= 0 i@@33) (< i@@33 q@max)) (= (= (select elt@2 i@@33) null)  (and (not (select valid@2 i@@33)) (= (select owner@2 i@@33) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@34 Int) ) (!  (=> (and (<= 0 i@@34) (< i@@34 q@max)) (= (= (select elt@2 i@@34) null)  (and (not (select valid@2 i@@34)) (= (select owner@2 i@@34) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2)) (=> (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2) (=> (and (and (forall ((i@@35 Int) ) (!  (=> (and (<= 0 i@@35) (< i@@35 q@max)) (= (= (select elt@3 i@@35) null)  (and (not (select valid@3 i@@35)) (= (select owner@3 i@@35) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (InvLookUp old_valid@@0 valid@3 old_elt@@0 elt@3)) (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= j@1 (+ j@0 1)))) (and (and (=> (= (ControlFlow 0 43) 38) anon3_0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 43) 42) anon3_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 43) 36) Civl_UnchangedChecker_correct)))))))))
(let ((anon6_Else$1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@2) (=> (and (= valid@7 valid@2) (= owner@7 owner@2)) (=> (and (and (= Civl_global_old_elt@1 elt@2) (= Civl_global_old_valid@1 valid@2)) (and (= Civl_global_old_owner@1 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 35) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 35) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 35) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 35) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 35) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 35) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (= lock@4 (store lock@3 j@0 nil)) (and (and (=> (= (ControlFlow 0 46) 43) anon3_0_correct) (=> (= (ControlFlow 0 46) 35) anon6_Else$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 46) 36) Civl_UnchangedChecker_correct)))))
(let ((anon6_Else_correct  (=> (not inline$atomic_isEltThereAndValid$0$fnd@2) (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@3 j@0) tid)) (and (and (<= 0 j@0) (< j@0 q@max)) (= (ControlFlow 0 47) 46))) inline$atomic_release$0$anon0_correct))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@1) (=> (and (= valid@7 valid@1) (= owner@7 owner@1)) (=> (and (and (= Civl_global_old_elt@1 elt@1) (= Civl_global_old_valid@1 valid@1)) (and (= Civl_global_old_owner@1 owner@1) (= Civl_linear_tid_available@7 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 34) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 34) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 34) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 34) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 34) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 34) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@7 elt@0) (=> (and (= valid@7 valid@0) (= owner@7 owner@0)) (=> (and (and (= Civl_global_old_elt@1 elt@0) (= Civl_global_old_valid@1 valid@0)) (and (= Civl_global_old_owner@1 owner@0) (= Civl_linear_tid_available@7 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 33) 3) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L0_correct) (=> (= (ControlFlow 0 33) 7) inline$Civl_NoninterferenceChecker_proc_LookUp_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 33) 10) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 12) inline$Civl_NoninterferenceChecker_proc_InsertPair_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 14) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 16) inline$Civl_NoninterferenceChecker_proc_Insert_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 18) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 20) inline$Civl_NoninterferenceChecker_proc_FindSlot_1$0$L1_correct)) (=> (= (ControlFlow 0 33) 22) inline$Civl_NoninterferenceChecker_impl_LookUp_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 27) inline$Civl_NoninterferenceChecker_impl_FindSlot_1$0$L0_correct)) (=> (= (ControlFlow 0 33) 30) inline$Civl_NoninterferenceChecker_yield_YieldLookUp1$0$L0_correct)) (=> (= (ControlFlow 0 33) 32) inline$Civl_NoninterferenceChecker_yield_Yield1$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct true))
(let ((anon5_LoopDone_correct  (=> (<= q@max j@0) (and (and (=> (= (ControlFlow 0 70) 67) anon4_0_correct) (=> (= (ControlFlow 0 70) 64) anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 70) 1) Civl_RefinementChecker_correct)))))
(let ((inline$atomic_release$1$anon0_correct  (=> (= lock@6 (store lock@3 j@0 nil)) (and (and (=> (= (ControlFlow 0 58) 55) anon6_Then_0_correct) (=> (= (ControlFlow 0 58) 48) anon6_Then$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 58) 1) Civl_RefinementChecker_correct)))))
(let ((anon6_Then_correct  (=> inline$atomic_isEltThereAndValid$0$fnd@2 (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@3 j@0) tid)) (and (and (<= 0 j@0) (< j@0 q@max)) (= (ControlFlow 0 59) 58))) inline$atomic_release$1$anon0_correct))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (= inline$atomic_isEltThereAndValid$0$fnd@2  (and (= (select elt@2 j@0) x@@0) (select valid@2 j@0))) (and (=> (= (ControlFlow 0 60) 59) anon6_Then_correct) (=> (= (ControlFlow 0 60) 47) anon6_Else_correct)))))
(let ((anon5_LoopBody$1_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock@3 j@0) tid)) (and (and (<= 0 j@0) (< j@0 q@max)) (= (ControlFlow 0 61) 60))) inline$atomic_isEltThereAndValid$0$anon0_correct)))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@2 j@0) nil) (=> (and (= lock@3 (store lock@2 j@0 tid)) (= (ControlFlow 0 62) 61)) anon5_LoopBody$1_correct))))
(let ((anon5_LoopBody_correct  (=> (< j@0 q@max) (=> (and (not (= tid nil)) (not (= tid done))) (=> (and (and (<= 0 j@0) (< j@0 q@max)) (= (ControlFlow 0 63) 62)) inline$atomic_acquire$0$anon0_correct)))))
(let ((anon5_LoopHead_correct  (=> (forall ((i@@36 Int) ) (!  (=> (and (<= 0 i@@36) (< i@@36 q@max)) (= (= (select elt@2 i@@36) null)  (and (not (select valid@2 i@@36)) (= (select owner@2 i@@36) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (and (forall ((ii@@4 Int) ) (!  (=> (and (<= 0 ii@@4) (< ii@@4 j@0)) (not (and (select old_valid@@0 ii@@4) (= (select old_elt@@0 ii@@4) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
)) (forall ((ii@@5 Int) ) (!  (=> (and (and (<= 0 ii@@5) (< ii@@5 q@max)) (select old_valid@@0 ii@@5)) (and (select valid@2 ii@@5) (= (select old_elt@@0 ii@@5) (select elt@2 ii@@5))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
))) (and (<= 0 j@0) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 71) 70) anon5_LoopDone_correct) (=> (= (ControlFlow 0 71) 63) anon5_LoopBody_correct))))))
(let ((anon0_0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 72) (- 0 76)) (forall ((i@@37 Int) ) (!  (=> (and (<= 0 i@@37) (< i@@37 q@max)) (= (= (select elt@1 i@@37) null)  (and (not (select valid@1 i@@37)) (= (select owner@1 i@@37) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@38 Int) ) (!  (=> (and (<= 0 i@@38) (< i@@38 q@max)) (= (= (select elt@1 i@@38) null)  (and (not (select valid@1 i@@38)) (= (select owner@1 i@@38) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 72) (- 0 75)) (forall ((ii@@6 Int) ) (!  (=> (and (<= 0 ii@@6) (< ii@@6 0)) (not (and (select old_valid@@0 ii@@6) (= (select old_elt@@0 ii@@6) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
))) (=> (forall ((ii@@7 Int) ) (!  (=> (and (<= 0 ii@@7) (< ii@@7 0)) (not (and (select old_valid@@0 ii@@7) (= (select old_elt@@0 ii@@7) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 72) (- 0 74)) (forall ((ii@@8 Int) ) (!  (=> (and (and (<= 0 ii@@8) (< ii@@8 q@max)) (select old_valid@@0 ii@@8)) (and (select valid@1 ii@@8) (= (select old_elt@@0 ii@@8) (select elt@1 ii@@8))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
))) (=> (forall ((ii@@9 Int) ) (!  (=> (and (and (<= 0 ii@@9) (< ii@@9 q@max)) (select old_valid@@0 ii@@9)) (and (select valid@1 ii@@9) (= (select old_elt@@0 ii@@9) (select elt@1 ii@@9))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (<= 0 0)) (=> (<= 0 0) (=> (= (ControlFlow 0 72) 71) anon5_LoopHead_correct)))))))))))
(let ((anon0_0_correct  (and (=> (= (ControlFlow 0 77) (- 0 79)) (forall ((i@@39 Int) ) (!  (=> (and (<= 0 i@@39) (< i@@39 q@max)) (= (= (select elt@0 i@@39) null)  (and (not (select valid@0 i@@39)) (= (select owner@0 i@@39) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@40 Int) ) (!  (=> (and (<= 0 i@@40) (< i@@40 q@max)) (= (= (select elt@0 i@@40) null)  (and (not (select valid@0 i@@40)) (= (select owner@0 i@@40) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (InvLookUp old_valid@@0 valid@0 old_elt@@0 elt@0)) (=> (InvLookUp old_valid@@0 valid@0 old_elt@@0 elt@0) (=> (forall ((i@@41 Int) ) (!  (=> (and (<= 0 i@@41) (< i@@41 q@max)) (= (= (select elt@1 i@@41) null)  (and (not (select valid@1 i@@41)) (= (select owner@1 i@@41) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (InvLookUp old_valid@@0 valid@1 old_elt@@0 elt@1) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 77) 72) anon0_0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 77) 34) anon0_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 77) 1) Civl_RefinementChecker_correct))))))))))
(let ((anon0_correct  (=> (and (InvLookUp old_valid@@0 valid@0 old_elt@@0 elt@0) (forall ((i@@42 Int) ) (!  (=> (and (<= 0 i@@42) (< i@@42 q@max)) (= (= (select elt@0 i@@42) null)  (and (not (select valid@0 i@@42)) (= (select owner@0 i@@42) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (and (and (not (= tid nil)) (not (= tid done))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 80) 77) anon0_0_correct) (=> (= (ControlFlow 0 80) 33) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 80) 1) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (InvLookUp old_valid@@0 valid@@0 old_elt@@0 elt@@0) (forall ((i@@43 Int) ) (!  (=> (and (<= 0 i@@43) (< i@@43 q@max)) (= (= (select elt@@0 i@@43) null)  (and (not (select valid@@0 i@@43)) (= (select owner i@@43) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (and (and (not (= tid nil)) (not (= tid done))) (= (ControlFlow 0 81) 80)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@4 () Bool)
(declare-fun elt@7 () (Array Int Int))
(declare-fun Civl_global_old_elt@1 () (Array Int Int))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun Civl_global_old_valid@1 () (Array Int Bool))
(declare-fun lock@7 () (Array Int T@X))
(declare-fun Civl_global_old_lock@1 () (Array Int T@X))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun Civl_global_old_owner@1 () (Array Int T@X))
(declare-fun x@@0 () Int)
(declare-fun result@1 () Bool)
(declare-fun Civl_old_result@1 () Bool)
(declare-fun Civl_pc@5 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun owner@6 () (Array Int T@X))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun lock@5 () (Array Int T@X))
(declare-fun elt@5 () (Array Int Int))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun owner@5 () (Array Int T@X))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun lock@4 () (Array Int T@X))
(declare-fun elt@4 () (Array Int Int))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun elt@10 () (Array Int Int))
(declare-fun valid@9 () (Array Int Bool))
(declare-fun owner@11 () (Array Int T@X))
(declare-fun elt@8 () (Array Int Int))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun owner@9 () (Array Int T@X))
(declare-fun Civl_global_old_elt@2 () (Array Int Int))
(declare-fun Civl_global_old_valid@2 () (Array Int Bool))
(declare-fun Civl_global_old_owner@2 () (Array Int T@X))
(declare-fun elt@9 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun owner@10 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun elt@3 () (Array Int Int))
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun lock@1 () (Array Int T@X))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_pc@0 () Bool)
(declare-fun result () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun lock@3 () (Array Int T@X))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@3 () Bool)
(declare-fun elt@6 () (Array Int Int))
(declare-fun Civl_global_old_elt@0 () (Array Int Int))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun Civl_global_old_valid@0 () (Array Int Bool))
(declare-fun lock@6 () (Array Int T@X))
(declare-fun Civl_global_old_lock@0 () (Array Int T@X))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun Civl_global_old_owner@0 () (Array Int T@X))
(declare-fun result@0 () Bool)
(declare-fun Civl_old_result@0 () Bool)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun lock@2 () (Array Int T@X))
(declare-fun elt@2 () (Array Int Int))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_Insert_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 77) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) (or Civl_pc@4 (or (and (and (and (= elt@7 Civl_global_old_elt@1) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1)) (or (exists ((|Civl_r#0| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0|) (< |Civl_r#0| q@max)) (= (select Civl_global_old_valid@1 |Civl_r#0|) false)) (= (select Civl_global_old_elt@1 |Civl_r#0|) null)) (= (select Civl_global_old_owner@1 |Civl_r#0|) nil)) (= elt@7 (store Civl_global_old_elt@1 |Civl_r#0| x@@0))) (= valid@6 (store Civl_global_old_valid@1 |Civl_r#0| true))) (= owner@8 (store Civl_global_old_owner@1 |Civl_r#0| done))) (= result@1 true)) (= lock@7 Civl_global_old_lock@1))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= result@1 false) (= elt@7 Civl_global_old_elt@1)) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1)))))) (=> (or Civl_pc@4 (or (and (and (and (= elt@7 Civl_global_old_elt@1) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1)) (or (exists ((|Civl_r#0@@0| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@0|) (< |Civl_r#0@@0| q@max)) (= (select Civl_global_old_valid@1 |Civl_r#0@@0|) false)) (= (select Civl_global_old_elt@1 |Civl_r#0@@0|) null)) (= (select Civl_global_old_owner@1 |Civl_r#0@@0|) nil)) (= elt@7 (store Civl_global_old_elt@1 |Civl_r#0@@0| x@@0))) (= valid@6 (store Civl_global_old_valid@1 |Civl_r#0@@0| true))) (= owner@8 (store Civl_global_old_owner@1 |Civl_r#0@@0| done))) (= result@1 true)) (= lock@7 Civl_global_old_lock@1))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= result@1 false) (= elt@7 Civl_global_old_elt@1)) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (=> Civl_pc@4 (and (and (and (and (= elt@7 Civl_global_old_elt@1) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1)) (= result@1 Civl_old_result@1)))) (=> (=> Civl_pc@4 (and (and (and (and (= elt@7 Civl_global_old_elt@1) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1)) (= result@1 Civl_old_result@1))) (=> (and (and (= Civl_pc@5  (=> (and (and (and (= elt@7 Civl_global_old_elt@1) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1)) Civl_pc@4)) (= Civl_ok@4  (or (or (exists ((|Civl_r#0@@1| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@1|) (< |Civl_r#0@@1| q@max)) (= (select Civl_global_old_valid@1 |Civl_r#0@@1|) false)) (= (select Civl_global_old_elt@1 |Civl_r#0@@1|) null)) (= (select Civl_global_old_owner@1 |Civl_r#0@@1|) nil)) (= elt@7 (store Civl_global_old_elt@1 |Civl_r#0@@1| x@@0))) (= valid@6 (store Civl_global_old_valid@1 |Civl_r#0@@1| true))) (= owner@8 (store Civl_global_old_owner@1 |Civl_r#0@@1| done))) (= result@1 true)) (= lock@7 Civl_global_old_lock@1))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= result@1 false) (= elt@7 Civl_global_old_elt@1)) (= valid@6 Civl_global_old_valid@1)) (= lock@7 Civl_global_old_lock@1)) (= owner@8 Civl_global_old_owner@1))) (and (= result@1 Civl_old_result@1) Civl_ok@3)))) (= (ControlFlow 0 38) (- 0 37))) Civl_ok@4)))))))
(let ((anon3_Then_0_@2_Civl_ReturnChecker_correct  (=> (= owner@8 owner@6) (=> (and (and (= valid@6 valid@4) (= lock@7 lock@5)) (and (= elt@7 elt@5) (= Civl_global_old_elt@1 elt@5))) (=> (and (and (and (= Civl_global_old_valid@1 valid@4) (= Civl_global_old_lock@1 lock@5)) (and (= Civl_global_old_owner@1 owner@6) (= Civl_pc@4 Civl_pc@2))) (and (and (= Civl_ok@3 Civl_ok@2) (= Civl_old_result@1 false)) (and (= result@1 false) (= (ControlFlow 0 64) 38)))) Civl_ReturnChecker_correct)))))
(let ((anon2_0_@2_Civl_ReturnChecker_correct  (=> (= owner@8 owner@5) (=> (and (and (= valid@6 valid@3) (= lock@7 lock@4)) (and (= elt@7 elt@4) (= Civl_global_old_elt@1 elt@4))) (=> (and (and (and (= Civl_global_old_valid@1 valid@3) (= Civl_global_old_lock@1 lock@4)) (and (= Civl_global_old_owner@1 owner@5) (= Civl_pc@4 Civl_pc@1))) (and (and (= Civl_ok@3 Civl_ok@1) (= Civl_old_result@1 true)) (and (= result@1 true) (= (ControlFlow 0 41) 38)))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 34) (- 0 33)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@10 i) null)  (and (not (select valid@9 i)) (= (select owner@11 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= elt@10 elt@8) (= valid@9 valid@7)) (and (= owner@11 owner@9) (= (ControlFlow 0 35) 34))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= owner@9 owner@6) (= valid@7 valid@4)) (and (= elt@8 elt@5) (= (ControlFlow 0 65) 35))) Civl_UnifiedReturn_correct)))
(let ((anon2_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= owner@9 owner@5) (= valid@7 valid@3)) (and (= elt@8 elt@4) (= (ControlFlow 0 36) 35))) Civl_UnifiedReturn_correct)))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select Civl_global_old_elt@2 i@@0) null)  (and (not (select Civl_global_old_valid@2 i@@0)) (= (select Civl_global_old_owner@2 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 28) (- 0 27))) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@9 i@@1) null)  (and (not (select valid@8 i@@1)) (= (select owner@10 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 Civl_global_old_valid@2 inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 Civl_global_old_elt@2) (= (ControlFlow 0 26) (- 0 25))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 valid@8 inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 elt@9))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |86|
)) (=> (and (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@2 i@@2) null)  (and (not (select Civl_global_old_valid@2 i@@2)) (= (select Civl_global_old_owner@2 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0)) (and (select Civl_global_old_valid@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (select Civl_global_old_elt@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@9 i@@3) null)  (and (not (select valid@8 i@@3)) (= (select owner@10 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select elt@9 i@@4) null)  (and (not (select valid@8 i@@4)) (= (select owner@10 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3)) (and (select valid@8 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (select elt@9 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4)) (and (select valid@8 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (select elt@9 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 21) (- 0 20)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |88|
)) (=> (and (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select Civl_global_old_elt@2 i@@5) null)  (and (not (select Civl_global_old_valid@2 i@@5)) (= (select Civl_global_old_owner@2 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 19) (- 0 18))) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@9 i@@6) null)  (and (not (select valid@8 i@@6)) (= (select owner@10 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |87|
)) (=> (and (and (and (and (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select Civl_global_old_elt@2 i@@7) null)  (and (not (select Civl_global_old_valid@2 i@@7)) (= (select Civl_global_old_owner@2 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 done))) (= (ControlFlow 0 17) (- 0 16))) (and (and (and (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select elt@9 i@@8) null)  (and (not (select valid@8 i@@8)) (= (select owner@10 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |90|
)) (=> (and (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select Civl_global_old_elt@2 i@@9) null)  (and (not (select Civl_global_old_valid@2 i@@9)) (= (select Civl_global_old_owner@2 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 15) (- 0 14))) (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select elt@9 i@@10) null)  (and (not (select valid@8 i@@10)) (= (select owner@10 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |89|
)) (=> (and (and (and (and (and (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select Civl_global_old_elt@2 i@@11) null)  (and (not (select Civl_global_old_valid@2 i@@11)) (= (select Civl_global_old_owner@2 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 done))) (= (ControlFlow 0 13) (- 0 12))) (and (and (and (and (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select elt@9 i@@12) null)  (and (not (select valid@8 i@@12)) (= (select owner@10 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |92|
)) (=> (and (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select Civl_global_old_elt@2 i@@13) null)  (and (not (select Civl_global_old_valid@2 i@@13)) (= (select Civl_global_old_owner@2 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select elt@9 i@@14) null)  (and (not (select valid@8 i@@14)) (= (select owner@10 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@4 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |91|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 Civl_global_old_valid@2 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 Civl_global_old_elt@2) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select Civl_global_old_elt@2 i@@15) null)  (and (not (select Civl_global_old_valid@2 i@@15)) (= (select Civl_global_old_owner@2 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 done)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 valid@8 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 elt@9)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 valid@8 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 elt@9) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select elt@9 i@@16) null)  (and (not (select valid@8 i@@16)) (= (select owner@10 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select elt@9 i@@17) null)  (and (not (select valid@8 i@@17)) (= (select owner@10 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 done))))))))))))
(let ((anon3_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= owner@10 owner@6) (=> (and (= valid@8 valid@4) (= elt@9 elt@5)) (=> (and (and (= Civl_global_old_elt@2 elt@5) (= Civl_global_old_valid@2 valid@4)) (and (= Civl_global_old_owner@2 owner@6) (= Civl_linear_tid_available@4 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 66) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 66) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 66) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 66) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 66) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 66) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 66) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 66) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 66) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 66) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon3_Then_0_correct  (=> (and (= Civl_pc@2  (=> (and (and (and (= elt@3 elt@1) (= valid@1 valid@1)) (= lock@1 lock@1)) (= owner@3 owner@1)) Civl_pc@0)) (= Civl_ok@2  (or (or (exists ((|Civl_r#0@@2| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@2|) (< |Civl_r#0@@2| q@max)) (= (select valid@1 |Civl_r#0@@2|) false)) (= (select elt@1 |Civl_r#0@@2|) null)) (= (select owner@1 |Civl_r#0@@2|) nil)) (= elt@3 (store elt@1 |Civl_r#0@@2| x@@0))) (= valid@1 (store valid@1 |Civl_r#0@@2| true))) (= owner@3 (store owner@1 |Civl_r#0@@2| done))) (= false true)) (= lock@1 lock@1))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= false false) (= elt@3 elt@1)) (= valid@1 valid@1)) (= lock@1 lock@1)) (= owner@3 owner@1))) (and (= false result) Civl_ok@0)))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select elt@3 i@@18) null)  (and (not (select valid@1 i@@18)) (= (select owner@3 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@3 i@@19) null)  (and (not (select valid@1 i@@19)) (= (select owner@3 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select elt@5 i@@20) null)  (and (not (select valid@4 i@@20)) (= (select owner@6 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@2 true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 67) 64) anon3_Then_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 67) 65) anon3_Then_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 67) 66) anon3_Then_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon3_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= owner@10 owner@3) (=> (and (= valid@8 valid@1) (= elt@9 elt@3)) (=> (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_owner@2 owner@1) (= Civl_linear_tid_available@4 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 62) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 62) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 62) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 62) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 62) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 62) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 62) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 62) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 62) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 62) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon2_0_@2_Civl_NoninterferenceChecker_correct  (=> (= owner@10 owner@5) (=> (and (= valid@8 valid@3) (= elt@9 elt@4)) (=> (and (and (= Civl_global_old_elt@2 elt@4) (= Civl_global_old_valid@2 valid@3)) (and (= Civl_global_old_owner@2 owner@5) (= Civl_linear_tid_available@4 Civl_linear_tid_available@2))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 32) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 32) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 32) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 32) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon2_0_correct  (=> (and (= Civl_pc@1  (=> (and (and (and (= elt@3 elt@1) (= valid@2 valid@1)) (= lock@3 lock@1)) (= owner@4 owner@1)) Civl_pc@0)) (= Civl_ok@1  (or (or (exists ((|Civl_r#0@@3| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@3|) (< |Civl_r#0@@3| q@max)) (= (select valid@1 |Civl_r#0@@3|) false)) (= (select elt@1 |Civl_r#0@@3|) null)) (= (select owner@1 |Civl_r#0@@3|) nil)) (= elt@3 (store elt@1 |Civl_r#0@@3| x@@0))) (= valid@2 (store valid@1 |Civl_r#0@@3| true))) (= owner@4 (store owner@1 |Civl_r#0@@3| done))) (= true true)) (= lock@3 lock@1))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= true false) (= elt@3 elt@1)) (= valid@2 valid@1)) (= lock@3 lock@1)) (= owner@4 owner@1))) (and (= true result) Civl_ok@0)))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@3 i@@21) null)  (and (not (select valid@2 i@@21)) (= (select owner@4 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select elt@3 i@@22) null)  (and (not (select valid@2 i@@22)) (= (select owner@4 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@4 i@@23) null)  (and (not (select valid@3 i@@23)) (= (select owner@5 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@1 true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 42) 41) anon2_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 42) 36) anon2_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 42) 32) anon2_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon3_Else$3_@2_Civl_NoninterferenceChecker_correct  (=> (= owner@10 owner@4) (=> (and (= valid@8 valid@2) (= elt@9 elt@3)) (=> (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_owner@2 owner@1) (= Civl_linear_tid_available@4 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 30) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 30) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 30) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 30) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= owner@10 owner@0) (=> (and (= valid@8 valid@0) (= elt@9 elt@0)) (=> (and (and (= Civl_global_old_elt@2 elt@0) (= Civl_global_old_valid@2 valid@0)) (and (= Civl_global_old_owner@2 owner@0) (= Civl_linear_tid_available@4 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 29) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 29) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 29) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 29) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@3 (or (and (and (and (= elt@6 Civl_global_old_elt@0) (= valid@5 Civl_global_old_valid@0)) (= lock@6 Civl_global_old_lock@0)) (= owner@7 Civl_global_old_owner@0)) (or (exists ((|Civl_r#0@@4| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@4|) (< |Civl_r#0@@4| q@max)) (= (select Civl_global_old_valid@0 |Civl_r#0@@4|) false)) (= (select Civl_global_old_elt@0 |Civl_r#0@@4|) null)) (= (select Civl_global_old_owner@0 |Civl_r#0@@4|) nil)) (= elt@6 (store Civl_global_old_elt@0 |Civl_r#0@@4| x@@0))) (= valid@5 (store Civl_global_old_valid@0 |Civl_r#0@@4| true))) (= owner@7 (store Civl_global_old_owner@0 |Civl_r#0@@4| done))) (= result@0 true)) (= lock@6 Civl_global_old_lock@0))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= result@0 false) (= elt@6 Civl_global_old_elt@0)) (= valid@5 Civl_global_old_valid@0)) (= lock@6 Civl_global_old_lock@0)) (= owner@7 Civl_global_old_owner@0)))))) (=> (or Civl_pc@3 (or (and (and (and (= elt@6 Civl_global_old_elt@0) (= valid@5 Civl_global_old_valid@0)) (= lock@6 Civl_global_old_lock@0)) (= owner@7 Civl_global_old_owner@0)) (or (exists ((|Civl_r#0@@5| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@5|) (< |Civl_r#0@@5| q@max)) (= (select Civl_global_old_valid@0 |Civl_r#0@@5|) false)) (= (select Civl_global_old_elt@0 |Civl_r#0@@5|) null)) (= (select Civl_global_old_owner@0 |Civl_r#0@@5|) nil)) (= elt@6 (store Civl_global_old_elt@0 |Civl_r#0@@5| x@@0))) (= valid@5 (store Civl_global_old_valid@0 |Civl_r#0@@5| true))) (= owner@7 (store Civl_global_old_owner@0 |Civl_r#0@@5| done))) (= result@0 true)) (= lock@6 Civl_global_old_lock@0))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= result@0 false) (= elt@6 Civl_global_old_elt@0)) (= valid@5 Civl_global_old_valid@0)) (= lock@6 Civl_global_old_lock@0)) (= owner@7 Civl_global_old_owner@0))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@3 (and (and (and (and (= elt@6 Civl_global_old_elt@0) (= valid@5 Civl_global_old_valid@0)) (= lock@6 Civl_global_old_lock@0)) (= owner@7 Civl_global_old_owner@0)) (= result@0 Civl_old_result@0))))))))
(let ((anon3_Then_@2_Civl_RefinementChecker_correct  (=> (and (and (= owner@7 owner@3) (= valid@5 valid@1)) (and (= lock@6 lock@1) (= elt@6 elt@3))) (=> (and (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_owner@0 owner@1))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_result@0 result)) (and (= result@0 false) (= (ControlFlow 0 63) 2)))) Civl_RefinementChecker_correct))))
(let ((anon3_Then_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 69) 67) anon3_Then_0_correct) (=> (= (ControlFlow 0 69) 62) anon3_Then_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 69) 63) anon3_Then_@2_Civl_RefinementChecker_correct)))))
(let ((anon3_Else$3_@2_Civl_RefinementChecker_correct  (=> (and (and (= owner@7 owner@4) (= valid@5 valid@2)) (and (= lock@6 lock@3) (= elt@6 elt@3))) (=> (and (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_owner@0 owner@1))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_result@0 result)) (and (= result@0 true) (= (ControlFlow 0 31) 2)))) Civl_RefinementChecker_correct))))
(let ((inline$atomic_release$0$anon0_correct  (=> (= lock@3 (store lock@2 inline$AtomicFindSlot$0$r@0 nil)) (and (and (=> (= (ControlFlow 0 44) 42) anon2_0_correct) (=> (= (ControlFlow 0 44) 30) anon3_Else$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 44) 31) anon3_Else$3_@2_Civl_RefinementChecker_correct)))))
(let ((anon3_Else$2_correct  (and (=> (= (ControlFlow 0 45) (- 0 48)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (= (select lock@2 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select lock@2 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 45) 44) inline$atomic_release$0$anon0_correct)))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@2 (store valid@1 inline$AtomicFindSlot$0$r@0 true)) (=> (and (= owner@4 (store owner@3 inline$AtomicFindSlot$0$r@0 done)) (= (ControlFlow 0 49) 45)) anon3_Else$2_correct))))
(let ((anon3_Else$1_correct  (and (=> (= (ControlFlow 0 50) (- 0 56)) (= (select elt@3 inline$AtomicFindSlot$0$r@0) x@@0)) (=> (= (select elt@3 inline$AtomicFindSlot$0$r@0) x@@0) (and (=> (= (ControlFlow 0 50) (- 0 55)) (= (select valid@1 inline$AtomicFindSlot$0$r@0) false)) (=> (= (select valid@1 inline$AtomicFindSlot$0$r@0) false) (and (=> (= (ControlFlow 0 50) (- 0 54)) (= (select owner@3 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select owner@3 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 50) (- 0 53)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (= (select lock@2 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select lock@2 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 50) (- 0 51)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 50) 49) inline$atomic_setValid$0$anon0_correct)))))))))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@1 inline$AtomicFindSlot$0$r@0) nil) (=> (and (= lock@2 (store lock@1 inline$AtomicFindSlot$0$r@0 tid)) (= (ControlFlow 0 57) 50)) anon3_Else$1_correct))))
(let ((anon3_Else_correct  (=> (not (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (and (=> (= (ControlFlow 0 58) (- 0 61)) (not (= inline$AtomicFindSlot$0$r@0 (- 0 1)))) (=> (not (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (and (=> (= (ControlFlow 0 58) (- 0 60)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 58) 57) inline$atomic_acquire$0$anon0_correct))))))))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (=> (and (= elt@3 elt@1) (= owner@3 owner@1)) (and (=> (= (ControlFlow 0 71) 69) anon3_Then_correct) (=> (= (ControlFlow 0 71) 58) anon3_Else_correct))))))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@1 inline$AtomicFindSlot$0$r@0) null)) (and (= (select owner@1 inline$AtomicFindSlot$0$r@0) nil) (not (select valid@1 inline$AtomicFindSlot$0$r@0)))) (and (and (= elt@2 (store elt@1 inline$AtomicFindSlot$0$r@0 x@@0)) (= owner@2 (store owner@1 inline$AtomicFindSlot$0$r@0 tid))) (and (= elt@3 elt@2) (= owner@3 owner@2)))) (and (=> (= (ControlFlow 0 70) 69) anon3_Then_correct) (=> (= (ControlFlow 0 70) 58) anon3_Else_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (and (and (and (= elt@0 elt@0) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0)) false)) (= Civl_ok@0  (or (or (exists ((|Civl_r#0@@6| Int) ) (!  (and (and (and (and (and (and (and (and (and (<= 0 |Civl_r#0@@6|) (< |Civl_r#0@@6| q@max)) (= (select valid@0 |Civl_r#0@@6|) false)) (= (select elt@0 |Civl_r#0@@6|) null)) (= (select owner@0 |Civl_r#0@@6|) nil)) (= elt@0 (store elt@0 |Civl_r#0@@6| x@@0))) (= valid@0 (store valid@0 |Civl_r#0@@6| true))) (= owner@0 (store owner@0 |Civl_r#0@@6| done))) (= result true)) (= lock@0 lock@0))
 :qid |unknown.0:0|
 :skolemid |93|
)) (and (and (and (and (= result false) (= elt@0 elt@0)) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0))) (and (= result result) false)))) (and (=> (= (ControlFlow 0 72) (- 0 75)) (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select elt@0 i@@24) null)  (and (not (select valid@0 i@@24)) (= (select owner@0 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@0 i@@25) null)  (and (not (select valid@0 i@@25)) (= (select owner@0 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@1 i@@26) null)  (and (not (select valid@1 i@@26)) (= (select owner@1 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (not (= x@@0 null))) (=> (not (= x@@0 null)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 72) 70) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 72) 71) inline$AtomicFindSlot$0$anon3_Else_correct)))))))))))))
(let ((anon0_@2_Civl_RefinementChecker_correct  (=> (and (and (= owner@7 owner@0) (= valid@5 valid@0)) (and (= lock@6 lock@0) (= elt@6 elt@0))) (=> (and (and (and (= Civl_global_old_elt@0 elt@0) (= Civl_global_old_valid@0 valid@0)) (and (= Civl_global_old_lock@0 lock@0) (= Civl_global_old_owner@0 owner@0))) (and (and (= Civl_pc@3 false) (= Civl_old_result@0 result)) (and (= result@0 result) (= (ControlFlow 0 4) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_correct  (=> (and (and (and (and (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@0 i@@27) null)  (and (not (select valid@0 i@@27)) (= (select owner@0 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 76) 72) anon0_0_correct) (=> (= (ControlFlow 0 76) 29) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 76) 4) anon0_@2_Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@@0 i@@28) null)  (and (not (select valid@@0 i@@28)) (= (select owner i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= tid nil))) (not (= tid done))) (= (ControlFlow 0 77) 76)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@5 () Bool)
(declare-fun elt@11 () (Array Int Int))
(declare-fun Civl_global_old_elt@1 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun Civl_global_old_valid@1 () (Array Int Bool))
(declare-fun lock@12 () (Array Int T@X))
(declare-fun Civl_global_old_lock@1 () (Array Int T@X))
(declare-fun owner@13 () (Array Int T@X))
(declare-fun Civl_global_old_owner@1 () (Array Int T@X))
(declare-fun x@@0 () Int)
(declare-fun y () Int)
(declare-fun result@1 () Bool)
(declare-fun Civl_old_result@1 () Bool)
(declare-fun Civl_pc@6 () Bool)
(declare-fun Civl_ok@5 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun elt@9 () (Array Int Int))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun lock@10 () (Array Int T@X))
(declare-fun owner@11 () (Array Int T@X))
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun elt@8 () (Array Int Int))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun lock@9 () (Array Int T@X))
(declare-fun owner@10 () (Array Int T@X))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun elt@6 () (Array Int Int))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun lock@6 () (Array Int T@X))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun elt@14 () (Array Int Int))
(declare-fun valid@11 () (Array Int Bool))
(declare-fun owner@16 () (Array Int T@X))
(declare-fun owner@14 () (Array Int T@X))
(declare-fun valid@9 () (Array Int Bool))
(declare-fun elt@12 () (Array Int Int))
(declare-fun Civl_global_old_elt@2 () (Array Int Int))
(declare-fun Civl_global_old_valid@2 () (Array Int Bool))
(declare-fun Civl_global_old_owner@2 () (Array Int T@X))
(declare-fun elt@13 () (Array Int Int))
(declare-fun valid@10 () (Array Int Bool))
(declare-fun owner@15 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun elt@3 () (Array Int Int))
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun lock@1 () (Array Int T@X))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_pc@0 () Bool)
(declare-fun result () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun elt@7 () (Array Int Int))
(declare-fun lock@8 () (Array Int T@X))
(declare-fun owner@9 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@2 () (Array T@X Bool))
(declare-fun elt@5 () (Array Int Int))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun lock@5 () (Array Int T@X))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@4 () Bool)
(declare-fun elt@10 () (Array Int Int))
(declare-fun Civl_global_old_elt@0 () (Array Int Int))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun Civl_global_old_valid@0 () (Array Int Bool))
(declare-fun lock@11 () (Array Int T@X))
(declare-fun Civl_global_old_lock@0 () (Array Int T@X))
(declare-fun owner@12 () (Array Int T@X))
(declare-fun Civl_global_old_owner@0 () (Array Int T@X))
(declare-fun result@0 () Bool)
(declare-fun Civl_old_result@0 () Bool)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun lock@7 () (Array Int T@X))
(declare-fun owner@5 () (Array Int T@X))
(declare-fun inline$AtomicFindSlot$1$r@0 () Int)
(declare-fun lock@4 () (Array Int T@X))
(declare-fun lock@3 () (Array Int T@X))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun owner@6 () (Array Int T@X))
(declare-fun lock@2 () (Array Int T@X))
(declare-fun elt@4 () (Array Int Int))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun elt@2 () (Array Int Int))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_InsertPair_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 121) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) (or Civl_pc@5 (or (and (and (and (= elt@11 Civl_global_old_elt@1) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1)) (or (exists ((|Civl_rx#0| Int) (|Civl_ry#0| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0|) (< |Civl_rx#0| q@max)) (<= 0 |Civl_ry#0|)) (< |Civl_ry#0| q@max)) (not (= |Civl_rx#0| |Civl_ry#0|))) (= (select Civl_global_old_valid@1 |Civl_rx#0|) false)) (= (select Civl_global_old_valid@1 |Civl_ry#0|) false)) (= (select Civl_global_old_elt@1 |Civl_rx#0|) null)) (= (select Civl_global_old_elt@1 |Civl_rx#0|) null)) (= elt@11 (store (store Civl_global_old_elt@1 |Civl_rx#0| x@@0) |Civl_ry#0| y))) (= valid@8 (store (store Civl_global_old_valid@1 |Civl_rx#0| true) |Civl_ry#0| true))) (= owner@13 (store (store Civl_global_old_owner@1 |Civl_rx#0| done) |Civl_ry#0| done))) (= result@1 true)) (= lock@12 Civl_global_old_lock@1))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= result@1 false) (= elt@11 Civl_global_old_elt@1)) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1)))))) (=> (or Civl_pc@5 (or (and (and (and (= elt@11 Civl_global_old_elt@1) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1)) (or (exists ((|Civl_rx#0@@0| Int) (|Civl_ry#0@@0| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@0|) (< |Civl_rx#0@@0| q@max)) (<= 0 |Civl_ry#0@@0|)) (< |Civl_ry#0@@0| q@max)) (not (= |Civl_rx#0@@0| |Civl_ry#0@@0|))) (= (select Civl_global_old_valid@1 |Civl_rx#0@@0|) false)) (= (select Civl_global_old_valid@1 |Civl_ry#0@@0|) false)) (= (select Civl_global_old_elt@1 |Civl_rx#0@@0|) null)) (= (select Civl_global_old_elt@1 |Civl_rx#0@@0|) null)) (= elt@11 (store (store Civl_global_old_elt@1 |Civl_rx#0@@0| x@@0) |Civl_ry#0@@0| y))) (= valid@8 (store (store Civl_global_old_valid@1 |Civl_rx#0@@0| true) |Civl_ry#0@@0| true))) (= owner@13 (store (store Civl_global_old_owner@1 |Civl_rx#0@@0| done) |Civl_ry#0@@0| done))) (= result@1 true)) (= lock@12 Civl_global_old_lock@1))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= result@1 false) (= elt@11 Civl_global_old_elt@1)) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1))))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (=> Civl_pc@5 (and (and (and (and (= elt@11 Civl_global_old_elt@1) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1)) (= result@1 Civl_old_result@1)))) (=> (=> Civl_pc@5 (and (and (and (and (= elt@11 Civl_global_old_elt@1) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1)) (= result@1 Civl_old_result@1))) (=> (and (and (= Civl_pc@6  (=> (and (and (and (= elt@11 Civl_global_old_elt@1) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1)) Civl_pc@5)) (= Civl_ok@5  (or (or (exists ((|Civl_rx#0@@1| Int) (|Civl_ry#0@@1| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@1|) (< |Civl_rx#0@@1| q@max)) (<= 0 |Civl_ry#0@@1|)) (< |Civl_ry#0@@1| q@max)) (not (= |Civl_rx#0@@1| |Civl_ry#0@@1|))) (= (select Civl_global_old_valid@1 |Civl_rx#0@@1|) false)) (= (select Civl_global_old_valid@1 |Civl_ry#0@@1|) false)) (= (select Civl_global_old_elt@1 |Civl_rx#0@@1|) null)) (= (select Civl_global_old_elt@1 |Civl_rx#0@@1|) null)) (= elt@11 (store (store Civl_global_old_elt@1 |Civl_rx#0@@1| x@@0) |Civl_ry#0@@1| y))) (= valid@8 (store (store Civl_global_old_valid@1 |Civl_rx#0@@1| true) |Civl_ry#0@@1| true))) (= owner@13 (store (store Civl_global_old_owner@1 |Civl_rx#0@@1| done) |Civl_ry#0@@1| done))) (= result@1 true)) (= lock@12 Civl_global_old_lock@1))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= result@1 false) (= elt@11 Civl_global_old_elt@1)) (= valid@8 Civl_global_old_valid@1)) (= lock@12 Civl_global_old_lock@1)) (= owner@13 Civl_global_old_owner@1))) (and (= result@1 Civl_old_result@1) Civl_ok@4)))) (= (ControlFlow 0 38) (- 0 37))) Civl_ok@5)))))))
(let ((anon5_Then_0_@2_Civl_ReturnChecker_correct  (=> (= elt@11 elt@9) (=> (and (and (= valid@8 valid@6) (= lock@12 lock@10)) (and (= owner@13 owner@11) (= Civl_global_old_elt@1 elt@9))) (=> (and (and (and (= Civl_global_old_valid@1 valid@6) (= Civl_global_old_lock@1 lock@10)) (and (= Civl_global_old_owner@1 owner@11) (= Civl_pc@5 Civl_pc@3))) (and (and (= Civl_ok@4 Civl_ok@3) (= Civl_old_result@1 false)) (and (= result@1 false) (= (ControlFlow 0 108) 38)))) Civl_ReturnChecker_correct)))))
(let ((anon6_Then_0_@2_Civl_ReturnChecker_correct  (=> (= elt@11 elt@8) (=> (and (and (= valid@8 valid@5) (= lock@12 lock@9)) (and (= owner@13 owner@10) (= Civl_global_old_elt@1 elt@8))) (=> (and (and (and (= Civl_global_old_valid@1 valid@5) (= Civl_global_old_lock@1 lock@9)) (and (= Civl_global_old_owner@1 owner@10) (= Civl_pc@5 Civl_pc@2))) (and (and (= Civl_ok@4 Civl_ok@2) (= Civl_old_result@1 false)) (and (= result@1 false) (= (ControlFlow 0 81) 38)))) Civl_ReturnChecker_correct)))))
(let ((anon4_0_@2_Civl_ReturnChecker_correct  (=> (= elt@11 elt@6) (=> (and (and (= valid@8 valid@4) (= lock@12 lock@6)) (and (= owner@13 owner@8) (= Civl_global_old_elt@1 elt@6))) (=> (and (and (and (= Civl_global_old_valid@1 valid@4) (= Civl_global_old_lock@1 lock@6)) (and (= Civl_global_old_owner@1 owner@8) (= Civl_pc@5 Civl_pc@1))) (and (and (= Civl_ok@4 Civl_ok@1) (= Civl_old_result@1 true)) (and (= result@1 true) (= (ControlFlow 0 41) 38)))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 34) (- 0 33)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@14 i) null)  (and (not (select valid@11 i)) (= (select owner@16 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= owner@16 owner@14) (= valid@11 valid@9)) (and (= elt@14 elt@12) (= (ControlFlow 0 35) 34))) GeneratedUnifiedExit_correct)))
(let ((anon5_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@12 elt@9) (= valid@9 valid@6)) (and (= owner@14 owner@11) (= (ControlFlow 0 109) 35))) Civl_UnifiedReturn_correct)))
(let ((anon6_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@12 elt@8) (= valid@9 valid@5)) (and (= owner@14 owner@10) (= (ControlFlow 0 82) 35))) Civl_UnifiedReturn_correct)))
(let ((anon4_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@12 elt@6) (= valid@9 valid@4)) (and (= owner@14 owner@8) (= (ControlFlow 0 36) 35))) Civl_UnifiedReturn_correct)))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select Civl_global_old_elt@2 i@@0) null)  (and (not (select Civl_global_old_valid@2 i@@0)) (= (select Civl_global_old_owner@2 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 28) (- 0 27))) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@13 i@@1) null)  (and (not (select valid@10 i@@1)) (= (select owner@15 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 Civl_global_old_valid@2 inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 Civl_global_old_elt@2) (= (ControlFlow 0 26) (- 0 25))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 elt@13))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |86|
)) (=> (and (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@2 i@@2) null)  (and (not (select Civl_global_old_valid@2 i@@2)) (= (select Civl_global_old_owner@2 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0)) (and (select Civl_global_old_valid@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (select Civl_global_old_elt@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@13 i@@3) null)  (and (not (select valid@10 i@@3)) (= (select owner@15 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select elt@13 i@@4) null)  (and (not (select valid@10 i@@4)) (= (select owner@15 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3)) (and (select valid@10 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (select elt@13 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4)) (and (select valid@10 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (select elt@13 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 21) (- 0 20)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |88|
)) (=> (and (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select Civl_global_old_elt@2 i@@5) null)  (and (not (select Civl_global_old_valid@2 i@@5)) (= (select Civl_global_old_owner@2 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 19) (- 0 18))) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@13 i@@6) null)  (and (not (select valid@10 i@@6)) (= (select owner@15 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |87|
)) (=> (and (and (and (and (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select Civl_global_old_elt@2 i@@7) null)  (and (not (select Civl_global_old_valid@2 i@@7)) (= (select Civl_global_old_owner@2 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 done))) (= (ControlFlow 0 17) (- 0 16))) (and (and (and (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select elt@13 i@@8) null)  (and (not (select valid@10 i@@8)) (= (select owner@15 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |90|
)) (=> (and (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select Civl_global_old_elt@2 i@@9) null)  (and (not (select Civl_global_old_valid@2 i@@9)) (= (select Civl_global_old_owner@2 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 15) (- 0 14))) (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select elt@13 i@@10) null)  (and (not (select valid@10 i@@10)) (= (select owner@15 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |89|
)) (=> (and (and (and (and (and (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select Civl_global_old_elt@2 i@@11) null)  (and (not (select Civl_global_old_valid@2 i@@11)) (= (select Civl_global_old_owner@2 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 done))) (= (ControlFlow 0 13) (- 0 12))) (and (and (and (and (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select elt@13 i@@12) null)  (and (not (select valid@10 i@@12)) (= (select owner@15 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |92|
)) (=> (and (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select Civl_global_old_elt@2 i@@13) null)  (and (not (select Civl_global_old_valid@2 i@@13)) (= (select Civl_global_old_owner@2 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select elt@13 i@@14) null)  (and (not (select valid@10 i@@14)) (= (select owner@15 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@5 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |91|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 Civl_global_old_valid@2 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 Civl_global_old_elt@2) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select Civl_global_old_elt@2 i@@15) null)  (and (not (select Civl_global_old_valid@2 i@@15)) (= (select Civl_global_old_owner@2 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 done)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 elt@13)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 elt@13) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select elt@13 i@@16) null)  (and (not (select valid@10 i@@16)) (= (select owner@15 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select elt@13 i@@17) null)  (and (not (select valid@10 i@@17)) (= (select owner@15 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 done))))))))))))
(let ((anon5_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@9) (=> (and (= valid@10 valid@6) (= owner@15 owner@11)) (=> (and (and (= Civl_global_old_elt@2 elt@9) (= Civl_global_old_valid@2 valid@6)) (and (= Civl_global_old_owner@2 owner@11) (= Civl_linear_tid_available@5 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 110) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 110) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 110) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 110) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 110) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 110) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 110) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 110) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 110) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 110) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon5_Then_0_correct  (=> (and (= Civl_pc@3  (=> (and (and (and (= elt@3 elt@1) (= valid@1 valid@1)) (= lock@1 lock@1)) (= owner@3 owner@1)) Civl_pc@0)) (= Civl_ok@3  (or (or (exists ((|Civl_rx#0@@2| Int) (|Civl_ry#0@@2| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@2|) (< |Civl_rx#0@@2| q@max)) (<= 0 |Civl_ry#0@@2|)) (< |Civl_ry#0@@2| q@max)) (not (= |Civl_rx#0@@2| |Civl_ry#0@@2|))) (= (select valid@1 |Civl_rx#0@@2|) false)) (= (select valid@1 |Civl_ry#0@@2|) false)) (= (select elt@1 |Civl_rx#0@@2|) null)) (= (select elt@1 |Civl_rx#0@@2|) null)) (= elt@3 (store (store elt@1 |Civl_rx#0@@2| x@@0) |Civl_ry#0@@2| y))) (= valid@1 (store (store valid@1 |Civl_rx#0@@2| true) |Civl_ry#0@@2| true))) (= owner@3 (store (store owner@1 |Civl_rx#0@@2| done) |Civl_ry#0@@2| done))) (= false true)) (= lock@1 lock@1))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= false false) (= elt@3 elt@1)) (= valid@1 valid@1)) (= lock@1 lock@1)) (= owner@3 owner@1))) (and (= false result) Civl_ok@0)))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select elt@3 i@@18) null)  (and (not (select valid@1 i@@18)) (= (select owner@3 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@3 i@@19) null)  (and (not (select valid@1 i@@19)) (= (select owner@3 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select elt@9 i@@20) null)  (and (not (select valid@6 i@@20)) (= (select owner@11 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@3 true) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 111) 108) anon5_Then_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 111) 109) anon5_Then_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 111) 110) anon5_Then_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon5_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@3) (=> (and (= valid@10 valid@1) (= owner@15 owner@3)) (=> (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_owner@2 owner@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 106) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 106) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 106) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 106) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 106) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 106) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 106) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 106) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 106) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 106) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon6_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@8) (=> (and (= valid@10 valid@5) (= owner@15 owner@10)) (=> (and (and (= Civl_global_old_elt@2 elt@8) (= Civl_global_old_valid@2 valid@5)) (and (= Civl_global_old_owner@2 owner@10) (= Civl_linear_tid_available@5 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 83) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 83) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 83) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 83) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 83) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 83) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 83) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 83) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 83) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 83) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon6_Then_0_correct  (=> (and (= Civl_pc@2  (=> (and (and (and (= elt@7 elt@1) (= valid@1 valid@1)) (= lock@8 lock@1)) (= owner@9 owner@1)) Civl_pc@0)) (= Civl_ok@2  (or (or (exists ((|Civl_rx#0@@3| Int) (|Civl_ry#0@@3| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@3|) (< |Civl_rx#0@@3| q@max)) (<= 0 |Civl_ry#0@@3|)) (< |Civl_ry#0@@3| q@max)) (not (= |Civl_rx#0@@3| |Civl_ry#0@@3|))) (= (select valid@1 |Civl_rx#0@@3|) false)) (= (select valid@1 |Civl_ry#0@@3|) false)) (= (select elt@1 |Civl_rx#0@@3|) null)) (= (select elt@1 |Civl_rx#0@@3|) null)) (= elt@7 (store (store elt@1 |Civl_rx#0@@3| x@@0) |Civl_ry#0@@3| y))) (= valid@1 (store (store valid@1 |Civl_rx#0@@3| true) |Civl_ry#0@@3| true))) (= owner@9 (store (store owner@1 |Civl_rx#0@@3| done) |Civl_ry#0@@3| done))) (= false true)) (= lock@8 lock@1))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= false false) (= elt@7 elt@1)) (= valid@1 valid@1)) (= lock@8 lock@1)) (= owner@9 owner@1))) (and (= false result) Civl_ok@0)))) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@7 i@@21) null)  (and (not (select valid@1 i@@21)) (= (select owner@9 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select elt@7 i@@22) null)  (and (not (select valid@1 i@@22)) (= (select owner@9 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@8 i@@23) null)  (and (not (select valid@5 i@@23)) (= (select owner@10 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@2 true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 84) 81) anon6_Then_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 84) 82) anon6_Then_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 84) 83) anon6_Then_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon6_Then$3_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@7) (=> (and (= valid@10 valid@1) (= owner@15 owner@9)) (=> (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_owner@2 owner@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 79) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 79) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 79) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 79) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 79) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 79) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 79) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 79) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 79) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 79) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon4_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@6) (=> (and (= valid@10 valid@4) (= owner@15 owner@8)) (=> (and (and (= Civl_global_old_elt@2 elt@6) (= Civl_global_old_valid@2 valid@4)) (and (= Civl_global_old_owner@2 owner@8) (= Civl_linear_tid_available@5 Civl_linear_tid_available@2))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 32) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 32) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 32) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 32) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon4_0_correct  (=> (and (= Civl_pc@1  (=> (and (and (and (= elt@5 elt@1) (= valid@3 valid@1)) (= lock@5 lock@1)) (= owner@7 owner@1)) Civl_pc@0)) (= Civl_ok@1  (or (or (exists ((|Civl_rx#0@@4| Int) (|Civl_ry#0@@4| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@4|) (< |Civl_rx#0@@4| q@max)) (<= 0 |Civl_ry#0@@4|)) (< |Civl_ry#0@@4| q@max)) (not (= |Civl_rx#0@@4| |Civl_ry#0@@4|))) (= (select valid@1 |Civl_rx#0@@4|) false)) (= (select valid@1 |Civl_ry#0@@4|) false)) (= (select elt@1 |Civl_rx#0@@4|) null)) (= (select elt@1 |Civl_rx#0@@4|) null)) (= elt@5 (store (store elt@1 |Civl_rx#0@@4| x@@0) |Civl_ry#0@@4| y))) (= valid@3 (store (store valid@1 |Civl_rx#0@@4| true) |Civl_ry#0@@4| true))) (= owner@7 (store (store owner@1 |Civl_rx#0@@4| done) |Civl_ry#0@@4| done))) (= true true)) (= lock@5 lock@1))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= true false) (= elt@5 elt@1)) (= valid@3 valid@1)) (= lock@5 lock@1)) (= owner@7 owner@1))) (and (= true result) Civl_ok@0)))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select elt@5 i@@24) null)  (and (not (select valid@3 i@@24)) (= (select owner@7 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@5 i@@25) null)  (and (not (select valid@3 i@@25)) (= (select owner@7 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@6 i@@26) null)  (and (not (select valid@4 i@@26)) (= (select owner@8 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@1 true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 42) 41) anon4_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 42) 36) anon4_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 42) 32) anon4_0_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon6_Else$6_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@5) (=> (and (= valid@10 valid@3) (= owner@15 owner@7)) (=> (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_owner@2 owner@1) (= Civl_linear_tid_available@5 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 30) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 30) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 30) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 30) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@13 elt@0) (=> (and (= valid@10 valid@0) (= owner@15 owner@0)) (=> (and (and (= Civl_global_old_elt@2 elt@0) (= Civl_global_old_valid@2 valid@0)) (and (= Civl_global_old_owner@2 owner@0) (= Civl_linear_tid_available@5 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 29) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 29) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 29) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 29) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@4 (or (and (and (and (= elt@10 Civl_global_old_elt@0) (= valid@7 Civl_global_old_valid@0)) (= lock@11 Civl_global_old_lock@0)) (= owner@12 Civl_global_old_owner@0)) (or (exists ((|Civl_rx#0@@5| Int) (|Civl_ry#0@@5| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@5|) (< |Civl_rx#0@@5| q@max)) (<= 0 |Civl_ry#0@@5|)) (< |Civl_ry#0@@5| q@max)) (not (= |Civl_rx#0@@5| |Civl_ry#0@@5|))) (= (select Civl_global_old_valid@0 |Civl_rx#0@@5|) false)) (= (select Civl_global_old_valid@0 |Civl_ry#0@@5|) false)) (= (select Civl_global_old_elt@0 |Civl_rx#0@@5|) null)) (= (select Civl_global_old_elt@0 |Civl_rx#0@@5|) null)) (= elt@10 (store (store Civl_global_old_elt@0 |Civl_rx#0@@5| x@@0) |Civl_ry#0@@5| y))) (= valid@7 (store (store Civl_global_old_valid@0 |Civl_rx#0@@5| true) |Civl_ry#0@@5| true))) (= owner@12 (store (store Civl_global_old_owner@0 |Civl_rx#0@@5| done) |Civl_ry#0@@5| done))) (= result@0 true)) (= lock@11 Civl_global_old_lock@0))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= result@0 false) (= elt@10 Civl_global_old_elt@0)) (= valid@7 Civl_global_old_valid@0)) (= lock@11 Civl_global_old_lock@0)) (= owner@12 Civl_global_old_owner@0)))))) (=> (or Civl_pc@4 (or (and (and (and (= elt@10 Civl_global_old_elt@0) (= valid@7 Civl_global_old_valid@0)) (= lock@11 Civl_global_old_lock@0)) (= owner@12 Civl_global_old_owner@0)) (or (exists ((|Civl_rx#0@@6| Int) (|Civl_ry#0@@6| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@6|) (< |Civl_rx#0@@6| q@max)) (<= 0 |Civl_ry#0@@6|)) (< |Civl_ry#0@@6| q@max)) (not (= |Civl_rx#0@@6| |Civl_ry#0@@6|))) (= (select Civl_global_old_valid@0 |Civl_rx#0@@6|) false)) (= (select Civl_global_old_valid@0 |Civl_ry#0@@6|) false)) (= (select Civl_global_old_elt@0 |Civl_rx#0@@6|) null)) (= (select Civl_global_old_elt@0 |Civl_rx#0@@6|) null)) (= elt@10 (store (store Civl_global_old_elt@0 |Civl_rx#0@@6| x@@0) |Civl_ry#0@@6| y))) (= valid@7 (store (store Civl_global_old_valid@0 |Civl_rx#0@@6| true) |Civl_ry#0@@6| true))) (= owner@12 (store (store Civl_global_old_owner@0 |Civl_rx#0@@6| done) |Civl_ry#0@@6| done))) (= result@0 true)) (= lock@11 Civl_global_old_lock@0))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= result@0 false) (= elt@10 Civl_global_old_elt@0)) (= valid@7 Civl_global_old_valid@0)) (= lock@11 Civl_global_old_lock@0)) (= owner@12 Civl_global_old_owner@0))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@4 (and (and (and (and (= elt@10 Civl_global_old_elt@0) (= valid@7 Civl_global_old_valid@0)) (= lock@11 Civl_global_old_lock@0)) (= owner@12 Civl_global_old_owner@0)) (= result@0 Civl_old_result@0))))))))
(let ((anon5_Then_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@10 elt@3) (= valid@7 valid@1)) (and (= lock@11 lock@1) (= owner@12 owner@3))) (=> (and (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_owner@0 owner@1))) (and (and (= Civl_pc@4 Civl_pc@0) (= Civl_old_result@0 result)) (and (= result@0 false) (= (ControlFlow 0 107) 2)))) Civl_RefinementChecker_correct))))
(let ((anon5_Then_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (and (and (=> (= (ControlFlow 0 113) 111) anon5_Then_0_correct) (=> (= (ControlFlow 0 113) 106) anon5_Then_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 113) 107) anon5_Then_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Then$3_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@10 elt@7) (= valid@7 valid@1)) (and (= lock@11 lock@8) (= owner@12 owner@9))) (=> (and (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_owner@0 owner@1))) (and (and (= Civl_pc@4 Civl_pc@0) (= Civl_old_result@0 result)) (and (= result@0 false) (= (ControlFlow 0 80) 2)))) Civl_RefinementChecker_correct))))
(let ((inline$atomic_release$2$anon0_correct  (=> (= lock@8 (store lock@7 inline$AtomicFindSlot$0$r@0 nil)) (and (and (=> (= (ControlFlow 0 86) 84) anon6_Then_0_correct) (=> (= (ControlFlow 0 86) 79) anon6_Then$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 86) 80) anon6_Then$3_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Then$2_correct  (and (=> (= (ControlFlow 0 87) (- 0 90)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 87) (- 0 89)) (= (select lock@7 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select lock@7 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 87) (- 0 88)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 87) 86) inline$atomic_release$2$anon0_correct)))))))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@7 (store elt@5 inline$AtomicFindSlot$0$r@0 null)) (=> (and (= owner@9 (store owner@5 inline$AtomicFindSlot$0$r@0 nil)) (= (ControlFlow 0 91) 87)) anon6_Then$2_correct))))
(let ((anon6_Then$1_correct  (and (=> (= (ControlFlow 0 92) (- 0 96)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 92) (- 0 95)) (not (select valid@1 inline$AtomicFindSlot$0$r@0))) (=> (not (select valid@1 inline$AtomicFindSlot$0$r@0)) (and (=> (= (ControlFlow 0 92) (- 0 94)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (and (=> (= (ControlFlow 0 92) (- 0 93)) (and (= (select owner@5 inline$AtomicFindSlot$0$r@0) tid) (= (select lock@7 inline$AtomicFindSlot$0$r@0) tid))) (=> (and (= (select owner@5 inline$AtomicFindSlot$0$r@0) tid) (= (select lock@7 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (ControlFlow 0 92) 91) inline$atomic_setEltToNull$0$anon0_correct)))))))))))
(let ((inline$atomic_acquire$2$anon0_correct  (=> (= (select lock@1 inline$AtomicFindSlot$0$r@0) nil) (=> (and (= lock@7 (store lock@1 inline$AtomicFindSlot$0$r@0 tid)) (= (ControlFlow 0 97) 92)) anon6_Then$1_correct))))
(let ((anon6_Then_correct  (=> (= inline$AtomicFindSlot$1$r@0 (- 0 1)) (and (=> (= (ControlFlow 0 98) (- 0 100)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 98) 97) inline$atomic_acquire$2$anon0_correct))))))))
(let ((anon6_Else$6_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@10 elt@5) (= valid@7 valid@3)) (and (= lock@11 lock@5) (= owner@12 owner@7))) (=> (and (and (and (= Civl_global_old_elt@0 elt@1) (= Civl_global_old_valid@0 valid@1)) (and (= Civl_global_old_lock@0 lock@1) (= Civl_global_old_owner@0 owner@1))) (and (and (= Civl_pc@4 Civl_pc@0) (= Civl_old_result@0 result)) (and (= result@0 true) (= (ControlFlow 0 31) 2)))) Civl_RefinementChecker_correct))))
(let ((inline$atomic_release$1$anon0_correct  (=> (= lock@5 (store lock@4 inline$AtomicFindSlot$0$r@0 nil)) (and (and (=> (= (ControlFlow 0 44) 42) anon4_0_correct) (=> (= (ControlFlow 0 44) 30) anon6_Else$6_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 44) 31) anon6_Else$6_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Else$5_correct  (and (=> (= (ControlFlow 0 45) (- 0 48)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (= (select lock@4 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select lock@4 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 45) 44) inline$atomic_release$1$anon0_correct)))))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@4 (store lock@3 inline$AtomicFindSlot$1$r@0 nil)) (= (ControlFlow 0 49) 45)) anon6_Else$5_correct)))
(let ((anon6_Else$4_correct  (and (=> (= (ControlFlow 0 50) (- 0 53)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (= (select lock@3 inline$AtomicFindSlot$1$r@0) tid)) (=> (= (select lock@3 inline$AtomicFindSlot$1$r@0) tid) (and (=> (= (ControlFlow 0 50) (- 0 51)) (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (=> (= (ControlFlow 0 50) 49) inline$atomic_release$0$anon0_correct)))))))))
(let ((inline$atomic_setValid$1$anon0_correct  (=> (= valid@3 (store valid@2 inline$AtomicFindSlot$1$r@0 true)) (=> (and (= owner@7 (store owner@6 inline$AtomicFindSlot$1$r@0 done)) (= (ControlFlow 0 54) 50)) anon6_Else$4_correct))))
(let ((anon6_Else$3_correct  (and (=> (= (ControlFlow 0 55) (- 0 59)) (= (select owner@6 inline$AtomicFindSlot$1$r@0) tid)) (=> (= (select owner@6 inline$AtomicFindSlot$1$r@0) tid) (and (=> (= (ControlFlow 0 55) (- 0 58)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 55) (- 0 57)) (= (select lock@3 inline$AtomicFindSlot$1$r@0) tid)) (=> (= (select lock@3 inline$AtomicFindSlot$1$r@0) tid) (and (=> (= (ControlFlow 0 55) (- 0 56)) (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (=> (= (ControlFlow 0 55) 54) inline$atomic_setValid$1$anon0_correct)))))))))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@2 (store valid@1 inline$AtomicFindSlot$0$r@0 true)) (=> (and (= owner@6 (store owner@5 inline$AtomicFindSlot$0$r@0 done)) (= (ControlFlow 0 60) 55)) anon6_Else$3_correct))))
(let ((anon6_Else$2_correct  (and (=> (= (ControlFlow 0 61) (- 0 69)) (= (select elt@5 inline$AtomicFindSlot$0$r@0) x@@0)) (=> (= (select elt@5 inline$AtomicFindSlot$0$r@0) x@@0) (and (=> (= (ControlFlow 0 61) (- 0 68)) (= (select elt@5 inline$AtomicFindSlot$1$r@0) y)) (=> (= (select elt@5 inline$AtomicFindSlot$1$r@0) y) (and (=> (= (ControlFlow 0 61) (- 0 67)) (= (select valid@1 inline$AtomicFindSlot$0$r@0) false)) (=> (= (select valid@1 inline$AtomicFindSlot$0$r@0) false) (and (=> (= (ControlFlow 0 61) (- 0 66)) (= (select valid@1 inline$AtomicFindSlot$1$r@0) false)) (=> (= (select valid@1 inline$AtomicFindSlot$1$r@0) false) (and (=> (= (ControlFlow 0 61) (- 0 65)) (= (select owner@5 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select owner@5 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 61) (- 0 64)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 61) (- 0 63)) (= (select lock@3 inline$AtomicFindSlot$0$r@0) tid)) (=> (= (select lock@3 inline$AtomicFindSlot$0$r@0) tid) (and (=> (= (ControlFlow 0 61) (- 0 62)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 61) 60) inline$atomic_setValid$0$anon0_correct)))))))))))))))))))
(let ((inline$atomic_acquire$1$anon0_correct  (=> (= (select lock@2 inline$AtomicFindSlot$1$r@0) nil) (=> (and (= lock@3 (store lock@2 inline$AtomicFindSlot$1$r@0 tid)) (= (ControlFlow 0 70) 61)) anon6_Else$2_correct))))
(let ((anon6_Else$1_correct  (and (=> (= (ControlFlow 0 71) (- 0 73)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 71) (- 0 72)) (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (=> (= (ControlFlow 0 71) 70) inline$atomic_acquire$1$anon0_correct)))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@1 inline$AtomicFindSlot$0$r@0) nil) (=> (and (= lock@2 (store lock@1 inline$AtomicFindSlot$0$r@0 tid)) (= (ControlFlow 0 74) 71)) anon6_Else$1_correct))))
(let ((anon6_Else_correct  (=> (not (= inline$AtomicFindSlot$1$r@0 (- 0 1))) (and (=> (= (ControlFlow 0 75) (- 0 78)) (and (not (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (not (= inline$AtomicFindSlot$1$r@0 (- 0 1))))) (=> (and (not (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (not (= inline$AtomicFindSlot$1$r@0 (- 0 1)))) (and (=> (= (ControlFlow 0 75) (- 0 77)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max))) (=> (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (=> (= (ControlFlow 0 75) 74) inline$atomic_acquire$0$anon0_correct))))))))))
(let ((inline$AtomicFindSlot$1$anon3_Else_correct  (=> (= inline$AtomicFindSlot$1$r@0 (- 0 1)) (=> (and (= owner@5 owner@3) (= elt@5 elt@3)) (and (=> (= (ControlFlow 0 102) 98) anon6_Then_correct) (=> (= (ControlFlow 0 102) 75) anon6_Else_correct))))))
(let ((inline$AtomicFindSlot$1$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicFindSlot$1$r@0) (< inline$AtomicFindSlot$1$r@0 q@max)) (= (select elt@3 inline$AtomicFindSlot$1$r@0) null)) (and (= (select owner@3 inline$AtomicFindSlot$1$r@0) nil) (not (select valid@1 inline$AtomicFindSlot$1$r@0)))) (and (and (= elt@4 (store elt@3 inline$AtomicFindSlot$1$r@0 y)) (= owner@4 (store owner@3 inline$AtomicFindSlot$1$r@0 tid))) (and (= owner@5 owner@4) (= elt@5 elt@4)))) (and (=> (= (ControlFlow 0 101) 98) anon6_Then_correct) (=> (= (ControlFlow 0 101) 75) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (not (= inline$AtomicFindSlot$0$r@0 (- 0 1))) (and (=> (= (ControlFlow 0 103) (- 0 105)) (not (= y null))) (=> (not (= y null)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 103) 101) inline$AtomicFindSlot$1$anon3_Then_correct) (=> (= (ControlFlow 0 103) 102) inline$AtomicFindSlot$1$anon3_Else_correct)))))))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (=> (and (= elt@3 elt@1) (= owner@3 owner@1)) (and (=> (= (ControlFlow 0 115) 113) anon5_Then_correct) (=> (= (ControlFlow 0 115) 103) anon5_Else_correct))))))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (= (select elt@1 inline$AtomicFindSlot$0$r@0) null)) (and (= (select owner@1 inline$AtomicFindSlot$0$r@0) nil) (not (select valid@1 inline$AtomicFindSlot$0$r@0)))) (and (and (= elt@2 (store elt@1 inline$AtomicFindSlot$0$r@0 x@@0)) (= owner@2 (store owner@1 inline$AtomicFindSlot$0$r@0 tid))) (and (= elt@3 elt@2) (= owner@3 owner@2)))) (and (=> (= (ControlFlow 0 114) 113) anon5_Then_correct) (=> (= (ControlFlow 0 114) 103) anon5_Else_correct)))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (and (and (and (= elt@0 elt@0) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0)) false)) (= Civl_ok@0  (or (or (exists ((|Civl_rx#0@@7| Int) (|Civl_ry#0@@7| Int) ) (!  (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |Civl_rx#0@@7|) (< |Civl_rx#0@@7| q@max)) (<= 0 |Civl_ry#0@@7|)) (< |Civl_ry#0@@7| q@max)) (not (= |Civl_rx#0@@7| |Civl_ry#0@@7|))) (= (select valid@0 |Civl_rx#0@@7|) false)) (= (select valid@0 |Civl_ry#0@@7|) false)) (= (select elt@0 |Civl_rx#0@@7|) null)) (= (select elt@0 |Civl_rx#0@@7|) null)) (= elt@0 (store (store elt@0 |Civl_rx#0@@7| x@@0) |Civl_ry#0@@7| y))) (= valid@0 (store (store valid@0 |Civl_rx#0@@7| true) |Civl_ry#0@@7| true))) (= owner@0 (store (store owner@0 |Civl_rx#0@@7| done) |Civl_ry#0@@7| done))) (= result true)) (= lock@0 lock@0))
 :qid |unknown.0:0|
 :skolemid |94|
)) (and (and (and (and (= result false) (= elt@0 elt@0)) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0))) (and (= result result) false)))) (and (=> (= (ControlFlow 0 116) (- 0 119)) (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@0 i@@27) null)  (and (not (select valid@0 i@@27)) (= (select owner@0 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@0 i@@28) null)  (and (not (select valid@0 i@@28)) (= (select owner@0 i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (forall ((i@@29 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 q@max)) (= (= (select elt@1 i@@29) null)  (and (not (select valid@1 i@@29)) (= (select owner@1 i@@29) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (=> (= (ControlFlow 0 116) (- 0 118)) (not (= x@@0 null))) (=> (not (= x@@0 null)) (and (=> (= (ControlFlow 0 116) (- 0 117)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 116) 114) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 116) 115) inline$AtomicFindSlot$0$anon3_Else_correct)))))))))))))
(let ((anon0_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@10 elt@0) (= valid@7 valid@0)) (and (= lock@11 lock@0) (= owner@12 owner@0))) (=> (and (and (and (= Civl_global_old_elt@0 elt@0) (= Civl_global_old_valid@0 valid@0)) (and (= Civl_global_old_lock@0 lock@0) (= Civl_global_old_owner@0 owner@0))) (and (and (= Civl_pc@4 false) (= Civl_old_result@0 result)) (and (= result@0 result) (= (ControlFlow 0 4) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_correct  (=> (and (and (and (and (and (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 q@max)) (= (= (select elt@0 i@@30) null)  (and (not (select valid@0 i@@30)) (= (select owner@0 i@@30) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= y null))) (not (= tid nil))) (not (= tid done))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false)))) (and (and (=> (= (ControlFlow 0 120) 116) anon0_0_correct) (=> (= (ControlFlow 0 120) 29) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 120) 4) anon0_@2_Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 q@max)) (= (= (select elt@@0 i@@31) null)  (and (not (select valid@@0 i@@31)) (= (select owner i@@31) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= x@@0 null))) (not (= y null))) (not (= tid nil))) (not (= tid done))) (= (ControlFlow 0 121) 120)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Civl_pc@4 () Bool)
(declare-fun elt@8 () (Array Int Int))
(declare-fun Civl_global_old_elt@3 () (Array Int Int))
(declare-fun valid@8 () (Array Int Bool))
(declare-fun Civl_global_old_valid@3 () (Array Int Bool))
(declare-fun lock@11 () (Array Int T@X))
(declare-fun Civl_global_old_lock@3 () (Array Int T@X))
(declare-fun owner@8 () (Array Int T@X))
(declare-fun Civl_global_old_owner@3 () (Array Int T@X))
(declare-fun found@1 () Bool)
(declare-fun x@@0 () Int)
(declare-fun old_valid@@0 () (Array Int Bool))
(declare-fun old_elt@@0 () (Array Int Int))
(declare-fun Civl_old_found@3 () Bool)
(declare-fun Civl_pc@5 () Bool)
(declare-fun Civl_ok@4 () Bool)
(declare-fun Civl_ok@3 () Bool)
(declare-fun elt@6 () (Array Int Int))
(declare-fun valid@6 () (Array Int Bool))
(declare-fun lock@9 () (Array Int T@X))
(declare-fun owner@6 () (Array Int T@X))
(declare-fun Civl_pc@2 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun elt@5 () (Array Int Int))
(declare-fun valid@5 () (Array Int Bool))
(declare-fun lock@8 () (Array Int T@X))
(declare-fun owner@5 () (Array Int T@X))
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun elt@11 () (Array Int Int))
(declare-fun valid@11 () (Array Int Bool))
(declare-fun owner@11 () (Array Int T@X))
(declare-fun owner@9 () (Array Int T@X))
(declare-fun valid@9 () (Array Int Bool))
(declare-fun elt@9 () (Array Int Int))
(declare-fun elt@3 () (Array Int Int))
(declare-fun valid@3 () (Array Int Bool))
(declare-fun owner@3 () (Array Int T@X))
(declare-fun j@1 () Int)
(declare-fun elt@4 () (Array Int Int))
(declare-fun Civl_global_old_elt@1 () (Array Int Int))
(declare-fun valid@4 () (Array Int Bool))
(declare-fun Civl_global_old_valid@1 () (Array Int Bool))
(declare-fun lock@6 () (Array Int T@X))
(declare-fun Civl_global_old_lock@1 () (Array Int T@X))
(declare-fun owner@4 () (Array Int T@X))
(declare-fun Civl_global_old_owner@1 () (Array Int T@X))
(declare-fun Civl_pc@0 () Bool)
(declare-fun found () Bool)
(declare-fun Civl_old_found@1 () Bool)
(declare-fun lock@5 () (Array Int T@X))
(declare-fun elt@2 () (Array Int Int))
(declare-fun valid@2 () (Array Int Bool))
(declare-fun lock@4 () (Array Int T@X))
(declare-fun owner@2 () (Array Int T@X))
(declare-fun lock@2 () (Array Int T@X))
(declare-fun Civl_global_old_elt@4 () (Array Int Int))
(declare-fun Civl_global_old_valid@4 () (Array Int Bool))
(declare-fun Civl_global_old_owner@4 () (Array Int T@X))
(declare-fun elt@10 () (Array Int Int))
(declare-fun valid@10 () (Array Int Bool))
(declare-fun owner@10 () (Array Int T@X))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$tid@0 () T@X)
(declare-fun Civl_linear_tid_available@7 () (Array T@X Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 () T@X)
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 () (Array Int Int))
(declare-fun Civl_linear_tid_available@6 () (Array T@X Bool))
(declare-fun Civl_ok@0 () Bool)
(declare-fun tid () T@X)
(declare-fun Civl_linear_tid_available@3 () (Array T@X Bool))
(declare-fun Civl_linear_tid_available@5 () (Array T@X Bool))
(declare-fun lock@7 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@4 () (Array T@X Bool))
(declare-fun j@0 () Int)
(declare-fun lock@3 () (Array Int T@X))
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@2 () Bool)
(declare-fun elt@1 () (Array Int Int))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@1 () (Array T@X Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Civl_linear_tid_available@0 () (Array T@X Bool))
(declare-fun Civl_pc@3 () Bool)
(declare-fun elt@7 () (Array Int Int))
(declare-fun Civl_global_old_elt@2 () (Array Int Int))
(declare-fun valid@7 () (Array Int Bool))
(declare-fun Civl_global_old_valid@2 () (Array Int Bool))
(declare-fun lock@10 () (Array Int T@X))
(declare-fun Civl_global_old_lock@2 () (Array Int T@X))
(declare-fun owner@7 () (Array Int T@X))
(declare-fun Civl_global_old_owner@2 () (Array Int T@X))
(declare-fun found@0 () Bool)
(declare-fun Civl_old_found@2 () Bool)
(declare-fun lock@1 () (Array Int T@X))
(declare-fun lock@0 () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(set-info :boogie-vc-id Civl_LookUp_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 100) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 60) (- 0 62)) (or Civl_pc@4 (or (and (and (and (= elt@8 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)) (and (and (and (and (and (=> found@1 (exists ((ii@@0 Int) ) (!  (and (and (and (<= 0 ii@@0) (< ii@@0 q@max)) (select valid@8 ii@@0)) (= (select elt@8 ii@@0) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not found@1) (forall ((ii@@1 Int) ) (!  (=> (and (<= 0 ii@@1) (< ii@@1 q@max)) (not (and (select old_valid@@0 ii@@1) (= (select old_elt@@0 ii@@1) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@8 Civl_global_old_elt@3)) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3))))) (=> (or Civl_pc@4 (or (and (and (and (= elt@8 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)) (and (and (and (and (and (=> found@1 (exists ((ii@@2 Int) ) (!  (and (and (and (<= 0 ii@@2) (< ii@@2 q@max)) (select valid@8 ii@@2)) (= (select elt@8 ii@@2) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not found@1) (forall ((ii@@3 Int) ) (!  (=> (and (<= 0 ii@@3) (< ii@@3 q@max)) (not (and (select old_valid@@0 ii@@3) (= (select old_elt@@0 ii@@3) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@8 Civl_global_old_elt@3)) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (=> Civl_pc@4 (and (and (and (and (= elt@8 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)) (= found@1 Civl_old_found@3)))) (=> (=> Civl_pc@4 (and (and (and (and (= elt@8 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)) (= found@1 Civl_old_found@3))) (=> (and (and (= Civl_pc@5  (=> (and (and (and (= elt@8 Civl_global_old_elt@3) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)) Civl_pc@4)) (= Civl_ok@4  (or (and (and (and (and (and (=> found@1 (exists ((ii@@4 Int) ) (!  (and (and (and (<= 0 ii@@4) (< ii@@4 q@max)) (select valid@8 ii@@4)) (= (select elt@8 ii@@4) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not found@1) (forall ((ii@@5 Int) ) (!  (=> (and (<= 0 ii@@5) (< ii@@5 q@max)) (not (and (select old_valid@@0 ii@@5) (= (select old_elt@@0 ii@@5) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@8 Civl_global_old_elt@3)) (= valid@8 Civl_global_old_valid@3)) (= lock@11 Civl_global_old_lock@3)) (= owner@8 Civl_global_old_owner@3)) (and (= found@1 Civl_old_found@3) Civl_ok@3)))) (= (ControlFlow 0 60) (- 0 59))) Civl_ok@4)))))))
(let ((anon4_0_@2_Civl_ReturnChecker_correct  (=> (= elt@8 elt@6) (=> (and (and (= valid@8 valid@6) (= lock@11 lock@9)) (and (= owner@8 owner@6) (= Civl_global_old_elt@3 elt@6))) (=> (and (and (and (= Civl_global_old_valid@3 valid@6) (= Civl_global_old_lock@3 lock@9)) (and (= Civl_global_old_owner@3 owner@6) (= Civl_pc@4 Civl_pc@2))) (and (and (= Civl_ok@3 Civl_ok@2) (= Civl_old_found@3 false)) (and (= found@1 false) (= (ControlFlow 0 83) 60)))) Civl_ReturnChecker_correct)))))
(let ((anon6_Then_0_@2_Civl_ReturnChecker_correct  (=> (= elt@8 elt@5) (=> (and (and (= valid@8 valid@5) (= lock@11 lock@8)) (and (= owner@8 owner@5) (= Civl_global_old_elt@3 elt@5))) (=> (and (and (and (= Civl_global_old_valid@3 valid@5) (= Civl_global_old_lock@3 lock@8)) (and (= Civl_global_old_owner@3 owner@5) (= Civl_pc@4 Civl_pc@1))) (and (and (= Civl_ok@3 Civl_ok@1) (= Civl_old_found@3 true)) (and (= found@1 true) (= (ControlFlow 0 63) 60)))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 56) (- 0 55)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i q@max)) (= (= (select elt@11 i) null)  (and (not (select valid@11 i)) (= (select owner@11 i) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= owner@11 owner@9) (= valid@11 valid@9)) (and (= elt@11 elt@9) (= (ControlFlow 0 57) 56))) GeneratedUnifiedExit_correct)))
(let ((anon4_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@9 elt@6) (= valid@9 valid@6)) (and (= owner@9 owner@6) (= (ControlFlow 0 84) 57))) Civl_UnifiedReturn_correct)))
(let ((anon6_Then_0_@2_Civl_UnifiedReturn_correct  (=> (and (and (= elt@9 elt@5) (= valid@9 valid@5)) (and (= owner@9 owner@5) (= (ControlFlow 0 58) 57))) Civl_UnifiedReturn_correct)))
(let ((anon3_0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 38) (- 0 41)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 q@max)) (= (= (select elt@3 i@@0) null)  (and (not (select valid@3 i@@0)) (= (select owner@3 i@@0) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 q@max)) (= (= (select elt@3 i@@1) null)  (and (not (select valid@3 i@@1)) (= (select owner@3 i@@1) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((ii@@6 Int) ) (!  (=> (and (<= 0 ii@@6) (< ii@@6 j@1)) (not (and (select old_valid@@0 ii@@6) (= (select old_elt@@0 ii@@6) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
))) (=> (forall ((ii@@7 Int) ) (!  (=> (and (<= 0 ii@@7) (< ii@@7 j@1)) (not (and (select old_valid@@0 ii@@7) (= (select old_elt@@0 ii@@7) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((ii@@8 Int) ) (!  (=> (and (and (<= 0 ii@@8) (< ii@@8 q@max)) (select old_valid@@0 ii@@8)) (and (select valid@3 ii@@8) (= (select old_elt@@0 ii@@8) (select elt@3 ii@@8))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
))) (=> (forall ((ii@@9 Int) ) (!  (=> (and (and (<= 0 ii@@9) (< ii@@9 q@max)) (select old_valid@@0 ii@@9)) (and (select valid@3 ii@@9) (= (select old_elt@@0 ii@@9) (select elt@3 ii@@9))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
)) (=> (= (ControlFlow 0 38) (- 0 37)) (<= 0 j@1))))))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (and (and (= elt@4 Civl_global_old_elt@1) (= valid@4 Civl_global_old_valid@1)) (= lock@6 Civl_global_old_lock@1)) (= owner@4 Civl_global_old_owner@1))) (=> (and (and (and (= elt@4 Civl_global_old_elt@1) (= valid@4 Civl_global_old_valid@1)) (= lock@6 Civl_global_old_lock@1)) (= owner@4 Civl_global_old_owner@1)) (=> (= (ControlFlow 0 34) (- 0 33)) (=> Civl_pc@0 (= found Civl_old_found@1)))))))
(let ((anon3_0_@2_Civl_UnchangedChecker_correct  (=> (and (= elt@4 elt@3) (= valid@4 valid@3)) (=> (and (and (and (= lock@6 lock@5) (= owner@4 owner@3)) (and (= Civl_global_old_elt@1 elt@3) (= Civl_global_old_valid@1 valid@3))) (and (and (= Civl_global_old_lock@1 lock@5) (= Civl_global_old_owner@1 owner@3)) (and (= Civl_old_found@1 found) (= (ControlFlow 0 43) 34)))) Civl_UnchangedChecker_correct))))
(let ((anon6_Else$1_@2_Civl_UnchangedChecker_correct  (=> (and (= elt@4 elt@2) (= valid@4 valid@2)) (=> (and (and (and (= lock@6 lock@4) (= owner@4 owner@2)) (and (= Civl_global_old_elt@1 elt@2) (= Civl_global_old_valid@1 valid@2))) (and (and (= Civl_global_old_lock@1 lock@2) (= Civl_global_old_owner@1 owner@2)) (and (= Civl_old_found@1 found) (= (ControlFlow 0 36) 34)))) Civl_UnchangedChecker_correct))))
(let ((inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct  (=> (and (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 q@max)) (= (= (select Civl_global_old_elt@4 i@@2) null)  (and (not (select Civl_global_old_valid@4 i@@2)) (= (select Civl_global_old_owner@4 i@@2) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 28) (- 0 27))) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 q@max)) (= (= (select elt@10 i@@3) null)  (and (not (select valid@10 i@@3)) (= (select owner@10 i@@3) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)))))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct  (=> (and (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 Civl_global_old_valid@4 inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 Civl_global_old_elt@4) (= (ControlFlow 0 26) (- 0 25))) (InvLookUp inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$old_elt@0 elt@10))))
(let ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |86|
)) (=> (and (and (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 q@max)) (= (= (select Civl_global_old_elt@4 i@@4) null)  (and (not (select Civl_global_old_valid@4 i@@4)) (= (select Civl_global_old_owner@4 i@@4) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (and (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0)) (and (select Civl_global_old_valid@4 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0) (select Civl_global_old_elt@4 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@0))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 q@max)) (= (= (select elt@10 i@@5) null)  (and (not (select valid@10 i@@5)) (= (select owner@10 i@@5) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 q@max)) (= (= (select elt@10 i@@6) null)  (and (not (select valid@10 i@@6)) (= (select owner@10 i@@6) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@1) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2 Int) ) (!  (=> (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0)) (not (and (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@2) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$x@0))))
 :qid |unknown.0:0|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3)) (and (select valid@10 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3) (select elt@10 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@3))))
 :qid |unknown.0:0|
 :skolemid |3|
))) (=> (forall ((inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4 Int) ) (!  (=> (and (and (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (< inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4 q@max)) (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_valid@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4)) (and (select valid@10 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (= (select inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$old_elt@0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4) (select elt@10 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$ii@@4))))
 :qid |unknown.0:0|
 :skolemid |3|
)) (=> (= (ControlFlow 0 21) (- 0 20)) (<= 0 inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$j@0))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |88|
)) (=> (and (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 q@max)) (= (= (select Civl_global_old_elt@4 i@@7) null)  (and (not (select Civl_global_old_valid@4 i@@7)) (= (select Civl_global_old_owner@4 i@@7) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 19) (- 0 18))) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 q@max)) (= (= (select elt@10 i@@8) null)  (and (not (select valid@10 i@@8)) (= (select owner@10 i@@8) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |87|
)) (=> (and (and (and (and (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 q@max)) (= (= (select Civl_global_old_elt@4 i@@9) null)  (and (not (select Civl_global_old_valid@4 i@@9)) (= (select Civl_global_old_owner@4 i@@9) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 done))) (= (ControlFlow 0 17) (- 0 16))) (and (and (and (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 q@max)) (= (= (select elt@10 i@@10) null)  (and (not (select valid@10 i@@10)) (= (select owner@10 i@@10) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_Insert_2$0$tid@0 done)))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |90|
)) (=> (and (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 q@max)) (= (= (select Civl_global_old_elt@4 i@@11) null)  (and (not (select Civl_global_old_valid@4 i@@11)) (= (select Civl_global_old_owner@4 i@@11) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 15) (- 0 14))) (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 q@max)) (= (= (select elt@10 i@@12) null)  (and (not (select valid@10 i@@12)) (= (select owner@10 i@@12) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |89|
)) (=> (and (and (and (and (and (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 q@max)) (= (= (select Civl_global_old_elt@4 i@@13) null)  (and (not (select Civl_global_old_valid@4 i@@13)) (= (select Civl_global_old_owner@4 i@@13) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 done))) (= (ControlFlow 0 13) (- 0 12))) (and (and (and (and (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 q@max)) (= (= (select elt@10 i@@14) null)  (and (not (select valid@10 i@@14)) (= (select owner@10 i@@14) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$x@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$y@0 null))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 nil))) (not (= inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$tid@0 done)))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |92|
)) (=> (and (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 q@max)) (= (= (select Civl_global_old_elt@4 i@@15) null)  (and (not (select Civl_global_old_valid@4 i@@15)) (= (select Civl_global_old_owner@4 i@@15) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (= (ControlFlow 0 10) (- 0 9))) (forall ((i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 q@max)) (= (= (select elt@10 i@@16) null)  (and (not (select valid@10 i@@16)) (= (select owner@10 i@@16) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))))))
(let ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 (Array T@X Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@X Bool)) false) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@7 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$Civl_partition_tid@@0 ((as const (Array T@X Int)) 1))) ((as const (Array T@X Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |91|
)) (=> (and (and (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 Civl_global_old_valid@4 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 Civl_global_old_elt@4) (forall ((i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 q@max)) (= (= (select Civl_global_old_elt@4 i@@17) null)  (and (not (select Civl_global_old_valid@4 i@@17)) (= (select Civl_global_old_owner@4 i@@17) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 done)))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 elt@10)) (=> (InvLookUp inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_valid@0 valid@10 inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$old_elt@0 elt@10) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 q@max)) (= (= (select elt@10 i@@18) null)  (and (not (select valid@10 i@@18)) (= (select owner@10 i@@18) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 q@max)) (= (= (select elt@10 i@@19) null)  (and (not (select valid@10 i@@19)) (= (select owner@10 i@@19) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (= (ControlFlow 0 6) (- 0 5)) (and (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 nil)) (not (= inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$tid@0 done))))))))))))
(let ((anon4_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@6) (=> (and (= valid@10 valid@6) (= owner@10 owner@6)) (=> (and (and (= Civl_global_old_elt@4 elt@6) (= Civl_global_old_valid@4 valid@6)) (and (= Civl_global_old_owner@4 owner@6) (= Civl_linear_tid_available@7 Civl_linear_tid_available@6))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 85) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 85) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 85) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 85) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 85) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 85) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 85) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 85) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 85) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 85) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon4_0_correct  (=> (and (= Civl_pc@2  (=> (and (and (and (= elt@2 elt@2) (= valid@2 valid@2)) (= lock@2 lock@2)) (= owner@2 owner@2)) Civl_pc@0)) (= Civl_ok@2  (or (and (and (and (and (and (=> false (exists ((ii@@10 Int) ) (!  (and (and (and (<= 0 ii@@10) (< ii@@10 q@max)) (select valid@2 ii@@10)) (= (select elt@2 ii@@10) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not false) (forall ((ii@@11 Int) ) (!  (=> (and (<= 0 ii@@11) (< ii@@11 q@max)) (not (and (select old_valid@@0 ii@@11) (= (select old_elt@@0 ii@@11) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@2 elt@2)) (= valid@2 valid@2)) (= lock@2 lock@2)) (= owner@2 owner@2)) (and (= false found) Civl_ok@0)))) (and (=> (= (ControlFlow 0 86) (- 0 88)) (forall ((i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 q@max)) (= (= (select elt@2 i@@20) null)  (and (not (select valid@2 i@@20)) (= (select owner@2 i@@20) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 q@max)) (= (= (select elt@2 i@@21) null)  (and (not (select valid@2 i@@21)) (= (select owner@2 i@@21) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2)) (=> (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2) (=> (and (and (forall ((i@@22 Int) ) (!  (=> (and (<= 0 i@@22) (< i@@22 q@max)) (= (= (select elt@6 i@@22) null)  (and (not (select valid@6 i@@22)) (= (select owner@6 i@@22) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (InvLookUp old_valid@@0 valid@6 old_elt@@0 elt@6)) (and (or Civl_pc@2 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@6 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 86) 83) anon4_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 86) 84) anon4_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 86) 85) anon4_0_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@2) (=> (and (= valid@10 valid@2) (= owner@10 owner@2)) (=> (and (and (= Civl_global_old_elt@4 elt@2) (= Civl_global_old_valid@4 valid@2)) (and (= Civl_global_old_owner@4 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 81) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 81) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 81) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 81) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 81) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 81) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 81) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 81) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 81) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 81) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon6_Then_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@5) (=> (and (= valid@10 valid@5) (= owner@10 owner@5)) (=> (and (and (= Civl_global_old_elt@4 elt@5) (= Civl_global_old_valid@4 valid@5)) (and (= Civl_global_old_owner@4 owner@5) (= Civl_linear_tid_available@7 Civl_linear_tid_available@5))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 54) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 54) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 54) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 54) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 54) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 54) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 54) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 54) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 54) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 54) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon6_Then_0_correct  (=> (and (= Civl_pc@1  (=> (and (and (and (= elt@2 elt@2) (= valid@2 valid@2)) (= lock@7 lock@2)) (= owner@2 owner@2)) Civl_pc@0)) (= Civl_ok@1  (or (and (and (and (and (and (=> true (exists ((ii@@12 Int) ) (!  (and (and (and (<= 0 ii@@12) (< ii@@12 q@max)) (select valid@2 ii@@12)) (= (select elt@2 ii@@12) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not true) (forall ((ii@@13 Int) ) (!  (=> (and (<= 0 ii@@13) (< ii@@13 q@max)) (not (and (select old_valid@@0 ii@@13) (= (select old_elt@@0 ii@@13) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@2 elt@2)) (= valid@2 valid@2)) (= lock@7 lock@2)) (= owner@2 owner@2)) (and (= true found) Civl_ok@0)))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 q@max)) (= (= (select elt@2 i@@23) null)  (and (not (select valid@2 i@@23)) (= (select owner@2 i@@23) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@24 Int) ) (!  (=> (and (<= 0 i@@24) (< i@@24 q@max)) (= (= (select elt@2 i@@24) null)  (and (not (select valid@2 i@@24)) (= (select owner@2 i@@24) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2)) (=> (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2) (=> (and (and (forall ((i@@25 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 q@max)) (= (= (select elt@5 i@@25) null)  (and (not (select valid@5 i@@25)) (= (select owner@5 i@@25) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (InvLookUp old_valid@@0 valid@5 old_elt@@0 elt@5)) (and (or Civl_pc@1 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 64) 63) anon6_Then_0_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 64) 58) anon6_Then_0_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 64) 54) anon6_Then_0_@2_Civl_NoninterferenceChecker_correct))))))))))
(let ((anon6_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@2) (=> (and (= valid@10 valid@2) (= owner@10 owner@2)) (=> (and (and (= Civl_global_old_elt@4 elt@2) (= Civl_global_old_valid@4 valid@2)) (and (= Civl_global_old_owner@4 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 52) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 52) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 52) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 52) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 52) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 52) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 52) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 52) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 52) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 52) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon3_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@3) (=> (and (= valid@10 valid@3) (= owner@10 owner@3)) (=> (and (and (= Civl_global_old_elt@4 elt@3) (= Civl_global_old_valid@4 valid@3)) (and (= Civl_global_old_owner@4 owner@3) (= Civl_linear_tid_available@7 Civl_linear_tid_available@4))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 42) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 42) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 42) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 42) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 42) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 42) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 42) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 42) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 42) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 42) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 44) (- 0 46)) (forall ((i@@26 Int) ) (!  (=> (and (<= 0 i@@26) (< i@@26 q@max)) (= (= (select elt@2 i@@26) null)  (and (not (select valid@2 i@@26)) (= (select owner@2 i@@26) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@27 Int) ) (!  (=> (and (<= 0 i@@27) (< i@@27 q@max)) (= (= (select elt@2 i@@27) null)  (and (not (select valid@2 i@@27)) (= (select owner@2 i@@27) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2)) (=> (InvLookUp old_valid@@0 valid@2 old_elt@@0 elt@2) (=> (forall ((i@@28 Int) ) (!  (=> (and (<= 0 i@@28) (< i@@28 q@max)) (= (= (select elt@3 i@@28) null)  (and (not (select valid@3 i@@28)) (= (select owner@3 i@@28) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (=> (and (and (InvLookUp old_valid@@0 valid@3 old_elt@@0 elt@3) (or Civl_pc@0 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done)))))) (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))) (= j@1 (+ j@0 1)))) (and (and (=> (= (ControlFlow 0 44) 38) anon3_0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 44) 42) anon3_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 44) 43) anon3_0_@2_Civl_UnchangedChecker_correct))))))))))
(let ((anon6_Else$1_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@2) (=> (and (= valid@10 valid@2) (= owner@10 owner@2)) (=> (and (and (= Civl_global_old_elt@4 elt@2) (= Civl_global_old_valid@4 valid@2)) (and (= Civl_global_old_owner@4 owner@2) (= Civl_linear_tid_available@7 Civl_linear_tid_available@3))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 32) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 32) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 32) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 32) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 32) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 32) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((inline$atomic_release$0$anon0_correct  (=> (= lock@4 (store lock@3 j@0 nil)) (and (and (=> (= (ControlFlow 0 47) 44) anon3_0_correct) (=> (= (ControlFlow 0 47) 32) anon6_Else$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 47) 36) anon6_Else$1_@2_Civl_UnchangedChecker_correct)))))
(let ((anon6_Else_correct  (=> (not inline$atomic_isEltThereAndValid$0$fnd@2) (and (=> (= (ControlFlow 0 48) (- 0 51)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 48) (- 0 50)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 48) (- 0 49)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 48) 47) inline$atomic_release$0$anon0_correct))))))))))
(let ((anon0_0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@1) (=> (and (= valid@10 valid@1) (= owner@10 owner@1)) (=> (and (and (= Civl_global_old_elt@4 elt@1) (= Civl_global_old_valid@4 valid@1)) (and (= Civl_global_old_owner@4 owner@1) (= Civl_linear_tid_available@7 Civl_linear_tid_available@1))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 30) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 30) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 30) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 30) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 30) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 30) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= elt@10 elt@0) (=> (and (= valid@10 valid@0) (= owner@10 owner@0)) (=> (and (and (= Civl_global_old_elt@4 elt@0) (= Civl_global_old_valid@4 valid@0)) (and (= Civl_global_old_owner@4 owner@0) (= Civl_linear_tid_available@7 Civl_linear_tid_available@0))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 29) 6) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L0_correct) (=> (= (ControlFlow 0 29) 10) inline$Civl_NoninterferenceChecker_proc_LookUp_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 29) 13) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 15) inline$Civl_NoninterferenceChecker_proc_InsertPair_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 17) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 19) inline$Civl_NoninterferenceChecker_proc_Insert_2$0$L1_correct)) (=> (= (ControlFlow 0 29) 21) inline$Civl_NoninterferenceChecker_impl_LookUp_2$0$L0_correct)) (=> (= (ControlFlow 0 29) 26) inline$Civl_NoninterferenceChecker_yield_YieldLookUp2$0$L0_correct)) (=> (= (ControlFlow 0 29) 28) inline$Civl_NoninterferenceChecker_yield_Yield2$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@3 (or (and (and (and (= elt@7 Civl_global_old_elt@2) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@7 Civl_global_old_owner@2)) (and (and (and (and (and (=> found@0 (exists ((ii@@14 Int) ) (!  (and (and (and (<= 0 ii@@14) (< ii@@14 q@max)) (select valid@7 ii@@14)) (= (select elt@7 ii@@14) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not found@0) (forall ((ii@@15 Int) ) (!  (=> (and (<= 0 ii@@15) (< ii@@15 q@max)) (not (and (select old_valid@@0 ii@@15) (= (select old_elt@@0 ii@@15) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@7 Civl_global_old_elt@2)) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@7 Civl_global_old_owner@2))))) (=> (or Civl_pc@3 (or (and (and (and (= elt@7 Civl_global_old_elt@2) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@7 Civl_global_old_owner@2)) (and (and (and (and (and (=> found@0 (exists ((ii@@16 Int) ) (!  (and (and (and (<= 0 ii@@16) (< ii@@16 q@max)) (select valid@7 ii@@16)) (= (select elt@7 ii@@16) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not found@0) (forall ((ii@@17 Int) ) (!  (=> (and (<= 0 ii@@17) (< ii@@17 q@max)) (not (and (select old_valid@@0 ii@@17) (= (select old_elt@@0 ii@@17) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@7 Civl_global_old_elt@2)) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@7 Civl_global_old_owner@2)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@3 (and (and (and (and (= elt@7 Civl_global_old_elt@2) (= valid@7 Civl_global_old_valid@2)) (= lock@10 Civl_global_old_lock@2)) (= owner@7 Civl_global_old_owner@2)) (= found@0 Civl_old_found@2))))))))
(let ((anon5_LoopDone_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@7 elt@2) (= valid@7 valid@2)) (and (= lock@10 lock@2) (= owner@7 owner@2))) (=> (and (and (and (= Civl_global_old_elt@2 elt@2) (= Civl_global_old_valid@2 valid@2)) (and (= Civl_global_old_lock@2 lock@2) (= Civl_global_old_owner@2 owner@2))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_found@2 found)) (and (= found@0 false) (= (ControlFlow 0 82) 2)))) Civl_RefinementChecker_correct))))
(let ((anon5_LoopDone_correct  (=> (<= q@max j@0) (and (and (=> (= (ControlFlow 0 89) 86) anon4_0_correct) (=> (= (ControlFlow 0 89) 81) anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 89) 82) anon5_LoopDone_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Then$1_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@7 elt@2) (= valid@7 valid@2)) (and (= lock@10 lock@7) (= owner@7 owner@2))) (=> (and (and (and (= Civl_global_old_elt@2 elt@2) (= Civl_global_old_valid@2 valid@2)) (and (= Civl_global_old_lock@2 lock@2) (= Civl_global_old_owner@2 owner@2))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_found@2 found)) (and (= found@0 true) (= (ControlFlow 0 53) 2)))) Civl_RefinementChecker_correct))))
(let ((inline$atomic_release$1$anon0_correct  (=> (= lock@7 (store lock@3 j@0 nil)) (and (and (=> (= (ControlFlow 0 67) 64) anon6_Then_0_correct) (=> (= (ControlFlow 0 67) 52) anon6_Then$1_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 67) 53) anon6_Then$1_@2_Civl_RefinementChecker_correct)))))
(let ((anon6_Then_correct  (=> inline$atomic_isEltThereAndValid$0$fnd@2 (and (=> (= (ControlFlow 0 68) (- 0 71)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 68) (- 0 70)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 68) (- 0 69)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 68) 67) inline$atomic_release$1$anon0_correct))))))))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (= inline$atomic_isEltThereAndValid$0$fnd@2  (and (= (select elt@2 j@0) x@@0) (select valid@2 j@0))) (and (=> (= (ControlFlow 0 72) 68) anon6_Then_correct) (=> (= (ControlFlow 0 72) 48) anon6_Else_correct)))))
(let ((anon5_LoopBody$1_correct  (and (=> (= (ControlFlow 0 73) (- 0 76)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (= (select lock@3 j@0) tid)) (=> (= (select lock@3 j@0) tid) (and (=> (= (ControlFlow 0 73) (- 0 74)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 73) 72) inline$atomic_isEltThereAndValid$0$anon0_correct)))))))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock@2 j@0) nil) (=> (and (= lock@3 (store lock@2 j@0 tid)) (= (ControlFlow 0 77) 73)) anon5_LoopBody$1_correct))))
(let ((anon5_LoopBody_correct  (=> (< j@0 q@max) (and (=> (= (ControlFlow 0 78) (- 0 80)) (and (not (= tid nil)) (not (= tid done)))) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 78) (- 0 79)) (and (<= 0 j@0) (< j@0 q@max))) (=> (and (<= 0 j@0) (< j@0 q@max)) (=> (= (ControlFlow 0 78) 77) inline$atomic_acquire$0$anon0_correct))))))))
(let ((anon5_LoopHead_correct  (=> (and (forall ((i@@29 Int) ) (!  (=> (and (<= 0 i@@29) (< i@@29 q@max)) (= (= (select elt@2 i@@29) null)  (and (not (select valid@2 i@@29)) (= (select owner@2 i@@29) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (forall ((ii@@18 Int) ) (!  (=> (and (<= 0 ii@@18) (< ii@@18 j@0)) (not (and (select old_valid@@0 ii@@18) (= (select old_elt@@0 ii@@18) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
))) (=> (and (and (forall ((ii@@19 Int) ) (!  (=> (and (and (<= 0 ii@@19) (< ii@@19 q@max)) (select old_valid@@0 ii@@19)) (and (select valid@2 ii@@19) (= (select old_elt@@0 ii@@19) (select elt@2 ii@@19))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
)) (<= 0 j@0)) (and (or Civl_pc@0 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (=> (= (ControlFlow 0 90) 89) anon5_LoopDone_correct) (=> (= (ControlFlow 0 90) 78) anon5_LoopBody_correct))))))
(let ((anon0_0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 91) (- 0 95)) (forall ((i@@30 Int) ) (!  (=> (and (<= 0 i@@30) (< i@@30 q@max)) (= (= (select elt@1 i@@30) null)  (and (not (select valid@1 i@@30)) (= (select owner@1 i@@30) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@31 Int) ) (!  (=> (and (<= 0 i@@31) (< i@@31 q@max)) (= (= (select elt@1 i@@31) null)  (and (not (select valid@1 i@@31)) (= (select owner@1 i@@31) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 91) (- 0 94)) (forall ((ii@@20 Int) ) (!  (=> (and (<= 0 ii@@20) (< ii@@20 0)) (not (and (select old_valid@@0 ii@@20) (= (select old_elt@@0 ii@@20) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
))) (=> (forall ((ii@@21 Int) ) (!  (=> (and (<= 0 ii@@21) (< ii@@21 0)) (not (and (select old_valid@@0 ii@@21) (= (select old_elt@@0 ii@@21) x@@0))))
 :qid |multisetbpl.256:43|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 91) (- 0 93)) (forall ((ii@@22 Int) ) (!  (=> (and (and (<= 0 ii@@22) (< ii@@22 q@max)) (select old_valid@@0 ii@@22)) (and (select valid@1 ii@@22) (= (select old_elt@@0 ii@@22) (select elt@1 ii@@22))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
))) (=> (forall ((ii@@23 Int) ) (!  (=> (and (and (<= 0 ii@@23) (< ii@@23 q@max)) (select old_valid@@0 ii@@23)) (and (select valid@1 ii@@23) (= (select old_elt@@0 ii@@23) (select elt@1 ii@@23))))
 :qid |multisetbpl.257:43|
 :skolemid |3|
)) (and (=> (= (ControlFlow 0 91) (- 0 92)) (<= 0 0)) (=> (<= 0 0) (=> (= (ControlFlow 0 91) 90) anon5_LoopHead_correct)))))))))))
(let ((anon0_0_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@7 elt@1) (= valid@7 valid@1)) (and (= lock@10 lock@1) (= owner@7 owner@1))) (=> (and (and (and (= Civl_global_old_elt@2 elt@1) (= Civl_global_old_valid@2 valid@1)) (and (= Civl_global_old_lock@2 lock@1) (= Civl_global_old_owner@2 owner@1))) (and (and (= Civl_pc@3 Civl_pc@0) (= Civl_old_found@2 found)) (and (= found@0 found) (= (ControlFlow 0 31) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_0_correct  (=> (and (= Civl_pc@0  (=> (and (and (and (= elt@0 elt@0) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0)) false)) (= Civl_ok@0  (or (and (and (and (and (and (=> found (exists ((ii@@24 Int) ) (!  (and (and (and (<= 0 ii@@24) (< ii@@24 q@max)) (select valid@0 ii@@24)) (= (select elt@0 ii@@24) x@@0))
 :qid |multisetbpl.236:28|
 :skolemid |0|
))) (=> (not found) (forall ((ii@@25 Int) ) (!  (=> (and (<= 0 ii@@25) (< ii@@25 q@max)) (not (and (select old_valid@@0 ii@@25) (= (select old_elt@@0 ii@@25) x@@0))))
 :qid |multisetbpl.237:29|
 :skolemid |1|
)))) (= elt@0 elt@0)) (= valid@0 valid@0)) (= lock@0 lock@0)) (= owner@0 owner@0)) (and (= found found) false)))) (and (=> (= (ControlFlow 0 96) (- 0 98)) (forall ((i@@32 Int) ) (!  (=> (and (<= 0 i@@32) (< i@@32 q@max)) (= (= (select elt@0 i@@32) null)  (and (not (select valid@0 i@@32)) (= (select owner@0 i@@32) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (forall ((i@@33 Int) ) (!  (=> (and (<= 0 i@@33) (< i@@33 q@max)) (= (= (select elt@0 i@@33) null)  (and (not (select valid@0 i@@33)) (= (select owner@0 i@@33) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (InvLookUp old_valid@@0 valid@0 old_elt@@0 elt@0)) (=> (InvLookUp old_valid@@0 valid@0 old_elt@@0 elt@0) (=> (and (and (forall ((i@@34 Int) ) (!  (=> (and (<= 0 i@@34) (< i@@34 q@max)) (= (= (select elt@1 i@@34) null)  (and (not (select valid@1 i@@34)) (= (select owner@1 i@@34) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
)) (InvLookUp old_valid@@0 valid@1 old_elt@@0 elt@1)) (and (or Civl_pc@0 (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done))))) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 96) 91) anon0_0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 96) 30) anon0_0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 96) 31) anon0_0_@2_Civl_RefinementChecker_correct))))))))))
(let ((anon0_@2_Civl_RefinementChecker_correct  (=> (and (and (= elt@7 elt@0) (= valid@7 valid@0)) (and (= lock@10 lock@0) (= owner@7 owner@0))) (=> (and (and (and (= Civl_global_old_elt@2 elt@0) (= Civl_global_old_valid@2 valid@0)) (and (= Civl_global_old_lock@2 lock@0) (= Civl_global_old_owner@2 owner@0))) (and (and (= Civl_pc@3 false) (= Civl_old_found@2 found)) (and (= found@0 found) (= (ControlFlow 0 4) 2)))) Civl_RefinementChecker_correct))))
(let ((anon0_correct  (=> (and (and (and (InvLookUp old_valid@@0 valid@0 old_elt@@0 elt@0) (forall ((i@@35 Int) ) (!  (=> (and (<= 0 i@@35) (< i@@35 q@max)) (= (= (select elt@0 i@@35) null)  (and (not (select valid@0 i@@35)) (= (select owner@0 i@@35) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (and (not (= tid nil)) (not (= tid done)))) (and (and (not (= x@@0 null)) (and (not (= tid nil)) (not (= tid done)))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Bool)) false))))) (and (and (=> (= (ControlFlow 0 99) 96) anon0_0_correct) (=> (= (ControlFlow 0 99) 29) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 99) 4) anon0_@2_Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (InvLookUp old_valid@@0 valid@@0 old_elt@@0 elt@@0) (forall ((i@@36 Int) ) (!  (=> (and (<= 0 i@@36) (< i@@36 q@max)) (= (= (select elt@@0 i@@36) null)  (and (not (select valid@@0 i@@36)) (= (select owner i@@36) nil))))
 :qid |multisetbpl.287:11|
 :skolemid |4|
))) (=> (and (and (not (= tid nil)) (not (= tid done))) (= (ControlFlow 0 100) 99)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun lock () (Array Int T@X))
(declare-fun i () Int)
(declare-fun lock@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_acquire)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_acquire$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_acquire$0$anon0_correct  (=> (= (select lock i) nil) (=> (and (= lock@0 (store lock i tid)) (= (ControlFlow 0 3) 2)) inline$atomic_acquire$0$Return_correct))))
(let ((inline$atomic_acquire$0$Entry_correct  (=> (and (not (= tid nil)) (not (= tid done))) (=> (and (and (<= 0 i) (< i q@max)) (= (ControlFlow 0 4) 3)) inline$atomic_acquire$0$anon0_correct))))
inline$atomic_acquire$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun lock@0 () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(declare-fun i () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_release)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_release$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_release$0$anon0_correct  (=> (and (= lock@0 (store lock i nil)) (= (ControlFlow 0 3) 2)) inline$atomic_release$0$Return_correct)))
(let ((inline$atomic_release$0$Entry_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock i) tid)) (and (and (<= 0 i) (< i q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_release$0$anon0_correct)))
inline$atomic_release$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun inline$atomic_getElt$0$elt_j@1 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun j () Int)
(declare-fun lock () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_getElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_getElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_getElt$0$anon0_correct  (=> (and (= inline$atomic_getElt$0$elt_j@1 (select elt@@0 j)) (= (ControlFlow 0 3) 2)) inline$atomic_getElt$0$Return_correct)))
(let ((inline$atomic_getElt$0$Entry_correct  (=> (= (select lock j) tid) (=> (and (not (= tid nil)) (not (= tid done))) (=> (and (and (<= 0 j) (< j q@max)) (= (ControlFlow 0 4) 3)) inline$atomic_getElt$0$anon0_correct)))))
inline$atomic_getElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun j () Int)
(declare-fun x@@0 () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_setElt)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setElt$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_setElt$0$anon0_correct  (=> (= elt@0 (store elt@@0 j x@@0)) (=> (and (= owner@0 (store owner j tid)) (= (ControlFlow 0 3) 2)) inline$atomic_setElt$0$Return_correct))))
(let ((inline$atomic_setElt$0$Entry_correct  (=> (and (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock j) tid)) (and (<= 0 j) (< j q@max))) (and (and (not (= x@@0 null)) (= (select owner j) nil)) (= (ControlFlow 0 4) 3))) inline$atomic_setElt$0$anon0_correct)))
inline$atomic_setElt$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun elt@0 () (Array Int Int))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_setEltToNull)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setEltToNull$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_setEltToNull$0$anon0_correct  (=> (= elt@0 (store elt@@0 j null)) (=> (and (= owner@0 (store owner j nil)) (= (ControlFlow 0 3) 2)) inline$atomic_setEltToNull$0$Return_correct))))
(let ((inline$atomic_setEltToNull$0$Entry_correct  (=> (and (and (and (and (not (= tid nil)) (not (= tid done))) (not (select valid@@0 j))) (and (<= 0 j) (< j q@max))) (and (and (= (select owner j) tid) (= (select lock j) tid)) (= (ControlFlow 0 4) 3))) inline$atomic_setEltToNull$0$anon0_correct)))
inline$atomic_setEltToNull$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun j () Int)
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun lock () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_setValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_setValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_setValid$0$anon0_correct  (=> (= valid@0 (store valid@@0 j true)) (=> (and (= owner@0 (store owner j done)) (= (ControlFlow 0 3) 2)) inline$atomic_setValid$0$Return_correct))))
(let ((inline$atomic_setValid$0$Entry_correct  (=> (= (select owner j) tid) (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock j) tid)) (and (and (<= 0 j) (< j q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_setValid$0$anon0_correct))))
inline$atomic_setValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun inline$atomic_isEltThereAndValid$0$fnd@1 () Bool)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun j () Int)
(declare-fun x@@0 () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun lock () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_isEltThereAndValid)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_isEltThereAndValid$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$atomic_isEltThereAndValid$0$anon0_correct  (=> (and (= inline$atomic_isEltThereAndValid$0$fnd@1  (and (= (select elt@@0 j) x@@0) (select valid@@0 j))) (= (ControlFlow 0 3) 2)) inline$atomic_isEltThereAndValid$0$Return_correct)))
(let ((inline$atomic_isEltThereAndValid$0$Entry_correct  (=> (and (and (and (not (= tid nil)) (not (= tid done))) (= (select lock j) tid)) (and (and (<= 0 j) (< j q@max)) (= (ControlFlow 0 4) 3))) inline$atomic_isEltThereAndValid$0$anon0_correct)))
inline$atomic_isEltThereAndValid$0$Entry_correct))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun inline$AtomicFindSlot$0$r@0 () Int)
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@0 () (Array Int Int))
(declare-fun x@@0 () Int)
(declare-fun owner@0 () (Array Int T@X))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicFindSlot)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicFindSlot$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicFindSlot$0$anon3_Else_correct  (=> (and (= inline$AtomicFindSlot$0$r@0 (- 0 1)) (= (ControlFlow 0 4) 2)) inline$AtomicFindSlot$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$anon3_Then_correct  (=> (and (and (and (<= 0 inline$AtomicFindSlot$0$r@0) (< inline$AtomicFindSlot$0$r@0 q@max)) (and (= (select elt@@0 inline$AtomicFindSlot$0$r@0) null) (= (select owner inline$AtomicFindSlot$0$r@0) nil))) (and (and (not (select valid@@0 inline$AtomicFindSlot$0$r@0)) (= elt@0 (store elt@@0 inline$AtomicFindSlot$0$r@0 x@@0))) (and (= owner@0 (store owner inline$AtomicFindSlot$0$r@0 tid)) (= (ControlFlow 0 3) 2)))) inline$AtomicFindSlot$0$Return_correct)))
(let ((inline$AtomicFindSlot$0$Entry_correct  (=> (not (= x@@0 null)) (=> (and (not (= tid nil)) (not (= tid done))) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicFindSlot$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicFindSlot$0$anon3_Else_correct))))))
inline$AtomicFindSlot$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun inline$AtomicInsert$0$r@0 () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun owner () (Array Int T@X))
(declare-fun elt@0 () (Array Int Int))
(declare-fun x@@0 () Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun Trigger_AtomicInsert_r (Int) Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicInsert)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicInsert$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicInsert$0$anon3_Then_correct  (=> (and (and (and (and (<= 0 inline$AtomicInsert$0$r@0) (< inline$AtomicInsert$0$r@0 q@max)) (= (select valid@@0 inline$AtomicInsert$0$r@0) false)) (and (= (select elt@@0 inline$AtomicInsert$0$r@0) null) (= (select owner inline$AtomicInsert$0$r@0) nil))) (and (and (= elt@0 (store elt@@0 inline$AtomicInsert$0$r@0 x@@0)) (= valid@0 (store valid@@0 inline$AtomicInsert$0$r@0 true))) (and (= owner@0 (store owner inline$AtomicInsert$0$r@0 done)) (= (ControlFlow 0 3) 2)))) inline$AtomicInsert$0$Return_correct)))
(let ((inline$AtomicInsert$0$anon0_correct  (=> (Trigger_AtomicInsert_r inline$AtomicInsert$0$r@0) (and (=> (= (ControlFlow 0 4) 3) inline$AtomicInsert$0$anon3_Then_correct) (=> (= (ControlFlow 0 4) 2) inline$AtomicInsert$0$Return_correct)))))
(let ((inline$AtomicInsert$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$AtomicInsert$0$anon0_correct)))
inline$AtomicInsert$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun inline$AtomicInsertPair$0$rx@0 () Int)
(declare-fun inline$AtomicInsertPair$0$ry@0 () Int)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun elt@0 () (Array Int Int))
(declare-fun x@@0 () Int)
(declare-fun elt@1 () (Array Int Int))
(declare-fun y () Int)
(declare-fun valid@0 () (Array Int Bool))
(declare-fun valid@1 () (Array Int Bool))
(declare-fun owner@0 () (Array Int T@X))
(declare-fun owner () (Array Int T@X))
(declare-fun owner@1 () (Array Int T@X))
(declare-fun Trigger_AtomicInsertPair_ry (Int) Bool)
(declare-fun Trigger_AtomicInsertPair_rx (Int) Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicInsertPair)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicInsertPair$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicInsertPair$0$anon3_Then_correct  (=> (and (and (and (and (and (and (and (<= 0 inline$AtomicInsertPair$0$rx@0) (< inline$AtomicInsertPair$0$rx@0 q@max)) (<= 0 inline$AtomicInsertPair$0$ry@0)) (< inline$AtomicInsertPair$0$ry@0 q@max)) (not (= inline$AtomicInsertPair$0$rx@0 inline$AtomicInsertPair$0$ry@0))) (= (select valid@@0 inline$AtomicInsertPair$0$rx@0) false)) (and (= (select valid@@0 inline$AtomicInsertPair$0$ry@0) false) (= (select elt@@0 inline$AtomicInsertPair$0$rx@0) null))) (and (and (and (= (select elt@@0 inline$AtomicInsertPair$0$rx@0) null) (= elt@0 (store elt@@0 inline$AtomicInsertPair$0$rx@0 x@@0))) (and (= elt@1 (store elt@0 inline$AtomicInsertPair$0$ry@0 y)) (= valid@0 (store valid@@0 inline$AtomicInsertPair$0$rx@0 true)))) (and (and (= valid@1 (store valid@0 inline$AtomicInsertPair$0$ry@0 true)) (= owner@0 (store owner inline$AtomicInsertPair$0$rx@0 done))) (and (= owner@1 (store owner@0 inline$AtomicInsertPair$0$ry@0 done)) (= (ControlFlow 0 3) 2))))) inline$AtomicInsertPair$0$Return_correct)))
(let ((inline$AtomicInsertPair$0$anon0_correct  (=> (and (Trigger_AtomicInsertPair_ry inline$AtomicInsertPair$0$ry@0) (Trigger_AtomicInsertPair_rx inline$AtomicInsertPair$0$rx@0)) (and (=> (= (ControlFlow 0 4) 3) inline$AtomicInsertPair$0$anon3_Then_correct) (=> (= (ControlFlow 0 4) 2) inline$AtomicInsertPair$0$Return_correct)))))
(let ((inline$AtomicInsertPair$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$AtomicInsertPair$0$anon0_correct)))
inline$AtomicInsertPair$0$Entry_correct)))))
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
(declare-fun null () Int)
(declare-sort T@X 0)
(declare-fun nil () T@X)
(declare-fun done () T@X)
(declare-fun Identity () (Array Int Int))
(declare-fun InvLookUp ((Array Int Bool) (Array Int Bool) (Array Int Int) (Array Int Int)) Bool)
(declare-fun q@max () Int)
(assert (distinct nil done)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |7|
)))
(assert (forall ((old_valid (Array Int Bool)) (valid (Array Int Bool)) (old_elt (Array Int Int)) (elt (Array Int Int)) ) (! (= (InvLookUp old_valid valid old_elt elt) (forall ((ii Int) ) (!  (=> (and (and (<= 0 ii) (< ii q@max)) (select old_valid ii)) (and (select valid ii) (= (select old_elt ii) (select elt ii))))
 :qid |multisetbpl.298:11|
 :skolemid |5|
)))
 :qid |multisetbpl.296:20|
 :skolemid |6|
 :pattern ( (InvLookUp old_valid valid old_elt elt))
)))
(assert (> q@max 0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@X)
(declare-fun inline$AtomicLookUp$0$found@0 () Bool)
(declare-fun valid@@0 () (Array Int Bool))
(declare-fun elt@@0 () (Array Int Int))
(declare-fun x@@0 () Int)
(declare-fun old_valid@@0 () (Array Int Bool))
(declare-fun old_elt@@0 () (Array Int Int))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicLookUp)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicLookUp$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@X Bool)) false) tid true) ((as const (Array T@X Int)) 1) ((as const (Array T@X Int)) 0))) ((as const (Array T@X Bool)) true)))))
(let ((inline$AtomicLookUp$0$anon0_correct  (=> (=> inline$AtomicLookUp$0$found@0 (exists ((inline$AtomicLookUp$0$ii Int) ) (!  (and (and (and (<= 0 inline$AtomicLookUp$0$ii) (< inline$AtomicLookUp$0$ii q@max)) (select valid@@0 inline$AtomicLookUp$0$ii)) (= (select elt@@0 inline$AtomicLookUp$0$ii) x@@0))
 :qid |unknown.0:0|
 :skolemid |0|
))) (=> (and (=> (not inline$AtomicLookUp$0$found@0) (forall ((inline$AtomicLookUp$0$ii@@0 Int) ) (!  (=> (and (<= 0 inline$AtomicLookUp$0$ii@@0) (< inline$AtomicLookUp$0$ii@@0 q@max)) (not (and (select old_valid@@0 inline$AtomicLookUp$0$ii@@0) (= (select old_elt@@0 inline$AtomicLookUp$0$ii@@0) x@@0))))
 :qid |unknown.0:0|
 :skolemid |1|
))) (= (ControlFlow 0 3) 2)) inline$AtomicLookUp$0$Return_correct))))
(let ((inline$AtomicLookUp$0$Entry_correct  (=> (not (= x@@0 null)) (=> (and (and (not (= tid nil)) (not (= tid done))) (= (ControlFlow 0 4) 3)) inline$AtomicLookUp$0$anon0_correct))))
inline$AtomicLookUp$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
