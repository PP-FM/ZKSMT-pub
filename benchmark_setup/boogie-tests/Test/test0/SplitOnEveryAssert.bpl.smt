(set-option :produce-proofs true)
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
(set-info :boogie-vc-id DoTheSplitting_split0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
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
(set-info :boogie-vc-id DoTheSplitting_split1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (+ 5 0) 5))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(set-info :boogie-vc-id DoTheSplitting_split2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= (+ 5 0) 5) (= (ControlFlow 0 2) (- 0 1))) (<= (* 5 5) 25))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_LoopBody_correct  (=> (> x@0 0) (=> (and (= x@1 (- x@0 1)) (= (ControlFlow 0 2) (- 0 1))) (> (* (+ x@1 y@0) (+ x@1 y@0)) 25)))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 3) 2)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 4) 3)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon6_Else_correct  (=> (and (<= 3 x@1) (= (ControlFlow 0 2) (- 0 1))) (< (* (* y@1 y@1) y@1) 8))))
(let ((anon5_LoopBody_correct  (=> (> x@0 0) (=> (and (and (= x@1 (- x@0 1)) (> (* (+ x@1 y@0) (+ x@1 y@0)) 25)) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 3) 2))) anon6_Else_correct))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 4) 3)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 5) 4)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon6_Else_correct  (=> (<= 3 x@1) (=> (and (< (* (* y@1 y@1) y@1) 8) (= (ControlFlow 0 2) (- 0 1))) (< 2 2)))))
(let ((anon5_LoopBody_correct  (=> (> x@0 0) (=> (and (and (= x@1 (- x@0 1)) (> (* (+ x@1 y@0) (+ x@1 y@0)) 25)) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 3) 2))) anon6_Else_correct))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 4) 3)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 5) 4)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split6)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon4_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (* (+ x@1 y@1) (+ x@1 y@1)) 25))))
(let ((anon6_Else_correct  (=> (and (and (<= 3 x@1) (< (* (* y@1 y@1) y@1) 8)) (and (< 2 2) (= (ControlFlow 0 4) 2))) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and (< x@1 3) (< 2 2)) (and (> (* y@1 y@1) 4) (= (ControlFlow 0 3) 2))) anon4_correct)))
(let ((anon5_LoopBody_correct  (=> (and (and (> x@0 0) (= x@1 (- x@0 1))) (and (> (* (+ x@1 y@0) (+ x@1 y@0)) 25) (= y@1 (+ y@0 1)))) (and (=> (= (ControlFlow 0 5) 3) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 6) 5)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 7) 6)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split7)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon4_correct  (=> (and (= (* (+ x@1 y@1) (+ x@1 y@1)) 25) (= (ControlFlow 0 2) (- 0 1))) (= (+ x@1 y@1) 5))))
(let ((anon6_Else_correct  (=> (and (and (<= 3 x@1) (< (* (* y@1 y@1) y@1) 8)) (and (< 2 2) (= (ControlFlow 0 4) 2))) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and (< x@1 3) (< 2 2)) (and (> (* y@1 y@1) 4) (= (ControlFlow 0 3) 2))) anon4_correct)))
(let ((anon5_LoopBody_correct  (=> (and (and (> x@0 0) (= x@1 (- x@0 1))) (and (> (* (+ x@1 y@0) (+ x@1 y@0)) 25) (= y@1 (+ y@0 1)))) (and (=> (= (ControlFlow 0 5) 3) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 6) 5)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 7) 6)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split8)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon4_correct  (=> (= (* (+ x@1 y@1) (+ x@1 y@1)) 25) (=> (and (= (+ x@1 y@1) 5) (= (ControlFlow 0 2) (- 0 1))) (<= (* x@1 x@1) 25)))))
(let ((anon6_Else_correct  (=> (and (and (<= 3 x@1) (< (* (* y@1 y@1) y@1) 8)) (and (< 2 2) (= (ControlFlow 0 4) 2))) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and (< x@1 3) (< 2 2)) (and (> (* y@1 y@1) 4) (= (ControlFlow 0 3) 2))) anon4_correct)))
(let ((anon5_LoopBody_correct  (=> (and (and (> x@0 0) (= x@1 (- x@0 1))) (and (> (* (+ x@1 y@0) (+ x@1 y@0)) 25) (= y@1 (+ y@0 1)))) (and (=> (= (ControlFlow 0 5) 3) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 6) 5)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 7) 6)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun y@1 () Int)
(set-info :boogie-vc-id DoTheSplitting_split9)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon6_Then_correct  (=> (and (< x@1 3) (= (ControlFlow 0 2) (- 0 1))) (< 2 2))))
(let ((anon5_LoopBody_correct  (=> (> x@0 0) (=> (and (and (= x@1 (- x@0 1)) (> (* (+ x@1 y@0) (+ x@1 y@0)) 25)) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 3) 2))) anon6_Then_correct))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 4) 3)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 5) 4)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split10)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon6_Then_correct  (=> (< x@1 3) (=> (and (< 2 2) (= (ControlFlow 0 2) (- 0 1))) (> (* y@1 y@1) 4)))))
(let ((anon5_LoopBody_correct  (=> (> x@0 0) (=> (and (and (= x@1 (- x@0 1)) (> (* (+ x@1 y@0) (+ x@1 y@0)) 25)) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 3) 2))) anon6_Then_correct))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 4) 3)) anon5_LoopBody_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 5) 4)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@2 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(set-info :boogie-vc-id DoTheSplitting_split11)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= y@2 0))))
(let ((anon5_LoopDone_correct  (=> (>= 0 x@0) (=> (and (= y@2 y@0) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopHead_correct  (=> (= (+ x@0 y@0) 5) (=> (and (<= (* x@0 x@0) 25) (= (ControlFlow 0 4) 3)) anon5_LoopDone_correct))))
(let ((anon0_correct  (=> (= (+ 5 0) 5) (=> (and (<= (* 5 5) 25) (= (ControlFlow 0 5) 4)) anon5_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
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
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id DontDoTheSplitting)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (+ 1 1) 2)) (=> (= (+ 1 1) 2) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (+ 2 2) 4)) (=> (= (+ 2 2) 4) (=> (= (ControlFlow 0 2) (- 0 1)) (= (+ 3 3) 6))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
