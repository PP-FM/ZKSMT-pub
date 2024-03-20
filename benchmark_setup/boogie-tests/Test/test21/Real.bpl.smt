(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(assert (forall ((r Real) ) (!  (or (= r 0.0) (= (/ r r) 1.0))
 :qid |Realbpl.5:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () Real)
(declare-fun b () Real)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((anon0_correct  (=> (and (and (>= a b) (not (= a 0.0))) (>= a 1.3579)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (>= (- (* 2.0 (+ a 3.0)) 0.5) b)) (=> (>= (- (* 2.0 (+ a 3.0)) 0.5) b) (and (=> (= (ControlFlow 0 2) (- 0 9)) (> (- (* 2.0 (+ a 3.0)) 0.5) b)) (=> (> (- (* 2.0 (+ a 3.0)) 0.5) b) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= b (- (* 2.0 (+ a 3.0)) 0.5))) (=> (<= b (- (* 2.0 (+ a 3.0)) 0.5)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< b (- (* 2.0 (+ a 3.0)) 0.5))) (=> (< b (- (* 2.0 (+ a 3.0)) 0.5)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= (/ (to_real 1) (to_real 2)) 0.65)) (=> (<= (/ (to_real 1) (to_real 2)) 0.65) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (> a 1.0) (<= (/ (to_real 1) a) a))) (=> (=> (> a 1.0) (<= (/ (to_real 1) a) a)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= (/ a (to_real 2)) a)) (= a 0.0))) (=> (or (not (= (/ a (to_real 2)) a)) (= a 0.0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (not (= a 0.0)) (= (/ a a) 1.0))) (=> (=> (not (= a 0.0)) (= (/ a a) 1.0)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (>= (to_int a) 0) (> (* (to_real 3) a) a))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 2) anon0_correct)))
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
(assert (forall ((r Real) ) (!  (or (= r 0.0) (= (/ r r) 1.0))
 :qid |Realbpl.5:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@0 () Real)
(set-info :boogie-vc-id ManyDigitReals)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= 1.5 (/ y@0 2.0)))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= 1.5 (/ y@0 2.000000000000000000000000001)))))
(let ((anon0_correct  (=> (= y@0 (to_real 3)) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(assert (forall ((r Real) ) (!  (or (= r 0.0) (= (/ r r) 1.0))
 :qid |Realbpl.5:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Rounding)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= (to_int (- 0.0 2.2)) (- 0 2)))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (to_int (- 0.0 2.2)) (- 0 3)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 9)) (= (to_real 3) 3.0)) (=> (= (to_real 3) 3.0) (and (=> (= (ControlFlow 0 5) (- 0 8)) (= (to_int 2.2) (to_int 2.8))) (=> (= (to_int 2.2) (to_int 2.8)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (= (to_int 2.2) 2)) (=> (= (to_int 2.2) 2) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (to_int (- 0.0 2.2)) (to_int (- 0.0 2.8)))) (=> (= (to_int (- 0.0 2.2)) (to_int (- 0.0 2.8))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(assert (forall ((r Real) ) (!  (or (= r 0.0) (= (/ r r) 1.0))
 :qid |Realbpl.5:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id VariousCornerCaseBigDecPrintingTests)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 14)) (= 2.0 2.0)) (=> (= 2.0 2.0) (and (=> (= (ControlFlow 0 2) (- 0 13)) (= 0.0 0.0)) (=> (= 0.0 0.0) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= 0.0 0.0)) (=> (= 0.0 0.0) (and (=> (= (ControlFlow 0 2) (- 0 11)) (= 0.0 0.0)) (=> (= 0.0 0.0) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= 0.0 0.0)) (=> (= 0.0 0.0) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= 0.0 0.0)) (=> (= 0.0 0.0) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= 1.23 1.23)) (=> (= 1.23 1.23) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= 0.123 0.123)) (=> (= 0.123 0.123) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= 0.000123 0.000123)) (=> (= 0.000123 0.000123) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= 198504.04 198504.04)) (=> (= 198504.04 198504.04) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= 1985.0404 1985.0404)) (=> (= 1985.0404 1985.0404) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= 0.000019850404 0.000019850404)) (=> (= 0.000019850404 0.000019850404) (=> (= (ControlFlow 0 2) (- 0 1)) (= 19850404.0 19850404.0))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
