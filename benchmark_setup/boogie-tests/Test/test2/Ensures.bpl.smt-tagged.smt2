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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun H () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= H@0 (|Store__T@[ref,name]Int_| H this X 5)) (= (ControlFlow 0 2) (- 0 1))) (= (|Select__T@[ref,name]Int_| H@0 this X) 5))))
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
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun H () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= H@0 (|Store__T@[ref,name]Int_| H this X 5)) (= (ControlFlow 0 2) (- 0 1))) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
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
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun H () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= H@0 (|Store__T@[ref,name]Int_| H this X 7)) (= (ControlFlow 0 2) (- 0 1))) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
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
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun H () |T@[ref,name]Int|)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
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
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun H () |T@[ref,name]Int|)
(declare-fun that () T@ref)
(declare-fun X () T@name)
(declare-fun this () T@ref)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= H@0 (|Store__T@[ref,name]Int_| H that X 5)) (= (ControlFlow 0 2) (- 0 1))) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
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
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun |Store__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name Int) |T@[ref,name]Int|)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?x2 T@name) ( ?x3 Int)) (! (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?x1 ?x2)  ?x3) :weight 0)))
(assert (forall ( ( ?x0 |T@[ref,name]Int|) ( ?x1 T@ref) ( ?y1 T@ref) ( ?x2 T@name) ( ?y2 T@name) ( ?x3 Int)) (! (=> (or  (not (= ?x1 ?y1)) (not (= ?x2 ?y2))) (= (|Select__T@[ref,name]Int_| (|Store__T@[ref,name]Int_| ?x0 ?x1 ?x2 ?x3) ?y1 ?y2) (|Select__T@[ref,name]Int_| ?x0 ?y1 ?y2))) :weight 0)))
(declare-fun H () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun Y () T@name)
(declare-fun X () T@name)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= H@0 (|Store__T@[ref,name]Int_| H this Y 5)) (= (ControlFlow 0 2) (- 0 1))) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
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
(declare-sort T@ref 0)
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= (|Select__T@[ref,name]Int_| H@0 this X) 5) (= (ControlFlow 0 2) (- 0 1))) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
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
(declare-sort T@name 0)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun H@0 () |T@[ref,name]Int|)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)) (= (ControlFlow 0 2) (- 0 1))) (forall ((o@@0 T@ref) (F@@0 T@name) ) (!  (=> (and (= o@@0 this) (= F@@0 X)) (= (|Select__T@[ref,name]Int_| H@0 o@@0 F@@0) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
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
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun this () T@ref)
(declare-fun X () T@name)
(declare-fun H@1 () |T@[ref,name]Int|)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (= (|Select__T@[ref,name]Int_| H@0 this X) 5) (=> (and (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@1 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)) (= (ControlFlow 0 2) (- 0 1))) (forall ((o@@0 T@ref) (F@@0 T@name) ) (!  (=> (and (= o@@0 this) (= F@@0 X)) (= (|Select__T@[ref,name]Int_| H@1 o@@0 F@@0) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
))))))
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
(declare-sort T@name 0)
(declare-sort |T@[ref,name]Int| 0)
(declare-fun |Select__T@[ref,name]Int_| (|T@[ref,name]Int| T@ref T@name) Int)
(declare-fun H@0 () |T@[ref,name]Int|)
(declare-fun that () T@ref)
(declare-fun X () T@name)
(declare-fun this () T@ref)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((start_correct  (=> (and (= (|Select__T@[ref,name]Int_| H@0 that X) 5) (= (ControlFlow 0 2) (- 0 1))) (forall ((o T@ref) (F T@name) ) (!  (=> (and (= o this) (= F X)) (= (|Select__T@[ref,name]Int_| H@0 o F) 5))
 :qid |Ensuresbpl.21:19|
 :skolemid |0|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) start_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
