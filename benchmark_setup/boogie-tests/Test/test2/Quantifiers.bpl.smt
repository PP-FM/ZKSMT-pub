(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= (f a b) 100))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= a 25) (<= b 30)) (= (ControlFlow 0 3) 2)) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f a b) 3))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (<= (+ a 2) b) (= (ControlFlow 0 3) 2)) start_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b () Int)
(declare-fun a () Int)
(set-info :boogie-vc-id R)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (and (<= b 10) (<= 8 a)) (= (ControlFlow 0 2) (- 0 1))) (= (f a b) 3))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (<= (+ a 2) b) (= (ControlFlow 0 3) 2)) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id S)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (g a b) 3))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (<= (+ a 2) b) (= (ControlFlow 0 3) 2)) start_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b () Int)
(declare-fun a () Int)
(set-info :boogie-vc-id T)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (and (<= b 10) (<= 8 a)) (= (ControlFlow 0 2) (- 0 1))) (= (g a b) 3))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (<= (+ a 2) b) (= (ControlFlow 0 3) 2)) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(set-info :boogie-vc-id U0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (h a (h a a)) a))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id U1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= (g a b) 5) (= (ControlFlow 0 2) (- 0 1))) (= (h a (h a a)) a))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id V0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= (g a b) 5) (= (ControlFlow 0 2) (- 0 1))) (= (h a (h a a)) a))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= a b) (= (ControlFlow 0 3) 2)) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(set-info :boogie-vc-id V1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= a 10) (= (ControlFlow 0 2) (- 0 1))) (= (h a (h a a)) a))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Int)
(set-info :boogie-vc-id V2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (<= 0 (h a (h a 10))) (=> (and (= a 17) (= (ControlFlow 0 2) (- 0 1))) (= (h a (h a a)) a)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun e () Int)
(declare-fun o@@2 () T@ref)
(set-info :boogie-vc-id W)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (> e 20))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (isB o@@2 $T) (= (ControlFlow 0 3) 2)) start_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun e () Int)
(declare-fun o@@2 () T@ref)
(set-info :boogie-vc-id X0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (> e 20))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (isA o@@2 $T) (= (ControlFlow 0 3) 2)) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun o@@2 () T@ref)
(declare-fun u () Int)
(declare-fun e () Int)
(set-info :boogie-vc-id X1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= (f (kb o@@2) (kb o@@2)) u) (= (ControlFlow 0 2) (- 0 1))) (> e 20))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (isB o@@2 $T) (= (ControlFlow 0 3) 2)) start_correct)))
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
(declare-fun f (Int Int) Int)
(declare-fun g (Int Int) Int)
(declare-fun h (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun isA (T@ref T@name) Bool)
(declare-fun $T () T@name)
(declare-fun ka (T@ref) Int)
(declare-fun isB (T@ref T@name) Bool)
(declare-fun kb (T@ref) Int)
(declare-fun kbSynonym (T@ref) Int)
(assert (forall ((x Int) (y Int) ) (! (< (f x y) (+ x y))
 :qid |Quantifiersbpl.7:15|
 :skolemid |0|
)))
(assert (forall ((x@@0 Int) (y@@0 Int) ) (! (= (g x@@0 y@@0) 3)
 :qid |Quantifiersbpl.39:15|
 :skolemid |2|
 :pattern ( (g x@@0 10) (g x@@0 y@@0))
)))
(assert (forall ((x@@1 Int) ) (! (= (f x@@1 10) 3)
 :qid |Quantifiersbpl.8:15|
 :skolemid |1|
 :pattern ( (f x@@1 10))
)))
(assert (forall ((y@@1 Int) ) (! (= (h y@@1 (h y@@1 y@@1)) y@@1)
 :qid |Quantifiersbpl.62:15|
 :skolemid |3|
 :pattern ( (g y@@1 y@@1))
 :pattern ( (h y@@1 (h y@@1 10)))
)))
(assert (forall ((o T@ref) ) (!  (=> (isA o $T) (< (ka o) (ka o)))
 :qid |Quantifiersbpl.114:15|
 :skolemid |4|
)))
(assert (forall ((o@@0 T@ref) ) (!  (=> (isB o@@0 $T) (< (kb o@@0) (kbSynonym o@@0)))
 :qid |Quantifiersbpl.117:15|
 :skolemid |5|
 :no-pattern (isB o@@0 $T)
)))
(assert (forall ((o@@1 T@ref) ) (! (= (kb o@@1) (kbSynonym o@@1))
 :qid |Quantifiersbpl.121:15|
 :skolemid |6|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun e () Int)
(declare-fun o@@2 () T@ref)
(set-info :boogie-vc-id X2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (> e 20))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (isB o@@2 $T) (= (ControlFlow 0 3) 2)) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
