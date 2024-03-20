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
(declare-sort T@X 0)
(declare-sort |T@[X]Bool| 0)
(declare-fun FF () |T@[X]Bool|)
(declare-fun mapconstbool (Bool) |T@[X]Bool|)
(declare-sort |T@[X]Int| 0)
(declare-fun MultisetEmpty () |T@[X]Int|)
(declare-fun mapconstint (Int) |T@[X]Int|)
(declare-fun TT () |T@[X]Bool|)
(assert (= FF (mapconstbool false)))
(assert (= MultisetEmpty (mapconstint 0)))
(assert (= TT (mapconstbool true)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun mapnot (|T@[X]Bool|) |T@[X]Bool|)
(declare-fun |Store__T@[X]Int_| (|T@[X]Int| T@X Int) |T@[X]Int|)
(declare-fun |Select__T@[X]Int_| (|T@[X]Int| T@X) Int)
(assert (forall ( ( ?x0 |T@[X]Int|) ( ?x1 T@X) ( ?x2 Int)) (! (= (|Select__T@[X]Int_| (|Store__T@[X]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[X]Int|) ( ?x1 T@X) ( ?y1 T@X) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[X]Int_| (|Store__T@[X]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[X]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun x () T@X)
(declare-fun mapadd (|T@[X]Int| |T@[X]Int|) |T@[X]Int|)
(declare-fun mapiteint (|T@[X]Bool| |T@[X]Int| |T@[X]Int|) |T@[X]Int|)
(declare-fun mapgt (|T@[X]Int| |T@[X]Int|) |T@[X]Bool|)
(declare-fun mapsub (|T@[X]Int| |T@[X]Int|) |T@[X]Int|)
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (= FF TT))) (=> (not (= FF TT)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (mapnot FF) TT)) (=> (= (mapnot FF) TT) (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (= (|Store__T@[X]Int_| MultisetEmpty x 1) MultisetEmpty))) (=> (not (= (|Store__T@[X]Int_| MultisetEmpty x 1) MultisetEmpty)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (mapadd MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (|Store__T@[X]Int_| MultisetEmpty x 1))) (=> (= (mapadd MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (|Store__T@[X]Int_| MultisetEmpty x 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (mapiteint (mapgt (mapadd MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (|Store__T@[X]Int_| MultisetEmpty x 1)) (mapsub (mapadd MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (|Store__T@[X]Int_| MultisetEmpty x 1)) (mapconstint 0)) MultisetEmpty)) (=> (= (mapiteint (mapgt (mapadd MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (|Store__T@[X]Int_| MultisetEmpty x 1)) (mapsub (mapadd MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (|Store__T@[X]Int_| MultisetEmpty x 1)) (mapconstint 0)) MultisetEmpty) (=> (= (ControlFlow 0 2) (- 0 1)) (= (mapiteint (mapgt MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (mapsub MultisetEmpty (|Store__T@[X]Int_| MultisetEmpty x 1)) (mapconstint 0)) MultisetEmpty))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 7))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 6))))
(check-sat)
(get-info :reason-unknown)
(pop 1)
; Invalid
(get-info :rlimit)
