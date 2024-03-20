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
(declare-fun b@0 () (_ FloatingPoint 11 53))
(declare-fun c@0 () (_ FloatingPoint 11 53))
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= b@0 (fp.div RNE (fp.mul RNE (fp (_ bv0 1) (_ bv1023 11) (_ bv4458563631096791 52)) (fp (_ bv0 1) (_ bv1028 11) (_ bv2533274790395904 52))) (fp (_ bv0 1) (_ bv1028 11) (_ bv2533274790395904 52)))) (= c@0 (fp.div RNE (fp.mul RNE (fp (_ bv1 1) (_ bv1023 11) (_ bv4458563631096791 52)) (fp (_ bv0 1) (_ bv1028 11) (_ bv2533274790395904 52))) (fp (_ bv0 1) (_ bv1028 11) (_ bv2533274790395904 52))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (fp.gt b@0 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))) (=> (fp.gt b@0 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52))) (=> (= (ControlFlow 0 2) (- 0 1)) (fp.lt c@0 (fp (_ bv0 1) (_ bv0 11) (_ bv0 52)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
