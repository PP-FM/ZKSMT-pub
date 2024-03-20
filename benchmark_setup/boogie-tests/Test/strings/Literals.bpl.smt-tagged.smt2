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
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 19)) (= (str.++ "abc" "def") "abcdef")) (=> (= (str.++ "abc" "def") "abcdef") (and (=> (= (ControlFlow 0 2) (- 0 18)) (= (str.len "abcd") 4)) (=> (= (str.len "abcd") 4) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= (str.substr "abcd" 1 2) "bc")) (=> (= (str.substr "abcd" 1 2) "bc") (and (=> (= (ControlFlow 0 2) (- 0 16)) (= (str.indexof "abcd" "cd") 2)) (=> (= (str.indexof "abcd" "cd") 2) (and (=> (= (ControlFlow 0 2) (- 0 15)) (= (str.indexof "abcd" "dc") (- 0 1))) (=> (= (str.indexof "abcd" "dc") (- 0 1)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (= (str.indexof "abcdabcd" "cd" 0) 2)) (=> (= (str.indexof "abcdabcd" "cd" 0) 2) (and (=> (= (ControlFlow 0 2) (- 0 13)) (= (str.indexof "abcdabcd" "cd" 3) 6)) (=> (= (str.indexof "abcdabcd" "cd" 3) 6) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= (str.indexof "abcdabcd" "dc" 1) (- 0 1))) (=> (= (str.indexof "abcdabcd" "dc" 1) (- 0 1)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (= (str.at "abcd" 2) "c")) (=> (= (str.at "abcd" 2) "c") (and (=> (= (ControlFlow 0 2) (- 0 10)) (str.contains "abcd" "bc")) (=> (str.contains "abcd" "bc") (and (=> (= (ControlFlow 0 2) (- 0 9)) (not (str.contains "abcd" "BC"))) (=> (not (str.contains "abcd" "BC")) (and (=> (= (ControlFlow 0 2) (- 0 8)) (str.prefixof "ab" "abcd")) (=> (str.prefixof "ab" "abcd") (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (str.prefixof "AB" "abcd"))) (=> (not (str.prefixof "AB" "abcd")) (and (=> (= (ControlFlow 0 2) (- 0 6)) (str.suffixof "cd" "abcd")) (=> (str.suffixof "cd" "abcd") (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (str.suffixof "CD" "abcd"))) (=> (not (str.suffixof "CD" "abcd")) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (str.replace "aBCd" "BC" "bc") "abcd")) (=> (= (str.replace "aBCd" "BC" "bc") "abcd") (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (str.to.int "42") 42)) (=> (= (str.to.int "42") 42) (=> (= (ControlFlow 0 2) (- 0 1)) (= (int.to.str 42) "42"))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
