(set-logic UFLIRABV)
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
(declare-fun ListTypeInv0 (T@T) T@T)
(declare-fun ListType (T@T) T@T)
(declare-fun emptyList (T@T) T@U)
(declare-fun append (T@U T@U) T@U)
(declare-fun U_2_bv17 (T@U) (_ BitVec 17))
(declare-fun MapType0Select (T@T T@U) T@U)
(declare-fun bv17Type () T@T)
(declare-fun p () T@U)
(declare-fun U_2_bv0 (T@U) (_ BitVec 0))
(declare-fun bv0Type () T@T)
(declare-fun c () (_ BitVec 17))
(declare-fun MapType0Type () T@T)
(declare-fun MapType0Store (T@U T@U) T@U)
(declare-fun bv17_2_U ((_ BitVec 17)) T@U)
(declare-fun bv0_2_U ((_ BitVec 0)) T@U)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun MapType1Type () T@T)
(declare-fun q () T@U)
(declare-fun MapType1Select (T@T T@U T@U) T@U)
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
(assert  (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (ListType arg0@@11)) 6)
 :qid |ctor:ListType|
)) (forall ((arg0@@12 T@T) ) (! (= (ListTypeInv0 (ListType arg0@@12)) arg0@@12)
 :qid |typeInv:ListTypeInv0|
 :pattern ( (ListType arg0@@12))
))) (forall ((a T@T) ) (! (= (type (emptyList a)) (ListType a))
 :qid |funType:emptyList|
 :pattern ( (emptyList a))
))) (forall ((arg0@@13 T@U) (arg1 T@U) ) (! (let ((a@@0 (ListTypeInv0 (type arg0@@13))))
(= (type (append arg0@@13 arg1)) (ListType a@@0)))
 :qid |funType:append|
 :pattern ( (append arg0@@13 arg1))
))))
(assert (forall ((l T@U) ) (! (let ((a@@1 (ListTypeInv0 (type l))))
 (=> (and (= (type l) (ListType a@@1)) (= l (emptyList a@@1))) (= (append l (emptyList a@@1)) (emptyList a@@1))))
 :qid |PolyPolyPoly2bpl.25:18|
 :skolemid |2|
 :no-pattern (type l)
 :no-pattern (U_2_int l)
 :no-pattern (U_2_bool l)
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((a@@2 T@T) (arg0@@14 T@U) ) (! (= (type (MapType0Select a@@2 arg0@@14)) a@@2)
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select a@@2 arg0@@14))
)) (= (Ctor MapType0Type) 7)) (forall ((arg0@@15 T@U) (arg1@@0 T@U) ) (! (= (type (MapType0Store arg0@@15 arg1@@0)) MapType0Type)
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@15 arg1@@0))
))) (forall ((m T@U) (val T@U) ) (! (let ((a@@3 (type val)))
 (=> (= (type val) a@@3) (= (MapType0Select a@@3 (MapType0Store m val)) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((val@@0 T@U) (m@@0 T@U) (a@@4 T@T) ) (!  (or (= a@@4 (type val@@0)) (= (MapType0Select a@@4 (MapType0Store m@@0 val@@0)) (MapType0Select a@@4 m@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
))) (= (Ctor bv17Type) 8)) (= (type p) MapType0Type)) (= (Ctor bv0Type) 9)) (forall ((arg0@@16 (_ BitVec 17)) ) (! (= (U_2_bv17 (bv17_2_U arg0@@16)) arg0@@16)
 :qid |typeInv:U_2_bv17|
 :pattern ( (bv17_2_U arg0@@16))
))) (forall ((x@@8 T@U) ) (!  (=> (= (type x@@8) bv17Type) (= (bv17_2_U (U_2_bv17 x@@8)) x@@8))
 :qid |cast:U_2_bv17|
 :pattern ( (U_2_bv17 x@@8))
))) (forall ((arg0@@17 (_ BitVec 17)) ) (! (= (type (bv17_2_U arg0@@17)) bv17Type)
 :qid |funType:bv17_2_U|
 :pattern ( (bv17_2_U arg0@@17))
))) (forall ((arg0@@18 (_ BitVec 0)) ) (! (= (U_2_bv0 (bv0_2_U arg0@@18)) arg0@@18)
 :qid |typeInv:U_2_bv0|
 :pattern ( (bv0_2_U arg0@@18))
))) (forall ((x@@9 T@U) ) (!  (=> (= (type x@@9) bv0Type) (= (bv0_2_U (U_2_bv0 x@@9)) x@@9))
 :qid |cast:U_2_bv0|
 :pattern ( (U_2_bv0 x@@9))
))) (forall ((arg0@@19 (_ BitVec 0)) ) (! (= (type (bv0_2_U arg0@@19)) bv0Type)
 :qid |funType:bv0_2_U|
 :pattern ( (bv0_2_U arg0@@19))
))))
(assert (= (concat (U_2_bv17 (MapType0Select bv17Type p)) (U_2_bv0 (MapType0Select bv0Type p))) c))
(assert (= (U_2_bv17 (MapType0Select bv17Type p)) c))
(assert (forall ((l@@0 T@U) ) (! (let ((a@@5 (ListTypeInv0 (type l@@0))))
 (=> (= (type l@@0) (ListType a@@5)) (= (append (emptyList a@@5) l@@0) l@@0)))
 :qid |PolyPolyPoly2bpl.22:18|
 :skolemid |0|
 :no-pattern (type l@@0)
 :no-pattern (U_2_int l@@0)
 :no-pattern (U_2_bool l@@0)
)))
(assert (forall ((l@@1 T@U) ) (! (let ((a@@6 (ListTypeInv0 (type l@@1))))
 (=> (= (type l@@1) (ListType a@@6)) (= (append l@@1 (emptyList a@@6)) l@@1)))
 :qid |PolyPolyPoly2bpl.23:18|
 :skolemid |1|
 :no-pattern (type l@@1)
 :no-pattern (U_2_int l@@1)
 :no-pattern (U_2_bool l@@1)
)))
(assert  (and (and (and (and (and (forall ((b T@T) (arg0@@20 T@U) (arg1@@1 T@U) ) (! (= (type (MapType1Select b arg0@@20 arg1@@1)) b)
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select b arg0@@20 arg1@@1))
)) (= (Ctor MapType1Type) 10)) (forall ((arg0@@21 T@U) (arg1@@2 T@U) (arg2 T@U) ) (! (= (type (MapType1Store arg0@@21 arg1@@2 arg2)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@2 arg2))
))) (forall ((m@@1 T@U) (x0 T@U) (val@@1 T@U) ) (! (let ((b@@0 (type val@@1)))
 (=> (= (type val@@1) b@@0) (= (MapType1Select b@@0 (MapType1Store m@@1 x0 val@@1) x0) val@@1)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@2 T@U) (m@@2 T@U) (x0@@0 T@U) (y0 T@U) (b@@1 T@T) ) (!  (or (= x0@@0 y0) (= (MapType1Select b@@1 (MapType1Store m@@2 x0@@0 val@@2) y0) (MapType1Select b@@1 m@@2 y0)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@3 T@U) (m@@3 T@U) (x0@@1 T@U) (y0@@0 T@U) (b@@2 T@T) ) (!  (or (= b@@2 (type val@@3)) (= (MapType1Select b@@2 (MapType1Store m@@3 x0@@1 val@@3) y0@@0) (MapType1Select b@@2 m@@3 y0@@0)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type q) MapType1Type)))
(assert (= (MapType1Store (MapType0Select MapType1Type p) (int_2_U 13) (bool_2_U false)) q))
(assert (= (U_2_int (MapType0Select intType p)) (U_2_int (MapType0Select intType p))))
(assert (= (append (emptyList intType) (emptyList intType)) (emptyList intType)))
(assert (= (MapType1Store (MapType0Select MapType1Type p) (int_2_U 13) (bool_2_U false)) (MapType0Select MapType1Type p)))
(assert (= (concat (concat (U_2_bv0 (MapType0Select bv0Type p)) (U_2_bv0 (MapType0Select bv0Type p))) c) (U_2_bv17 (MapType0Select bv17Type p))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
))
; Valid
