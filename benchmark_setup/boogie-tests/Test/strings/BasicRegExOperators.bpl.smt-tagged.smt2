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
(declare-fun r1@0 () (RegEx String))
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((anon0_correct  (=> (= r1@0 (str.to.re "abcd")) (and (=> (= (ControlFlow 0 2) (- 0 11)) (str.in.re "abcd" (str.to.re "abcd"))) (=> (str.in.re "abcd" (str.to.re "abcd")) (and (=> (= (ControlFlow 0 2) (- 0 10)) (not (str.in.re "abcd" (str.to.re "ABCD")))) (=> (not (str.in.re "abcd" (str.to.re "ABCD"))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (str.in.re "abcd" (re.* re.allchar))) (=> (str.in.re "abcd" (re.* re.allchar)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (not (str.in.re "abcd" re.nostr))) (=> (not (str.in.re "abcd" re.nostr)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (str.in.re "abcd" (re.++ re.nostr re.nostr)))) (=> (not (str.in.re "abcd" (re.++ re.nostr re.nostr))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (str.in.re "abcd" (re.opt (re.+ re.allchar)))) (=> (str.in.re "abcd" (re.opt (re.+ re.allchar))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (str.in.re "abcd" (re.loop re.nostr 0 5)))) (=> (not (str.in.re "abcd" (re.loop re.nostr 0 5))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (str.in.re "abcd" (re.loop re.allchar 0 5))) (=> (str.in.re "abcd" (re.loop re.allchar 0 5)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (str.in.re "abcd" (re.union re.nostr re.nostr)))) (=> (not (str.in.re "abcd" (re.union re.nostr re.nostr))) (=> (= (ControlFlow 0 2) (- 0 1)) (str.in.re "abcd" (re.inter (re.* re.allchar) (re.* re.allchar)))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
