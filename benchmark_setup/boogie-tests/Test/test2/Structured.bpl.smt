(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun call0formal@a@0 () Int)
(declare-fun call1formal@b@0 () Int)
(declare-fun call2formal@k@0 () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f k@0) K))))
(let ((C_correct  (=> (and (and (not (= (f a) K)) (not (= (f b) K))) (and (= call0formal@a@0 (- a 1)) (= call1formal@b@0 (+ b 1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= call0formal@a@0 call1formal@b@0) (forall ((j Int) ) (!  (=> (and (< call0formal@a@0 j) (< j call1formal@b@0)) (not (= (f j) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
)))) (=> (and (<= call0formal@a@0 call1formal@b@0) (forall ((j@@0 Int) ) (!  (=> (and (< call0formal@a@0 j@@0) (< j@@0 call1formal@b@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (=> (= (f call2formal@k@0) K) (=> (and (= k@0 call2formal@k@0) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))))))
(let ((B_correct  (=> (= (f b) K) (=> (and (= k@0 b) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((A_correct  (=> (= (f a) K) (=> (and (= k@0 a) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((entry_correct  (=> (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (and (and (=> (= (ControlFlow 0 7) 3) A_correct) (=> (= (ControlFlow 0 7) 4) B_correct)) (=> (= (ControlFlow 0 7) 5) C_correct)))))
entry_correct))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun call0formal@a@0 () Int)
(declare-fun call1formal@b@0 () Int)
(declare-fun call2formal@k@0 () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f k@0) K))))
(let ((anon5_Else_correct  (=> (and (and (not (= (f a) K)) (not (= (f b) K))) (and (= call0formal@a@0 (- a 1)) (= call1formal@b@0 (+ b 1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= call0formal@a@0 call1formal@b@0) (forall ((j Int) ) (!  (=> (and (< call0formal@a@0 j) (< j call1formal@b@0)) (not (= (f j) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
)))) (=> (and (<= call0formal@a@0 call1formal@b@0) (forall ((j@@0 Int) ) (!  (=> (and (< call0formal@a@0 j@@0) (< j@@0 call1formal@b@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (=> (= (f call2formal@k@0) K) (=> (and (= k@0 call2formal@k@0) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))))))
(let ((anon5_Then_correct  (=> (= (f b) K) (=> (and (= k@0 b) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((anon4_Then_correct  (=> (= (f a) K) (=> (and (= k@0 a) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (and (and (=> (= (ControlFlow 0 7) 3) anon4_Then_correct) (=> (= (ControlFlow 0 7) 4) anon5_Then_correct)) (=> (= (ControlFlow 0 7) 5) anon5_Else_correct)))))
anon0_correct))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun b () Int)
(declare-fun call0formal@a@0 () Int)
(declare-fun a () Int)
(declare-fun call1formal@b@0 () Int)
(declare-fun call2formal@k@0 () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f k@0) K))))
(let ((anon5_Else_correct  (=> (not (= (f b) K)) (=> (and (= call0formal@a@0 (- a 1)) (= call1formal@b@0 (+ b 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= call0formal@a@0 call1formal@b@0) (forall ((j Int) ) (!  (=> (and (< call0formal@a@0 j) (< j call1formal@b@0)) (not (= (f j) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
)))) (=> (and (<= call0formal@a@0 call1formal@b@0) (forall ((j@@0 Int) ) (!  (=> (and (< call0formal@a@0 j@@0) (< j@@0 call1formal@b@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (=> (= (f call2formal@k@0) K) (=> (and (= k@0 call2formal@k@0) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct))))))))
(let ((anon5_Then_correct  (=> (= (f b) K) (=> (and (= k@0 b) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))
(let ((anon4_Else_correct  (=> (not (= (f a) K)) (and (=> (= (ControlFlow 0 7) 4) anon5_Then_correct) (=> (= (ControlFlow 0 7) 5) anon5_Else_correct)))))
(let ((anon4_Then_correct  (=> (= (f a) K) (=> (and (= k@0 a) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 8) 3) anon4_Then_correct) (=> (= (ControlFlow 0 8) 7) anon4_Else_correct)))))
anon0_correct)))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= (f k@0) K))))
(let ((anon6_Else_correct  (=> (not (= (f x@0) K)) (=> (and (= k@0 y@0) (= (ControlFlow 0 6) 4)) GeneratedUnifiedExit_correct))))
(let ((anon6_Then_correct  (=> (= (f x@0) K) (=> (and (= k@0 x@0) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopDone_correct  (=> (not (and (not (= (f x@0) K)) (not (= (f y@0) K)))) (and (=> (= (ControlFlow 0 7) 5) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))
(let ((anon5_LoopBody_correct  (=> (and (and (and (not (= (f x@0) K)) (not (= (f y@0) K))) (= x@1 (- x@0 1))) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 2) (- 0 1)))) (and (<= x@1 y@1) (forall ((j Int) ) (!  (=> (and (< x@1 j) (< j y@1)) (not (= (f j) K)))
 :qid |Structuredbpl.72:33|
 :skolemid |2|
))))))
(let ((anon5_LoopHead_correct  (=> (and (<= x@0 y@0) (forall ((j@@0 Int) ) (!  (=> (and (< x@0 j@@0) (< j@@0 y@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.72:33|
 :skolemid |2|
))) (and (=> (= (ControlFlow 0 8) 7) anon5_LoopDone_correct) (=> (= (ControlFlow 0 8) 2) anon5_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.72:33|
 :skolemid |2|
)))) (=> (and (<= a b) (forall ((j@@2 Int) ) (!  (=> (and (< a j@@2) (< j@@2 b)) (not (= (f j@@2) K)))
 :qid |Structuredbpl.72:33|
 :skolemid |2|
))) (=> (= (ControlFlow 0 9) 8) anon5_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= a b) (forall ((j@@3 Int) ) (!  (=> (and (< a j@@3) (< j@@3 b)) (not (= (f j@@3) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (= (ControlFlow 0 11) 9)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun y@0 () Int)
(declare-fun x@0 () Int)
(declare-fun k@@0 () Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= (f k@0) K))))
(let ((anon7_Then_correct  (=> (= (f y@0) K) (=> (and (= k@0 y@0) (= (ControlFlow 0 7) 4)) GeneratedUnifiedExit_correct))))
(let ((anon6_Then_correct  (=> (= (f x@0) K) (=> (and (= k@0 x@0) (= (ControlFlow 0 6) 4)) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopDone_correct  (=> (not true) (=> (and (= k@0 k@@0) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct))))
(let ((anon7_Else_correct  (=> (and (and (not (= (f y@0) K)) (= x@1 (- x@0 1))) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 2) (- 0 1)))) (and (<= x@1 y@1) (forall ((j Int) ) (!  (=> (and (< x@1 j) (< j y@1)) (not (= (f j) K)))
 :qid |Structuredbpl.94:33|
 :skolemid |3|
))))))
(let ((anon6_Else_correct  (=> (not (= (f x@0) K)) (and (=> (= (ControlFlow 0 8) 7) anon7_Then_correct) (=> (= (ControlFlow 0 8) 2) anon7_Else_correct)))))
(let ((anon5_LoopBody_correct  (and (=> (= (ControlFlow 0 9) 6) anon6_Then_correct) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct))))
(let ((anon5_LoopHead_correct  (=> (and (<= x@0 y@0) (forall ((j@@0 Int) ) (!  (=> (and (< x@0 j@@0) (< j@@0 y@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.94:33|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 10) 5) anon5_LoopDone_correct) (=> (= (ControlFlow 0 10) 9) anon5_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.94:33|
 :skolemid |3|
)))) (=> (and (<= a b) (forall ((j@@2 Int) ) (!  (=> (and (< a j@@2) (< j@@2 b)) (not (= (f j@@2) K)))
 :qid |Structuredbpl.94:33|
 :skolemid |3|
))) (=> (= (ControlFlow 0 11) 10) anon5_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= a b) (forall ((j@@3 Int) ) (!  (=> (and (< a j@@3) (< j@@3 b)) (not (= (f j@@3) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (= (ControlFlow 0 13) 11)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k@0 () Int)
(declare-fun x@0 () Int)
(declare-fun y@0 () Int)
(declare-fun x@1 () Int)
(declare-fun y@1 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= (f k@0) K))))
(let ((FoundX_correct  (=> (and (= k@0 x@0) (= (ControlFlow 0 7) 4)) GeneratedUnifiedExit_correct)))
(let ((anon6_Then_correct  (=> (and (= (f x@0) K) (= (ControlFlow 0 9) 7)) FoundX_correct)))
(let ((anon5_LoopDone_correct  (=> (and (not true) (= (ControlFlow 0 8) 7)) FoundX_correct)))
(let ((anon7_Then_correct  (=> (= (f y@0) K) (=> (and (= k@0 y@0) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct))))
(let ((anon7_Else_correct  (=> (and (and (not (= (f y@0) K)) (= x@1 (- x@0 1))) (and (= y@1 (+ y@0 1)) (= (ControlFlow 0 2) (- 0 1)))) (and (<= x@1 y@1) (forall ((j Int) ) (!  (=> (and (< x@1 j) (< j y@1)) (not (= (f j) K)))
 :qid |Structuredbpl.117:33|
 :skolemid |4|
))))))
(let ((anon6_Else_correct  (=> (not (= (f x@0) K)) (and (=> (= (ControlFlow 0 6) 5) anon7_Then_correct) (=> (= (ControlFlow 0 6) 2) anon7_Else_correct)))))
(let ((anon5_LoopBody_correct  (and (=> (= (ControlFlow 0 10) 9) anon6_Then_correct) (=> (= (ControlFlow 0 10) 6) anon6_Else_correct))))
(let ((anon5_LoopHead_correct  (=> (and (<= x@0 y@0) (forall ((j@@0 Int) ) (!  (=> (and (< x@0 j@@0) (< j@@0 y@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.117:33|
 :skolemid |4|
))) (and (=> (= (ControlFlow 0 11) 8) anon5_LoopDone_correct) (=> (= (ControlFlow 0 11) 10) anon5_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.117:33|
 :skolemid |4|
)))) (=> (and (<= a b) (forall ((j@@2 Int) ) (!  (=> (and (< a j@@2) (< j@@2 b)) (not (= (f j@@2) K)))
 :qid |Structuredbpl.117:33|
 :skolemid |4|
))) (=> (= (ControlFlow 0 12) 11) anon5_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (<= a b) (forall ((j@@3 Int) ) (!  (=> (and (< a j@@3) (< j@@3 b)) (not (= (f j@@3) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (= (ControlFlow 0 14) 12)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@0 () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun y@2 () Int)
(declare-fun k@0 () Int)
(declare-fun y@1 () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(set-info :boogie-vc-id Find)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16) (let ((anon10_Else_correct  (=> (and (and (not (= (f y@0) K)) (= x@1 (- x@0 1))) (and (= y@2 (+ y@0 1)) (= (ControlFlow 0 7) (- 0 6)))) (and (<= x@1 y@2) (forall ((j Int) ) (!  (=> (and (< x@1 j) (< j y@2)) (not (= (f j) K)))
 :qid |Structuredbpl.149:35|
 :skolemid |5|
))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (f k@0) K))))
(let ((anon5_correct  (=> (and (= k@0 x@0) (= (ControlFlow 0 9) 2)) GeneratedUnifiedExit_correct)))
(let ((anon9_Then_correct  (=> (and (= (f x@0) K) (= (ControlFlow 0 11) 9)) anon5_correct)))
(let ((anon8_LoopDone_correct  (=> (and (not true) (= (ControlFlow 0 10) 9)) anon5_correct)))
(let ((anon6_correct  (=> (and (= k@0 y@1) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon10_Then_correct  (=> (= (f y@0) K) (=> (and (= y@1 y@0) (= (ControlFlow 0 5) 3)) anon6_correct))))
(let ((anon9_Else_correct  (=> (not (= (f x@0) K)) (and (=> (= (ControlFlow 0 8) 5) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon8_LoopBody_correct  (and (=> (= (ControlFlow 0 12) 11) anon9_Then_correct) (=> (= (ControlFlow 0 12) 8) anon9_Else_correct))))
(let ((anon8_LoopHead_correct  (=> (and (<= x@0 y@0) (forall ((j@@0 Int) ) (!  (=> (and (< x@0 j@@0) (< j@@0 y@0)) (not (= (f j@@0) K)))
 :qid |Structuredbpl.149:35|
 :skolemid |5|
))) (and (=> (= (ControlFlow 0 13) 10) anon8_LoopDone_correct) (=> (= (ControlFlow 0 13) 12) anon8_LoopBody_correct)))))
(let ((anon7_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= a b) (forall ((j@@1 Int) ) (!  (=> (and (< a j@@1) (< j@@1 b)) (not (= (f j@@1) K)))
 :qid |Structuredbpl.149:35|
 :skolemid |5|
)))) (=> (and (<= a b) (forall ((j@@2 Int) ) (!  (=> (and (< a j@@2) (< j@@2 b)) (not (= (f j@@2) K)))
 :qid |Structuredbpl.149:35|
 :skolemid |5|
))) (=> (= (ControlFlow 0 14) 13) anon8_LoopHead_correct)))))
(let ((anon7_Else_correct  (=> (not true) (=> (and (= y@1 b) (= (ControlFlow 0 4) 3)) anon6_correct))))
(let ((anon0_correct  (=> (and (<= a b) (forall ((j@@3 Int) ) (!  (=> (and (< a j@@3) (< j@@3 b)) (not (= (f j@@3) K)))
 :qid |Structuredbpl.11:30|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 16) 14) anon7_Then_correct) (=> (= (ControlFlow 0 16) 4) anon7_Else_correct)))))
anon0_correct))))))))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@2 () Int)
(declare-fun y@0 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (ShadeOfGreen y@2))))
(let ((anon2_LoopDone_correct  (=> (<= 100 y@0) (=> (and (= y@2 y@0) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct))))
(let ((anon2_LoopBody_correct true))
(let ((anon2_LoopHead_correct  (=> (Teal y@0) (and (=> (= (ControlFlow 0 5) 4) anon2_LoopDone_correct) (=> (= (ControlFlow 0 5) 1) anon2_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (Teal x) (= (ControlFlow 0 6) 5)) anon2_LoopHead_correct)))
anon0_correct))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(declare-fun x@2 () Int)
(set-info :boogie-vc-id RunOffEnd0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= x@0 (+ 0 1)) (= x@1 (+ x@0 1))) (and (= x@2 (+ x@1 1)) (= (ControlFlow 0 2) (- 0 1)))) (= x@2 3))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@5 () Int)
(declare-fun x@8 () Int)
(declare-fun x@9 () Int)
(declare-fun x@7 () Int)
(declare-fun x@6 () Int)
(declare-fun x@4 () Int)
(declare-fun x@0 () Int)
(declare-fun x@2 () Int)
(declare-fun x@3 () Int)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id RunOffEnd1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14) (let ((anon9_LoopBody_correct  (=> (< x@5 3) (=> (and (= x@8 (+ x@5 1)) (= (ControlFlow 0 9) (- 0 8))) (<= x@8 3)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= x@9 4))))
(let ((anon5_correct  (=> (= x@7 (+ x@6 1)) (=> (and (= x@9 x@7) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))
(let ((anon9_LoopDone_correct  (=> (<= 3 x@5) (=> (and (= x@6 x@5) (= (ControlFlow 0 7) 3)) anon5_correct))))
(let ((anon9_LoopHead_correct  (=> (<= x@5 3) (and (=> (= (ControlFlow 0 10) 7) anon9_LoopDone_correct) (=> (= (ControlFlow 0 10) 9) anon9_LoopBody_correct)))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= 0 3)) (=> (<= 0 3) (=> (= (ControlFlow 0 11) 10) anon9_LoopHead_correct)))))
(let ((anon8_Else_correct  (=> (= x@4 (+ x@0 2)) (=> (and (= x@6 x@4) (= (ControlFlow 0 6) 3)) anon5_correct))))
(let ((Label3_correct  (=> (and (and (= x@2 (+ 2 2)) (= x@3 (- x@2 1))) (and (= x@6 x@3) (= (ControlFlow 0 5) 3))) anon5_correct)))
(let ((Label2_correct  (=> (= x@1 (+ x@0 2)) (=> (and (= x@6 x@1) (= (ControlFlow 0 4) 3)) anon5_correct))))
(let ((anon0_correct  (=> (= x@0 (+ 0 1)) (and (and (and (=> (= (ControlFlow 0 13) 4) Label2_correct) (=> (= (ControlFlow 0 13) 5) Label3_correct)) (=> (= (ControlFlow 0 13) 11) anon8_Then_correct)) (=> (= (ControlFlow 0 13) 6) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@2 () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id RunOffEnd2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= x@2 10))))
(let ((anon9_Then_correct  (=> (and (= x@2 x@1) (= (ControlFlow 0 6) 4)) GeneratedUnifiedExit_correct)))
(let ((anon6_LoopDone_correct  (=> (not true) (=> (and (= x@2 x@0) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct))))
(let ((anon9_Else_correct true))
(let ((anon8_Then_correct  (=> (= x@1 10) (and (=> (= (ControlFlow 0 8) 6) anon9_Then_correct) (=> (= (ControlFlow 0 8) 2) anon9_Else_correct)))))
(let ((anon7_LoopDone_correct  (=> (and (not true) (= x@1 x@0)) (and (=> (= (ControlFlow 0 7) 6) anon9_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Else_correct)))))
(let ((anon8_Else_correct true))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 9) 8) anon8_Then_correct) (=> (= (ControlFlow 0 9) 1) anon8_Else_correct))))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 10) 7) anon7_LoopDone_correct) (=> (= (ControlFlow 0 10) 9) anon7_LoopBody_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 11) 5) anon6_LoopDone_correct) (=> (= (ControlFlow 0 11) 10) anon6_LoopBody_correct))))
anon0_correct)))))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@2 () Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id RunOffEnd3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (= x@2 9))))
(let ((anon9_Then_correct  (=> (and (= x@2 x@1) (= (ControlFlow 0 6) 4)) GeneratedUnifiedExit_correct)))
(let ((anon6_LoopDone_correct  (=> (not true) (=> (and (= x@2 x@0) (= (ControlFlow 0 5) 4)) GeneratedUnifiedExit_correct))))
(let ((anon9_Else_correct true))
(let ((anon8_Then_correct  (=> (= x@1 10) (and (=> (= (ControlFlow 0 8) 6) anon9_Then_correct) (=> (= (ControlFlow 0 8) 2) anon9_Else_correct)))))
(let ((anon7_LoopDone_correct  (=> (and (not true) (= x@1 x@0)) (and (=> (= (ControlFlow 0 7) 6) anon9_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Else_correct)))))
(let ((anon8_Else_correct true))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 9) 8) anon8_Then_correct) (=> (= (ControlFlow 0 9) 1) anon8_Else_correct))))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 10) 7) anon7_LoopDone_correct) (=> (= (ControlFlow 0 10) 9) anon7_LoopBody_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 11) 5) anon6_LoopDone_correct) (=> (= (ControlFlow 0 11) 10) anon6_LoopBody_correct))))
anon0_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 4) (- 3))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun bad@2 () Bool)
(declare-fun x@2 () Int)
(declare-fun x@0 () Int)
(declare-fun bad@1 () Bool)
(declare-fun bad@0 () Bool)
(declare-fun x@1 () Int)
(set-info :boogie-vc-id RunOffEnd4)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (not bad@2))))
(let ((anon8_Then_correct  (=> (= x@2 x@0) (=> (and (= bad@2 bad@1) (= (ControlFlow 0 5) 3)) anon5_correct))))
(let ((anon6_LoopDone_correct  (=> (not true) (=> (and (= bad@2 bad@0) (= (ControlFlow 0 4) 3)) anon5_correct))))
(let ((anon8_Else_correct true))
(let ((anon7_Else_correct  (=> (and (= x@2 x@0) (= bad@1 false)) (and (=> (= (ControlFlow 0 7) 5) anon8_Then_correct) (=> (= (ControlFlow 0 7) 1) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (= x@1 (+ x@0 1)) (=> (and (= x@2 x@1) (= bad@1 true)) (and (=> (= (ControlFlow 0 6) 5) anon8_Then_correct) (=> (= (ControlFlow 0 6) 1) anon8_Else_correct))))))
(let ((anon6_LoopBody_correct  (and (=> (= (ControlFlow 0 8) 6) anon7_Then_correct) (=> (= (ControlFlow 0 8) 7) anon7_Else_correct))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 9) 4) anon6_LoopDone_correct) (=> (= (ControlFlow 0 9) 8) anon6_LoopBody_correct))))
anon0_correct)))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id RunOffEnd5)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct true))
(let ((anon5_Then_correct true))
(let ((anon4_LoopBody_correct  (and (=> (= (ControlFlow 0 5) 3) anon5_Then_correct) (=> (= (ControlFlow 0 5) 4) anon5_Else_correct))))
(let ((anon4_LoopDone_correct  (=> (and (not true) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 6) 2) anon4_LoopDone_correct) (=> (= (ControlFlow 0 6) 5) anon4_LoopBody_correct))))
anon0_correct))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id RunOffEnd6)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_LoopBody_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= 7 7))))
(let ((anon2_LoopDone_correct true))
(let ((anon2_LoopHead_correct  (=> (= x@0 7) (and (=> (= (ControlFlow 0 4) 1) anon2_LoopDone_correct) (=> (= (ControlFlow 0 4) 3) anon2_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (= 7 7)) (=> (= 7 7) (=> (= (ControlFlow 0 5) 4) anon2_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id Q0)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon2_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= x@0 1))))
(let ((anon3_Else_correct  (=> (and (= x@0 0) (= (ControlFlow 0 4) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (= x@0 1) (= (ControlFlow 0 3) 2)) anon2_correct)))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))
anon0_correct)))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@1 () Int)
(declare-fun x@0 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id Q1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((A_correct  (=> (and (= x@1 (+ x@0 0)) (= (ControlFlow 0 3) (- 0 2))) (= x@1 0))))
(let ((anon1_Then_correct  (=> (and (= x 0) (= (ControlFlow 0 4) 3)) A_correct)))
(let ((anon1_Else_correct true))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 5) 4) anon1_Then_correct) (=> (= (ControlFlow 0 5) 1) anon1_Else_correct))))
anon0_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 3) (- 2))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(declare-fun x@1 () Int)
(declare-fun x () Int)
(set-info :boogie-vc-id Q2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon4_LoopBody_correct  (=> (< x@0 10) (=> (and (= x@1 (+ x@0 1)) (= (ControlFlow 0 4) (- 0 3))) (<= x@1 10)))))
(let ((anon4_LoopDone_correct true))
(let ((anon4_LoopHead_correct  (=> (<= x@0 10) (and (=> (= (ControlFlow 0 5) 2) anon4_LoopDone_correct) (=> (= (ControlFlow 0 5) 4) anon4_LoopBody_correct)))))
(let ((anon3_Then_correct  (=> (= x 0) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= x 10)) (=> (<= x 10) (=> (= (ControlFlow 0 6) 5) anon4_LoopHead_correct))))))
(let ((anon3_Else_correct true))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 8) 6) anon3_Then_correct) (=> (= (ControlFlow 0 8) 1) anon3_Else_correct))))
anon0_correct)))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x () Int)
(declare-fun curr@2 () Int)
(declare-fun curr@0 () Int)
(declare-fun call0formal@val@0 () Int)
(set-info :boogie-vc-id BreakIssue)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (or (= x 18) (= curr@2 100)))))
(let ((anon5_LoopDone_correct  (=> (= x 18) (=> (and (= curr@2 curr@0) (= (ControlFlow 0 9) 8)) GeneratedUnifiedExit_correct))))
(let ((anon4_correct true))
(let ((anon7_Then_correct  (=> (and (= call0formal@val@0 0) (= (ControlFlow 0 4) 2)) anon4_correct)))
(let ((anon6_LoopDone_correct  (=> (and (= x 19) (= (ControlFlow 0 3) 2)) anon4_correct)))
(let ((anon7_Else_correct true))
(let ((anon6_LoopBody_correct  (=> (not (= x 19)) (and (=> (= (ControlFlow 0 5) 4) anon7_Then_correct) (=> (= (ControlFlow 0 5) 1) anon7_Else_correct)))))
(let ((anon5_LoopBody_correct  (=> (not (= x 18)) (and (=> (= (ControlFlow 0 6) 3) anon6_LoopDone_correct) (=> (= (ControlFlow 0 6) 5) anon6_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 10) 9) anon5_LoopDone_correct) (=> (= (ControlFlow 0 10) 6) anon5_LoopBody_correct))))
anon0_correct))))))))))
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
(declare-fun Teal (Int) Bool)
(declare-fun ShadeOfGreen (Int) Bool)
(declare-fun f (Int) Int)
(declare-fun K () Int)
(assert (forall ((w Int) ) (!  (=> (Teal w) (ShadeOfGreen w))
 :qid |Structuredbpl.170:15|
 :skolemid |6|
)))
(assert (exists ((k Int) ) (! (= (f k) K)
 :qid |Structuredbpl.8:15|
 :skolemid |0|
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () Int)
(set-info :boogie-vc-id BreakToOuterLoopHead)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (> 0 0))))
(let ((anon5_LoopBody_correct  (=> (= (ControlFlow 0 5) 3) anon3_correct)))
(let ((anon5_LoopDone_correct  (=> (and (not true) (= (ControlFlow 0 4) 3)) anon3_correct)))
(let ((anon4_LoopBody_correct  (and (=> (= (ControlFlow 0 6) 4) anon5_LoopDone_correct) (=> (= (ControlFlow 0 6) 5) anon5_LoopBody_correct))))
(let ((anon4_LoopDone_correct true))
(let ((anon4_LoopHead_correct  (=> (> x@0 0) (and (=> (= (ControlFlow 0 7) 1) anon4_LoopDone_correct) (=> (= (ControlFlow 0 7) 6) anon4_LoopBody_correct)))))
(let ((anon0_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (> 42 0)) (=> (> 42 0) (=> (= (ControlFlow 0 8) 7) anon4_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
