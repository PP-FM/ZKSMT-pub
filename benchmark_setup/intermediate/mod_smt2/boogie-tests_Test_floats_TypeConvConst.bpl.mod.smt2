(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
(set-logic QF_UFLIA)
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
(declare-fun fc@0 () (_ FloatingPoint 8 24))
(declare-fun fc@1 () (_ FloatingPoint 8 24))
(declare-fun fc@2 () (_ FloatingPoint 8 24))
(declare-fun dc@0 () (_ FloatingPoint 11 53))
(declare-fun dc@1 () (_ FloatingPoint 11 53))
(set-info :boogie-vc-id main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (= fc@0 ((_ to_fp 8 24) RNE 5)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (fp (_ bv0 1) (_ bv129 8) (_ bv2097152 23)) fc@0)) (=> (= (fp (_ bv0 1) (_ bv129 8) (_ bv2097152 23)) fc@0) (=> (= fc@1 ((_ to_fp 8 24) RNE (- 0.0 0.5))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (fp (_ bv1 1) (_ bv126 8) (_ bv0 23)) fc@1)) (=> (= (fp (_ bv1 1) (_ bv126 8) (_ bv0 23)) fc@1) (=> (= fc@2 ((_ to_fp 8 24) RNE 2.25)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (fp (_ bv0 1) (_ bv128 8) (_ bv1048576 23)) fc@2)) (=> (= (fp (_ bv0 1) (_ bv128 8) (_ bv1048576 23)) fc@2) (=> (= dc@0 ((_ to_fp 11 53) RNE 5)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (fp (_ bv0 1) (_ bv1025 11) (_ bv1125899906842624 52)) dc@0)) (=> (= (fp (_ bv0 1) (_ bv1025 11) (_ bv1125899906842624 52)) dc@0) (=> (and (= dc@1 ((_ to_fp 11 53) RNE 2.25)) (= (ControlFlow 0 2) (- 0 1))) (= (fp (_ bv0 1) (_ bv1024 11) (_ bv562949953421312 52)) dc@1))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
(pop 1)
; Valid
(get-info :rlimit)
