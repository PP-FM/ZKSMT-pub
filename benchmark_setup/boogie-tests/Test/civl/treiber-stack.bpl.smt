(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicTransferToStack$0$l_out@2 () T@lmap)
(declare-fun Stack@1 () T@lmap)
(declare-fun second_oldVal () Int)
(declare-fun TopOfStack () Int)
(declare-fun inline$AtomicReadTopOfStack$0$v@0 () Int)
(declare-fun null () Int)
(declare-fun TopOfStack@0 () Int)
(declare-fun second_newVal () Int)
(declare-fun Stack () T@lmap)
(declare-fun second_l_in () T@lmap)
(declare-fun inline$AtomicTransferToStack$0$r@1 () Bool)
(declare-fun inline$AtomicTransferToStack$0$l_out@1 () T@lmap)
(declare-fun Stack@0 () T@lmap)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicReadTopOfStack_AtomicTransferToStack)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$AtomicTransferToStack$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_Node (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$AtomicTransferToStack$0$l_out@2) ((_ map (= (Int Int) Bool)) Civl_partition_Node ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom Stack@1) ((_ map (= (Int Int) Bool)) Civl_partition_Node ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |35|
)) (or (and (and (and (and (and (= second_oldVal TopOfStack) (or (= inline$AtomicReadTopOfStack$0$v@0 null) (select (dom Stack@1) inline$AtomicReadTopOfStack$0$v@0))) (= TopOfStack@0 second_newVal)) (= inline$AtomicTransferToStack$0$l_out@2 EmptyLmap)) (= Stack@1 (Add Stack second_newVal (select (q@map second_l_in) second_newVal)))) (= inline$AtomicTransferToStack$0$r@1 true)) (and (and (and (and (and (not (= second_oldVal TopOfStack@0)) (or (= inline$AtomicReadTopOfStack$0$v@0 null) (select (dom Stack@1) inline$AtomicReadTopOfStack$0$v@0))) (= inline$AtomicTransferToStack$0$l_out@2 second_l_in)) (= inline$AtomicTransferToStack$0$r@1 false)) (= Stack@1 Stack)) (= TopOfStack@0 TopOfStack)))))))
(let ((inline$AtomicTransferToStack$0$anon3_Else_correct  (=> (and (not (= second_oldVal TopOfStack)) (= inline$AtomicTransferToStack$0$r@1 false)) (=> (and (and (= inline$AtomicTransferToStack$0$l_out@2 second_l_in) (= TopOfStack@0 TopOfStack)) (and (= Stack@1 Stack) (= (ControlFlow 0 4) 2))) inline$AtomicTransferToStack$0$Return_correct))))
(let ((inline$AtomicTransferToStack$0$anon3_Then_correct  (=> (and (and (and (= second_oldVal TopOfStack) (= inline$AtomicTransferToStack$0$l_out@1 EmptyLmap)) (and (= Stack@0 (Add Stack second_newVal (select (q@map second_l_in) second_newVal))) (= inline$AtomicTransferToStack$0$r@1 true))) (and (and (= inline$AtomicTransferToStack$0$l_out@2 inline$AtomicTransferToStack$0$l_out@1) (= TopOfStack@0 second_newVal)) (and (= Stack@1 Stack@0) (= (ControlFlow 0 3) 2)))) inline$AtomicTransferToStack$0$Return_correct)))
(let ((inline$AtomicReadTopOfStack$0$anon0_correct  (=> (or (= inline$AtomicReadTopOfStack$0$v@0 null) (select (dom Stack) inline$AtomicReadTopOfStack$0$v@0)) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicTransferToStack$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicTransferToStack$0$anon3_Else_correct)))))
(let ((inline$AtomicReadTopOfStack$0$Entry_correct  (=> (exists ((Civl_partition_Node@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom second_l_in) ((_ map (= (Int Int) Bool)) Civl_partition_Node@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom Stack) ((_ map (= (Int Int) Bool)) Civl_partition_Node@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |34|
)) (=> (and (select (dom second_l_in) second_newVal) (= (ControlFlow 0 6) 5)) inline$AtomicReadTopOfStack$0$anon0_correct))))
inline$AtomicReadTopOfStack$0$Entry_correct))))))
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
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicTransferToStack$0$l_out@2 () T@lmap)
(declare-fun Stack@1 () T@lmap)
(declare-fun second_oldVal () Int)
(declare-fun TopOfStack () Int)
(declare-fun TopOfStack@0 () Int)
(declare-fun second_newVal () Int)
(declare-fun Stack () T@lmap)
(declare-fun second_l_in () T@lmap)
(declare-fun inline$AtomicTransferToStack$0$r@1 () Bool)
(declare-fun inline$AtomicLoad$0$v@1 () Int)
(declare-fun first_i () Int)
(declare-fun inline$AtomicTransferToStack$0$l_out@1 () T@lmap)
(declare-fun Stack@0 () T@lmap)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicLoad_AtomicTransferToStack)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((inline$AtomicTransferToStack$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (exists ((Civl_partition_Node (Array Int Int)) ) (!  (and (= ((_ map =>) (dom inline$AtomicTransferToStack$0$l_out@2) ((_ map (= (Int Int) Bool)) Civl_partition_Node ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom Stack@1) ((_ map (= (Int Int) Bool)) Civl_partition_Node ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |37|
)) (or (and (and (and (and (and (= second_oldVal TopOfStack) (= TopOfStack@0 second_newVal)) (= inline$AtomicTransferToStack$0$l_out@2 EmptyLmap)) (= Stack@1 (Add Stack second_newVal (select (q@map second_l_in) second_newVal)))) (= inline$AtomicTransferToStack$0$r@1 true)) (= inline$AtomicLoad$0$v@1 (select (q@map Stack@1) first_i))) (and (and (and (and (and (not (= second_oldVal TopOfStack@0)) (= inline$AtomicTransferToStack$0$l_out@2 second_l_in)) (= inline$AtomicTransferToStack$0$r@1 false)) (= inline$AtomicLoad$0$v@1 (select (q@map Stack@1) first_i))) (= Stack@1 Stack)) (= TopOfStack@0 TopOfStack)))))))
(let ((inline$AtomicTransferToStack$0$anon3_Else_correct  (=> (and (not (= second_oldVal TopOfStack)) (= inline$AtomicTransferToStack$0$r@1 false)) (=> (and (and (= inline$AtomicTransferToStack$0$l_out@2 second_l_in) (= TopOfStack@0 TopOfStack)) (and (= Stack@1 Stack) (= (ControlFlow 0 4) 2))) inline$AtomicTransferToStack$0$Return_correct))))
(let ((inline$AtomicTransferToStack$0$anon3_Then_correct  (=> (and (and (and (= second_oldVal TopOfStack) (= inline$AtomicTransferToStack$0$l_out@1 EmptyLmap)) (and (= Stack@0 (Add Stack second_newVal (select (q@map second_l_in) second_newVal))) (= inline$AtomicTransferToStack$0$r@1 true))) (and (and (= inline$AtomicTransferToStack$0$l_out@2 inline$AtomicTransferToStack$0$l_out@1) (= TopOfStack@0 second_newVal)) (and (= Stack@1 Stack@0) (= (ControlFlow 0 3) 2)))) inline$AtomicTransferToStack$0$Return_correct)))
(let ((inline$AtomicLoad$0$anon0_correct  (=> (= inline$AtomicLoad$0$v@1 (select (q@map Stack) first_i)) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicTransferToStack$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicTransferToStack$0$anon3_Else_correct)))))
(let ((inline$AtomicLoad$0$Entry_correct  (=> (and (and (exists ((Civl_partition_Node@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom second_l_in) ((_ map (= (Int Int) Bool)) Civl_partition_Node@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom Stack) ((_ map (= (Int Int) Bool)) Civl_partition_Node@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |36|
)) (select (dom Stack) first_i)) (and (select (dom second_l_in) second_newVal) (= (ControlFlow 0 6) 5))) inline$AtomicLoad$0$anon0_correct)))
inline$AtomicLoad$0$Entry_correct))))))
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
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun TopOfStack@3 () Int)
(declare-fun TopOfStack@1 () Int)
(declare-fun Stack@4 () T@lmap)
(declare-fun Stack@1 () T@lmap)
(declare-fun x@@25 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun TopOfStack@2 () Int)
(declare-fun Stack@3 () T@lmap)
(declare-fun Stack@7 () T@lmap)
(declare-fun TopOfStack@6 () Int)
(declare-fun null () Int)
(declare-fun TopOfStack@4 () Int)
(declare-fun Stack@5 () T@lmap)
(declare-fun inline$AtomicTransferToStack$0$l_out@3 () T@lmap)
(declare-fun x_lmap () T@lmap)
(declare-fun Civl_global_old_Stack@1 () T@lmap)
(declare-fun Civl_global_old_TopOfStack@1 () Int)
(declare-fun Stack@6 () T@lmap)
(declare-fun TopOfStack@5 () Int)
(declare-fun inline$AtomicTransferToStack$0$r@2 () Bool)
(declare-fun inline$AtomicReadTopOfStack$0$v@1 () Int)
(declare-fun inline$AtomicStore$0$l_out@2 () T@lmap)
(declare-fun inline$AtomicTransferToStack$0$l_out@2 () T@lmap)
(declare-fun Stack@2 () T@lmap)
(declare-fun t_lmap@0 () T@lmap)
(declare-fun Civl_linear_Node_available@2 () (Array Int Bool))
(declare-fun Stack@0 () T@lmap)
(declare-fun TopOfStack@0 () Int)
(declare-fun Civl_linear_Node_available@0 () (Array Int Bool))
(declare-fun Stack () T@lmap)
(declare-fun TopOfStack () Int)
(set-info :boogie-vc-id Civl_push_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (or false (or (and (= TopOfStack@3 TopOfStack@1) (= Stack@4 Stack@1)) (and (= Stack@4 (Add Stack@1 x@@25 TopOfStack@1)) (= TopOfStack@3 x@@25))))) (=> (or false (or (and (= TopOfStack@3 TopOfStack@1) (= Stack@4 Stack@1)) (and (= Stack@4 (Add Stack@1 x@@25 TopOfStack@1)) (= TopOfStack@3 x@@25)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (=> false (and (= TopOfStack@3 TopOfStack@1) (= Stack@4 Stack@1)))) (=> (=> false (and (= TopOfStack@3 TopOfStack@1) (= Stack@4 Stack@1))) (=> (and (and (= Civl_pc@0  (=> (and (= TopOfStack@3 TopOfStack@1) (= Stack@4 Stack@1)) false)) (= Civl_ok@0  (or (and (= Stack@4 (Add Stack@1 x@@25 TopOfStack@1)) (= TopOfStack@3 x@@25)) false))) (= (ControlFlow 0 25) (- 0 24))) Civl_ok@0)))))))
(let ((anon3_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= TopOfStack@3 TopOfStack@1) (=> (and (= Stack@4 Stack@1) (= (ControlFlow 0 38) 25)) Civl_ReturnChecker_correct))))
(let ((anon4_Then_@2_Civl_ReturnChecker_correct  (=> (= TopOfStack@3 TopOfStack@2) (=> (and (= Stack@4 Stack@3) (= (ControlFlow 0 28) 25)) Civl_ReturnChecker_correct))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (select (BetweenSet (q@map Stack@7) TopOfStack@6 null) TopOfStack@6)) (=> (select (BetweenSet (q@map Stack@7) TopOfStack@6 null) TopOfStack@6) (=> (= (ControlFlow 0 20) (- 0 19)) (Subset (BetweenSet (q@map Stack@7) TopOfStack@6 null) (Union (Singleton null) (dom Stack@7))))))))
(let ((Civl_UnifiedReturn_correct  (=> (= TopOfStack@6 TopOfStack@4) (=> (and (= Stack@7 Stack@5) (= (ControlFlow 0 22) 20)) GeneratedUnifiedExit_correct))))
(let ((anon3_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (= TopOfStack@4 TopOfStack@1) (=> (and (= Stack@5 Stack@1) (= (ControlFlow 0 39) 22)) Civl_UnifiedReturn_correct))))
(let ((anon4_Then_@2_Civl_UnifiedReturn_correct  (=> (= TopOfStack@4 TopOfStack@2) (=> (and (= Stack@5 Stack@3) (= (ControlFlow 0 23) 22)) Civl_UnifiedReturn_correct))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (= TopOfStack@2 TopOfStack@1) (= Stack@3 Stack@1))) (=> (and (= TopOfStack@2 TopOfStack@1) (= Stack@3 Stack@1)) (=> (= (ControlFlow 0 15) (- 0 14)) (=> false true))))))
(let ((anon4_Else_@2_anon3_LoopHead_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (= (dom inline$AtomicTransferToStack$0$l_out@3) (dom x_lmap))) (=> (= (dom inline$AtomicTransferToStack$0$l_out@3) (dom x_lmap)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (select (BetweenSet (q@map Stack@3) TopOfStack@2 null) TopOfStack@2)) (=> (select (BetweenSet (q@map Stack@3) TopOfStack@2 null) TopOfStack@2) (=> (= (ControlFlow 0 10) (- 0 9)) (Subset (BetweenSet (q@map Stack@3) TopOfStack@2 null) (Union (Singleton null) (dom Stack@3))))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct  (=> (and (select (BetweenSet (q@map Civl_global_old_Stack@1) Civl_global_old_TopOfStack@1 null) Civl_global_old_TopOfStack@1) (Subset (BetweenSet (q@map Civl_global_old_Stack@1) Civl_global_old_TopOfStack@1 null) (Union (Singleton null) (dom Civl_global_old_Stack@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (select (BetweenSet (q@map Stack@6) TopOfStack@5 null) TopOfStack@5)) (=> (select (BetweenSet (q@map Stack@6) TopOfStack@5 null) TopOfStack@5) (=> (= (ControlFlow 0 5) (- 0 4)) (Subset (BetweenSet (q@map Stack@6) TopOfStack@5 null) (Union (Singleton null) (dom Stack@6)))))))))
(let ((anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1)) (and (= Stack@6 Stack@1) (= TopOfStack@5 TopOfStack@1))) (and (=> (= (ControlFlow 0 40) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 40) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon3_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 41) 38) anon3_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 41) 39) anon3_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 41) 40) anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Then_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1)) (and (= Stack@6 Stack@3) (= TopOfStack@5 TopOfStack@2))) (and (=> (= (ControlFlow 0 18) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 18) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Then_correct  (=> inline$AtomicTransferToStack$0$r@2 (and (and (=> (= (ControlFlow 0 29) 28) anon4_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 29) 23) anon4_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 29) 18) anon4_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Else_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1)) (and (= Stack@6 Stack@3) (= TopOfStack@5 TopOfStack@2))) (and (=> (= (ControlFlow 0 13) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 13) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_Else_correct  (=> (not inline$AtomicTransferToStack$0$r@2) (and (and (=> (= (ControlFlow 0 17) 10) anon4_Else_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 17) 13) anon4_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 17) 15) Civl_UnchangedChecker_correct)))))
(let ((inline$AtomicTransferToStack$0$anon3_Else_correct  (=> (not (= inline$AtomicReadTopOfStack$0$v@1 TopOfStack@1)) (=> (and (and (= TopOfStack@2 TopOfStack@1) (= Stack@3 Stack@1)) (and (= inline$AtomicTransferToStack$0$l_out@3 inline$AtomicStore$0$l_out@2) (= inline$AtomicTransferToStack$0$r@2 false))) (and (=> (= (ControlFlow 0 31) 29) anon4_Then_correct) (=> (= (ControlFlow 0 31) 17) anon4_Else_correct))))))
(let ((inline$AtomicTransferToStack$0$anon3_Then_correct  (=> (= inline$AtomicReadTopOfStack$0$v@1 TopOfStack@1) (=> (and (= inline$AtomicTransferToStack$0$l_out@2 EmptyLmap) (= Stack@2 (Add Stack@1 x@@25 (select (q@map inline$AtomicStore$0$l_out@2) x@@25)))) (=> (and (and (= TopOfStack@2 x@@25) (= Stack@3 Stack@2)) (and (= inline$AtomicTransferToStack$0$l_out@3 inline$AtomicTransferToStack$0$l_out@2) (= inline$AtomicTransferToStack$0$r@2 true))) (and (=> (= (ControlFlow 0 30) 29) anon4_Then_correct) (=> (= (ControlFlow 0 30) 17) anon4_Else_correct)))))))
(let ((anon3_LoopBody$2_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (select (dom inline$AtomicStore$0$l_out@2) x@@25)) (=> (select (dom inline$AtomicStore$0$l_out@2) x@@25) (and (=> (= (ControlFlow 0 32) 30) inline$AtomicTransferToStack$0$anon3_Then_correct) (=> (= (ControlFlow 0 32) 31) inline$AtomicTransferToStack$0$anon3_Else_correct))))))
(let ((inline$AtomicStore$0$anon0_correct  (=> (and (= inline$AtomicStore$0$l_out@2 (Add t_lmap@0 x@@25 inline$AtomicReadTopOfStack$0$v@1)) (= (ControlFlow 0 34) 32)) anon3_LoopBody$2_correct)))
(let ((anon3_LoopBody$1_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (select (dom t_lmap@0) x@@25)) (=> (select (dom t_lmap@0) x@@25) (=> (= (ControlFlow 0 35) 34) inline$AtomicStore$0$anon0_correct)))))
(let ((inline$AtomicReadTopOfStack$0$anon0_correct  (=> (and (or (= inline$AtomicReadTopOfStack$0$v@1 null) (select (dom Stack@1) inline$AtomicReadTopOfStack$0$v@1)) (= (ControlFlow 0 37) 35)) anon3_LoopBody$1_correct)))
(let ((anon3_LoopHead_correct  (=> (and (exists ((Civl_partition_Node (Array Int Int)) ) (!  (and (= ((_ map =>) (dom t_lmap@0) ((_ map (= (Int Int) Bool)) Civl_partition_Node ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom Stack@1) ((_ map (= (Int Int) Bool)) Civl_partition_Node ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |41|
)) (= (dom t_lmap@0) (dom x_lmap))) (=> (and (and (or false (select (dom x_lmap) x@@25)) (select (BetweenSet (q@map Stack@1) TopOfStack@1 null) TopOfStack@1)) (and (Subset (BetweenSet (q@map Stack@1) TopOfStack@1 null) (Union (Singleton null) (dom Stack@1))) (= Civl_linear_Node_available@2 ((_ map or) (dom Stack@1) ((_ map or) (dom t_lmap@0) ((as const (Array Int Bool)) false)))))) (and (=> (= (ControlFlow 0 42) 41) anon3_LoopDone_correct) (=> (= (ControlFlow 0 42) 37) inline$AtomicReadTopOfStack$0$anon0_correct))))))
(let ((anon0_@2_anon3_LoopHead_correct  (and (=> (= (ControlFlow 0 43) (- 0 46)) (= (dom x_lmap) (dom x_lmap))) (=> (= (dom x_lmap) (dom x_lmap)) (and (=> (= (ControlFlow 0 43) (- 0 45)) (select (BetweenSet (q@map Stack@0) TopOfStack@0 null) TopOfStack@0)) (=> (select (BetweenSet (q@map Stack@0) TopOfStack@0 null) TopOfStack@0) (and (=> (= (ControlFlow 0 43) (- 0 44)) (Subset (BetweenSet (q@map Stack@0) TopOfStack@0 null) (Union (Singleton null) (dom Stack@0)))) (=> (Subset (BetweenSet (q@map Stack@0) TopOfStack@0 null) (Union (Singleton null) (dom Stack@0))) (=> (= (ControlFlow 0 43) 42) anon3_LoopHead_correct)))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= Civl_global_old_TopOfStack@1 TopOfStack@0) (= Civl_global_old_Stack@1 Stack@0)) (and (= Stack@6 Stack@0) (= TopOfStack@5 TopOfStack@0))) (and (=> (= (ControlFlow 0 8) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= TopOfStack@0 TopOfStack@0) (= Stack@0 Stack@0)) (and (= Stack@0 (Add Stack@0 x@@25 TopOfStack@0)) (= TopOfStack@0 x@@25))))) (=> (or false (or (and (= TopOfStack@0 TopOfStack@0) (= Stack@0 Stack@0)) (and (= Stack@0 (Add Stack@0 x@@25 TopOfStack@0)) (= TopOfStack@0 x@@25)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= TopOfStack@0 TopOfStack@0) (= Stack@0 Stack@0))))))))
(let ((anon0_correct  (=> (and (exists ((Civl_partition_Node@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (dom x_lmap) ((_ map (= (Int Int) Bool)) Civl_partition_Node@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (dom Stack@0) ((_ map (= (Int Int) Bool)) Civl_partition_Node@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |40|
)) (select (dom x_lmap) x@@25)) (=> (and (and (select (BetweenSet (q@map Stack@0) TopOfStack@0 null) TopOfStack@0) (Subset (BetweenSet (q@map Stack@0) TopOfStack@0 null) (Union (Singleton null) (dom Stack@0)))) (and (select (dom x_lmap) x@@25) (= Civl_linear_Node_available@0 ((_ map or) (dom Stack@0) ((_ map or) (dom x_lmap) ((as const (Array Int Bool)) false)))))) (and (and (=> (= (ControlFlow 0 47) 43) anon0_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 47) 8) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 47) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (select (dom x_lmap) x@@25) (select (BetweenSet (q@map Stack) TopOfStack null) TopOfStack)) (and (Subset (BetweenSet (q@map Stack) TopOfStack null) (Union (Singleton null) (dom Stack))) (= (ControlFlow 0 48) 47))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
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
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun TopOfStack@4 () Int)
(declare-fun TopOfStack@1 () Int)
(declare-fun Stack@1 () T@lmap)
(declare-fun null () Int)
(declare-fun t@1 () Int)
(declare-fun t@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun TopOfStack@2 () Int)
(declare-fun inline$AtomicReadTopOfStack$0$v@1 () Int)
(declare-fun Stack@3 () T@lmap)
(declare-fun TopOfStack@7 () Int)
(declare-fun TopOfStack@5 () Int)
(declare-fun TopOfStack@3 () Int)
(declare-fun Civl_global_old_Stack@1 () T@lmap)
(declare-fun Civl_global_old_TopOfStack@1 () Int)
(declare-fun Stack@2 () T@lmap)
(declare-fun TopOfStack@6 () Int)
(declare-fun inline$AtomicTransferFromStack$0$r@2 () Bool)
(declare-fun inline$AtomicLoad$0$v@2 () Int)
(declare-fun Civl_linear_Node_available@2 () (Array Int Bool))
(declare-fun Stack@0 () T@lmap)
(declare-fun TopOfStack@0 () Int)
(declare-fun t () Int)
(declare-fun Civl_linear_Node_available@0 () (Array Int Bool))
(declare-fun Stack () T@lmap)
(declare-fun TopOfStack () Int)
(set-info :boogie-vc-id Civl_pop_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 51) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) (or false (or (and (= TopOfStack@4 TopOfStack@1) (= Stack@1 Stack@1)) (and (and (and (not (= TopOfStack@1 null)) (= t@1 TopOfStack@1)) (= TopOfStack@4 (select (q@map Stack@1) t@1))) (= Stack@1 Stack@1))))) (=> (or false (or (and (= TopOfStack@4 TopOfStack@1) (= Stack@1 Stack@1)) (and (and (and (not (= TopOfStack@1 null)) (= t@1 TopOfStack@1)) (= TopOfStack@4 (select (q@map Stack@1) t@1))) (= Stack@1 Stack@1)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> false (and (and (= TopOfStack@4 TopOfStack@1) (= Stack@1 Stack@1)) (= t@1 t@0)))) (=> (=> false (and (and (= TopOfStack@4 TopOfStack@1) (= Stack@1 Stack@1)) (= t@1 t@0))) (=> (and (and (= Civl_pc@0  (=> (and (= TopOfStack@4 TopOfStack@1) (= Stack@1 Stack@1)) false)) (= Civl_ok@0  (or (and (and (and (not (= TopOfStack@1 null)) (= t@1 TopOfStack@1)) (= TopOfStack@4 (select (q@map Stack@1) t@1))) (= Stack@1 Stack@1)) (and (= t@1 t@0) false)))) (= (ControlFlow 0 31) (- 0 30))) Civl_ok@0)))))))
(let ((anon4_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= TopOfStack@4 TopOfStack@1) (=> (and (= t@1 t@0) (= (ControlFlow 0 42) 31)) Civl_ReturnChecker_correct))))
(let ((anon6_Then_@2_Civl_ReturnChecker_correct  (=> (= TopOfStack@4 TopOfStack@2) (=> (and (= t@1 inline$AtomicReadTopOfStack$0$v@1) (= (ControlFlow 0 34) 31)) Civl_ReturnChecker_correct))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (select (BetweenSet (q@map Stack@3) TopOfStack@7 null) TopOfStack@7)) (=> (select (BetweenSet (q@map Stack@3) TopOfStack@7 null) TopOfStack@7) (=> (= (ControlFlow 0 26) (- 0 25)) (Subset (BetweenSet (q@map Stack@3) TopOfStack@7 null) (Union (Singleton null) (dom Stack@3))))))))
(let ((Civl_UnifiedReturn_correct  (=> (= Stack@3 Stack@1) (=> (and (= TopOfStack@7 TopOfStack@5) (= (ControlFlow 0 28) 26)) GeneratedUnifiedExit_correct))))
(let ((anon4_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (and (= TopOfStack@5 TopOfStack@1) (= (ControlFlow 0 43) 28)) Civl_UnifiedReturn_correct)))
(let ((anon6_Then_@2_Civl_UnifiedReturn_correct  (=> (and (= TopOfStack@5 TopOfStack@2) (= (ControlFlow 0 29) 28)) Civl_UnifiedReturn_correct)))
(let ((anon6_Else_@2_anon4_LoopHead_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (select (BetweenSet (q@map Stack@1) TopOfStack@2 null) TopOfStack@2)) (=> (select (BetweenSet (q@map Stack@1) TopOfStack@2 null) TopOfStack@2) (=> (= (ControlFlow 0 19) (- 0 18)) (Subset (BetweenSet (q@map Stack@1) TopOfStack@2 null) (Union (Singleton null) (dom Stack@1))))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (= TopOfStack@3 TopOfStack@1) (= Stack@1 Stack@1))) (=> (and (= TopOfStack@3 TopOfStack@1) (= Stack@1 Stack@1)) (=> (= (ControlFlow 0 14) (- 0 13)) (=> false (= inline$AtomicReadTopOfStack$0$v@1 t@0)))))))
(let ((anon6_Else_@2_Civl_UnchangedChecker_correct  (=> (and (= TopOfStack@3 TopOfStack@2) (= (ControlFlow 0 22) 14)) Civl_UnchangedChecker_correct)))
(let ((anon5_Else_@2_Civl_UnchangedChecker_correct  (=> (and (= TopOfStack@3 TopOfStack@1) (= (ControlFlow 0 16) 14)) Civl_UnchangedChecker_correct)))
(let ((anon5_Else_@2_anon4_LoopHead_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (select (BetweenSet (q@map Stack@1) TopOfStack@1 null) TopOfStack@1)) (=> (select (BetweenSet (q@map Stack@1) TopOfStack@1 null) TopOfStack@1) (=> (= (ControlFlow 0 10) (- 0 9)) (Subset (BetweenSet (q@map Stack@1) TopOfStack@1 null) (Union (Singleton null) (dom Stack@1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct  (=> (and (select (BetweenSet (q@map Civl_global_old_Stack@1) Civl_global_old_TopOfStack@1 null) Civl_global_old_TopOfStack@1) (Subset (BetweenSet (q@map Civl_global_old_Stack@1) Civl_global_old_TopOfStack@1 null) (Union (Singleton null) (dom Civl_global_old_Stack@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (select (BetweenSet (q@map Stack@2) TopOfStack@6 null) TopOfStack@6)) (=> (select (BetweenSet (q@map Stack@2) TopOfStack@6 null) TopOfStack@6) (=> (= (ControlFlow 0 5) (- 0 4)) (Subset (BetweenSet (q@map Stack@2) TopOfStack@6 null) (Union (Singleton null) (dom Stack@2)))))))))
(let ((anon4_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= TopOfStack@6 TopOfStack@1) (= Stack@2 Stack@1)) (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1))) (and (=> (= (ControlFlow 0 44) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 44) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon4_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 45) 42) anon4_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 45) 43) anon4_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 45) 44) anon4_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Then_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= TopOfStack@6 TopOfStack@2) (= Stack@2 Stack@1)) (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1))) (and (=> (= (ControlFlow 0 24) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 24) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon6_Then_correct  (=> inline$AtomicTransferFromStack$0$r@2 (and (and (=> (= (ControlFlow 0 35) 34) anon6_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 35) 29) anon6_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 35) 24) anon6_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Else_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= TopOfStack@6 TopOfStack@2) (= Stack@2 Stack@1)) (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1))) (and (=> (= (ControlFlow 0 21) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 21) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon6_Else_correct  (=> (not inline$AtomicTransferFromStack$0$r@2) (and (and (=> (= (ControlFlow 0 23) 19) anon6_Else_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 23) 21) anon6_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 22) anon6_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$AtomicTransferFromStack$0$anon3_Else_correct  (=> (not (= inline$AtomicReadTopOfStack$0$v@1 TopOfStack@1)) (=> (and (= TopOfStack@2 TopOfStack@1) (= inline$AtomicTransferFromStack$0$r@2 false)) (and (=> (= (ControlFlow 0 37) 35) anon6_Then_correct) (=> (= (ControlFlow 0 37) 23) anon6_Else_correct))))))
(let ((inline$AtomicTransferFromStack$0$anon3_Then_correct  (=> (= inline$AtomicReadTopOfStack$0$v@1 TopOfStack@1) (=> (and (= TopOfStack@2 inline$AtomicLoad$0$v@2) (= inline$AtomicTransferFromStack$0$r@2 true)) (and (=> (= (ControlFlow 0 36) 35) anon6_Then_correct) (=> (= (ControlFlow 0 36) 23) anon6_Else_correct))))))
(let ((inline$AtomicLoad$0$anon0_correct  (=> (= inline$AtomicLoad$0$v@2 (select (q@map Stack@1) inline$AtomicReadTopOfStack$0$v@1)) (and (=> (= (ControlFlow 0 38) 36) inline$AtomicTransferFromStack$0$anon3_Then_correct) (=> (= (ControlFlow 0 38) 37) inline$AtomicTransferFromStack$0$anon3_Else_correct)))))
(let ((anon5_Then_correct  (=> (not (= inline$AtomicReadTopOfStack$0$v@1 null)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (select (dom Stack@1) inline$AtomicReadTopOfStack$0$v@1)) (=> (select (dom Stack@1) inline$AtomicReadTopOfStack$0$v@1) (=> (= (ControlFlow 0 39) 38) inline$AtomicLoad$0$anon0_correct))))))
(let ((anon5_Else_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= TopOfStack@6 TopOfStack@1) (= Stack@2 Stack@1)) (and (= Civl_global_old_TopOfStack@1 TopOfStack@1) (= Civl_global_old_Stack@1 Stack@1))) (and (=> (= (ControlFlow 0 12) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 12) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((anon5_Else_correct  (=> (= inline$AtomicReadTopOfStack$0$v@1 null) (and (and (=> (= (ControlFlow 0 17) 10) anon5_Else_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 17) 12) anon5_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 17) 16) anon5_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$AtomicReadTopOfStack$0$anon0_correct  (=> (or (= inline$AtomicReadTopOfStack$0$v@1 null) (select (dom Stack@1) inline$AtomicReadTopOfStack$0$v@1)) (and (=> (= (ControlFlow 0 41) 39) anon5_Then_correct) (=> (= (ControlFlow 0 41) 17) anon5_Else_correct)))))
(let ((anon4_LoopHead_correct  (=> (and (and (or false true) (select (BetweenSet (q@map Stack@1) TopOfStack@1 null) TopOfStack@1)) (and (Subset (BetweenSet (q@map Stack@1) TopOfStack@1 null) (Union (Singleton null) (dom Stack@1))) (= Civl_linear_Node_available@2 ((_ map or) (dom Stack@1) ((as const (Array Int Bool)) false))))) (and (=> (= (ControlFlow 0 46) 45) anon4_LoopDone_correct) (=> (= (ControlFlow 0 46) 41) inline$AtomicReadTopOfStack$0$anon0_correct)))))
(let ((anon0_@2_anon4_LoopHead_correct  (and (=> (= (ControlFlow 0 47) (- 0 49)) (select (BetweenSet (q@map Stack@0) TopOfStack@0 null) TopOfStack@0)) (=> (select (BetweenSet (q@map Stack@0) TopOfStack@0 null) TopOfStack@0) (and (=> (= (ControlFlow 0 47) (- 0 48)) (Subset (BetweenSet (q@map Stack@0) TopOfStack@0 null) (Union (Singleton null) (dom Stack@0)))) (=> (Subset (BetweenSet (q@map Stack@0) TopOfStack@0 null) (Union (Singleton null) (dom Stack@0))) (=> (= (ControlFlow 0 47) 46) anon4_LoopHead_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (and (and (= TopOfStack@6 TopOfStack@0) (= Stack@2 Stack@0)) (and (= Civl_global_old_TopOfStack@1 TopOfStack@0) (= Civl_global_old_Stack@1 Stack@0))) (and (=> (= (ControlFlow 0 8) 5) inline$Civl_NoninterferenceChecker_yield_YieldInv$0$L0_correct) (=> (= (ControlFlow 0 8) 7) Civl_NoninterferenceChecker$1_correct)))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= TopOfStack@0 TopOfStack@0) (= Stack@0 Stack@0)) (and (and (and (not (= TopOfStack@0 null)) (= t TopOfStack@0)) (= TopOfStack@0 (select (q@map Stack@0) t))) (= Stack@0 Stack@0))))) (=> (or false (or (and (= TopOfStack@0 TopOfStack@0) (= Stack@0 Stack@0)) (and (and (and (not (= TopOfStack@0 null)) (= t TopOfStack@0)) (= TopOfStack@0 (select (q@map Stack@0) t))) (= Stack@0 Stack@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (and (= TopOfStack@0 TopOfStack@0) (= Stack@0 Stack@0)) (= t t))))))))
(let ((anon0_correct  (=> (select (BetweenSet (q@map Stack@0) TopOfStack@0 null) TopOfStack@0) (=> (and (Subset (BetweenSet (q@map Stack@0) TopOfStack@0 null) (Union (Singleton null) (dom Stack@0))) (= Civl_linear_Node_available@0 ((_ map or) (dom Stack@0) ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 50) 47) anon0_@2_anon4_LoopHead_correct) (=> (= (ControlFlow 0 50) 8) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 50) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (select (BetweenSet (q@map Stack) TopOfStack null) TopOfStack) (=> (and (Subset (BetweenSet (q@map Stack) TopOfStack null) (Union (Singleton null) (dom Stack))) (= (ControlFlow 0 51) 50)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
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
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicStore$0$l_out@1 () T@lmap)
(declare-fun l_in () T@lmap)
(declare-fun i@@1 () Int)
(declare-fun v@@1 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicStore)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicStore$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom inline$AtomicStore$0$l_out@1) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom l_in) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicStore$0$anon0_correct  (=> (and (= inline$AtomicStore$0$l_out@1 (Add l_in i@@1 v@@1)) (= (ControlFlow 0 3) 2)) inline$AtomicStore$0$Return_correct)))
(let ((inline$AtomicStore$0$Entry_correct  (=> (and (select (dom l_in) i@@1) (= (ControlFlow 0 4) 3)) inline$AtomicStore$0$anon0_correct)))
inline$AtomicStore$0$Entry_correct))))
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
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicTransferToStack$0$l_out@2 () T@lmap)
(declare-fun Stack@1 () T@lmap)
(declare-fun l_in () T@lmap)
(declare-fun Stack () T@lmap)
(declare-fun oldVal () Int)
(declare-fun TopOfStack () Int)
(declare-fun inline$AtomicTransferToStack$0$l_out@1 () T@lmap)
(declare-fun Stack@0 () T@lmap)
(declare-fun newVal () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicTransferToStack)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicTransferToStack$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom inline$AtomicTransferToStack$0$l_out@2) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom Stack@1) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom l_in) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom Stack) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicTransferToStack$0$anon3_Else_correct  (=> (and (and (not (= oldVal TopOfStack)) (= inline$AtomicTransferToStack$0$l_out@2 l_in)) (and (= Stack@1 Stack) (= (ControlFlow 0 4) 2))) inline$AtomicTransferToStack$0$Return_correct)))
(let ((inline$AtomicTransferToStack$0$anon3_Then_correct  (=> (and (= oldVal TopOfStack) (= inline$AtomicTransferToStack$0$l_out@1 EmptyLmap)) (=> (and (and (= Stack@0 (Add Stack newVal (select (q@map l_in) newVal))) (= inline$AtomicTransferToStack$0$l_out@2 inline$AtomicTransferToStack$0$l_out@1)) (and (= Stack@1 Stack@0) (= (ControlFlow 0 3) 2))) inline$AtomicTransferToStack$0$Return_correct))))
(let ((inline$AtomicTransferToStack$0$Entry_correct  (=> (select (dom l_in) newVal) (and (=> (= (ControlFlow 0 5) 3) inline$AtomicTransferToStack$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$AtomicTransferToStack$0$anon3_Else_correct)))))
inline$AtomicTransferToStack$0$Entry_correct)))))
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
(declare-fun BetweenSet ((Array Int Int) Int Int) (Array Int Bool))
(declare-fun Avoiding ((Array Int Int) Int Int Int) Bool)
(declare-fun Equal ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Between ((Array Int Int) Int Int Int) Bool)
(declare-fun Singleton (Int) (Array Int Bool))
(declare-sort T@lmap 0)
(declare-fun dom (T@lmap) (Array Int Bool))
(declare-fun Remove (T@lmap Int) T@lmap)
(declare-fun q@map (T@lmap) (Array Int Int))
(declare-fun EmptyLmap () T@lmap)
(declare-fun Subset ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun Union ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun Add (T@lmap Int Int) T@lmap)
(declare-fun Identity () (Array Int Int))
(declare-fun Empty () (Array Int Bool))
(assert (forall ((f (Array Int Int)) (p Int) (q Int) (u Int) (w Int) ) (!  (=> (Avoiding f u w p) (Equal (BetweenSet (store f p q) u w) (BetweenSet f u w)))
 :qid |treiberstackbpl.218:15|
 :skolemid |28|
 :pattern ( (BetweenSet (store f p q) u w))
)))
(assert (forall ((f@@0 (Array Int Int)) (x Int) (y Int) ) (!  (=> (and (= (select f@@0 x) x) (Between f@@0 x y y)) (= x y))
 :qid |treiberstackbpl.187:14|
 :skolemid |17|
 :pattern ( (select f@@0 x) (Between f@@0 x y y))
)))
(assert (forall ((f@@1 (Array Int Int)) (x@@0 Int) (y@@0 Int) (z Int) (w@@0 Int) ) (! (Between f@@1 x@@0 (select f@@1 x@@0) (select f@@1 x@@0))
 :qid |treiberstackbpl.181:14|
 :skolemid |15|
 :pattern ( (Between f@@1 y@@0 z w@@0) (select f@@1 x@@0))
)))
(assert (forall ((f@@2 (Array Int Int)) (x@@1 Int) (y@@1 Int) (z@@0 Int) ) (!  (=> (Between f@@2 x@@1 y@@1 z@@0) (and (Between f@@2 x@@1 y@@1 y@@1) (Between f@@2 y@@1 z@@0 z@@0)))
 :qid |treiberstackbpl.196:14|
 :skolemid |20|
 :pattern ( (Between f@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((x@@2 Int) (y@@2 Int) ) (! (= (select (Singleton y@@2) x@@2) (= x@@2 y@@2))
 :qid |treiberstackbpl.143:14|
 :skolemid |3|
 :pattern ( (select (Singleton y@@2) x@@2))
)))
(assert (forall ((x@@3 T@lmap) (i Int) ) (!  (and (= (dom (Remove x@@3 i)) (store (dom x@@3) i false)) (= (q@map (Remove x@@3 i)) (q@map x@@3)))
 :qid |treiberstackbpl.17:15|
 :skolemid |1|
)))
(assert (= (dom EmptyLmap) ((as const (Array Int Bool)) false)))
(assert (forall ((f@@3 (Array Int Int)) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (! (= (select (BetweenSet f@@3 x@@4 z@@1) y@@3) (Between f@@3 x@@4 y@@3 z@@1))
 :qid |treiberstackbpl.167:14|
 :skolemid |10|
 :pattern ( (select (BetweenSet f@@3 x@@4 z@@1) y@@3))
)))
(assert (forall ((x@@5 Int) (S (Array Int Bool)) (T (Array Int Bool)) ) (!  (=> (and (select S x@@5) (Subset S T)) (select T x@@5))
 :qid |treiberstackbpl.149:14|
 :skolemid |7|
 :pattern ( (select S x@@5) (Subset S T))
 :pattern ( (select T x@@5) (Subset S T))
)))
(assert (forall ((f@@4 (Array Int Int)) (x@@6 Int) (y@@4 Int) (z@@2 Int) (w@@1 Int) ) (!  (=> (and (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2)) (and (Between f@@4 x@@6 y@@4 w@@1) (Between f@@4 x@@6 w@@1 z@@2)))
 :qid |treiberstackbpl.202:14|
 :skolemid |22|
 :pattern ( (Between f@@4 x@@6 y@@4 z@@2) (Between f@@4 y@@4 w@@1 z@@2))
)))
(assert (forall ((f@@5 (Array Int Int)) (x@@7 Int) (y@@5 Int) (z@@3 Int) (w@@2 Int) ) (!  (=> (and (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5)) (and (Between f@@5 x@@7 w@@2 z@@3) (Between f@@5 w@@2 y@@5 z@@3)))
 :qid |treiberstackbpl.205:14|
 :skolemid |23|
 :pattern ( (Between f@@5 x@@7 y@@5 z@@3) (Between f@@5 x@@7 w@@2 y@@5))
)))
(assert (forall ((f@@6 (Array Int Int)) (x@@8 Int) ) (! (Between f@@6 x@@8 x@@8 x@@8)
 :qid |treiberstackbpl.178:14|
 :skolemid |14|
)))
(assert (forall ((f@@7 (Array Int Int)) (x@@9 Int) (z@@4 Int) ) (! (Between f@@7 x@@9 x@@9 x@@9)
 :qid |treiberstackbpl.169:14|
 :skolemid |12|
 :pattern ( (BetweenSet f@@7 x@@9 z@@4))
)))
(assert (forall ((f@@8 (Array Int Int)) (x@@10 Int) (z@@5 Int) ) (! (Between f@@8 z@@5 z@@5 z@@5)
 :qid |treiberstackbpl.170:14|
 :skolemid |13|
 :pattern ( (BetweenSet f@@8 x@@10 z@@5))
)))
(assert (forall ((f@@9 (Array Int Int)) (p@@0 Int) (q@@0 Int) (u@@0 Int) (w@@3 Int) ) (!  (=> (and (and (not (= p@@0 w@@3)) (Avoiding f@@9 u@@0 p@@0 w@@3)) (Avoiding f@@9 q@@0 w@@3 p@@0)) (Equal (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3) (Union (BetweenSet f@@9 u@@0 p@@0) (BetweenSet f@@9 q@@0 w@@3))))
 :qid |treiberstackbpl.219:15|
 :skolemid |29|
 :pattern ( (BetweenSet (store f@@9 p@@0 q@@0) u@@0 w@@3))
)))
(assert (forall ((f@@10 (Array Int Int)) (x@@11 Int) (y@@6 Int) (z@@6 Int) ) (!  (=> (Between f@@10 x@@11 y@@6 z@@6) (select (BetweenSet f@@10 x@@11 z@@6) y@@6))
 :qid |treiberstackbpl.168:14|
 :skolemid |11|
 :pattern ( (Between f@@10 x@@11 y@@6 z@@6) (BetweenSet f@@10 x@@11 z@@6))
)))
(assert (forall ((x@@12 T@lmap) (i@@0 Int) (v Int) ) (!  (and (= (dom (Add x@@12 i@@0 v)) (store (dom x@@12) i@@0 true)) (= (q@map (Add x@@12 i@@0 v)) (store (q@map x@@12) i@@0 v)))
 :qid |treiberstackbpl.14:15|
 :skolemid |0|
)))
(assert (forall ((f@@11 (Array Int Int)) (x@@13 Int) (y@@7 Int) (z@@7 Int) ) (! (= (Avoiding f@@11 x@@13 y@@7 z@@7)  (or (Between f@@11 x@@13 y@@7 z@@7) (and (Between f@@11 x@@13 y@@7 y@@7) (not (Between f@@11 x@@13 z@@7 z@@7)))))
 :qid |treiberstackbpl.212:14|
 :skolemid |25|
 :pattern ( (Avoiding f@@11 x@@13 y@@7 z@@7))
)))
(assert (forall ((x@@14 Int) ) (! (= (select Identity x@@14) x@@14)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |31|
)))
(assert (forall ((f@@12 (Array Int Int)) (x@@15 Int) (y@@8 Int) ) (!  (=> (Between f@@12 x@@15 y@@8 y@@8) (or (= x@@15 y@@8) (Between f@@12 x@@15 (select f@@12 x@@15) y@@8)))
 :qid |treiberstackbpl.184:14|
 :skolemid |16|
 :pattern ( (select f@@12 x@@15) (Between f@@12 x@@15 y@@8 y@@8))
)))
(assert (forall ((S@@0 (Array Int Bool)) (T@@0 (Array Int Bool)) ) (! (= (Equal S@@0 T@@0)  (and (Subset S@@0 T@@0) (Subset T@@0 S@@0)))
 :qid |treiberstackbpl.148:14|
 :skolemid |6|
 :pattern ( (Equal S@@0 T@@0))
)))
(assert (forall ((f@@13 (Array Int Int)) (p@@1 Int) (q@@1 Int) (u@@1 Int) (w@@4 Int) ) (!  (or (or (Avoiding f@@13 u@@1 w@@4 p@@1) (and (and (not (= p@@1 w@@4)) (Avoiding f@@13 u@@1 p@@1 w@@4)) (Avoiding f@@13 q@@1 w@@4 p@@1))) (Equal (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4) Empty))
 :qid |treiberstackbpl.220:15|
 :skolemid |30|
 :pattern ( (BetweenSet (store f@@13 p@@1 q@@1) u@@1 w@@4))
)))
(assert (forall ((f@@14 (Array Int Int)) (x@@16 Int) (y@@9 Int) (z@@8 Int) ) (!  (=> (and (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8)) (or (Between f@@14 x@@16 y@@9 z@@8) (Between f@@14 x@@16 z@@8 y@@9)))
 :qid |treiberstackbpl.193:14|
 :skolemid |19|
 :pattern ( (Between f@@14 x@@16 y@@9 y@@9) (Between f@@14 x@@16 z@@8 z@@8))
)))
(assert (forall ((f@@15 (Array Int Int)) (x@@17 Int) (y@@10 Int) (z@@9 Int) ) (! (= (Between f@@15 x@@17 y@@10 z@@9)  (and (Avoiding f@@15 x@@17 y@@10 z@@9) (Avoiding f@@15 x@@17 z@@9 z@@9)))
 :qid |treiberstackbpl.213:14|
 :skolemid |26|
 :pattern ( (Between f@@15 x@@17 y@@10 z@@9))
)))
(assert (forall ((f@@16 (Array Int Int)) (u@@2 Int) (x@@18 Int) ) (!  (=> (Between f@@16 u@@2 x@@18 x@@18) (Between f@@16 u@@2 u@@2 x@@18))
 :qid |treiberstackbpl.209:14|
 :skolemid |24|
 :pattern ( (Between f@@16 u@@2 x@@18 x@@18))
)))
(assert (forall ((y@@11 Int) ) (! (select (Singleton y@@11) y@@11)
 :qid |treiberstackbpl.144:14|
 :skolemid |4|
 :pattern ( (Singleton y@@11))
)))
(assert (forall ((S@@1 (Array Int Bool)) (T@@1 (Array Int Bool)) ) (!  (or (Subset S@@1 T@@1) (exists ((x@@19 Int) ) (!  (and (select S@@1 x@@19) (not (select T@@1 x@@19)))
 :qid |treiberstackbpl.150:79|
 :skolemid |8|
)))
 :qid |treiberstackbpl.150:14|
 :skolemid |9|
 :pattern ( (Subset S@@1 T@@1))
)))
(assert (forall ((x@@20 Int) ) (!  (not (select Empty x@@20))
 :qid |treiberstackbpl.141:14|
 :skolemid |2|
)))
(assert (forall ((f@@17 (Array Int Int)) (x@@21 Int) (y@@12 Int) (z@@10 Int) ) (!  (=> (and (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10)) (Between f@@17 x@@21 z@@10 z@@10))
 :qid |treiberstackbpl.199:14|
 :skolemid |21|
 :pattern ( (Between f@@17 x@@21 y@@12 y@@12) (Between f@@17 y@@12 z@@10 z@@10))
)))
(assert (forall ((f@@18 (Array Int Int)) (u@@3 Int) (v@@0 Int) (x@@22 Int) (p@@2 Int) (q@@2 Int) ) (! (= (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22)  (or (and (Avoiding f@@18 u@@3 v@@0 p@@2) (Avoiding f@@18 u@@3 v@@0 x@@22)) (and (and (and (Avoiding f@@18 u@@3 p@@2 x@@22) (not (= p@@2 x@@22))) (Avoiding f@@18 q@@2 v@@0 p@@2)) (Avoiding f@@18 q@@2 v@@0 x@@22))))
 :qid |treiberstackbpl.216:14|
 :skolemid |27|
 :pattern ( (Avoiding (store f@@18 p@@2 q@@2) u@@3 v@@0 x@@22))
)))
(assert (forall ((f@@19 (Array Int Int)) (x@@23 Int) (y@@13 Int) ) (!  (=> (Between f@@19 x@@23 y@@13 x@@23) (= x@@23 y@@13))
 :qid |treiberstackbpl.190:14|
 :skolemid |18|
 :pattern ( (Between f@@19 x@@23 y@@13 x@@23))
)))
(assert (forall ((x@@24 Int) (S@@2 (Array Int Bool)) (T@@2 (Array Int Bool)) ) (! (= (select (Union S@@2 T@@2) x@@24)  (or (select S@@2 x@@24) (select T@@2 x@@24)))
 :qid |treiberstackbpl.146:14|
 :skolemid |5|
 :pattern ( (select (Union S@@2 T@@2) x@@24))
 :pattern ( (Union S@@2 T@@2) (select S@@2 x@@24))
 :pattern ( (Union S@@2 T@@2) (select T@@2 x@@24))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Stack@0 () T@lmap)
(declare-fun x_lmap () T@lmap)
(declare-fun Stack () T@lmap)
(declare-fun x@@25 () Int)
(declare-fun TopOfStack () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_push)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_push$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom Stack@0) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (+ (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (dom x_lmap) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (dom Stack) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)))) ((as const (Array Int Bool)) true)))))
(let ((inline$atomic_push$0$anon0_correct  (=> (and (= Stack@0 (Add Stack x@@25 TopOfStack)) (= (ControlFlow 0 3) 2)) inline$atomic_push$0$Return_correct)))
(let ((inline$atomic_push$0$Entry_correct  (=> (and (select (dom x_lmap) x@@25) (= (ControlFlow 0 4) 3)) inline$atomic_push$0$anon0_correct)))
inline$atomic_push$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
