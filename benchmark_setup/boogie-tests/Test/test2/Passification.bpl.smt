(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@2 () Int)
(declare-fun z@1 () Int)
(declare-fun x () Int)
(declare-fun z@0 () Int)
(set-info :boogie-vc-id good0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((D_correct  (=> (and (= z@2 (+ z@1 1)) (= (ControlFlow 0 2) (- 0 1))) (or (= z@2 4) (= z@2 (+ 4 x))))))
(let ((C_correct  (=> (and (= z@1 3) (= (ControlFlow 0 4) 2)) D_correct)))
(let ((B_correct  (=> (= z@0 (+ 3 x)) (=> (and (= z@1 z@0) (= (ControlFlow 0 3) 2)) D_correct))))
(let ((A_correct  (and (=> (= (ControlFlow 0 5) 3) B_correct) (=> (= (ControlFlow 0 5) 4) C_correct))))
A_correct)))))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Int)
(declare-fun x () Int)
(declare-fun z@1 () Int)
(set-info :boogie-vc-id good1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((A_correct  (=> (= z@0 (+ 3 x)) (=> (and (= z@1 (+ z@0 1)) (= (ControlFlow 0 2) (- 0 1))) (= z@1 (+ x 4))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) A_correct)))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Int)
(declare-fun z () Int)
(set-info :boogie-vc-id bad0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((A_correct  (=> (and (= z@0 (+ 3 1)) (= (ControlFlow 0 2) (- 0 1))) (= z 4))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) A_correct)))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Loop)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id UnreachableBlock)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun z@0 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Loop0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (<= 10 z@0))))
(let ((C_correct  (=> (not (< x@0 10)) (=> (and (= z@0 x@0) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct))))
(let ((B_correct true))
(let ((A_correct  (and (=> (= (ControlFlow 0 5) 1) B_correct) (=> (= (ControlFlow 0 5) 4) C_correct))))
A_correct)))))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort |T@[name,name]Int| 0)
(declare-fun |Select__T@[name,name]Int_| (|T@[name,name]Int| T@name T@name) Int)
(declare-fun a@3 () |T@[name,name]Int|)
(declare-fun z@0 () Int)
(declare-fun a@1 () |T@[name,name]Int|)
(declare-fun a@2 () |T@[name,name]Int|)
(declare-fun |Store__T@[name,name]Int_| (|T@[name,name]Int| T@name T@name Int) |T@[name,name]Int|)
(assert (forall ( ( ?x0 |T@[name,name]Int|) ( ?x1 T@name) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[name,name]Int_| (|Store__T@[name,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[name,name]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[name,name]Int_| (|Store__T@[name,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[name,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun a@0 () |T@[name,name]Int|)
(declare-fun a () |T@[name,name]Int|)
(set-info :boogie-vc-id Array0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((L2_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Select__T@[name,name]Int_| a@3 A0 A1) 20)) (=> (= (|Select__T@[name,name]Int_| a@3 A0 A1) 20) (=> (and (= z@0 (|Select__T@[name,name]Int_| a@3 A0 A2)) (= (ControlFlow 0 2) (- 0 1))) (>= z@0 5))))))
(let ((L0_@2_L2_correct  (=> (and (= a@3 a@1) (= (ControlFlow 0 6) 2)) L2_correct)))
(let ((L1_correct  (=> (= a@2 (|Store__T@[name,name]Int_| a@1 A0 A2 18)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (|Select__T@[name,name]Int_| a@2 A0 A2) 18)) (=> (= (|Select__T@[name,name]Int_| a@2 A0 A2) 18) (=> (and (= a@3 a@2) (= (ControlFlow 0 4) 2)) L2_correct))))))
(let ((L0_correct  (=> (and (= a@0 (|Store__T@[name,name]Int_| a A0 A2 5)) (= a@1 (|Store__T@[name,name]Int_| a@0 A0 A1 20))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (|Select__T@[name,name]Int_| a@1 A0 A1) 20)) (=> (= (|Select__T@[name,name]Int_| a@1 A0 A1) 20) (and (=> (= (ControlFlow 0 7) 4) L1_correct) (=> (= (ControlFlow 0 7) 6) L0_@2_L2_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) L0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun a@3 () |T@[ref,name]Int|)
(declare-fun o0 () T@ref)
(declare-fun z@0 () Int)
(declare-fun o1 () T@ref)
(declare-fun a@1 () |T@[ref,name]Int|)
(declare-fun a@2 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun a@0 () |T@[ref,name]Int|)
(declare-fun a () |T@[ref,name]Int|)
(set-info :boogie-vc-id Array1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((L2_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Select__T@[ref,name]Int_| a@3 o0 A0) 20)) (=> (= (|Select__T@[ref,name]Int_| a@3 o0 A0) 20) (=> (and (= z@0 (|Select__T@[ref,name]Int_| a@3 o1 A0)) (= (ControlFlow 0 2) (- 0 1))) (>= z@0 5))))))
(let ((L0_@2_L2_correct  (=> (and (= a@3 a@1) (= (ControlFlow 0 6) 2)) L2_correct)))
(let ((L1_correct  (=> (= a@2 (|Store__T@[ref,name]Int_| a@1 o1 A0 18)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (|Select__T@[ref,name]Int_| a@2 o1 A0) 18)) (=> (= (|Select__T@[ref,name]Int_| a@2 o1 A0) 18) (=> (and (= a@3 a@2) (= (ControlFlow 0 4) 2)) L2_correct))))))
(let ((L0_correct  (=> (and (= a@0 (|Store__T@[ref,name]Int_| a o1 A0 5)) (= a@1 (|Store__T@[ref,name]Int_| a@0 o0 A0 20))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (|Select__T@[ref,name]Int_| a@1 o0 A0) 20)) (=> (= (|Select__T@[ref,name]Int_| a@1 o0 A0) 20) (and (=> (= (ControlFlow 0 7) 4) L1_correct) (=> (= (ControlFlow 0 7) 6) L0_@2_L2_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) L0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun a@3 () |T@[ref,name]Int|)
(declare-fun o0 () T@ref)
(declare-fun z@0 () Int)
(declare-fun o1 () T@ref)
(declare-fun a@1 () |T@[ref,name]Int|)
(declare-fun a@2 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun a@0 () |T@[ref,name]Int|)
(declare-fun a () |T@[ref,name]Int|)
(set-info :boogie-vc-id Array2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((L2_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Select__T@[ref,name]Int_| a@3 o0 A0) 20)) (=> (= (|Select__T@[ref,name]Int_| a@3 o0 A0) 20) (=> (and (= z@0 (|Select__T@[ref,name]Int_| a@3 o1 A0)) (= (ControlFlow 0 2) (- 0 1))) (>= z@0 5))))))
(let ((L0_@2_L2_correct  (=> (and (= a@3 a@1) (= (ControlFlow 0 6) 2)) L2_correct)))
(let ((L1_correct  (=> (= a@2 (|Store__T@[ref,name]Int_| a@1 o1 A0 18)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (|Select__T@[ref,name]Int_| a@2 o1 A0) 18)) (=> (= (|Select__T@[ref,name]Int_| a@2 o1 A0) 18) (=> (and (= a@3 a@2) (= (ControlFlow 0 4) 2)) L2_correct))))))
(let ((L0_correct  (=> (not (= o1 o0)) (=> (and (= a@0 (|Store__T@[ref,name]Int_| a o1 A0 5)) (= a@1 (|Store__T@[ref,name]Int_| a@0 o0 A0 20))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (|Select__T@[ref,name]Int_| a@1 o0 A0) 20)) (=> (= (|Select__T@[ref,name]Int_| a@1 o0 A0) 20) (and (=> (= (ControlFlow 0 7) 4) L1_correct) (=> (= (ControlFlow 0 7) 6) L0_@2_L2_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) L0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun t@0 () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((L2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= t@0 1))))
(let ((L0_@2_L2_correct  (=> (and (= t@0 0) (= (ControlFlow 0 4) 2)) L2_correct)))
(let ((L1_correct  (=> (and (= t@0 1) (= (ControlFlow 0 3) 2)) L2_correct)))
(let ((L0_correct  (and (=> (= (ControlFlow 0 5) 3) L1_correct) (=> (= (ControlFlow 0 5) 4) L0_@2_L2_correct))))
L0_correct)))))
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
(declare-sort T@name 0)
(declare-fun A0 () T@name)
(declare-fun A1 () T@name)
(declare-fun A2 () T@name)
(assert (distinct A0 A1 A2)
)
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun t@0 () Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((L2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= t@0 0))))
(let ((L0_@2_L2_correct  (=> (and (= t@0 0) (= (ControlFlow 0 4) 2)) L2_correct)))
(let ((L1_correct  (=> (and (= t@0 1) (= (ControlFlow 0 3) 2)) L2_correct)))
(let ((L0_correct  (and (=> (= (ControlFlow 0 5) 3) L1_correct) (=> (= (ControlFlow 0 5) 4) L0_@2_L2_correct))))
L0_correct)))))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)