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
(declare-fun s1 () String)
(declare-fun s3 () String)
(declare-fun s2 () String)
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((anon0_correct  (=> (= (str.len s1) 3) (=> (and (= (str.len s3) 3) (= (str.++ s1 s2) s3)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= (+ (str.len s1) (str.len s2)) (str.len s3))) (=> (= (+ (str.len s1) (str.len s2)) (str.len s3)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= (str.substr s3 (str.len s1) (str.len s2)) s2)) (=> (= (str.substr s3 (str.len s1) (str.len s2)) s2) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= (str.indexof s3 s1) 0)) (=> (= (str.indexof s3 s1) 0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= (str.indexof s3 s1 0) 0)) (=> (= (str.indexof s3 s1 0) 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (str.at s3 2) (str.at s1 2))) (=> (= (str.at s3 2) (str.at s1 2)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (str.contains s3 s1)) (=> (str.contains s3 s1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (str.prefixof s1 s3)) (=> (str.prefixof s1 s3) (and (=> (= (ControlFlow 0 2) (- 0 3)) (str.suffixof s2 s3)) (=> (str.suffixof s2 s3) (=> (= (ControlFlow 0 2) (- 0 1)) (= (str.replace s3 s1 s2) (str.++ s2 s2)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
