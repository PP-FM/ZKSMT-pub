(set-logic UFLIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@BBB 0)
(declare-sort T@AAA 0)
(declare-sort T@CCC 0)
(declare-sort |T@[AAA]CCC| 0)
(declare-fun |Select__T@[AAA]CCC_| (|T@[AAA]CCC| T@AAA) T@CCC)
(declare-fun |lambda#0| (Int T@BBB) |T@[AAA]CCC|)
(declare-fun Apple (T@AAA T@BBB) T@CCC)
(assert (forall ((|l#0| Int) (|l#1| T@BBB) (aaa T@AAA) ) (! (= (|Select__T@[AAA]CCC_| (|lambda#0| |l#0| |l#1|) aaa) (Apple aaa |l#1|))
 :qid |gitissue192bpl.20:21|
 :skolemid |0|
 :pattern ( (|Select__T@[AAA]CCC_| (|lambda#0| |l#0| |l#1|) aaa))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Proc)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
