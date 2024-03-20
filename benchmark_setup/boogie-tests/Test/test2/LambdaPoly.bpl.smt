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
(declare-fun |lambda#0| (T@T T@U T@U) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun T () T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun Cracker () T@T)
(declare-fun |lambda#3| (T@T T@U T@U) T@U)
(declare-fun |lambda#4| (T@T T@U T@U) T@U)
(declare-fun V () T@T)
(declare-fun |lambda#6| (T@T T@U T@U) T@U)
(declare-fun W () T@T)
(declare-fun |lambda#8| (T@T T@U T@U) T@U)
(declare-fun T@@2 () T@T)
(declare-fun |lambda#9| (T@T T@U T@U) T@U)
(declare-fun U () T@T)
(declare-fun diff (T@U T@U) T@U)
(declare-fun |lambda#1| (T@T T@U T@U) T@U)
(declare-fun T@@5 () T@T)
(declare-fun q@union (T@U T@U) T@U)
(declare-fun MapType2Select (T@U T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun MapType2Type (T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@11 arg1)) 6)
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
)))) (forall ((T@@0 T@T) (arg0@@16 T@U) (arg1@@4 T@U) ) (! (= (type (|lambda#0| T@@0 arg0@@16 arg1@@4)) (MapType0Type T boolType))
 :qid |funType:lambda#0|
 :pattern ( (|lambda#0| T@@0 arg0@@16 arg1@@4))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (x@@8 T@U) ) (! (let ((T@@1 (type x@@8)))
 (=> (and (= (type |l#0|) (MapType0Type T@@1 boolType)) (= (type |l#1|) (MapType0Type T@@1 boolType))) (= (U_2_bool (MapType0Select (|lambda#0| T@@1 |l#0| |l#1|) x@@8))  (or (U_2_bool (MapType0Select |l#0| x@@8)) (U_2_bool (MapType0Select |l#1| x@@8))))))
 :qid |LambdaPolybpl.6:18|
 :skolemid |6|
 :pattern ( (let ((T@@1 (type x@@8)))
(MapType0Select (|lambda#0| T@@1 |l#0| |l#1|) x@@8)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@17 T@T) (arg1@@5 T@T) ) (! (= (Ctor (MapType1Type arg0@@17 arg1@@5)) 7)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@18 T@T) (arg1@@6 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@18 arg1@@6)) arg0@@18)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@18 arg1@@6))
))) (forall ((arg0@@19 T@T) (arg1@@7 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@19 arg1@@7)) arg1@@7)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@19 arg1@@7))
))) (forall ((arg0@@20 T@U) (arg1@@8 T@U) (arg2@@0 T@U) ) (! (let ((aVar1@@2 (MapType1TypeInv1 (type arg0@@20))))
(= (type (MapType1Select arg0@@20 arg1@@8 arg2@@0)) aVar1@@2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@20 arg1@@8 arg2@@0))
))) (forall ((arg0@@21 T@U) (arg1@@9 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar1@@3 (type arg3)))
(let ((aVar0@@0 (type arg2@@1)))
(= (type (MapType1Store arg0@@21 arg1@@9 arg2@@1 arg3)) (MapType1Type aVar0@@0 aVar1@@3))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@9 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar1@@4 (MapType1TypeInv1 (type m@@2))))
 (=> (= (type val@@2) aVar1@@4) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@0 T@U) (y0@@1 T@U) (y1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 x1@@0 val@@3) y0@@1 y1) (MapType1Select m@@3 y0@@1 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@1 T@U) (y0@@2 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select (MapType1Store m@@4 x0@@4 x1@@1 val@@4) y0@@2 y1@@0) (MapType1Select m@@4 y0@@2 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@2 T@U) (y0@@3 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@5 x0@@5 x1@@2 val@@5) y0@@3 y1@@1) (MapType1Select m@@5 y0@@3 y1@@1)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (forall ((Cracker@@0 T@T) (arg0@@22 T@U) (arg1@@10 T@U) ) (! (= (type (|lambda#2| Cracker@@0 arg0@@22 arg1@@10)) (MapType1Type Cracker boolType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| Cracker@@0 arg0@@22 arg1@@10))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (b T@U) (m@@6 T@U) ) (! (let ((Cracker@@1 (type |l#0@@0|)))
 (=> (and (= (type |l#1@@0|) Cracker@@1) (= (type m@@6) Cracker@@1)) (= (U_2_bool (MapType1Select (|lambda#2| Cracker@@1 |l#0@@0| |l#1@@0|) b m@@6))  (and (= b |l#0@@0|) (= m@@6 |l#1@@0|)))))
 :qid |LambdaPolybpl.38:20|
 :skolemid |8|
 :pattern ( (let ((Cracker@@1 (type |l#0@@0|)))
(MapType1Select (|lambda#2| Cracker@@1 |l#0@@0| |l#1@@0|) b m@@6)))
)))
(assert (forall ((Cracker@@2 T@T) (arg0@@23 T@U) (arg1@@11 T@U) ) (! (= (type (|lambda#3| Cracker@@2 arg0@@23 arg1@@11)) (MapType1Type Cracker boolType))
 :qid |funType:lambda#3|
 :pattern ( (|lambda#3| Cracker@@2 arg0@@23 arg1@@11))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (b@@0 T@U) (m@@7 T@U) ) (! (let ((Cracker@@3 (type |l#0@@1|)))
 (=> (and (= (type |l#1@@1|) Cracker@@3) (= (type m@@7) Cracker@@3)) (= (U_2_bool (MapType1Select (|lambda#3| Cracker@@3 |l#0@@1| |l#1@@1|) b@@0 m@@7))  (and (= b@@0 |l#0@@1|) (= m@@7 |l#1@@1|)))))
 :qid |LambdaPolybpl.39:20|
 :skolemid |9|
 :pattern ( (let ((Cracker@@3 (type |l#0@@1|)))
(MapType1Select (|lambda#3| Cracker@@3 |l#0@@1| |l#1@@1|) b@@0 m@@7)))
)))
(assert (forall ((V@@0 T@T) (arg0@@24 T@U) (arg1@@12 T@U) ) (! (= (type (|lambda#4| V@@0 arg0@@24 arg1@@12)) (MapType1Type V boolType))
 :qid |funType:lambda#4|
 :pattern ( (|lambda#4| V@@0 arg0@@24 arg1@@12))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (b@@1 T@U) (s T@U) ) (! (let ((V@@1 (type |l#1@@2|)))
 (=> (and (= (type |l#0@@2|) Cracker) (= (type s) V@@1)) (= (U_2_bool (MapType1Select (|lambda#4| V@@1 |l#0@@2| |l#1@@2|) b@@1 s))  (and (= b@@1 |l#0@@2|) (= s |l#1@@2|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |10|
 :pattern ( (let ((V@@1 (type |l#1@@2|)))
(MapType1Select (|lambda#4| V@@1 |l#0@@2| |l#1@@2|) b@@1 s)))
)))
(assert (forall ((W@@0 T@T) (arg0@@25 T@U) (arg1@@13 T@U) ) (! (= (type (|lambda#6| W@@0 arg0@@25 arg1@@13)) (MapType1Type W boolType))
 :qid |funType:lambda#6|
 :pattern ( (|lambda#6| W@@0 arg0@@25 arg1@@13))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| T@U) (b@@2 T@U) (s@@0 T@U) ) (! (let ((W@@1 (type |l#1@@3|)))
 (=> (and (= (type |l#0@@3|) Cracker) (= (type s@@0) W@@1)) (= (U_2_bool (MapType1Select (|lambda#6| W@@1 |l#0@@3| |l#1@@3|) b@@2 s@@0))  (and (= b@@2 |l#0@@3|) (= s@@0 |l#1@@3|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |12|
 :pattern ( (let ((W@@1 (type |l#1@@3|)))
(MapType1Select (|lambda#6| W@@1 |l#0@@3| |l#1@@3|) b@@2 s@@0)))
)))
(assert (forall ((T@@3 T@T) (arg0@@26 T@U) (arg1@@14 T@U) ) (! (= (type (|lambda#8| T@@3 arg0@@26 arg1@@14)) (MapType1Type T@@2 boolType))
 :qid |funType:lambda#8|
 :pattern ( (|lambda#8| T@@3 arg0@@26 arg1@@14))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@4| T@U) (b@@3 T@U) (s@@1 T@U) ) (! (let ((T@@4 (type |l#1@@4|)))
 (=> (and (= (type |l#0@@4|) Cracker) (= (type s@@1) T@@4)) (= (U_2_bool (MapType1Select (|lambda#8| T@@4 |l#0@@4| |l#1@@4|) b@@3 s@@1))  (and (= b@@3 |l#0@@4|) (= s@@1 |l#1@@4|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |14|
 :pattern ( (let ((T@@4 (type |l#1@@4|)))
(MapType1Select (|lambda#8| T@@4 |l#0@@4| |l#1@@4|) b@@3 s@@1)))
)))
(assert (forall ((U@@0 T@T) (arg0@@27 T@U) (arg1@@15 T@U) ) (! (= (type (|lambda#9| U@@0 arg0@@27 arg1@@15)) (MapType1Type U boolType))
 :qid |funType:lambda#9|
 :pattern ( (|lambda#9| U@@0 arg0@@27 arg1@@15))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@5| T@U) (b@@4 T@U) (s@@2 T@U) ) (! (let ((U@@1 (type |l#1@@5|)))
 (=> (and (= (type |l#0@@5|) Cracker) (= (type s@@2) U@@1)) (= (U_2_bool (MapType1Select (|lambda#9| U@@1 |l#0@@5| |l#1@@5|) b@@4 s@@2))  (and (= b@@4 |l#0@@5|) (= s@@2 |l#1@@5|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |15|
 :pattern ( (let ((U@@1 (type |l#1@@5|)))
(MapType1Select (|lambda#9| U@@1 |l#0@@5| |l#1@@5|) b@@4 s@@2)))
)))
(assert  (and (forall ((arg0@@28 T@U) (arg1@@16 T@U) ) (! (let ((T@@6 (MapType0TypeInv0 (type arg0@@28))))
(= (type (diff arg0@@28 arg1@@16)) (MapType0Type T@@6 boolType)))
 :qid |funType:diff|
 :pattern ( (diff arg0@@28 arg1@@16))
)) (forall ((T@@7 T@T) (arg0@@29 T@U) (arg1@@17 T@U) ) (! (= (type (|lambda#1| T@@7 arg0@@29 arg1@@17)) (MapType0Type T@@5 boolType))
 :qid |funType:lambda#1|
 :pattern ( (|lambda#1| T@@7 arg0@@29 arg1@@17))
))))
(assert (forall ((a T@U) (b@@5 T@U) ) (! (let ((T@@8 (MapType0TypeInv0 (type a))))
 (=> (and (= (type a) (MapType0Type T@@8 boolType)) (= (type b@@5) (MapType0Type T@@8 boolType))) (= (diff a b@@5) (|lambda#1| T@@8 a b@@5))))
 :qid |LambdaPolybpl.8:18|
 :skolemid |1|
 :pattern ( (diff a b@@5))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@6| T@U) (x@@9 T@U) ) (! (let ((T@@9 (type x@@9)))
 (=> (and (= (type |l#0@@6|) (MapType0Type T@@9 boolType)) (= (type |l#1@@6|) (MapType0Type T@@9 boolType))) (= (U_2_bool (MapType0Select (|lambda#1| T@@9 |l#0@@6| |l#1@@6|) x@@9))  (and (U_2_bool (MapType0Select |l#0@@6| x@@9)) (not (U_2_bool (MapType0Select |l#1@@6| x@@9)))))))
 :qid |LambdaPolybpl.8:18|
 :skolemid |7|
 :pattern ( (let ((T@@9 (type x@@9)))
(MapType0Select (|lambda#1| T@@9 |l#0@@6| |l#1@@6|) x@@9)))
)))
(assert (forall ((arg0@@30 T@U) (arg1@@18 T@U) ) (! (let ((T@@10 (MapType0TypeInv0 (type arg0@@30))))
(= (type (q@union arg0@@30 arg1@@18)) (MapType0Type T@@10 boolType)))
 :qid |funType:union|
 :pattern ( (q@union arg0@@30 arg1@@18))
)))
(assert (forall ((a@@0 T@U) (b@@6 T@U) ) (! (let ((T@@11 (MapType0TypeInv0 (type a@@0))))
 (=> (and (= (type a@@0) (MapType0Type T@@11 boolType)) (= (type b@@6) (MapType0Type T@@11 boolType))) (= (q@union a@@0 b@@6) (|lambda#0| T@@11 a@@0 b@@6))))
 :qid |LambdaPolybpl.6:18|
 :skolemid |0|
 :no-pattern (type a@@0)
 :no-pattern (type b@@6)
 :no-pattern (U_2_int a@@0)
 :no-pattern (U_2_bool a@@0)
 :no-pattern (U_2_int b@@6)
 :no-pattern (U_2_bool b@@6)
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@31 T@T) ) (! (= (Ctor (MapType2Type arg0@@31)) 8)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@32 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@32)) arg0@@32)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@32))
))) (forall ((arg0@@33 T@U) (arg1@@19 T@U) ) (! (let ((aVar0@@1 (MapType2TypeInv0 (type arg0@@33))))
(= (type (MapType2Select arg0@@33 arg1@@19)) aVar0@@1))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@33 arg1@@19))
))) (forall ((arg0@@34 T@U) (arg1@@20 T@U) (arg2@@2 T@U) ) (! (let ((aVar0@@2 (type arg2@@2)))
(= (type (MapType2Store arg0@@34 arg1@@20 arg2@@2)) (MapType2Type aVar0@@2)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@34 arg1@@20 arg2@@2))
))) (forall ((m@@8 T@U) (x0@@6 T@U) (val@@6 T@U) ) (! (let ((aVar0@@3 (MapType2TypeInv0 (type m@@8))))
 (=> (= (type val@@6) aVar0@@3) (= (MapType2Select (MapType2Store m@@8 x0@@6 val@@6) x0@@6) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (forall ((val@@7 T@U) (m@@9 T@U) (x0@@7 T@U) (y0@@4 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@9 x0@@7 val@@7) y0@@4) (MapType2Select m@@9 y0@@4)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@10 T@U) (x0@@8 T@U) (y0@@5 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@10 x0@@8 val@@8) y0@@5) (MapType2Select m@@10 y0@@5)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@35 T@U) ) (! (= (type (|lambda#5| arg0@@35)) (MapType2Type boolType))
 :qid |funType:lambda#5|
 :pattern ( (|lambda#5| arg0@@35))
))))
(assert (forall ((|l#0@@7| T@U) (v T@U) ) (! (let ((V@@2 (type v)))
 (=> (= (type |l#0@@7|) Cracker) (= (U_2_bool (MapType2Select (|lambda#5| |l#0@@7|) v)) (U_2_bool (MapType1Select (|lambda#4| V@@2 |l#0@@7| v) v v)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |11|
 :pattern ( (MapType2Select (|lambda#5| |l#0@@7|) v))
)))
(assert (forall ((arg0@@36 T@U) ) (! (= (type (|lambda#7| arg0@@36)) (MapType2Type boolType))
 :qid |funType:lambda#7|
 :pattern ( (|lambda#7| arg0@@36))
)))
(assert (forall ((|l#0@@8| T@U) (w T@U) ) (! (let ((W@@2 (type w)))
 (=> (= (type |l#0@@8|) Cracker) (= (U_2_bool (MapType2Select (|lambda#7| |l#0@@8|) w)) (U_2_bool (MapType1Select (|lambda#6| W@@2 |l#0@@8| w) w w)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |13|
 :pattern ( (MapType2Select (|lambda#7| |l#0@@8|) w))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@@1 () T@U)
(declare-fun b@@7 () T@U)
(assert  (and (= (type a@@1) (MapType0Type intType boolType)) (= (type b@@7) (MapType0Type intType boolType))))
(set-info :boogie-vc-id a)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (U_2_bool (MapType0Select a@@1 (int_2_U 1))) (U_2_bool (MapType0Select b@@7 (int_2_U 2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (U_2_bool (MapType0Select (q@union a@@1 b@@7) (int_2_U 1)))) (=> (U_2_bool (MapType0Select (q@union a@@1 b@@7) (int_2_U 1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType0Select (q@union a@@1 b@@7) (int_2_U 2)))) (=> (U_2_bool (MapType0Select (q@union a@@1 b@@7) (int_2_U 2))) (=> (not (U_2_bool (MapType0Select b@@7 (int_2_U 1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType0Select (diff a@@1 b@@7) (int_2_U 1)))) (=> (U_2_bool (MapType0Select (diff a@@1 b@@7) (int_2_U 1))) (=> (= (ControlFlow 0 2) (- 0 1)) (not (U_2_bool (MapType0Select (diff a@@1 b@@7) (int_2_U 2)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
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
(declare-fun |lambda#0| (T@T T@U T@U) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun T () T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun Cracker () T@T)
(declare-fun |lambda#3| (T@T T@U T@U) T@U)
(declare-fun |lambda#4| (T@T T@U T@U) T@U)
(declare-fun V () T@T)
(declare-fun |lambda#6| (T@T T@U T@U) T@U)
(declare-fun W () T@T)
(declare-fun |lambda#8| (T@T T@U T@U) T@U)
(declare-fun T@@2 () T@T)
(declare-fun |lambda#9| (T@T T@U T@U) T@U)
(declare-fun U () T@T)
(declare-fun diff (T@U T@U) T@U)
(declare-fun |lambda#1| (T@T T@U T@U) T@U)
(declare-fun T@@5 () T@T)
(declare-fun q@union (T@U T@U) T@U)
(declare-fun MapType2Select (T@U T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun MapType2Type (T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@11 arg1)) 6)
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
)))) (forall ((T@@0 T@T) (arg0@@16 T@U) (arg1@@4 T@U) ) (! (= (type (|lambda#0| T@@0 arg0@@16 arg1@@4)) (MapType0Type T boolType))
 :qid |funType:lambda#0|
 :pattern ( (|lambda#0| T@@0 arg0@@16 arg1@@4))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (x@@8 T@U) ) (! (let ((T@@1 (type x@@8)))
 (=> (and (= (type |l#0|) (MapType0Type T@@1 boolType)) (= (type |l#1|) (MapType0Type T@@1 boolType))) (= (U_2_bool (MapType0Select (|lambda#0| T@@1 |l#0| |l#1|) x@@8))  (or (U_2_bool (MapType0Select |l#0| x@@8)) (U_2_bool (MapType0Select |l#1| x@@8))))))
 :qid |LambdaPolybpl.6:18|
 :skolemid |6|
 :pattern ( (let ((T@@1 (type x@@8)))
(MapType0Select (|lambda#0| T@@1 |l#0| |l#1|) x@@8)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@17 T@T) (arg1@@5 T@T) ) (! (= (Ctor (MapType1Type arg0@@17 arg1@@5)) 7)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@18 T@T) (arg1@@6 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@18 arg1@@6)) arg0@@18)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@18 arg1@@6))
))) (forall ((arg0@@19 T@T) (arg1@@7 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@19 arg1@@7)) arg1@@7)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@19 arg1@@7))
))) (forall ((arg0@@20 T@U) (arg1@@8 T@U) (arg2@@0 T@U) ) (! (let ((aVar1@@2 (MapType1TypeInv1 (type arg0@@20))))
(= (type (MapType1Select arg0@@20 arg1@@8 arg2@@0)) aVar1@@2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@20 arg1@@8 arg2@@0))
))) (forall ((arg0@@21 T@U) (arg1@@9 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar1@@3 (type arg3)))
(let ((aVar0@@0 (type arg2@@1)))
(= (type (MapType1Store arg0@@21 arg1@@9 arg2@@1 arg3)) (MapType1Type aVar0@@0 aVar1@@3))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@9 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar1@@4 (MapType1TypeInv1 (type m@@2))))
 (=> (= (type val@@2) aVar1@@4) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@0 T@U) (y0@@1 T@U) (y1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 x1@@0 val@@3) y0@@1 y1) (MapType1Select m@@3 y0@@1 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@1 T@U) (y0@@2 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select (MapType1Store m@@4 x0@@4 x1@@1 val@@4) y0@@2 y1@@0) (MapType1Select m@@4 y0@@2 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@2 T@U) (y0@@3 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@5 x0@@5 x1@@2 val@@5) y0@@3 y1@@1) (MapType1Select m@@5 y0@@3 y1@@1)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (forall ((Cracker@@0 T@T) (arg0@@22 T@U) (arg1@@10 T@U) ) (! (= (type (|lambda#2| Cracker@@0 arg0@@22 arg1@@10)) (MapType1Type Cracker boolType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| Cracker@@0 arg0@@22 arg1@@10))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (b T@U) (m@@6 T@U) ) (! (let ((Cracker@@1 (type |l#0@@0|)))
 (=> (and (= (type |l#1@@0|) Cracker@@1) (= (type m@@6) Cracker@@1)) (= (U_2_bool (MapType1Select (|lambda#2| Cracker@@1 |l#0@@0| |l#1@@0|) b m@@6))  (and (= b |l#0@@0|) (= m@@6 |l#1@@0|)))))
 :qid |LambdaPolybpl.38:20|
 :skolemid |8|
 :pattern ( (let ((Cracker@@1 (type |l#0@@0|)))
(MapType1Select (|lambda#2| Cracker@@1 |l#0@@0| |l#1@@0|) b m@@6)))
)))
(assert (forall ((Cracker@@2 T@T) (arg0@@23 T@U) (arg1@@11 T@U) ) (! (= (type (|lambda#3| Cracker@@2 arg0@@23 arg1@@11)) (MapType1Type Cracker boolType))
 :qid |funType:lambda#3|
 :pattern ( (|lambda#3| Cracker@@2 arg0@@23 arg1@@11))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (b@@0 T@U) (m@@7 T@U) ) (! (let ((Cracker@@3 (type |l#0@@1|)))
 (=> (and (= (type |l#1@@1|) Cracker@@3) (= (type m@@7) Cracker@@3)) (= (U_2_bool (MapType1Select (|lambda#3| Cracker@@3 |l#0@@1| |l#1@@1|) b@@0 m@@7))  (and (= b@@0 |l#0@@1|) (= m@@7 |l#1@@1|)))))
 :qid |LambdaPolybpl.39:20|
 :skolemid |9|
 :pattern ( (let ((Cracker@@3 (type |l#0@@1|)))
(MapType1Select (|lambda#3| Cracker@@3 |l#0@@1| |l#1@@1|) b@@0 m@@7)))
)))
(assert (forall ((V@@0 T@T) (arg0@@24 T@U) (arg1@@12 T@U) ) (! (= (type (|lambda#4| V@@0 arg0@@24 arg1@@12)) (MapType1Type V boolType))
 :qid |funType:lambda#4|
 :pattern ( (|lambda#4| V@@0 arg0@@24 arg1@@12))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (b@@1 T@U) (s T@U) ) (! (let ((V@@1 (type |l#1@@2|)))
 (=> (and (= (type |l#0@@2|) Cracker) (= (type s) V@@1)) (= (U_2_bool (MapType1Select (|lambda#4| V@@1 |l#0@@2| |l#1@@2|) b@@1 s))  (and (= b@@1 |l#0@@2|) (= s |l#1@@2|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |10|
 :pattern ( (let ((V@@1 (type |l#1@@2|)))
(MapType1Select (|lambda#4| V@@1 |l#0@@2| |l#1@@2|) b@@1 s)))
)))
(assert (forall ((W@@0 T@T) (arg0@@25 T@U) (arg1@@13 T@U) ) (! (= (type (|lambda#6| W@@0 arg0@@25 arg1@@13)) (MapType1Type W boolType))
 :qid |funType:lambda#6|
 :pattern ( (|lambda#6| W@@0 arg0@@25 arg1@@13))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| T@U) (b@@2 T@U) (s@@0 T@U) ) (! (let ((W@@1 (type |l#1@@3|)))
 (=> (and (= (type |l#0@@3|) Cracker) (= (type s@@0) W@@1)) (= (U_2_bool (MapType1Select (|lambda#6| W@@1 |l#0@@3| |l#1@@3|) b@@2 s@@0))  (and (= b@@2 |l#0@@3|) (= s@@0 |l#1@@3|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |12|
 :pattern ( (let ((W@@1 (type |l#1@@3|)))
(MapType1Select (|lambda#6| W@@1 |l#0@@3| |l#1@@3|) b@@2 s@@0)))
)))
(assert (forall ((T@@3 T@T) (arg0@@26 T@U) (arg1@@14 T@U) ) (! (= (type (|lambda#8| T@@3 arg0@@26 arg1@@14)) (MapType1Type T@@2 boolType))
 :qid |funType:lambda#8|
 :pattern ( (|lambda#8| T@@3 arg0@@26 arg1@@14))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@4| T@U) (b@@3 T@U) (s@@1 T@U) ) (! (let ((T@@4 (type |l#1@@4|)))
 (=> (and (= (type |l#0@@4|) Cracker) (= (type s@@1) T@@4)) (= (U_2_bool (MapType1Select (|lambda#8| T@@4 |l#0@@4| |l#1@@4|) b@@3 s@@1))  (and (= b@@3 |l#0@@4|) (= s@@1 |l#1@@4|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |14|
 :pattern ( (let ((T@@4 (type |l#1@@4|)))
(MapType1Select (|lambda#8| T@@4 |l#0@@4| |l#1@@4|) b@@3 s@@1)))
)))
(assert (forall ((U@@0 T@T) (arg0@@27 T@U) (arg1@@15 T@U) ) (! (= (type (|lambda#9| U@@0 arg0@@27 arg1@@15)) (MapType1Type U boolType))
 :qid |funType:lambda#9|
 :pattern ( (|lambda#9| U@@0 arg0@@27 arg1@@15))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@5| T@U) (b@@4 T@U) (s@@2 T@U) ) (! (let ((U@@1 (type |l#1@@5|)))
 (=> (and (= (type |l#0@@5|) Cracker) (= (type s@@2) U@@1)) (= (U_2_bool (MapType1Select (|lambda#9| U@@1 |l#0@@5| |l#1@@5|) b@@4 s@@2))  (and (= b@@4 |l#0@@5|) (= s@@2 |l#1@@5|)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |15|
 :pattern ( (let ((U@@1 (type |l#1@@5|)))
(MapType1Select (|lambda#9| U@@1 |l#0@@5| |l#1@@5|) b@@4 s@@2)))
)))
(assert  (and (forall ((arg0@@28 T@U) (arg1@@16 T@U) ) (! (let ((T@@6 (MapType0TypeInv0 (type arg0@@28))))
(= (type (diff arg0@@28 arg1@@16)) (MapType0Type T@@6 boolType)))
 :qid |funType:diff|
 :pattern ( (diff arg0@@28 arg1@@16))
)) (forall ((T@@7 T@T) (arg0@@29 T@U) (arg1@@17 T@U) ) (! (= (type (|lambda#1| T@@7 arg0@@29 arg1@@17)) (MapType0Type T@@5 boolType))
 :qid |funType:lambda#1|
 :pattern ( (|lambda#1| T@@7 arg0@@29 arg1@@17))
))))
(assert (forall ((a T@U) (b@@5 T@U) ) (! (let ((T@@8 (MapType0TypeInv0 (type a))))
 (=> (and (= (type a) (MapType0Type T@@8 boolType)) (= (type b@@5) (MapType0Type T@@8 boolType))) (= (diff a b@@5) (|lambda#1| T@@8 a b@@5))))
 :qid |LambdaPolybpl.8:18|
 :skolemid |1|
 :pattern ( (diff a b@@5))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@6| T@U) (x@@9 T@U) ) (! (let ((T@@9 (type x@@9)))
 (=> (and (= (type |l#0@@6|) (MapType0Type T@@9 boolType)) (= (type |l#1@@6|) (MapType0Type T@@9 boolType))) (= (U_2_bool (MapType0Select (|lambda#1| T@@9 |l#0@@6| |l#1@@6|) x@@9))  (and (U_2_bool (MapType0Select |l#0@@6| x@@9)) (not (U_2_bool (MapType0Select |l#1@@6| x@@9)))))))
 :qid |LambdaPolybpl.8:18|
 :skolemid |7|
 :pattern ( (let ((T@@9 (type x@@9)))
(MapType0Select (|lambda#1| T@@9 |l#0@@6| |l#1@@6|) x@@9)))
)))
(assert (forall ((arg0@@30 T@U) (arg1@@18 T@U) ) (! (let ((T@@10 (MapType0TypeInv0 (type arg0@@30))))
(= (type (q@union arg0@@30 arg1@@18)) (MapType0Type T@@10 boolType)))
 :qid |funType:union|
 :pattern ( (q@union arg0@@30 arg1@@18))
)))
(assert (forall ((a@@0 T@U) (b@@6 T@U) ) (! (let ((T@@11 (MapType0TypeInv0 (type a@@0))))
 (=> (and (= (type a@@0) (MapType0Type T@@11 boolType)) (= (type b@@6) (MapType0Type T@@11 boolType))) (= (q@union a@@0 b@@6) (|lambda#0| T@@11 a@@0 b@@6))))
 :qid |LambdaPolybpl.6:18|
 :skolemid |0|
 :no-pattern (type a@@0)
 :no-pattern (type b@@6)
 :no-pattern (U_2_int a@@0)
 :no-pattern (U_2_bool a@@0)
 :no-pattern (U_2_int b@@6)
 :no-pattern (U_2_bool b@@6)
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@31 T@T) ) (! (= (Ctor (MapType2Type arg0@@31)) 8)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@32 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@32)) arg0@@32)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@32))
))) (forall ((arg0@@33 T@U) (arg1@@19 T@U) ) (! (let ((aVar0@@1 (MapType2TypeInv0 (type arg0@@33))))
(= (type (MapType2Select arg0@@33 arg1@@19)) aVar0@@1))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@33 arg1@@19))
))) (forall ((arg0@@34 T@U) (arg1@@20 T@U) (arg2@@2 T@U) ) (! (let ((aVar0@@2 (type arg2@@2)))
(= (type (MapType2Store arg0@@34 arg1@@20 arg2@@2)) (MapType2Type aVar0@@2)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@34 arg1@@20 arg2@@2))
))) (forall ((m@@8 T@U) (x0@@6 T@U) (val@@6 T@U) ) (! (let ((aVar0@@3 (MapType2TypeInv0 (type m@@8))))
 (=> (= (type val@@6) aVar0@@3) (= (MapType2Select (MapType2Store m@@8 x0@@6 val@@6) x0@@6) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (forall ((val@@7 T@U) (m@@9 T@U) (x0@@7 T@U) (y0@@4 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@9 x0@@7 val@@7) y0@@4) (MapType2Select m@@9 y0@@4)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@10 T@U) (x0@@8 T@U) (y0@@5 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@10 x0@@8 val@@8) y0@@5) (MapType2Select m@@10 y0@@5)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@35 T@U) ) (! (= (type (|lambda#5| arg0@@35)) (MapType2Type boolType))
 :qid |funType:lambda#5|
 :pattern ( (|lambda#5| arg0@@35))
))))
(assert (forall ((|l#0@@7| T@U) (v T@U) ) (! (let ((V@@2 (type v)))
 (=> (= (type |l#0@@7|) Cracker) (= (U_2_bool (MapType2Select (|lambda#5| |l#0@@7|) v)) (U_2_bool (MapType1Select (|lambda#4| V@@2 |l#0@@7| v) v v)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |11|
 :pattern ( (MapType2Select (|lambda#5| |l#0@@7|) v))
)))
(assert (forall ((arg0@@36 T@U) ) (! (= (type (|lambda#7| arg0@@36)) (MapType2Type boolType))
 :qid |funType:lambda#7|
 :pattern ( (|lambda#7| arg0@@36))
)))
(assert (forall ((|l#0@@8| T@U) (w T@U) ) (! (let ((W@@2 (type w)))
 (=> (= (type |l#0@@8|) Cracker) (= (U_2_bool (MapType2Select (|lambda#7| |l#0@@8|) w)) (U_2_bool (MapType1Select (|lambda#6| W@@2 |l#0@@8| w) w w)))))
 :qid |LambdaPolybpl.24:26|
 :skolemid |13|
 :pattern ( (MapType2Select (|lambda#7| |l#0@@8|) w))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun TriggerHappy (T@U) Bool)
(declare-fun c () T@U)
(declare-fun d () T@U)
(assert  (and (= (type c) Cracker) (= (type d) Cracker)))
(set-info :boogie-vc-id Polly)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((anon5_Else_correct  (=> (TriggerHappy c) (and (=> (= (ControlFlow 0 8) (- 0 9)) (exists ((k T@U) ) (!  (and (= (type k) Cracker) (U_2_bool (MapType1Select (|lambda#2| Cracker k c) c c)))
 :qid |LambdaPolybpl.38:20|
 :skolemid |4|
 :pattern ( (TriggerHappy k))
))) (=> (exists ((k@@0 T@U) ) (!  (and (= (type k@@0) Cracker) (U_2_bool (MapType1Select (|lambda#2| Cracker k@@0 c) c c)))
 :qid |LambdaPolybpl.38:20|
 :skolemid |4|
 :pattern ( (TriggerHappy k@@0))
)) (=> (= (ControlFlow 0 8) (- 0 7)) (forall ((k@@1 T@U) ) (!  (=> (= (type k@@1) Cracker) (U_2_bool (MapType1Select (|lambda#3| Cracker k@@1 c) c c)))
 :qid |LambdaPolybpl.39:20|
 :skolemid |5|
 :no-pattern (type k@@1)
 :no-pattern (U_2_int k@@1)
 :no-pattern (U_2_bool k@@1)
))))))))
(let ((anon5_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (U_2_bool (MapType2Select (|lambda#5| c) c))) (=> (U_2_bool (MapType2Select (|lambda#5| c) c)) (=> (= (ControlFlow 0 5) (- 0 4)) (U_2_bool (MapType2Select (|lambda#7| c) d)))))))
(let ((anon4_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((t T@U) ) (! (let ((T@@12 (type t)))
(U_2_bool (MapType1Select (|lambda#8| T@@12 c t) c t)))
 :qid |LambdaPolybpl.30:23|
 :skolemid |2|
 :no-pattern (U_2_int t)
 :no-pattern (U_2_bool t)
))) (=> (forall ((t@@0 T@U) ) (! (let ((T@@13 (type t@@0)))
(U_2_bool (MapType1Select (|lambda#8| T@@13 c t@@0) c t@@0)))
 :qid |LambdaPolybpl.30:23|
 :skolemid |2|
 :no-pattern (U_2_int t@@0)
 :no-pattern (U_2_bool t@@0)
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((u T@U) ) (! (let ((U@@2 (type u)))
(U_2_bool (MapType1Select (|lambda#9| U@@2 c u) u u)))
 :qid |LambdaPolybpl.31:23|
 :skolemid |3|
 :no-pattern (U_2_int u)
 :no-pattern (U_2_bool u)
)))))))
(let ((anon0_correct  (and (and (=> (= (ControlFlow 0 10) 2) anon4_Then_correct) (=> (= (ControlFlow 0 10) 5) anon5_Then_correct)) (=> (= (ControlFlow 0 10) 8) anon5_Else_correct))))
anon0_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
