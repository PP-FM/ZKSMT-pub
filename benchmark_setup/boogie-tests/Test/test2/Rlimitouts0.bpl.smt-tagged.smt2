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
(declare-fun len () Int)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun out@3 () |T@[Int]Int|)
(declare-fun i@2 () Int)
(declare-fun out@1 () |T@[Int]Int|)
(declare-fun i@3 () Int)
(declare-fun in () |T@[Int]Int|)
(declare-fun i@0 () Int)
(declare-fun out@2 () |T@[Int]Int|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun i@1 () Int)
(declare-fun out@0 () |T@[Int]Int|)
(declare-fun out () |T@[Int]Int|)
(set-info :boogie-vc-id TestTimeouts0)
(set-option :timeout 4000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j len)) (= (|Select__T@[Int]Int_| out@3 j) j))
 :qid |Rlimitouts0bpl.17:19|
 :skolemid |1|
)))))
(let ((anon5_LoopDone_correct  (=> (<= len i@2) (=> (and (= out@3 out@1) (= (ControlFlow 0 9) 8)) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopBody_correct  (=> (and (< i@2 len) (= i@3 (+ i@2 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 i@3) (<= i@3 len))) (=> (and (<= 0 i@3) (<= i@3 len)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 i@3)) (= (|Select__T@[Int]Int_| out@1 j@@0) (|Select__T@[Int]Int_| in j@@0)))
 :qid |Rlimitouts0bpl.34:25|
 :skolemid |3|
))))))))
(let ((anon5_LoopHead_correct  (=> (and (and (<= 0 i@2) (<= i@2 len)) (forall ((j@@1 Int) ) (!  (=> (and (<= 0 j@@1) (< j@@1 i@2)) (= (|Select__T@[Int]Int_| out@1 j@@1) (|Select__T@[Int]Int_| in j@@1)))
 :qid |Rlimitouts0bpl.34:25|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 10) 9) anon5_LoopDone_correct) (=> (= (ControlFlow 0 10) 5) anon5_LoopBody_correct)))))
(let ((anon4_LoopDone_correct  (=> (<= len i@0) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 0) (<= 0 len))) (=> (and (<= 0 0) (<= 0 len)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 0)) (= (|Select__T@[Int]Int_| out@1 j@@2) (|Select__T@[Int]Int_| in j@@2)))
 :qid |Rlimitouts0bpl.34:25|
 :skolemid |3|
))) (=> (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 0)) (= (|Select__T@[Int]Int_| out@1 j@@3) (|Select__T@[Int]Int_| in j@@3)))
 :qid |Rlimitouts0bpl.34:25|
 :skolemid |3|
)) (=> (= (ControlFlow 0 11) 10) anon5_LoopHead_correct))))))))
(let ((anon4_LoopBody_correct  (=> (< i@0 len) (=> (and (= out@2 (|Store__T@[Int]Int_| out@1 (+ i@0 1) (+ (|Select__T@[Int]Int_| out@1 i@0) 1))) (= i@1 (+ i@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 i@1) (<= i@1 len))) (=> (and (<= 0 i@1) (<= i@1 len)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (= (|Select__T@[Int]Int_| out@2 0) 0) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 i@1)) (= (|Select__T@[Int]Int_| out@2 (+ j@@4 1)) (+ (|Select__T@[Int]Int_| out@2 j@@4) 1)))
 :qid |Rlimitouts0bpl.25:40|
 :skolemid |2|
))))))))))
(let ((anon4_LoopHead_correct  (=> (and (and (<= 0 i@0) (<= i@0 len)) (and (= (|Select__T@[Int]Int_| out@1 0) 0) (forall ((j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 i@0)) (= (|Select__T@[Int]Int_| out@1 (+ j@@5 1)) (+ (|Select__T@[Int]Int_| out@1 j@@5) 1)))
 :qid |Rlimitouts0bpl.25:40|
 :skolemid |2|
)))) (and (=> (= (ControlFlow 0 14) 11) anon4_LoopDone_correct) (=> (= (ControlFlow 0 14) 2) anon4_LoopBody_correct)))))
(let ((anon0_correct  (=> (= out@0 (|Store__T@[Int]Int_| out 0 0)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (<= 0 0) (<= 0 len))) (=> (and (<= 0 0) (<= 0 len)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (= (|Select__T@[Int]Int_| out@0 0) 0) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 0)) (= (|Select__T@[Int]Int_| out@0 (+ j@@6 1)) (+ (|Select__T@[Int]Int_| out@0 j@@6) 1)))
 :qid |Rlimitouts0bpl.25:40|
 :skolemid |2|
)))) (=> (and (= (|Select__T@[Int]Int_| out@0 0) 0) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 0)) (= (|Select__T@[Int]Int_| out@0 (+ j@@7 1)) (+ (|Select__T@[Int]Int_| out@0 j@@7) 1)))
 :qid |Rlimitouts0bpl.25:40|
 :skolemid |2|
))) (=> (= (ControlFlow 0 15) 14) anon4_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (= (|Select__T@[Int]Int_| in 0) 0) (forall ((i Int) ) (!  (=> (<= 0 i) (= (|Select__T@[Int]Int_| in (+ i 1)) (+ (|Select__T@[Int]Int_| in i) 1)))
 :qid |Rlimitouts0bpl.15:34|
 :skolemid |0|
))) (and (< 0 len) (= (ControlFlow 0 18) 15))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 8) (- 7))))
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
(declare-fun len () Int)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun out@3 () |T@[Int]Int|)
(declare-fun i@2 () Int)
(declare-fun out@1 () |T@[Int]Int|)
(declare-fun i@3 () Int)
(declare-fun in () |T@[Int]Int|)
(declare-fun i@0 () Int)
(declare-fun out@2 () |T@[Int]Int|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun i@1 () Int)
(declare-fun out@0 () |T@[Int]Int|)
(declare-fun out () |T@[Int]Int|)
(set-info :boogie-vc-id TestTimeouts1)
(set-option :timeout 0)
(set-option :rlimit 900000)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j len)) (= (|Select__T@[Int]Int_| out@3 j) j))
 :qid |Rlimitouts0bpl.44:19|
 :skolemid |5|
)))))
(let ((anon5_LoopDone_correct  (=> (<= len i@2) (=> (and (= out@3 out@1) (= (ControlFlow 0 9) 8)) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopBody_correct  (=> (and (< i@2 len) (= i@3 (+ i@2 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 i@3) (<= i@3 len))) (=> (and (<= 0 i@3) (<= i@3 len)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 i@3)) (= (|Select__T@[Int]Int_| out@1 j@@0) (|Select__T@[Int]Int_| in j@@0)))
 :qid |Rlimitouts0bpl.63:25|
 :skolemid |7|
))))))))
(let ((anon5_LoopHead_correct  (=> (and (and (<= 0 i@2) (<= i@2 len)) (forall ((j@@1 Int) ) (!  (=> (and (<= 0 j@@1) (< j@@1 i@2)) (= (|Select__T@[Int]Int_| out@1 j@@1) (|Select__T@[Int]Int_| in j@@1)))
 :qid |Rlimitouts0bpl.63:25|
 :skolemid |7|
))) (and (=> (= (ControlFlow 0 10) 9) anon5_LoopDone_correct) (=> (= (ControlFlow 0 10) 5) anon5_LoopBody_correct)))))
(let ((anon4_LoopDone_correct  (=> (<= len i@0) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 0) (<= 0 len))) (=> (and (<= 0 0) (<= 0 len)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 0)) (= (|Select__T@[Int]Int_| out@1 j@@2) (|Select__T@[Int]Int_| in j@@2)))
 :qid |Rlimitouts0bpl.63:25|
 :skolemid |7|
))) (=> (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 0)) (= (|Select__T@[Int]Int_| out@1 j@@3) (|Select__T@[Int]Int_| in j@@3)))
 :qid |Rlimitouts0bpl.63:25|
 :skolemid |7|
)) (=> (= (ControlFlow 0 11) 10) anon5_LoopHead_correct))))))))
(let ((anon4_LoopBody_correct  (=> (< i@0 len) (=> (and (= out@2 (|Store__T@[Int]Int_| out@1 (+ i@0 1) (+ (|Select__T@[Int]Int_| out@1 i@0) 1))) (= i@1 (+ i@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 i@1) (<= i@1 len))) (=> (and (<= 0 i@1) (<= i@1 len)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (= (|Select__T@[Int]Int_| out@2 0) 0) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 i@1)) (= (|Select__T@[Int]Int_| out@2 (+ j@@4 1)) (+ (|Select__T@[Int]Int_| out@2 j@@4) 1)))
 :qid |Rlimitouts0bpl.54:40|
 :skolemid |6|
))))))))))
(let ((anon4_LoopHead_correct  (=> (and (and (<= 0 i@0) (<= i@0 len)) (and (= (|Select__T@[Int]Int_| out@1 0) 0) (forall ((j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 i@0)) (= (|Select__T@[Int]Int_| out@1 (+ j@@5 1)) (+ (|Select__T@[Int]Int_| out@1 j@@5) 1)))
 :qid |Rlimitouts0bpl.54:40|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 14) 11) anon4_LoopDone_correct) (=> (= (ControlFlow 0 14) 2) anon4_LoopBody_correct)))))
(let ((anon0_correct  (=> (= out@0 (|Store__T@[Int]Int_| out 0 0)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (<= 0 0) (<= 0 len))) (=> (and (<= 0 0) (<= 0 len)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (= (|Select__T@[Int]Int_| out@0 0) 0) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 0)) (= (|Select__T@[Int]Int_| out@0 (+ j@@6 1)) (+ (|Select__T@[Int]Int_| out@0 j@@6) 1)))
 :qid |Rlimitouts0bpl.54:40|
 :skolemid |6|
)))) (=> (and (= (|Select__T@[Int]Int_| out@0 0) 0) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 0)) (= (|Select__T@[Int]Int_| out@0 (+ j@@7 1)) (+ (|Select__T@[Int]Int_| out@0 j@@7) 1)))
 :qid |Rlimitouts0bpl.54:40|
 :skolemid |6|
))) (=> (= (ControlFlow 0 15) 14) anon4_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (= (|Select__T@[Int]Int_| in 0) 0) (forall ((i Int) ) (!  (=> (<= 0 i) (= (|Select__T@[Int]Int_| in (+ i 1)) (+ (|Select__T@[Int]Int_| in i) 1)))
 :qid |Rlimitouts0bpl.42:34|
 :skolemid |4|
))) (and (< 0 len) (= (ControlFlow 0 18) 15))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 8) (- 7))))
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
(declare-fun len () Int)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun out@3 () |T@[Int]Int|)
(declare-fun i@2 () Int)
(declare-fun out@1 () |T@[Int]Int|)
(declare-fun i@3 () Int)
(declare-fun in () |T@[Int]Int|)
(declare-fun i@0 () Int)
(declare-fun out@2 () |T@[Int]Int|)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun i@1 () Int)
(declare-fun out@0 () |T@[Int]Int|)
(declare-fun out () |T@[Int]Int|)
(set-info :boogie-vc-id TestTimeouts2)
(set-option :timeout 0)
(set-option :rlimit 1000000)
(assert (not
 (=> (= (ControlFlow 0 0) 18) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j len)) (= (|Select__T@[Int]Int_| out@3 j) j))
 :qid |Rlimitouts0bpl.73:19|
 :skolemid |9|
)))))
(let ((anon5_LoopDone_correct  (=> (<= len i@2) (=> (and (= out@3 out@1) (= (ControlFlow 0 9) 8)) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopBody_correct  (=> (and (< i@2 len) (= i@3 (+ i@2 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 i@3) (<= i@3 len))) (=> (and (<= 0 i@3) (<= i@3 len)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 i@3)) (= (|Select__T@[Int]Int_| out@1 j@@0) (|Select__T@[Int]Int_| in j@@0)))
 :qid |Rlimitouts0bpl.92:25|
 :skolemid |11|
))))))))
(let ((anon5_LoopHead_correct  (=> (and (and (<= 0 i@2) (<= i@2 len)) (forall ((j@@1 Int) ) (!  (=> (and (<= 0 j@@1) (< j@@1 i@2)) (= (|Select__T@[Int]Int_| out@1 j@@1) (|Select__T@[Int]Int_| in j@@1)))
 :qid |Rlimitouts0bpl.92:25|
 :skolemid |11|
))) (and (=> (= (ControlFlow 0 10) 9) anon5_LoopDone_correct) (=> (= (ControlFlow 0 10) 5) anon5_LoopBody_correct)))))
(let ((anon4_LoopDone_correct  (=> (<= len i@0) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 0) (<= 0 len))) (=> (and (<= 0 0) (<= 0 len)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 0)) (= (|Select__T@[Int]Int_| out@1 j@@2) (|Select__T@[Int]Int_| in j@@2)))
 :qid |Rlimitouts0bpl.92:25|
 :skolemid |11|
))) (=> (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 0)) (= (|Select__T@[Int]Int_| out@1 j@@3) (|Select__T@[Int]Int_| in j@@3)))
 :qid |Rlimitouts0bpl.92:25|
 :skolemid |11|
)) (=> (= (ControlFlow 0 11) 10) anon5_LoopHead_correct))))))))
(let ((anon4_LoopBody_correct  (=> (< i@0 len) (=> (and (= out@2 (|Store__T@[Int]Int_| out@1 (+ i@0 1) (+ (|Select__T@[Int]Int_| out@1 i@0) 1))) (= i@1 (+ i@0 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 i@1) (<= i@1 len))) (=> (and (<= 0 i@1) (<= i@1 len)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (= (|Select__T@[Int]Int_| out@2 0) 0) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 i@1)) (= (|Select__T@[Int]Int_| out@2 (+ j@@4 1)) (+ (|Select__T@[Int]Int_| out@2 j@@4) 1)))
 :qid |Rlimitouts0bpl.83:40|
 :skolemid |10|
))))))))))
(let ((anon4_LoopHead_correct  (=> (and (and (<= 0 i@0) (<= i@0 len)) (and (= (|Select__T@[Int]Int_| out@1 0) 0) (forall ((j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 i@0)) (= (|Select__T@[Int]Int_| out@1 (+ j@@5 1)) (+ (|Select__T@[Int]Int_| out@1 j@@5) 1)))
 :qid |Rlimitouts0bpl.83:40|
 :skolemid |10|
)))) (and (=> (= (ControlFlow 0 14) 11) anon4_LoopDone_correct) (=> (= (ControlFlow 0 14) 2) anon4_LoopBody_correct)))))
(let ((anon0_correct  (=> (= out@0 (|Store__T@[Int]Int_| out 0 0)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (<= 0 0) (<= 0 len))) (=> (and (<= 0 0) (<= 0 len)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (= (|Select__T@[Int]Int_| out@0 0) 0) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 0)) (= (|Select__T@[Int]Int_| out@0 (+ j@@6 1)) (+ (|Select__T@[Int]Int_| out@0 j@@6) 1)))
 :qid |Rlimitouts0bpl.83:40|
 :skolemid |10|
)))) (=> (and (= (|Select__T@[Int]Int_| out@0 0) 0) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 0)) (= (|Select__T@[Int]Int_| out@0 (+ j@@7 1)) (+ (|Select__T@[Int]Int_| out@0 j@@7) 1)))
 :qid |Rlimitouts0bpl.83:40|
 :skolemid |10|
))) (=> (= (ControlFlow 0 15) 14) anon4_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (= (|Select__T@[Int]Int_| in 0) 0) (forall ((i Int) ) (!  (=> (<= 0 i) (= (|Select__T@[Int]Int_| in (+ i 1)) (+ (|Select__T@[Int]Int_| in i) 1)))
 :qid |Rlimitouts0bpl.71:34|
 :skolemid |8|
))) (and (< 0 len) (= (ControlFlow 0 18) 15))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
