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
(set-info :boogie-vc-id Main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 32) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 31)) (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 30)) (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE 2.5)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE 2.5)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 29)) (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE 3.5)) #x0000000000000004)) (=> (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE 3.5)) #x0000000000000004) (and (=> (= (ControlFlow 0 2) (- 0 28)) (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe) (and (=> (= (ControlFlow 0 2) (- 0 27)) (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffe) (and (=> (= (ControlFlow 0 2) (- 0 26)) (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffc)) (=> (= ((_ fp.to_sbv 64) RNE ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffc) (and (=> (= (ControlFlow 0 2) (- 0 25)) (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 24)) (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE 2.5)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE 2.5)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 23)) (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE 3.5)) #x0000000000000003)) (=> (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE 3.5)) #x0000000000000003) (and (=> (= (ControlFlow 0 2) (- 0 22)) (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffd)) (=> (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffd) (and (=> (= (ControlFlow 0 2) (- 0 21)) (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffd)) (=> (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffd) (and (=> (= (ControlFlow 0 2) (- 0 20)) (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffc)) (=> (= ((_ fp.to_sbv 64) RTN ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffc) (and (=> (= (ControlFlow 0 2) (- 0 19)) (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 18)) (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE 2.5)) #x0000000000000003)) (=> (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE 2.5)) #x0000000000000003) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe) (and (=> (= (ControlFlow 0 2) (- 0 16)) (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffd)) (=> (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffd) (and (=> (= (ControlFlow 0 2) (- 0 15)) (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE 3.5)) #x0000000000000004)) (=> (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE 3.5)) #x0000000000000004) (and (=> (= (ControlFlow 0 2) (- 0 14)) (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffc)) (=> (= ((_ fp.to_sbv 64) RNA ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffc) (and (=> (= (ControlFlow 0 2) (- 0 13)) (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE 2.3)) #x0000000000000003)) (=> (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE 2.3)) #x0000000000000003) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE 2.5)) #x0000000000000003)) (=> (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE 2.5)) #x0000000000000003) (and (=> (= (ControlFlow 0 2) (- 0 11)) (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE 3.5)) #x0000000000000004)) (=> (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE 3.5)) #x0000000000000004) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffe) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffd)) (=> (= ((_ fp.to_sbv 64) RTP ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffd) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE 2.3)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE 2.5)) #x0000000000000002)) (=> (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE 2.5)) #x0000000000000002) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE 3.5)) #x0000000000000003)) (=> (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE 3.5)) #x0000000000000003) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE (- 0.0 2.3))) #xfffffffffffffffe) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffe)) (=> (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE (- 0.0 2.5))) #xfffffffffffffffe) (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ fp.to_sbv 64) RTZ ((_ to_fp 11 53) RNE (- 0.0 3.5))) #xfffffffffffffffd))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 32) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
