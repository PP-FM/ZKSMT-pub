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
(declare-fun x@0 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= x@0 (+ 1 x)) (= (ControlFlow 0 2) (- 0 1))) (= x@0 (+ x 1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= x@0 (+ 1 x)) (= (ControlFlow 0 2) (- 0 1))) (= x@0 (+ x 1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(set-info :boogie-vc-id R)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= x (+ x 1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@2 () Int)
(declare-fun y () Int)
(declare-fun y@1 () Int)
(declare-fun x () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id Swap)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((end_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (and (= x@2 y) (= y@1 x)))))
(let ((B_correct  (=> (and (= x@0 (- x y)) (= y@0 (+ y x@0))) (=> (and (and (= x@1 (- y@0 x@0)) (= x@2 x@1)) (and (= y@1 y@0) (= (ControlFlow 0 4) 2))) end_correct))))
(let ((A_correct  (=> (= x@2 y) (=> (and (= y@1 x) (= (ControlFlow 0 3) 2)) end_correct))))
(let ((start_correct  (and (=> (= (ControlFlow 0 5) 3) A_correct) (=> (= (ControlFlow 0 5) 4) B_correct))))
start_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@0 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id OutParam0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= y@0 (+ x 1)) (= (ControlFlow 0 2) (- 0 1))) (= y@0 (+ x 1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@0 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id OutParam1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= y@0 (+ x 1)) (= (ControlFlow 0 2) (- 0 1))) (= y@0 (+ x 1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort |T@[ref]Int| 0)
(declare-fun |Select__T@[ref]Int_| (|T@[ref]Int| T@ref) Int)
(declare-fun a@1 () |T@[ref]Int|)
(declare-fun o () T@ref)
(declare-fun b () |T@[ref]Int|)
(declare-fun p@2 () T@ref)
(declare-fun b@1 () |T@[ref]Int|)
(declare-fun a () |T@[ref]Int|)
(declare-fun ta@0 () Int)
(declare-fun p@1 () T@ref)
(declare-fun tb@0 () Int)
(declare-fun a@0 () |T@[ref]Int|)
(declare-fun |Store__T@[ref]Int_| (|T@[ref]Int| T@ref Int) |T@[ref]Int|)
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?x2 Int)) (! (= (|Select__T@[ref]Int_| (|Store__T@[ref]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[ref]Int_| (|Store__T@[ref]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[ref]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun b@0 () |T@[ref]Int|)
(declare-fun p@0 () T@ref)
(declare-fun p () T@ref)
(set-info :boogie-vc-id SwapElems)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (and (= (|Select__T@[ref]Int_| a@1 o) (|Select__T@[ref]Int_| b p@2)) (= (|Select__T@[ref]Int_| b@1 o) (|Select__T@[ref]Int_| a p@2))))))
(let ((B_correct  (=> (and (and (and (= ta@0 (|Select__T@[ref]Int_| a p@1)) (= tb@0 (|Select__T@[ref]Int_| b p@1))) (and (= a@0 (|Store__T@[ref]Int_| a o tb@0)) (= b@0 (|Store__T@[ref]Int_| b o ta@0)))) (and (and (= p@2 p@1) (= a@1 a@0)) (and (= b@1 b@0) (= (ControlFlow 0 4) 3)))) GeneratedUnifiedExit_correct)))
(let ((A_@2_B_correct  (=> (and (= p@1 p@0) (= (ControlFlow 0 6) 4)) B_correct)))
(let ((start_@2_B_correct  (=> (and (= p@1 p) (= (ControlFlow 0 5) 4)) B_correct)))
(let ((C_correct true))
(let ((start_correct  (and (and (=> (= (ControlFlow 0 7) 5) start_@2_B_correct) (=> (= (ControlFlow 0 7) 1) C_correct)) (=> (= (ControlFlow 0 7) 6) A_@2_B_correct))))
start_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
(reset)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Global0@1 () Int)
(declare-fun Global0 () Int)
(declare-fun local0@0 () Int)
(declare-fun local0@1 () Int)
(declare-fun Global0@0 () Int)
(set-info :boogie-vc-id OldInCode0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= Global0@1 (+ Global0 1)))))
(let ((B_correct  (=> (= local0@0 (+ Global0 1)) (=> (and (and (= local0@1 (- local0@0 1)) (= Global0@0 (+ local0@1 1))) (and (= Global0@1 Global0@0) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))
(let ((A_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (= Global0 Global0)) (=> (= Global0 Global0) (=> (and (= Global0@1 Global0) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))))
(let ((start_correct  (=> (>= Global0 0) (and (=> (= (ControlFlow 0 6) 3) A_correct) (=> (= (ControlFlow 0 6) 5) B_correct)))))
start_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
