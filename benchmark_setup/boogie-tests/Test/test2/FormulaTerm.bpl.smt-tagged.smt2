(set-logic QF_LIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z () Int)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id plus)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= z 3) (= (ControlFlow 0 2) (- 0 1))) (= z (+ x y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
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
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Int)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id plus)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= z@0 (+ x y)) (= (ControlFlow 0 2) (- 0 1))) (= z@0 (+ x y)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z@1 () Int)
(set-info :boogie-vc-id plus)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= z@0 (+ x y)) (=> (and (= z@1 (+ 0 z@0)) (= (ControlFlow 0 2) (- 0 1))) (= z@1 (+ x y))))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Int)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id plus2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= z@0 (+ x y)) (= (ControlFlow 0 2) (- 0 1))) (= z@0 (+ x y)))))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun t@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id q@or)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((start_correct  (=> (= t@0  (and (and (or (or (or (< x y) (> x y)) (= x y)) (not (= x y))) (>= a b)) (<= a b))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (and (or (or (or (< x y) (> x y)) (= x y)) (not (= x y))) (>= a b)) (<= a b))) (=> (and (and (or (or (or (< x y) (> x y)) (= x y)) (not (= x y))) (>= a b)) (<= a b)) (=> (= (ControlFlow 0 2) (- 0 1)) t@0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (= a b) (= (ControlFlow 0 4) 2)) start_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id less)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= z@0 (< x y)) (= (ControlFlow 0 2) (- 0 1))) (= z@0 (< x y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< x y) (= (ControlFlow 0 3) 2)) start_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id less)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= z@0 (< x y)))))
(let ((no_correct  (=> (not (< x y)) (=> (and (= z@0 false) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((yes_correct  (=> (< x y) (=> (and (= z@0 true) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((start_correct  (=> (< x y) (and (=> (= (ControlFlow 0 5) 3) yes_correct) (=> (= (ControlFlow 0 5) 4) no_correct)))))
start_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id less)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= z@0 (< x y)))))
(let ((no_correct  (=> (>= x y) (=> (and (= z@0 false) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((yes_correct  (=> (< x y) (=> (and (= z@0 true) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((start_correct  (=> (< x y) (and (=> (= (ControlFlow 0 5) 3) yes_correct) (=> (= (ControlFlow 0 5) 4) no_correct)))))
start_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id LESS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= z@0 (< x y)) (= (ControlFlow 0 2) (- 0 1))) (= z@0 (< x y)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (< x y) (= (ControlFlow 0 3) 2)) start_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id LESS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= z@0 (< x y)))))
(let ((no_correct  (=> (not (< x y)) (=> (and (= z@0 false) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((yes_correct  (=> (< x y) (=> (and (= z@0 true) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((start_correct  (=> (< x y) (and (=> (= (ControlFlow 0 5) 3) yes_correct) (=> (= (ControlFlow 0 5) 4) no_correct)))))
start_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Bool)
(declare-fun x () Int)
(declare-fun y () Int)
(set-info :boogie-vc-id LESS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= z@0 (< x y)))))
(let ((no_correct  (=> (>= x y) (=> (and (= z@0 false) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((yes_correct  (=> (< x y) (=> (and (= z@0 true) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((start_correct  (=> (< x y) (and (=> (= (ControlFlow 0 5) 3) yes_correct) (=> (= (ControlFlow 0 5) 4) no_correct)))))
start_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b@0 () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)
(declare-fun b@1 () Bool)
(declare-fun x@0 () Bool)
(declare-fun y@0 () Bool)
(set-info :boogie-vc-id Assignments)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((entry_correct  (=> (= b@0  (or c d)) (=> (and (= b@1  (and c d)) (= x@0 (= c d))) (=> (and (and (= y@0  (=> c d)) (= (ControlFlow 0 2) (- 0 1))) x@0) y@0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) entry_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
