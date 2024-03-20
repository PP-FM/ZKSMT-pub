(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@TT 0)
(declare-datatypes ((T@Tree 0)(T@TreeList 0)) (((leaf ) (node (|value#node| T@TT) (|children#node| T@TreeList) ) ) ((cons (|car#cons| T@Tree) (|cdr#cons| T@TreeList) ) (nil ) ) ))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () T@TT)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (|value#node| (node x nil)) x)) (=> (= (|value#node| (node x nil)) x) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (|children#node| (node x nil)) nil)) (=> (= (|children#node| (node x nil)) nil) (and (=> (= (ControlFlow 0 2) (- 0 4)) (not (= (cons leaf nil) nil))) (=> (not (= (cons leaf nil) nil)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (is-nil nil)) (=> (is-nil nil) (=> (= (ControlFlow 0 2) (- 0 1)) (is-node leaf))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
