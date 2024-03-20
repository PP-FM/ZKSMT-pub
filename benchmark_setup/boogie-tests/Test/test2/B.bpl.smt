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
(declare-fun h () Int)
(set-info :boogie-vc-id Q0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((entry_correct  (=> (and (= h 0) (= (ControlFlow 0 2) (- 0 1))) (<= 0 h))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) entry_correct)))
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
(declare-fun h () Int)
(declare-fun h@0 () Int)
(set-info :boogie-vc-id Q1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((entry_correct  (=> (= h 0) (=> (and (= h@0 (- 0 h)) (= (ControlFlow 0 2) (- 0 1))) (<= 0 h@0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) entry_correct)))
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
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun Heap () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun N () T@name)
(set-info :boogie-vc-id P0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((entry_correct  (=> (and (= (|Select__T@[ref,name]Int_| Heap this N) 0) (= (ControlFlow 0 2) (- 0 1))) (<= 0 (|Select__T@[ref,name]Int_| Heap this N)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) entry_correct)))
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
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun Heap () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun N () T@name)
(declare-fun Heap@0 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(set-info :boogie-vc-id P1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((entry_correct  (=> (= (|Select__T@[ref,name]Int_| Heap this N) 0) (=> (and (= Heap@0 (|Store__T@[ref,name]Int_| Heap this N (- 0 (|Select__T@[ref,name]Int_| Heap this N)))) (= (ControlFlow 0 2) (- 0 1))) (<= 0 (|Select__T@[ref,name]Int_| Heap@0 this N))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) entry_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
