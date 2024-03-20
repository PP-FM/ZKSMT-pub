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
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|Q#a$1^15.32#tc1| (_ BitVec 64)) (|Q#b$1^15.32#tc1| (_ BitVec 64)) (|Q#c$1^15.32#tc1| (_ BitVec 64)) ) (!  (=> (and (and true true) true) (=> (and (or (= (bvadd |Q#a$1^15.32#tc1| |Q#b$1^15.32#tc1|) |Q#c$1^15.32#tc1|) (= (bvadd (bvadd |Q#a$1^15.32#tc1| |Q#b$1^15.32#tc1|) #x0000000000000001) |Q#c$1^15.32#tc1|)) (ite (= |Q#c$1^15.32#tc1| (bvadd |Q#a$1^15.32#tc1| |Q#b$1^15.32#tc1|)) (bvugt |Q#a$1^15.32#tc1| (bvsub #xffffffffffffffff |Q#b$1^15.32#tc1|)) (bvuge |Q#a$1^15.32#tc1| (bvsub #xffffffffffffffff |Q#b$1^15.32#tc1|)))) (= (bvlshr (bvxor (bvor |Q#a$1^15.32#tc1| |Q#b$1^15.32#tc1|) (bvand (bvxor |Q#a$1^15.32#tc1| |Q#b$1^15.32#tc1|) |Q#c$1^15.32#tc1|)) (concat #x00000000 #x0000003f)) #x0000000000000001)))
 :qid |bv9bpl.7:20|
 :skolemid |0|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
