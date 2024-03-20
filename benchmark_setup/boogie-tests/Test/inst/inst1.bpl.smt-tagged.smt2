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
(declare-datatypes ((T@PA 0)) (((ADD (|i#ADD| Int) ) ) ))
(declare-sort |T@[PA]Int| 0)
(declare-fun |Select__T@[PA]Int_| (|T@[PA]Int| T@PA) Int)
(declare-fun |lambda#0| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#1| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#2| (Int Int Int Int) |T@[PA]Int|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa) (ite  (and (and (is-ADD pa) (< |l#0| (|i#ADD| pa))) (<= (|i#ADD| pa) |l#1|)) |l#2| |l#3|))
 :qid |inst1bpl.36:7|
 :skolemid |6|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (|l#3@@0| Int) (inline$CreateLambda$0$pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa) (ite  (and (and (is-ADD inline$CreateLambda$0$pa) (< |l#0@@0| (|i#ADD| inline$CreateLambda$0$pa))) (<= (|i#ADD| inline$CreateLambda$0$pa) |l#1@@0|)) |l#2@@0| |l#3@@0|))
 :qid |unknown.0:0|
 :skolemid |7|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| Int) (pa@@0 T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0) (ite  (and (and (is-ADD pa@@0) (< |l#0@@1| (|i#ADD| pa@@0))) (<= (|i#ADD| pa@@0) |l#1@@1|)) |l#2@@1| |l#3@@1|))
 :qid |inst1bpl.60:36|
 :skolemid |8|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PAs () |T@[PA]Int|)
(declare-fun n () Int)
(declare-fun i () Int)
(set-info :boogie-vc-id INV0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> true (let ((quantifierBinding1  (and (forall ((pa@@1 T@PA) ) (! (= (|Select__T@[PA]Int_| PAs pa@@1) 0)
 :qid |inst1bpl.15:31|
 :skolemid |1|
)) (= (|Select__T@[PA]Int_| PAs (ADD n)) 0))))
(let ((quantifierBinding0  (and (forall ((pa@@2 T@PA) ) (! (= (|Select__T@[PA]Int_| PAs pa@@2) (ite  (and (and (is-ADD pa@@2) (< i (|i#ADD| pa@@2))) (<= (|i#ADD| pa@@2) n)) 1 0))
 :qid |inst1bpl.14:31|
 :skolemid |0|
)) (= (|Select__T@[PA]Int_| PAs (ADD n)) (ite  (and (and (is-ADD (ADD n)) (< i (|i#ADD| (ADD n)))) (<= (|i#ADD| (ADD n)) n)) 1 0)))))
(let ((anon0_correct  (=> (<= 0 i) (=> (and (and (<= i n) quantifierBinding0) (and quantifierBinding1 (= (ControlFlow 0 2) (- 0 1)))) (= i n)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((ADD (|i#ADD| Int) ) ) ))
(declare-sort |T@[PA]Int| 0)
(declare-fun |Select__T@[PA]Int_| (|T@[PA]Int| T@PA) Int)
(declare-fun |lambda#0| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#1| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#2| (Int Int Int Int) |T@[PA]Int|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa) (ite  (and (and (is-ADD pa) (< |l#0| (|i#ADD| pa))) (<= (|i#ADD| pa) |l#1|)) |l#2| |l#3|))
 :qid |inst1bpl.36:7|
 :skolemid |6|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (|l#3@@0| Int) (inline$CreateLambda$0$pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa) (ite  (and (and (is-ADD inline$CreateLambda$0$pa) (< |l#0@@0| (|i#ADD| inline$CreateLambda$0$pa))) (<= (|i#ADD| inline$CreateLambda$0$pa) |l#1@@0|)) |l#2@@0| |l#3@@0|))
 :qid |unknown.0:0|
 :skolemid |7|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| Int) (pa@@0 T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0) (ite  (and (and (is-ADD pa@@0) (< |l#0@@1| (|i#ADD| pa@@0))) (<= (|i#ADD| pa@@0) |l#1@@1|)) |l#2@@1| |l#3@@1|))
 :qid |inst1bpl.60:36|
 :skolemid |8|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PAs () |T@[PA]Int|)
(declare-fun m@1 () Int)
(declare-fun i () Int)
(declare-fun n () Int)
(declare-fun m@0 () Int)
(set-info :boogie-vc-id INV1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> true (let ((quantifierBinding1  (and (forall ((pa@@1 T@PA) ) (! (= (|Select__T@[PA]Int_| PAs pa@@1) 0)
 :qid |inst1bpl.28:31|
 :skolemid |3|
)) (= (|Select__T@[PA]Int_| PAs (ADD (- m@1 2))) 0))))
(let ((quantifierBinding0  (and (forall ((pa@@2 T@PA) ) (! (= (|Select__T@[PA]Int_| PAs pa@@2) (ite  (and (and (is-ADD pa@@2) (< i (|i#ADD| pa@@2))) (<= (|i#ADD| pa@@2) n)) 1 0))
 :qid |inst1bpl.27:31|
 :skolemid |2|
)) (= (|Select__T@[PA]Int_| PAs (ADD (- m@1 2))) (ite  (and (and (is-ADD (ADD (- m@1 2))) (< i (|i#ADD| (ADD (- m@1 2))))) (<= (|i#ADD| (ADD (- m@1 2))) n)) 1 0)))))
(let ((anon0_correct  (=> (<= 0 i) (=> (and (<= i n) quantifierBinding0) (=> (and (and quantifierBinding1 (= m@0 (+ n 1))) (and (= m@1 (+ m@0 1)) (= (ControlFlow 0 2) (- 0 1)))) (= i n))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-datatypes ((T@PA 0)) (((ADD (|i#ADD| Int) ) ) ))
(declare-sort |T@[PA]Int| 0)
(declare-fun |Select__T@[PA]Int_| (|T@[PA]Int| T@PA) Int)
(declare-fun |lambda#0| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#1| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#2| (Int Int Int Int) |T@[PA]Int|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa) (ite  (and (and (is-ADD pa) (< |l#0| (|i#ADD| pa))) (<= (|i#ADD| pa) |l#1|)) |l#2| |l#3|))
 :qid |inst1bpl.36:7|
 :skolemid |6|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (|l#3@@0| Int) (inline$CreateLambda$0$pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa) (ite  (and (and (is-ADD inline$CreateLambda$0$pa) (< |l#0@@0| (|i#ADD| inline$CreateLambda$0$pa))) (<= (|i#ADD| inline$CreateLambda$0$pa) |l#1@@0|)) |l#2@@0| |l#3@@0|))
 :qid |unknown.0:0|
 :skolemid |7|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| Int) (pa@@0 T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0) (ite  (and (and (is-ADD pa@@0) (< |l#0@@1| (|i#ADD| pa@@0))) (<= (|i#ADD| pa@@0) |l#1@@1|)) |l#2@@1| |l#3@@1|))
 :qid |inst1bpl.60:36|
 :skolemid |8|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun n () Int)
(declare-fun PAs@0 () |T@[PA]Int|)
(set-info :boogie-vc-id INV2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (=> (= (|Select__T@[PA]Int_| (|lambda#0| i n 1 0) (ADD n)) (ite  (and (and (is-ADD (ADD n)) (< i (|i#ADD| (ADD n)))) (<= (|i#ADD| (ADD n)) n)) 1 0)) (let ((anon0_correct  (=> (<= 0 i) (=> (and (and (<= i n) (= PAs@0 (|lambda#0| i n 1 0))) (and (forall ((pa@@1 T@PA) ) (! (= (|Select__T@[PA]Int_| PAs@0 pa@@1) 0)
 :qid |inst1bpl.44:18|
 :skolemid |4|
)) (= (ControlFlow 0 2) (- 0 1)))) (= i n)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@PA 0)) (((ADD (|i#ADD| Int) ) ) ))
(declare-sort |T@[PA]Int| 0)
(declare-fun |Select__T@[PA]Int_| (|T@[PA]Int| T@PA) Int)
(declare-fun |lambda#0| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#1| (Int Int Int Int) |T@[PA]Int|)
(declare-fun |lambda#2| (Int Int Int Int) |T@[PA]Int|)
(assert (forall ((|l#0| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa) (ite  (and (and (is-ADD pa) (< |l#0| (|i#ADD| pa))) (<= (|i#ADD| pa) |l#1|)) |l#2| |l#3|))
 :qid |inst1bpl.36:7|
 :skolemid |6|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#0| |l#0| |l#1| |l#2| |l#3|) pa))
)))
(assert (forall ((|l#0@@0| Int) (|l#1@@0| Int) (|l#2@@0| Int) (|l#3@@0| Int) (inline$CreateLambda$0$pa T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa) (ite  (and (and (is-ADD inline$CreateLambda$0$pa) (< |l#0@@0| (|i#ADD| inline$CreateLambda$0$pa))) (<= (|i#ADD| inline$CreateLambda$0$pa) |l#1@@0|)) |l#2@@0| |l#3@@0|))
 :qid |unknown.0:0|
 :skolemid |7|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) inline$CreateLambda$0$pa))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| Int) (pa@@0 T@PA) ) (! (= (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0) (ite  (and (and (is-ADD pa@@0) (< |l#0@@1| (|i#ADD| pa@@0))) (<= (|i#ADD| pa@@0) |l#1@@1|)) |l#2@@1| |l#3@@1|))
 :qid |inst1bpl.60:36|
 :skolemid |8|
 :pattern ( (|Select__T@[PA]Int_| (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) pa@@0))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i () Int)
(declare-fun n () Int)
(declare-fun inline$CreateLambda$0$PAs@1 () |T@[PA]Int|)
(set-info :boogie-vc-id INV3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (=> (= (|Select__T@[PA]Int_| (|lambda#1| i n 1 0) (ADD n)) (ite  (and (and (is-ADD (ADD n)) (< i (|i#ADD| (ADD n)))) (<= (|i#ADD| (ADD n)) n)) 1 0)) (let ((inline$LookupLambda$0$anon0_correct  (=> (and (forall ((inline$LookupLambda$0$pa T@PA) ) (! (= (|Select__T@[PA]Int_| inline$CreateLambda$0$PAs@1 inline$LookupLambda$0$pa) 0)
 :qid |unknown.0:0|
 :skolemid |5|
)) (= (ControlFlow 0 2) (- 0 1))) (= i n))))
(let ((inline$CreateLambda$0$anon0_correct  (=> (and (= inline$CreateLambda$0$PAs@1 (|lambda#1| i n 1 0)) (= (ControlFlow 0 3) 2)) inline$LookupLambda$0$anon0_correct)))
(let ((anon0_correct  (=> (<= 0 i) (=> (and (<= i n) (= (ControlFlow 0 4) 3)) inline$CreateLambda$0$anon0_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
