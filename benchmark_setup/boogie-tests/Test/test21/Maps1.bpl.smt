(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun U_2_int (T@U) Int)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun boolType () T@T)
(declare-fun rmodeType () T@T)
(declare-fun stringType () T@T)
(declare-fun regexType () T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun type (T@U) T@T)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun rmode_2_U (RoundingMode) T@U)
(declare-fun U_2_rmode (T@U) RoundingMode)
(declare-fun string_2_U (String) T@U)
(declare-fun U_2_string (T@U) String)
(declare-fun regex_2_U ((RegEx String)) T@U)
(declare-fun U_2_regex (T@U) (RegEx String))
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun d () T@U)
(declare-fun null () T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun f () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun MapType2Select (T@U T@U) T@U)
(declare-fun e () T@U)
(declare-fun MapType2Type (T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U) T@U)
(declare-fun c () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor intType) 0) (= (Ctor realType) 1)) (= (Ctor boolType) 2)) (= (Ctor rmodeType) 3)) (= (Ctor stringType) 4)) (= (Ctor regexType) 5)) (forall ((arg0 Int) ) (! (= (U_2_int (int_2_U arg0)) arg0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0))
))) (forall ((x T@U) ) (!  (=> (= (type x) intType) (= (int_2_U (U_2_int x)) x))
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x))
))) (forall ((arg0@@0 Int) ) (! (= (type (int_2_U arg0@@0)) intType)
 :qid |funType:int_2_U|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@0 T@U) ) (!  (=> (= (type x@@0) realType) (= (real_2_U (U_2_real x@@0)) x@@0))
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@0))
))) (forall ((arg0@@2 Real) ) (! (= (type (real_2_U arg0@@2)) realType)
 :qid |funType:real_2_U|
 :pattern ( (real_2_U arg0@@2))
))) (forall ((arg0@@3 Bool) ) (! (= (U_2_bool (bool_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0@@3))
))) (forall ((x@@1 T@U) ) (!  (=> (= (type x@@1) boolType) (= (bool_2_U (U_2_bool x@@1)) x@@1))
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x@@1))
))) (forall ((arg0@@4 Bool) ) (! (= (type (bool_2_U arg0@@4)) boolType)
 :qid |funType:bool_2_U|
 :pattern ( (bool_2_U arg0@@4))
))) (forall ((arg0@@5 RoundingMode) ) (! (= (U_2_rmode (rmode_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_rmode|
 :pattern ( (rmode_2_U arg0@@5))
))) (forall ((x@@2 T@U) ) (!  (=> (= (type x@@2) rmodeType) (= (rmode_2_U (U_2_rmode x@@2)) x@@2))
 :qid |cast:U_2_rmode|
 :pattern ( (U_2_rmode x@@2))
))) (forall ((arg0@@6 RoundingMode) ) (! (= (type (rmode_2_U arg0@@6)) rmodeType)
 :qid |funType:rmode_2_U|
 :pattern ( (rmode_2_U arg0@@6))
))) (forall ((arg0@@7 String) ) (! (= (U_2_string (string_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_string|
 :pattern ( (string_2_U arg0@@7))
))) (forall ((x@@3 T@U) ) (!  (=> (= (type x@@3) stringType) (= (string_2_U (U_2_string x@@3)) x@@3))
 :qid |cast:U_2_string|
 :pattern ( (U_2_string x@@3))
))) (forall ((arg0@@8 String) ) (! (= (type (string_2_U arg0@@8)) stringType)
 :qid |funType:string_2_U|
 :pattern ( (string_2_U arg0@@8))
))) (forall ((arg0@@9 (RegEx String)) ) (! (= (U_2_regex (regex_2_U arg0@@9)) arg0@@9)
 :qid |typeInv:U_2_regex|
 :pattern ( (regex_2_U arg0@@9))
))) (forall ((x@@4 T@U) ) (!  (=> (= (type x@@4) regexType) (= (regex_2_U (U_2_regex x@@4)) x@@4))
 :qid |cast:U_2_regex|
 :pattern ( (U_2_regex x@@4))
))) (forall ((arg0@@10 (RegEx String)) ) (! (= (type (regex_2_U arg0@@10)) regexType)
 :qid |funType:regex_2_U|
 :pattern ( (regex_2_U arg0@@10))
))))
(assert (forall ((x@@5 T@U) ) (! (UOrdering2 x@@5 x@@5)
 :qid |bg:subtype-refl|
 :no-pattern (U_2_int x@@5)
 :no-pattern (U_2_bool x@@5)
)))
(assert (forall ((x@@6 T@U) (y T@U) (z T@U) ) (! (let ((alpha (type x@@6)))
 (=> (and (and (= (type y) alpha) (= (type z) alpha)) (and (UOrdering2 x@@6 y) (UOrdering2 y z))) (UOrdering2 x@@6 z)))
 :qid |bg:subtype-trans|
 :pattern ( (UOrdering2 x@@6 y) (UOrdering2 y z))
)))
(assert (forall ((x@@7 T@U) (y@@0 T@U) ) (! (let ((alpha@@0 (type x@@7)))
 (=> (= (type y@@0) alpha@@0) (=> (and (UOrdering2 x@@7 y@@0) (UOrdering2 y@@0 x@@7)) (= x@@7 y@@0))))
 :qid |bg:subtype-antisymm|
 :pattern ( (UOrdering2 x@@7 y@@0) (UOrdering2 y@@0 x@@7))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@11 arg1)) 6)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@13 arg1@@1))
))) (forall ((arg0@@14 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@14))))
(= (type (MapType0Select arg0@@14 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@14 arg1@@2))
))) (forall ((arg0@@15 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@15 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@15 arg1@@3 arg2))
))) (forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (= (Ctor refType) 7)) (= (type d) (MapType0Type refType boolType))) (= (type null) refType)))
(assert  (not (U_2_bool (MapType0Select d null))))
(assert  (and (and (and (and (and (forall ((arg0@@16 T@U) (arg1@@4 T@U) ) (! (let ((a (type arg1@@4)))
(= (type (MapType1Select arg0@@16 arg1@@4)) a))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@16 arg1@@4))
)) (= (Ctor MapType1Type) 8)) (forall ((arg0@@17 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (= (type (MapType1Store arg0@@17 arg1@@5 arg2@@0)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@17 arg1@@5 arg2@@0))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((a@@0 (type x0@@2)))
 (=> (= (type val@@2) a@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type f) MapType1Type)))
(assert (forall ((x@@8 T@U) ) (! (= (MapType1Select f x@@8) x@@8)
 :qid |Maps1bpl.17:18|
 :skolemid |1|
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@18 T@T) ) (! (= (Ctor (MapType2Type arg0@@18)) 9)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@19 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@19)) arg0@@19)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@19))
))) (forall ((arg0@@20 T@U) (arg1@@6 T@U) ) (! (let ((aVar0@@0 (MapType2TypeInv0 (type arg0@@20))))
(= (type (MapType2Select arg0@@20 arg1@@6)) aVar0@@0))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@20 arg1@@6))
))) (forall ((arg0@@21 T@U) (arg1@@7 T@U) (arg2@@1 T@U) ) (! (let ((aVar0@@1 (type arg2@@1)))
(= (type (MapType2Store arg0@@21 arg1@@7 arg2@@1)) (MapType2Type aVar0@@1)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@21 arg1@@7 arg2@@1))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (val@@5 T@U) ) (! (let ((aVar0@@2 (MapType2TypeInv0 (type m@@5))))
 (=> (= (type val@@5) aVar0@@2) (= (MapType2Select (MapType2Store m@@5 x0@@5 val@@5) x0@@5) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (y0@@3 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 val@@6) y0@@3) (MapType2Select m@@6 y0@@3)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (y0@@4 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@7 x0@@7 val@@7) y0@@4) (MapType2Select m@@7 y0@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type e) (MapType2Type boolType))))
(assert (forall ((x@@9 T@U) ) (! (U_2_bool (MapType2Select e x@@9))
 :qid |Maps1bpl.15:18|
 :skolemid |0|
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
)))
(assert (= (type c) (MapType0Type intType boolType)))
(assert  (=> (U_2_bool (MapType0Select c (int_2_U 17))) (U_2_bool (MapType0Select c (int_2_U 19)))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@0 () T@U)
(declare-fun x@1 () T@U)
(assert  (and (= (type x@0) (MapType2Type boolType)) (= (type x@1) (MapType2Type boolType))))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (not (U_2_bool (MapType0Select c (int_2_U 19)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (U_2_bool (MapType0Select c (int_2_U 17))))) (=> (not (U_2_bool (MapType0Select c (int_2_U 17)))) (=> (and (= x@0 (MapType2Store e (bool_2_U true) (bool_2_U false))) (= x@1 (MapType2Store x@0 (int_2_U 17) (bool_2_U true)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (not (U_2_bool (MapType2Select x@1 (bool_2_U true))))) (=> (not (U_2_bool (MapType2Select x@1 (bool_2_U true)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (forall ((y@@1 T@U) ) (! (U_2_bool (MapType2Select x@1 y@@1))
 :qid |Maps1bpl.31:22|
 :skolemid |2|
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))) (=> (not (forall ((y@@2 T@U) ) (! (U_2_bool (MapType2Select x@1 y@@2))
 :qid |Maps1bpl.31:22|
 :skolemid |2|
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (not (= x@1 e))) (=> (not (= x@1 e)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (MapType1Select f x@1) x@1)) (=> (= (MapType1Select f x@1) x@1) (=> (= (ControlFlow 0 2) (- 0 1)) (> (U_2_int (MapType1Select f (int_2_U 17))) 17))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
