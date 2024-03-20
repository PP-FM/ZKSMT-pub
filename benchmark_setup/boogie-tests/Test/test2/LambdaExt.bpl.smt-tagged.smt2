(set-logic UFLIRA)
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun id1@0 () T@U)
(declare-fun id2@0 () T@U)
(declare-fun id2@1 () T@U)
(assert  (and (and (= (type id1@0) (MapType0Type intType intType)) (= (type id2@0) (MapType0Type intType intType))) (= (type id2@1) (MapType0Type intType intType))))
(set-info :boogie-vc-id Simplest)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= id1@0 |lambda#0|) (= id2@0 |lambda#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= id1@0 id2@0)) (=> (= id1@0 id2@0) (=> (and (= id2@1 (|lambda#2| 0)) (= (ControlFlow 0 2) (- 0 1))) (= id1@0 id2@1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(declare-fun w@0 () T@U)
(declare-fun w@1 () T@U)
(declare-fun w@2 () T@U)
(declare-fun f@0 () T@U)
(assert  (and (and (and (and (= (type v@0) (MapType0Type intType (MapType0Type intType intType))) (= (type w@0) (MapType0Type intType (MapType0Type intType intType)))) (= (type w@1) (MapType0Type intType (MapType0Type intType intType)))) (= (type w@2) (MapType0Type intType (MapType0Type intType intType)))) (= (type f@0) (MapType2Type intType intType intType))))
(set-info :boogie-vc-id Const)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (= v@0 |lambda#4|) (= w@0 |lambda#4|)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= v@0 w@0)) (=> (= v@0 w@0) (=> (= w@1 |lambda#4|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= v@0 w@1)) (=> (= v@0 w@1) (=> (= w@2 (|lambda#10| |lambda#0|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= v@0 w@2)) (=> (= v@0 w@2) (=> (= f@0 |lambda#11|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= f@0 |lambda#11|)) (=> (= f@0 |lambda#11|) (=> (= (ControlFlow 0 2) (- 0 1)) (= f@0 |lambda#13|))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 4))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id PolyConst)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= |lambda#14| |lambda#15|))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m@0 () T@U)
(declare-fun k () Real)
(assert (= (type m@0) (MapType0Type intType realType)))
(set-info :boogie-vc-id FreeVarP)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= m@0 (|lambda#16| k)) (= (ControlFlow 0 2) (- 0 1))) (= (U_2_real (MapType0Select m@0 (int_2_U 0))) k))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m@0 () T@U)
(declare-fun k () Int)
(assert (= (type m@0) (MapType0Type intType intType)))
(set-info :boogie-vc-id FreeVarQ)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= m@0 (|lambda#2| k)) (= (ControlFlow 0 2) (- 0 1))) (= (U_2_int (MapType0Select m@0 (int_2_U 0))) k))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k1@0 () T@U)
(declare-fun k2@0 () T@U)
(declare-fun k2@1 () T@U)
(assert  (and (and (= (type k1@0) (MapType0Type intType boolType)) (= (type k2@0) (MapType0Type intType boolType))) (= (type k2@1) (MapType0Type intType boolType))))
(set-info :boogie-vc-id Quantifiers)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= k1@0 |lambda#18|) (= k2@0 |lambda#18|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= k1@0 k2@0)) (=> (= k1@0 k2@0) (=> (and (= k2@1 |lambda#18|) (= (ControlFlow 0 2) (- 0 1))) (= k1@0 k2@1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@@0 () Bool)
(declare-fun b@@0 () Bool)
(declare-fun f@0 () T@U)
(declare-fun g@0 () T@U)
(assert  (and (= (type f@0) (MapType0Type boolType boolType)) (= (type g@0) (MapType0Type boolType boolType))))
(set-info :boogie-vc-id FreeVariables)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (and (= a@@0  (not b@@0)) (= (ControlFlow 0 4) (- 0 3))) (= f@0 g@0))))
(let ((anon3_Then_correct  (=> (and (= a@@0 b@@0) (= (ControlFlow 0 2) (- 0 1))) (= f@0 g@0))))
(let ((anon0_correct  (=> (and (= f@0 (|lambda#21| a@@0)) (= g@0 (|lambda#21| b@@0))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@@0 () Bool)
(declare-fun b@@0 () Bool)
(declare-fun f@0 () T@U)
(declare-fun g@0 () T@U)
(declare-fun k () T@U)
(assert  (and (and (= (type f@0) (MapType0Type boolType boolType)) (= (type g@0) (MapType0Type boolType boolType))) (= (type k) (MapType2Type boolType boolType boolType))))
(set-info :boogie-vc-id FreeVariables2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (and (= a@@0  (not b@@0)) (= (ControlFlow 0 4) (- 0 3))) (= f@0 g@0))))
(let ((anon3_Then_correct  (=> (and (= a@@0 b@@0) (= (ControlFlow 0 2) (- 0 1))) (= f@0 g@0))))
(let ((anon0_correct  (=> (and (= f@0 (|lambda#21| (U_2_bool (MapType2Select k (bool_2_U a@@0) (bool_2_U b@@0))))) (= g@0 (|lambda#21| (U_2_bool (MapType2Select k (bool_2_U b@@0) (bool_2_U a@@0)))))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@@0 () Bool)
(declare-fun b@@0 () Bool)
(declare-fun f@0 () T@U)
(declare-fun g@0 () T@U)
(declare-fun MapType3Select (T@U T@U T@U T@U) T@U)
(declare-fun m@@9 () T@U)
(declare-fun MapType3Type (T@T T@T T@T T@T) T@T)
(declare-fun MapType3TypeInv0 (T@T) T@T)
(declare-fun MapType3TypeInv1 (T@T) T@T)
(declare-fun MapType3TypeInv2 (T@T) T@T)
(declare-fun MapType3TypeInv3 (T@T) T@T)
(declare-fun MapType3Store (T@U T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (= (type f@0) (MapType0Type boolType boolType)) (= (type g@0) (MapType0Type boolType boolType))) (forall ((arg0@@33 T@T) (arg1@@14 T@T) (arg2@@8 T@T) (arg3@@1 T@T) ) (! (= (Ctor (MapType3Type arg0@@33 arg1@@14 arg2@@8 arg3@@1)) 12)
 :qid |ctor:MapType3Type|
))) (forall ((arg0@@34 T@T) (arg1@@15 T@T) (arg2@@9 T@T) (arg3@@2 T@T) ) (! (= (MapType3TypeInv0 (MapType3Type arg0@@34 arg1@@15 arg2@@9 arg3@@2)) arg0@@34)
 :qid |typeInv:MapType3TypeInv0|
 :pattern ( (MapType3Type arg0@@34 arg1@@15 arg2@@9 arg3@@2))
))) (forall ((arg0@@35 T@T) (arg1@@16 T@T) (arg2@@10 T@T) (arg3@@3 T@T) ) (! (= (MapType3TypeInv1 (MapType3Type arg0@@35 arg1@@16 arg2@@10 arg3@@3)) arg1@@16)
 :qid |typeInv:MapType3TypeInv1|
 :pattern ( (MapType3Type arg0@@35 arg1@@16 arg2@@10 arg3@@3))
))) (forall ((arg0@@36 T@T) (arg1@@17 T@T) (arg2@@11 T@T) (arg3@@4 T@T) ) (! (= (MapType3TypeInv2 (MapType3Type arg0@@36 arg1@@17 arg2@@11 arg3@@4)) arg2@@11)
 :qid |typeInv:MapType3TypeInv2|
 :pattern ( (MapType3Type arg0@@36 arg1@@17 arg2@@11 arg3@@4))
))) (forall ((arg0@@37 T@T) (arg1@@18 T@T) (arg2@@12 T@T) (arg3@@5 T@T) ) (! (= (MapType3TypeInv3 (MapType3Type arg0@@37 arg1@@18 arg2@@12 arg3@@5)) arg3@@5)
 :qid |typeInv:MapType3TypeInv3|
 :pattern ( (MapType3Type arg0@@37 arg1@@18 arg2@@12 arg3@@5))
))) (forall ((arg0@@38 T@U) (arg1@@19 T@U) (arg2@@13 T@U) (arg3@@6 T@U) ) (! (let ((aVar3 (MapType3TypeInv3 (type arg0@@38))))
(= (type (MapType3Select arg0@@38 arg1@@19 arg2@@13 arg3@@6)) aVar3))
 :qid |funType:MapType3Select|
 :pattern ( (MapType3Select arg0@@38 arg1@@19 arg2@@13 arg3@@6))
))) (forall ((arg0@@39 T@U) (arg1@@20 T@U) (arg2@@14 T@U) (arg3@@7 T@U) (arg4 T@U) ) (! (let ((aVar3@@0 (type arg4)))
(let ((aVar2@@2 (type arg3@@7)))
(let ((aVar1@@3 (type arg2@@14)))
(let ((aVar0@@1 (type arg1@@20)))
(= (type (MapType3Store arg0@@39 arg1@@20 arg2@@14 arg3@@7 arg4)) (MapType3Type aVar0@@1 aVar1@@3 aVar2@@2 aVar3@@0))))))
 :qid |funType:MapType3Store|
 :pattern ( (MapType3Store arg0@@39 arg1@@20 arg2@@14 arg3@@7 arg4))
))) (forall ((m@@10 T@U) (x0@@9 T@U) (x1@@3 T@U) (x2 T@U) (val@@9 T@U) ) (! (let ((aVar3@@1 (MapType3TypeInv3 (type m@@10))))
 (=> (= (type val@@9) aVar3@@1) (= (MapType3Select (MapType3Store m@@10 x0@@9 x1@@3 x2 val@@9) x0@@9 x1@@3 x2) val@@9)))
 :qid |mapAx0:MapType3Select|
 :weight 0
))) (and (and (and (forall ((val@@10 T@U) (m@@11 T@U) (x0@@10 T@U) (x1@@4 T@U) (x2@@0 T@U) (y0@@6 T@U) (y1@@2 T@U) (y2 T@U) ) (!  (or (= x0@@10 y0@@6) (= (MapType3Select (MapType3Store m@@11 x0@@10 x1@@4 x2@@0 val@@10) y0@@6 y1@@2 y2) (MapType3Select m@@11 y0@@6 y1@@2 y2)))
 :qid |mapAx1:MapType3Select:0|
 :weight 0
)) (forall ((val@@11 T@U) (m@@12 T@U) (x0@@11 T@U) (x1@@5 T@U) (x2@@1 T@U) (y0@@7 T@U) (y1@@3 T@U) (y2@@0 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType3Select (MapType3Store m@@12 x0@@11 x1@@5 x2@@1 val@@11) y0@@7 y1@@3 y2@@0) (MapType3Select m@@12 y0@@7 y1@@3 y2@@0)))
 :qid |mapAx1:MapType3Select:1|
 :weight 0
))) (forall ((val@@12 T@U) (m@@13 T@U) (x0@@12 T@U) (x1@@6 T@U) (x2@@2 T@U) (y0@@8 T@U) (y1@@4 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType3Select (MapType3Store m@@13 x0@@12 x1@@6 x2@@2 val@@12) y0@@8 y1@@4 y2@@1) (MapType3Select m@@13 y0@@8 y1@@4 y2@@1)))
 :qid |mapAx1:MapType3Select:2|
 :weight 0
))) (forall ((val@@13 T@U) (m@@14 T@U) (x0@@13 T@U) (x1@@7 T@U) (x2@@3 T@U) (y0@@9 T@U) (y1@@5 T@U) (y2@@2 T@U) ) (!  (or true (= (MapType3Select (MapType3Store m@@14 x0@@13 x1@@7 x2@@3 val@@13) y0@@9 y1@@5 y2@@2) (MapType3Select m@@14 y0@@9 y1@@5 y2@@2)))
 :qid |mapAx2:MapType3Select|
 :weight 0
)))) (= (type m@@9) (MapType3Type boolType boolType boolType boolType))))
(set-info :boogie-vc-id FreeVariables3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (and (= a@@0  (not b@@0)) (= (ControlFlow 0 4) (- 0 3))) (= f@0 g@0))))
(let ((anon3_Then_correct  (=> (and (= a@@0 b@@0) (= (ControlFlow 0 2) (- 0 1))) (= f@0 g@0))))
(let ((anon0_correct  (=> (and (= f@0 (|lambda#21| (U_2_bool (MapType3Select m@@9 (bool_2_U a@@0) (bool_2_U a@@0) (bool_2_U b@@0))))) (= g@0 (|lambda#21| (U_2_bool (MapType3Select m@@9 (bool_2_U a@@0) (bool_2_U b@@0) (bool_2_U b@@0)))))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@0 () T@U)
(declare-fun b@0 () T@U)
(declare-fun b@1 () T@U)
(assert  (and (and (= (type a@0) (MapType0Type intType boolType)) (= (type b@0) (MapType0Type intType boolType))) (= (type b@1) (MapType0Type intType boolType))))
(set-info :boogie-vc-id Triggers)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= a@0 |lambda#27|) (= b@0 |lambda#27|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= a@0 b@0)) (=> (= a@0 b@0) (=> (and (= b@1 |lambda#29|) (= (ControlFlow 0 2) (- 0 1))) (= a@0 b@1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@0 () T@U)
(declare-fun b@0 () T@U)
(declare-fun b@1 () T@U)
(declare-fun a@1 () T@U)
(assert  (and (and (and (= (type a@0) (MapType0Type intType boolType)) (= (type b@0) (MapType0Type intType boolType))) (= (type b@1) (MapType0Type intType boolType))) (= (type a@1) (MapType0Type intType boolType))))
(set-info :boogie-vc-id Attributes)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (= a@0 |lambda#30|) (= b@0 |lambda#31|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= a@0 b@0)) (=> (= a@0 b@0) (=> (= b@1 |lambda#32|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= a@0 b@1)) (=> (= a@0 b@1) (=> (and (= a@1 |lambda#33|) (= (ControlFlow 0 2) (- 0 1))) (= a@1 b@1))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 3))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a@@0 () Int)
(declare-fun b@@0 () Int)
(declare-fun u@0 () T@U)
(declare-fun v@0 () T@U)
(assert  (and (= (type u@0) (MapType0Type intType intType)) (= (type v@0) (MapType0Type intType intType))))
(set-info :boogie-vc-id Old)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (and (not (= a@@0 b@@0)) (= (ControlFlow 0 4) (- 0 3))) (= u@0 v@0))))
(let ((anon3_Then_correct  (=> (and (= a@@0 b@@0) (= (ControlFlow 0 2) (- 0 1))) (= u@0 v@0))))
(let ((anon0_correct  (=> (and (= u@0 (|lambda#34| a@@0)) (= v@0 (|lambda#34| b@@0))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Coercion)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= |lambda#36| |lambda#36|))))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun n () T@U)
(assert (= (type n) (MapType0Type intType boolType)))
(set-info :boogie-vc-id FreeVarOnlyInTrigger)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((m@@9 Int) ) (! (= n (|lambda#38| true m@@9))
 :qid |LambdaExtbpl.172:18|
 :skolemid |11|
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id MultipleTriggers)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((a@@0 T@U) (m@@9 T@U) ) (!  (=> (and (= (type a@@0) TAType) (= (type m@@9) (MapType0Type TBType boolType))) (= m@@9 (|lambda#39| a@@0 10 m@@9 a@@0)))
 :qid |LambdaExtbpl.182:18|
 :skolemid |13|
 :no-pattern (type a@@0)
 :no-pattern (type m@@9)
 :no-pattern (U_2_int a@@0)
 :no-pattern (U_2_bool a@@0)
 :no-pattern (U_2_int m@@9)
 :no-pattern (U_2_bool m@@9)
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |lambda#34| (Int) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun |lambda#39| (T@U Int T@U T@U) T@U)
(declare-fun TAType () T@T)
(declare-fun TBType () T@T)
(declare-fun G (T@U T@U) Int)
(declare-fun |lambda#2| (Int) T@U)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun |lambda#16| (Real) T@U)
(declare-fun |lambda#21| (Bool) T@U)
(declare-fun |lambda#0| () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun |lambda#14| () T@U)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |lambda#15| () T@U)
(declare-fun |lambda#38| (Bool Int) T@U)
(declare-fun F (Int Int) Int)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#11| () T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| () T@U)
(declare-fun |lambda#4| () T@U)
(declare-fun |lambda#36| () T@U)
(declare-fun BoxType () T@T)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |lambda#18| () T@U)
(declare-fun |lambda#40| () T@U)
(declare-fun |lambda#27| () T@U)
(declare-fun f (Int) Int)
(declare-fun |lambda#29| () T@U)
(declare-fun |lambda#30| () T@U)
(declare-fun |lambda#31| () T@U)
(declare-fun |lambda#32| () T@U)
(declare-fun |lambda#33| () T@U)
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
)))) (forall ((arg0@@16 Int) ) (! (= (type (|lambda#34| arg0@@16)) (MapType0Type intType intType))
 :qid |funType:lambda#34|
 :pattern ( (|lambda#34| arg0@@16))
))))
(assert (forall ((|l#0| Int) (x@@8 T@U) ) (!  (=> (= (type x@@8) intType) (= (U_2_int (MapType0Select (|lambda#34| |l#0|) x@@8)) (+ (U_2_int x@@8) |l#0|)))
 :qid |LambdaExtbpl.147:7|
 :skolemid |31|
 :pattern ( (MapType0Select (|lambda#34| |l#0|) x@@8))
)))
(assert  (and (and (= (Ctor TAType) 7) (= (Ctor TBType) 8)) (forall ((arg0@@17 T@U) (arg1@@4 Int) (arg2@@0 T@U) (arg3 T@U) ) (! (= (type (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3)) (MapType0Type TBType boolType))
 :qid |funType:lambda#39|
 :pattern ( (|lambda#39| arg0@@17 arg1@@4 arg2@@0 arg3))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| T@U) (|l#3| T@U) (y@@1 T@U) ) (!  (=> (and (and (and (= (type |l#0@@0|) TAType) (= (type |l#2|) (MapType0Type TBType boolType))) (= (type |l#3|) TAType)) (= (type y@@1) TBType)) (= (U_2_bool (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1)) (exists ((x@@9 T@U) ) (!  (and (= (type x@@9) TBType) (= (G |l#0@@0| x@@9) |l#1|))
 :qid |LambdaExtbpl.183:35|
 :skolemid |12|
 :pattern ( (G |l#3| x@@9))
 :pattern ( (MapType0Select |l#2| x@@9))
))))
 :qid |LambdaExtbpl.182:18|
 :skolemid |34|
 :pattern ( (MapType0Select (|lambda#39| |l#0@@0| |l#1| |l#2| |l#3|) y@@1))
)))
(assert (forall ((arg0@@18 Int) ) (! (= (type (|lambda#2| arg0@@18)) (MapType0Type intType intType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@18))
)))
(assert (forall ((|l#0@@1| Int) (x@@10 T@U) ) (!  (=> (= (type x@@10) intType) (= (U_2_int (MapType0Select (|lambda#2| |l#0@@1|) x@@10)) |l#0@@1|))
 :qid |LambdaExtbpl.11:28|
 :skolemid |15|
 :pattern ( (MapType0Select (|lambda#2| |l#0@@1|) x@@10))
)))
(assert (forall ((arg0@@19 T@U) ) (! (= (type (|lambda#10| arg0@@19)) (MapType0Type intType (MapType0Type intType intType)))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@19))
)))
(assert (forall ((|l#0@@2| T@U) (a T@U) ) (!  (=> (and (= (type |l#0@@2|) (MapType0Type intType intType)) (= (type a) intType)) (= (MapType0Select (|lambda#10| |l#0@@2|) a) |l#0@@2|))
 :qid |nofile.1:7|
 :skolemid |17|
 :pattern ( (MapType0Select (|lambda#10| |l#0@@2|) a))
)))
(assert (forall ((arg0@@20 Real) ) (! (= (type (|lambda#16| arg0@@20)) (MapType0Type intType realType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@20))
)))
(assert (forall ((|l#0@@3| Real) (x@@11 T@U) ) (!  (=> (= (type x@@11) intType) (= (U_2_real (MapType0Select (|lambda#16| |l#0@@3|) x@@11)) |l#0@@3|))
 :qid |LambdaExtbpl.48:7|
 :skolemid |22|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@3|) x@@11))
)))
(assert (forall ((arg0@@21 Bool) ) (! (= (type (|lambda#21| arg0@@21)) (MapType0Type boolType boolType))
 :qid |funType:lambda#21|
 :pattern ( (|lambda#21| arg0@@21))
)))
(assert (forall ((|l#0@@4| Bool) (r T@U) ) (!  (=> (= (type r) boolType) (= (U_2_bool (MapType0Select (|lambda#21| |l#0@@4|) r)) |l#0@@4|))
 :qid |LambdaExtbpl.75:7|
 :skolemid |24|
 :pattern ( (MapType0Select (|lambda#21| |l#0@@4|) r))
)))
(assert (= (type |lambda#0|) (MapType0Type intType intType)))
(assert (forall ((x@@12 T@U) ) (!  (=> (= (type x@@12) intType) (= (U_2_int (MapType0Select |lambda#0| x@@12)) (U_2_int x@@12)))
 :qid |LambdaExtbpl.8:18|
 :skolemid |14|
 :pattern ( (MapType0Select |lambda#0| x@@12))
)))
(assert  (and (and (and (and (and (forall ((arg0@@22 T@U) (arg1@@5 T@U) ) (! (let ((A (type arg1@@5)))
(= (type (MapType1Select arg0@@22 arg1@@5)) A))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@22 arg1@@5))
)) (= (Ctor MapType1Type) 9)) (forall ((arg0@@23 T@U) (arg1@@6 T@U) (arg2@@1 T@U) ) (! (= (type (MapType1Store arg0@@23 arg1@@6 arg2@@1)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@23 arg1@@6 arg2@@1))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((A@@0 (type x0@@2)))
 (=> (= (type val@@2) A@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type |lambda#14|) MapType1Type)))
(assert (forall ((x@@13 T@U) ) (! (= (MapType1Select |lambda#14| x@@13) x@@13)
 :qid |LambdaExtbpl.36:21|
 :skolemid |20|
 :pattern ( (MapType1Select |lambda#14| x@@13))
)))
(assert (= (type |lambda#15|) MapType1Type))
(assert (forall ((x@@14 T@U) ) (! (= (MapType1Select |lambda#15| x@@14) x@@14)
 :qid |LambdaExtbpl.36:45|
 :skolemid |21|
 :pattern ( (MapType1Select |lambda#15| x@@14))
)))
(assert (forall ((arg0@@24 Bool) (arg1@@7 Int) ) (! (= (type (|lambda#38| arg0@@24 arg1@@7)) (MapType0Type intType boolType))
 :qid |funType:lambda#38|
 :pattern ( (|lambda#38| arg0@@24 arg1@@7))
)))
(assert (forall ((|l#0@@5| Bool) (|l#1@@0| Int) (x@@15 T@U) ) (!  (=> (= (type x@@15) intType) (= (U_2_bool (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15)) (exists ((y@@2 Int) ) (! |l#0@@5|
 :qid |LambdaExtbpl.173:36|
 :skolemid |10|
 :pattern ( (F |l#1@@0| y@@2))
))))
 :qid |LambdaExtbpl.173:57|
 :skolemid |33|
 :pattern ( (MapType0Select (|lambda#38| |l#0@@5| |l#1@@0|) x@@15))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@25 T@T) (arg1@@8 T@T) (arg2@@2 T@T) ) (! (= (Ctor (MapType2Type arg0@@25 arg1@@8 arg2@@2)) 10)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@26 T@T) (arg1@@9 T@T) (arg2@@3 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@26 arg1@@9 arg2@@3)) arg0@@26)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@26 arg1@@9 arg2@@3))
))) (forall ((arg0@@27 T@T) (arg1@@10 T@T) (arg2@@4 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@27 arg1@@10 arg2@@4)) arg1@@10)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@27 arg1@@10 arg2@@4))
))) (forall ((arg0@@28 T@T) (arg1@@11 T@T) (arg2@@5 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@28 arg1@@11 arg2@@5)) arg2@@5)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@28 arg1@@11 arg2@@5))
))) (forall ((arg0@@29 T@U) (arg1@@12 T@U) (arg2@@6 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@29))))
(= (type (MapType2Select arg0@@29 arg1@@12 arg2@@6)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@29 arg1@@12 arg2@@6))
))) (forall ((arg0@@30 T@U) (arg1@@13 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar2@@0 (type arg3@@0)))
(let ((aVar1@@2 (type arg2@@7)))
(let ((aVar0@@0 (type arg1@@13)))
(= (type (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@30 arg1@@13 arg2@@7 arg3@@0))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@5))))
 (=> (= (type val@@5) aVar2@@1) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (type |lambda#11|) (MapType2Type intType intType intType))))
(assert (forall ((x@@16 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@16) intType) (= (type y@@3) intType)) (= (U_2_int (MapType2Select |lambda#11| x@@16 y@@3)) (U_2_int x@@16)))
 :qid |LambdaExtbpl.30:16|
 :skolemid |18|
 :pattern ( (MapType2Select |lambda#11| x@@16 y@@3))
)))
(assert (= (type |lambda#13|) (MapType2Type intType intType intType)))
(assert (forall ((p T@U) (q T@U) ) (!  (=> (and (= (type p) intType) (= (type q) intType)) (= (U_2_int (MapType2Select |lambda#13| p q)) (U_2_int q)))
 :qid |LambdaExtbpl.32:23|
 :skolemid |19|
 :pattern ( (MapType2Select |lambda#13| p q))
)))
(assert (= (type |lambda#4|) (MapType0Type intType (MapType0Type intType intType))))
(assert (forall ((x@@17 T@U) ) (!  (=> (= (type x@@17) intType) (= (MapType0Select |lambda#4| x@@17) (|lambda#2| (U_2_int x@@17))))
 :qid |LambdaExtbpl.19:16|
 :skolemid |16|
 :pattern ( (MapType0Select |lambda#4| x@@17))
)))
(assert  (and (and (and (= (Ctor BoxType) 11) (= (type |lambda#36|) (MapType0Type BoxType BoxType))) (forall ((arg0@@31 T@U) ) (! (= (type ($Box arg0@@31)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@31))
))) (forall ((T T@T) (arg0@@32 T@U) ) (! (= (type ($Unbox T arg0@@32)) T)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T arg0@@32))
))))
(assert (forall ((x@@18 T@U) ) (!  (=> (= (type x@@18) BoxType) (= (MapType0Select |lambda#36| x@@18) ($Box ($Unbox intType x@@18))))
 :qid |LambdaExtbpl.162:18|
 :skolemid |32|
 :pattern ( (MapType0Select |lambda#36| x@@18))
)))
(assert (= (type |lambda#18|) (MapType0Type intType boolType)))
(assert (forall ((x@@19 T@U) ) (!  (=> (= (type x@@19) intType) (= (U_2_bool (MapType0Select |lambda#18| x@@19)) (exists ((y@@4 Int) ) (! (> (U_2_int x@@19) y@@4)
 :qid |LambdaExtbpl.64:35|
 :skolemid |0|
))))
 :qid |LambdaExtbpl.64:17|
 :skolemid |23|
 :pattern ( (MapType0Select |lambda#18| x@@19))
)))
(assert (= (type |lambda#40|) (MapType0Type boolType boolType)))
(assert (forall ((b T@U) ) (!  (=> (= (type b) boolType) (= (U_2_bool (MapType0Select |lambda#40| b)) (let ((u (U_2_bool b)))
u)))
 :qid |LambdaExtbpl.190:16|
 :skolemid |35|
 :pattern ( (MapType0Select |lambda#40| b))
)))
(assert (= (type |lambda#27|) (MapType0Type intType boolType)))
(assert (forall ((x@@20 T@U) ) (!  (=> (= (type x@@20) intType) (= (U_2_bool (MapType0Select |lambda#27| x@@20)) (forall ((u@@0 Int) ) (! (= (U_2_int x@@20) (f u@@0))
 :qid |LambdaExtbpl.127:33|
 :skolemid |3|
 :pattern ( (f u@@0))
))))
 :qid |LambdaExtbpl.127:16|
 :skolemid |25|
 :pattern ( (MapType0Select |lambda#27| x@@20))
)))
(assert (= (type |lambda#29|) (MapType0Type intType boolType)))
(assert (forall ((y@@5 T@U) ) (!  (=> (= (type y@@5) intType) (= (U_2_bool (MapType0Select |lambda#29| y@@5)) (forall ((v Int) ) (! (= (U_2_int y@@5) (f v))
 :qid |LambdaExtbpl.130:33|
 :skolemid |5|
))))
 :qid |LambdaExtbpl.130:16|
 :skolemid |26|
 :pattern ( (MapType0Select |lambda#29| y@@5))
)))
(assert (= (type |lambda#30|) (MapType0Type intType boolType)))
(assert (forall ((x@@21 T@U) ) (!  (=> (= (type x@@21) intType) (= (U_2_bool (MapType0Select |lambda#30| x@@21)) (forall ((u@@1 Int) ) (! (= (U_2_int x@@21) (f u@@1))
 :qid |LambdaExtbpl.136:33|
 :skolemid |6|
))))
 :qid |LambdaExtbpl.136:16|
 :skolemid |27|
 :pattern ( (MapType0Select |lambda#30| x@@21))
)))
(assert (= (type |lambda#31|) (MapType0Type intType boolType)))
(assert (forall ((y@@6 T@U) ) (!  (=> (= (type y@@6) intType) (= (U_2_bool (MapType0Select |lambda#31| y@@6)) (forall ((v@@0 Int) ) (! (= (U_2_int y@@6) (f v@@0))
 :qid |LambdaExtbpl.137:33|
 :skolemid |7|
))))
 :qid |LambdaExtbpl.137:16|
 :skolemid |28|
 :pattern ( (MapType0Select |lambda#31| y@@6))
)))
(assert (= (type |lambda#32|) (MapType0Type intType boolType)))
(assert (forall ((y@@7 T@U) ) (!  (=> (= (type y@@7) intType) (= (U_2_bool (MapType0Select |lambda#32| y@@7)) (forall ((v@@1 Int) ) (! (= (U_2_int y@@7) (f v@@1))
 :qid |LambdaExtbpl.139:33|
 :skolemid |8|
))))
 :qid |LambdaExtbpl.139:16|
 :skolemid |29|
 :pattern ( (MapType0Select |lambda#32| y@@7))
)))
(assert (= (type |lambda#33|) (MapType0Type intType boolType)))
(assert (forall ((x@@22 T@U) ) (!  (=> (= (type x@@22) intType) (= (U_2_bool (MapType0Select |lambda#33| x@@22)) (forall ((u@@2 Int) ) (! (= (U_2_int x@@22) (f u@@2))
 :qid |LambdaExtbpl.141:33|
 :skolemid |9|
))))
 :qid |LambdaExtbpl.141:16|
 :skolemid |30|
 :pattern ( (MapType0Select |lambda#33| x@@22))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id LetBinder)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
