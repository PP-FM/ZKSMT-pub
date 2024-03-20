(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun N () Int)
(assert (<= 0 N))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id vacuous_post)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((k Int) (l Int) ) (!  (=> (and (and (<= 0 k) (<= k l)) (< l N)) (< N N))
 :qid |Issue25bpl.8:17|
 :skolemid |0|
)))))
(let ((anon2_LoopDone_correct  (=> (and (= x@0 x@0) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct)))
(let ((anon2_LoopBody_correct true))
(let ((anon0_correct  (=> (= x@0 (- 0 N)) (and (=> (= (ControlFlow 0 5) 4) anon2_LoopDone_correct) (=> (= (ControlFlow 0 5) 1) anon2_LoopBody_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)