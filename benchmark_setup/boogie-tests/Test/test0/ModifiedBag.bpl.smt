(set-option :produce-proofs true)
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
(declare-fun elementsType () T@T)
(declare-fun refType () T@T)
(declare-fun $RefArrayGet (T@U Int) T@U)
(declare-fun $RefArraySet (T@U Int T@U) T@U)
(declare-fun $IntArrayGet (T@U Int) Int)
(declare-fun $IntArraySet (T@U Int Int) T@U)
(declare-fun $RealArrayGet (T@U Int) Real)
(declare-fun $RealArraySet (T@U Int Real) T@U)
(declare-fun $ArrayArrayGet (T@U Int) T@U)
(declare-fun $ArrayArraySet (T@U Int T@U) T@U)
(declare-fun nameType () T@T)
(declare-fun $RefIs (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $typeof (T@U) T@U)
(declare-fun $NotNull (T@U) T@U)
(declare-fun MapType0Type (T@T T@T T@T) T@T)
(declare-fun $IntArray (T@U) T@U)
(declare-fun $IntIs (Int T@U) Bool)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun $elements () T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0TypeInv2 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun $RealArray (T@U) T@U)
(declare-fun $RealIs (Real T@U) Bool)
(declare-fun $BoolArray (T@U) T@U)
(declare-fun $BoolIs (Bool T@U) Bool)
(declare-fun $BoolArrayGet (T@U Int) Bool)
(declare-fun $RefArray (T@U) T@U)
(declare-fun $BoolArraySet (T@U Int Bool) T@U)
(declare-fun $ArrayLength (T@U) Int)
(declare-fun System.Int16 () T@U)
(declare-fun System.Int16.MinValue () Int)
(declare-fun System.Int16.MaxValue () Int)
(declare-fun System.Int32 () T@U)
(declare-fun System.Int32.MinValue () Int)
(declare-fun System.Int32.MaxValue () Int)
(declare-fun System.Int64 () T@U)
(declare-fun System.Int64.MinValue () Int)
(declare-fun System.Int64.MaxValue () Int)
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
(assert  (and (and (and (= (Ctor elementsType) 6) (= (Ctor refType) 7)) (forall ((arg0@@11 T@U) (arg1 Int) ) (! (= (type ($RefArrayGet arg0@@11 arg1)) refType)
 :qid |funType:$RefArrayGet|
 :pattern ( ($RefArrayGet arg0@@11 arg1))
))) (forall ((arg0@@12 T@U) (arg1@@0 Int) (arg2 T@U) ) (! (= (type ($RefArraySet arg0@@12 arg1@@0 arg2)) elementsType)
 :qid |funType:$RefArraySet|
 :pattern ( ($RefArraySet arg0@@12 arg1@@0 arg2))
))))
(assert (forall ((A T@U) (i Int) (x@@8 T@U) ) (!  (=> (and (= (type A) elementsType) (= (type x@@8) refType)) (= ($RefArrayGet ($RefArraySet A i x@@8) i) x@@8))
 :qid |ModifiedBagbpl.60:15|
 :skolemid |0|
 :no-pattern (type A)
 :no-pattern (type x@@8)
 :no-pattern (U_2_int A)
 :no-pattern (U_2_bool A)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert (forall ((arg0@@13 T@U) (arg1@@1 Int) (arg2@@0 Int) ) (! (= (type ($IntArraySet arg0@@13 arg1@@1 arg2@@0)) elementsType)
 :qid |funType:$IntArraySet|
 :pattern ( ($IntArraySet arg0@@13 arg1@@1 arg2@@0))
)))
(assert (forall ((A@@0 T@U) (i@@0 Int) (x@@9 Int) ) (!  (=> (= (type A@@0) elementsType) (= ($IntArrayGet ($IntArraySet A@@0 i@@0 x@@9) i@@0) x@@9))
 :qid |ModifiedBagbpl.64:15|
 :skolemid |2|
 :no-pattern (type A@@0)
 :no-pattern (U_2_int A@@0)
 :no-pattern (U_2_bool A@@0)
)))
(assert (forall ((arg0@@14 T@U) (arg1@@2 Int) (arg2@@1 Real) ) (! (= (type ($RealArraySet arg0@@14 arg1@@2 arg2@@1)) elementsType)
 :qid |funType:$RealArraySet|
 :pattern ( ($RealArraySet arg0@@14 arg1@@2 arg2@@1))
)))
(assert (forall ((A@@1 T@U) (i@@1 Int) (x@@10 Real) ) (!  (=> (= (type A@@1) elementsType) (= ($RealArrayGet ($RealArraySet A@@1 i@@1 x@@10) i@@1) x@@10))
 :qid |ModifiedBagbpl.68:15|
 :skolemid |4|
 :no-pattern (type A@@1)
 :no-pattern (U_2_int A@@1)
 :no-pattern (U_2_bool A@@1)
)))
(assert  (and (forall ((arg0@@15 T@U) (arg1@@3 Int) ) (! (= (type ($ArrayArrayGet arg0@@15 arg1@@3)) elementsType)
 :qid |funType:$ArrayArrayGet|
 :pattern ( ($ArrayArrayGet arg0@@15 arg1@@3))
)) (forall ((arg0@@16 T@U) (arg1@@4 Int) (arg2@@2 T@U) ) (! (= (type ($ArrayArraySet arg0@@16 arg1@@4 arg2@@2)) elementsType)
 :qid |funType:$ArrayArraySet|
 :pattern ( ($ArrayArraySet arg0@@16 arg1@@4 arg2@@2))
))))
(assert (forall ((A@@2 T@U) (i@@2 Int) (x@@11 T@U) ) (!  (=> (and (= (type A@@2) elementsType) (= (type x@@11) elementsType)) (= ($ArrayArrayGet ($ArrayArraySet A@@2 i@@2 x@@11) i@@2) x@@11))
 :qid |ModifiedBagbpl.76:15|
 :skolemid |8|
 :no-pattern (type A@@2)
 :no-pattern (type x@@11)
 :no-pattern (U_2_int A@@2)
 :no-pattern (U_2_bool A@@2)
 :no-pattern (U_2_int x@@11)
 :no-pattern (U_2_bool x@@11)
)))
(assert  (and (and (= (Ctor nameType) 8) (= (type null) refType)) (forall ((arg0@@17 T@U) ) (! (= (type ($typeof arg0@@17)) nameType)
 :qid |funType:$typeof|
 :pattern ( ($typeof arg0@@17))
))))
(assert (forall ((o T@U) (T T@U) ) (!  (=> (and (= (type o) refType) (= (type T) nameType)) (= ($RefIs o T)  (or (= o null) (UOrdering2 ($typeof o) T))))
 :qid |ModifiedBagbpl.126:15|
 :skolemid |14|
 :no-pattern (type o)
 :no-pattern (type T)
 :no-pattern (U_2_int o)
 :no-pattern (U_2_bool o)
 :no-pattern (U_2_int T)
 :no-pattern (U_2_bool T)
)))
(assert (forall ((arg0@@18 T@U) ) (! (= (type ($NotNull arg0@@18)) nameType)
 :qid |funType:$NotNull|
 :pattern ( ($NotNull arg0@@18))
)))
(assert (forall ((o@@0 T@U) (T@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (= (type T@@0) nameType)) (= ($RefIs o@@0 ($NotNull T@@0))  (and (not (= o@@0 null)) ($RefIs o@@0 T@@0))))
 :qid |ModifiedBagbpl.128:15|
 :skolemid |15|
 :no-pattern (type o@@0)
 :no-pattern (type T@@0)
 :no-pattern (U_2_int o@@0)
 :no-pattern (U_2_bool o@@0)
 :no-pattern (U_2_int T@@0)
 :no-pattern (U_2_bool T@@0)
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) (arg1@@5 T@T) (arg2@@3 T@T) ) (! (= (Ctor (MapType0Type arg0@@19 arg1@@5 arg2@@3)) 9)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@20 T@T) (arg1@@6 T@T) (arg2@@4 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@20 arg1@@6 arg2@@4)) arg0@@20)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@20 arg1@@6 arg2@@4))
))) (forall ((arg0@@21 T@T) (arg1@@7 T@T) (arg2@@5 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@21 arg1@@7 arg2@@5)) arg1@@7)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@21 arg1@@7 arg2@@5))
))) (forall ((arg0@@22 T@T) (arg1@@8 T@T) (arg2@@6 T@T) ) (! (= (MapType0TypeInv2 (MapType0Type arg0@@22 arg1@@8 arg2@@6)) arg2@@6)
 :qid |typeInv:MapType0TypeInv2|
 :pattern ( (MapType0Type arg0@@22 arg1@@8 arg2@@6))
))) (forall ((arg0@@23 T@U) (arg1@@9 T@U) (arg2@@7 T@U) ) (! (let ((aVar2 (MapType0TypeInv2 (type arg0@@23))))
(= (type (MapType0Select arg0@@23 arg1@@9 arg2@@7)) aVar2))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@23 arg1@@9 arg2@@7))
))) (forall ((arg0@@24 T@U) (arg1@@10 T@U) (arg2@@8 T@U) (arg3 T@U) ) (! (let ((aVar2@@0 (type arg3)))
(let ((aVar1 (type arg2@@8)))
(let ((aVar0 (type arg1@@10)))
(= (type (MapType0Store arg0@@24 arg1@@10 arg2@@8 arg3)) (MapType0Type aVar0 aVar1 aVar2@@0)))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@24 arg1@@10 arg2@@8 arg3))
))) (forall ((m T@U) (x0 T@U) (x1 T@U) (val T@U) ) (! (let ((aVar2@@1 (MapType0TypeInv2 (type m))))
 (=> (= (type val) aVar2@@1) (= (MapType0Select (MapType0Store m x0 x1 val) x0 x1) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select (MapType0Store m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
))) (forall ((val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@2 T@U) (y0@@1 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@2 x0@@2 x1@@2 val@@2) y0@@1 y1@@1) (MapType0Select m@@2 y0@@1 y1@@1)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (forall ((arg0@@25 T@U) ) (! (= (type ($IntArray arg0@@25)) nameType)
 :qid |funType:$IntArray|
 :pattern ( ($IntArray arg0@@25))
))) (= (type $elements) nameType)))
(assert (forall ((a T@U) (T@@1 T@U) (i@@3 Int) ($ArrayHeap T@U) ) (!  (=> (and (and (and (= (type a) refType) (= (type T@@1) nameType)) (= (type $ArrayHeap) (MapType0Type refType nameType elementsType))) (and ($RefIs a ($IntArray T@@1)) (not (= a null)))) ($IntIs ($IntArrayGet (MapType0Select $ArrayHeap a $elements) i@@3) T@@1))
 :qid |ModifiedBagbpl.130:15|
 :skolemid |16|
 :no-pattern (type a)
 :no-pattern (type T@@1)
 :no-pattern (type $ArrayHeap)
 :no-pattern (U_2_int a)
 :no-pattern (U_2_bool a)
 :no-pattern (U_2_int T@@1)
 :no-pattern (U_2_bool T@@1)
 :no-pattern (U_2_int $ArrayHeap)
 :no-pattern (U_2_bool $ArrayHeap)
)))
(assert (forall ((arg0@@26 T@U) ) (! (= (type ($RealArray arg0@@26)) nameType)
 :qid |funType:$RealArray|
 :pattern ( ($RealArray arg0@@26))
)))
(assert (forall ((a@@0 T@U) (T@@2 T@U) (i@@4 Int) ($ArrayHeap@@0 T@U) ) (!  (=> (and (and (and (= (type a@@0) refType) (= (type T@@2) nameType)) (= (type $ArrayHeap@@0) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@0 ($RealArray T@@2)) (not (= a@@0 null)))) ($RealIs ($RealArrayGet (MapType0Select $ArrayHeap@@0 a@@0 $elements) i@@4) T@@2))
 :qid |ModifiedBagbpl.132:15|
 :skolemid |17|
 :no-pattern (type a@@0)
 :no-pattern (type T@@2)
 :no-pattern (type $ArrayHeap@@0)
 :no-pattern (U_2_int a@@0)
 :no-pattern (U_2_bool a@@0)
 :no-pattern (U_2_int T@@2)
 :no-pattern (U_2_bool T@@2)
 :no-pattern (U_2_int $ArrayHeap@@0)
 :no-pattern (U_2_bool $ArrayHeap@@0)
)))
(assert (forall ((arg0@@27 T@U) ) (! (= (type ($BoolArray arg0@@27)) nameType)
 :qid |funType:$BoolArray|
 :pattern ( ($BoolArray arg0@@27))
)))
(assert (forall ((a@@1 T@U) (T@@3 T@U) (i@@5 Int) ($ArrayHeap@@1 T@U) ) (!  (=> (and (and (and (= (type a@@1) refType) (= (type T@@3) nameType)) (= (type $ArrayHeap@@1) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@1 ($BoolArray T@@3)) (not (= a@@1 null)))) ($BoolIs ($BoolArrayGet (MapType0Select $ArrayHeap@@1 a@@1 $elements) i@@5) T@@3))
 :qid |ModifiedBagbpl.134:15|
 :skolemid |18|
 :no-pattern (type a@@1)
 :no-pattern (type T@@3)
 :no-pattern (type $ArrayHeap@@1)
 :no-pattern (U_2_int a@@1)
 :no-pattern (U_2_bool a@@1)
 :no-pattern (U_2_int T@@3)
 :no-pattern (U_2_bool T@@3)
 :no-pattern (U_2_int $ArrayHeap@@1)
 :no-pattern (U_2_bool $ArrayHeap@@1)
)))
(assert (forall ((arg0@@28 T@U) ) (! (= (type ($RefArray arg0@@28)) nameType)
 :qid |funType:$RefArray|
 :pattern ( ($RefArray arg0@@28))
)))
(assert (forall ((a@@2 T@U) (T@@4 T@U) (i@@6 Int) ($ArrayHeap@@2 T@U) ) (!  (=> (and (and (and (= (type a@@2) refType) (= (type T@@4) nameType)) (= (type $ArrayHeap@@2) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@2 ($RefArray T@@4)) (not (= a@@2 null)))) ($RefIs ($RefArrayGet (MapType0Select $ArrayHeap@@2 a@@2 $elements) i@@6) T@@4))
 :qid |ModifiedBagbpl.136:15|
 :skolemid |19|
 :no-pattern (type a@@2)
 :no-pattern (type T@@4)
 :no-pattern (type $ArrayHeap@@2)
 :no-pattern (U_2_int a@@2)
 :no-pattern (U_2_bool a@@2)
 :no-pattern (U_2_int T@@4)
 :no-pattern (U_2_bool T@@4)
 :no-pattern (U_2_int $ArrayHeap@@2)
 :no-pattern (U_2_bool $ArrayHeap@@2)
)))
(assert (forall ((arg0@@29 T@U) (arg1@@11 Int) (arg2@@9 Bool) ) (! (= (type ($BoolArraySet arg0@@29 arg1@@11 arg2@@9)) elementsType)
 :qid |funType:$BoolArraySet|
 :pattern ( ($BoolArraySet arg0@@29 arg1@@11 arg2@@9))
)))
(assert (forall ((A@@3 T@U) (i@@7 Int) (j Int) (x@@12 Bool) ) (!  (=> (and (= (type A@@3) elementsType) (not (= i@@7 j))) (= ($BoolArrayGet ($BoolArraySet A@@3 i@@7 x@@12) j) ($BoolArrayGet A@@3 j)))
 :qid |ModifiedBagbpl.74:15|
 :skolemid |7|
 :no-pattern (type A@@3)
 :no-pattern (U_2_int A@@3)
 :no-pattern (U_2_bool A@@3)
)))
(assert (forall ((A@@4 T@U) (i@@8 Int) (j@@0 Int) (x@@13 T@U) ) (!  (=> (and (and (= (type A@@4) elementsType) (= (type x@@13) refType)) (not (= i@@8 j@@0))) (= ($RefArrayGet ($RefArraySet A@@4 i@@8 x@@13) j@@0) ($RefArrayGet A@@4 j@@0)))
 :qid |ModifiedBagbpl.62:15|
 :skolemid |1|
 :no-pattern (type A@@4)
 :no-pattern (type x@@13)
 :no-pattern (U_2_int A@@4)
 :no-pattern (U_2_bool A@@4)
 :no-pattern (U_2_int x@@13)
 :no-pattern (U_2_bool x@@13)
)))
(assert (forall ((A@@5 T@U) (i@@9 Int) (j@@1 Int) (x@@14 Int) ) (!  (=> (and (= (type A@@5) elementsType) (not (= i@@9 j@@1))) (= ($IntArrayGet ($IntArraySet A@@5 i@@9 x@@14) j@@1) ($IntArrayGet A@@5 j@@1)))
 :qid |ModifiedBagbpl.66:15|
 :skolemid |3|
 :no-pattern (type A@@5)
 :no-pattern (U_2_int A@@5)
 :no-pattern (U_2_bool A@@5)
)))
(assert (forall ((A@@6 T@U) (i@@10 Int) (j@@2 Int) (x@@15 Real) ) (!  (=> (and (= (type A@@6) elementsType) (not (= i@@10 j@@2))) (= ($RealArrayGet ($RealArraySet A@@6 i@@10 x@@15) j@@2) ($RealArrayGet A@@6 j@@2)))
 :qid |ModifiedBagbpl.70:15|
 :skolemid |5|
 :no-pattern (type A@@6)
 :no-pattern (U_2_int A@@6)
 :no-pattern (U_2_bool A@@6)
)))
(assert (forall ((A@@7 T@U) (i@@11 Int) (j@@3 Int) (x@@16 T@U) ) (!  (=> (and (and (= (type A@@7) elementsType) (= (type x@@16) elementsType)) (not (= i@@11 j@@3))) (= ($ArrayArrayGet ($ArrayArraySet A@@7 i@@11 x@@16) j@@3) ($ArrayArrayGet A@@7 j@@3)))
 :qid |ModifiedBagbpl.78:15|
 :skolemid |9|
 :no-pattern (type A@@7)
 :no-pattern (type x@@16)
 :no-pattern (U_2_int A@@7)
 :no-pattern (U_2_bool A@@7)
 :no-pattern (U_2_int x@@16)
 :no-pattern (U_2_bool x@@16)
)))
(assert (forall ((a@@3 T@U) ) (!  (=> (= (type a@@3) refType) (<= 0 ($ArrayLength a@@3)))
 :qid |ModifiedBagbpl.80:15|
 :skolemid |10|
 :no-pattern (type a@@3)
 :no-pattern (U_2_int a@@3)
 :no-pattern (U_2_bool a@@3)
)))
(assert (= (type System.Int16) nameType))
(assert (forall ((i@@12 Int) ) (! (= ($IntIs i@@12 System.Int16)  (and (<= System.Int16.MinValue i@@12) (<= i@@12 System.Int16.MaxValue)))
 :qid |ModifiedBagbpl.118:15|
 :skolemid |11|
)))
(assert (= (type System.Int32) nameType))
(assert (forall ((i@@13 Int) ) (! (= ($IntIs i@@13 System.Int32)  (and (<= System.Int32.MinValue i@@13) (<= i@@13 System.Int32.MaxValue)))
 :qid |ModifiedBagbpl.120:15|
 :skolemid |12|
)))
(assert (= (type System.Int64) nameType))
(assert (forall ((i@@14 Int) ) (! (= ($IntIs i@@14 System.Int64)  (and (<= System.Int64.MinValue i@@14) (<= i@@14 System.Int64.MaxValue)))
 :qid |ModifiedBagbpl.122:15|
 :skolemid |13|
)))
(assert (< System.Int64.MinValue System.Int32.MinValue))
(assert (< System.Int32.MinValue System.Int16.MinValue))
(assert (< System.Int16.MinValue System.Int16.MaxValue))
(assert (< System.Int16.MaxValue System.Int32.MaxValue))
(assert (< System.Int32.MaxValue System.Int64.MaxValue))
(assert (forall ((A@@8 T@U) (i@@15 Int) (x@@17 Bool) ) (!  (=> (= (type A@@8) elementsType) (= ($BoolArrayGet ($BoolArraySet A@@8 i@@15 x@@17) i@@15) x@@17))
 :qid |ModifiedBagbpl.72:15|
 :skolemid |6|
 :no-pattern (type A@@8)
 :no-pattern (U_2_int A@@8)
 :no-pattern (U_2_bool A@@8)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this () T@U)
(declare-fun Bag () T@U)
(declare-fun initialElements$in () T@U)
(declare-fun start$in () Int)
(declare-fun howMany$in () Int)
(declare-fun $IntHeap@0 () T@U)
(declare-fun $IntHeap () T@U)
(declare-fun Bag.n () T@U)
(declare-fun $BoolHeap () T@U)
(declare-fun stack0o@0 () T@U)
(declare-fun $allocated () T@U)
(declare-fun $RefHeap@0 () T@U)
(declare-fun $RefHeap () T@U)
(declare-fun Bag.a () T@U)
(declare-fun stack0o@1 () T@U)
(declare-fun stack2i@0 () Int)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (= (type this) refType) (= (type Bag) nameType)) (= (type initialElements$in) refType)) (= (type $IntHeap@0) (MapType0Type refType nameType intType))) (= (type $IntHeap) (MapType0Type refType nameType intType))) (= (type Bag.n) nameType)) (= (type $BoolHeap) (MapType0Type refType nameType boolType))) (= (type stack0o@0) refType)) (= (type $allocated) nameType)) (= (type $RefHeap@0) (MapType0Type refType nameType refType))) (= (type $RefHeap) (MapType0Type refType nameType refType))) (= (type Bag.a) nameType)) (= (type stack0o@1) refType)))
(set-info :boogie-vc-id Bag..ctor$$System.Int32$System.Int32)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((entry_correct  (=> ($RefIs this ($NotNull Bag)) (=> (and (and ($RefIs initialElements$in ($NotNull ($IntArray System.Int32))) ($IntIs start$in System.Int32)) (and ($IntIs howMany$in System.Int32) (= $IntHeap@0 (MapType0Store $IntHeap this Bag.n (int_2_U howMany$in))))) (=> (and (and (and (= (U_2_bool (MapType0Select $BoolHeap stack0o@0 $allocated)) true) (= ($ArrayLength stack0o@0) howMany$in)) (= $RefHeap@0 (MapType0Store $RefHeap this Bag.a stack0o@0))) (and (= stack0o@1 (MapType0Select $RefHeap@0 this Bag.a)) (= stack2i@0 (+ start$in howMany$in)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= this null))) (=> (not (= this null)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (U_2_int (MapType0Select $IntHeap@0 this Bag.n))) (<= (U_2_int (MapType0Select $IntHeap@0 this Bag.n)) ($ArrayLength (MapType0Select $RefHeap@0 this Bag.a))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (<= 0 howMany$in) (=> (and (<= (+ start$in howMany$in) ($ArrayLength initialElements$in)) (= (ControlFlow 0 4) 2)) entry_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-proof)
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
(declare-fun elementsType () T@T)
(declare-fun refType () T@T)
(declare-fun $RefArrayGet (T@U Int) T@U)
(declare-fun $RefArraySet (T@U Int T@U) T@U)
(declare-fun $IntArrayGet (T@U Int) Int)
(declare-fun $IntArraySet (T@U Int Int) T@U)
(declare-fun $RealArrayGet (T@U Int) Real)
(declare-fun $RealArraySet (T@U Int Real) T@U)
(declare-fun $ArrayArrayGet (T@U Int) T@U)
(declare-fun $ArrayArraySet (T@U Int T@U) T@U)
(declare-fun nameType () T@T)
(declare-fun $RefIs (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $typeof (T@U) T@U)
(declare-fun $NotNull (T@U) T@U)
(declare-fun MapType0Type (T@T T@T T@T) T@T)
(declare-fun $IntArray (T@U) T@U)
(declare-fun $IntIs (Int T@U) Bool)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun $elements () T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0TypeInv2 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun $RealArray (T@U) T@U)
(declare-fun $RealIs (Real T@U) Bool)
(declare-fun $BoolArray (T@U) T@U)
(declare-fun $BoolIs (Bool T@U) Bool)
(declare-fun $BoolArrayGet (T@U Int) Bool)
(declare-fun $RefArray (T@U) T@U)
(declare-fun $BoolArraySet (T@U Int Bool) T@U)
(declare-fun $ArrayLength (T@U) Int)
(declare-fun System.Int16 () T@U)
(declare-fun System.Int16.MinValue () Int)
(declare-fun System.Int16.MaxValue () Int)
(declare-fun System.Int32 () T@U)
(declare-fun System.Int32.MinValue () Int)
(declare-fun System.Int32.MaxValue () Int)
(declare-fun System.Int64 () T@U)
(declare-fun System.Int64.MinValue () Int)
(declare-fun System.Int64.MaxValue () Int)
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
(assert  (and (and (and (= (Ctor elementsType) 6) (= (Ctor refType) 7)) (forall ((arg0@@11 T@U) (arg1 Int) ) (! (= (type ($RefArrayGet arg0@@11 arg1)) refType)
 :qid |funType:$RefArrayGet|
 :pattern ( ($RefArrayGet arg0@@11 arg1))
))) (forall ((arg0@@12 T@U) (arg1@@0 Int) (arg2 T@U) ) (! (= (type ($RefArraySet arg0@@12 arg1@@0 arg2)) elementsType)
 :qid |funType:$RefArraySet|
 :pattern ( ($RefArraySet arg0@@12 arg1@@0 arg2))
))))
(assert (forall ((A T@U) (i Int) (x@@8 T@U) ) (!  (=> (and (= (type A) elementsType) (= (type x@@8) refType)) (= ($RefArrayGet ($RefArraySet A i x@@8) i) x@@8))
 :qid |ModifiedBagbpl.60:15|
 :skolemid |0|
 :no-pattern (type A)
 :no-pattern (type x@@8)
 :no-pattern (U_2_int A)
 :no-pattern (U_2_bool A)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert (forall ((arg0@@13 T@U) (arg1@@1 Int) (arg2@@0 Int) ) (! (= (type ($IntArraySet arg0@@13 arg1@@1 arg2@@0)) elementsType)
 :qid |funType:$IntArraySet|
 :pattern ( ($IntArraySet arg0@@13 arg1@@1 arg2@@0))
)))
(assert (forall ((A@@0 T@U) (i@@0 Int) (x@@9 Int) ) (!  (=> (= (type A@@0) elementsType) (= ($IntArrayGet ($IntArraySet A@@0 i@@0 x@@9) i@@0) x@@9))
 :qid |ModifiedBagbpl.64:15|
 :skolemid |2|
 :no-pattern (type A@@0)
 :no-pattern (U_2_int A@@0)
 :no-pattern (U_2_bool A@@0)
)))
(assert (forall ((arg0@@14 T@U) (arg1@@2 Int) (arg2@@1 Real) ) (! (= (type ($RealArraySet arg0@@14 arg1@@2 arg2@@1)) elementsType)
 :qid |funType:$RealArraySet|
 :pattern ( ($RealArraySet arg0@@14 arg1@@2 arg2@@1))
)))
(assert (forall ((A@@1 T@U) (i@@1 Int) (x@@10 Real) ) (!  (=> (= (type A@@1) elementsType) (= ($RealArrayGet ($RealArraySet A@@1 i@@1 x@@10) i@@1) x@@10))
 :qid |ModifiedBagbpl.68:15|
 :skolemid |4|
 :no-pattern (type A@@1)
 :no-pattern (U_2_int A@@1)
 :no-pattern (U_2_bool A@@1)
)))
(assert  (and (forall ((arg0@@15 T@U) (arg1@@3 Int) ) (! (= (type ($ArrayArrayGet arg0@@15 arg1@@3)) elementsType)
 :qid |funType:$ArrayArrayGet|
 :pattern ( ($ArrayArrayGet arg0@@15 arg1@@3))
)) (forall ((arg0@@16 T@U) (arg1@@4 Int) (arg2@@2 T@U) ) (! (= (type ($ArrayArraySet arg0@@16 arg1@@4 arg2@@2)) elementsType)
 :qid |funType:$ArrayArraySet|
 :pattern ( ($ArrayArraySet arg0@@16 arg1@@4 arg2@@2))
))))
(assert (forall ((A@@2 T@U) (i@@2 Int) (x@@11 T@U) ) (!  (=> (and (= (type A@@2) elementsType) (= (type x@@11) elementsType)) (= ($ArrayArrayGet ($ArrayArraySet A@@2 i@@2 x@@11) i@@2) x@@11))
 :qid |ModifiedBagbpl.76:15|
 :skolemid |8|
 :no-pattern (type A@@2)
 :no-pattern (type x@@11)
 :no-pattern (U_2_int A@@2)
 :no-pattern (U_2_bool A@@2)
 :no-pattern (U_2_int x@@11)
 :no-pattern (U_2_bool x@@11)
)))
(assert  (and (and (= (Ctor nameType) 8) (= (type null) refType)) (forall ((arg0@@17 T@U) ) (! (= (type ($typeof arg0@@17)) nameType)
 :qid |funType:$typeof|
 :pattern ( ($typeof arg0@@17))
))))
(assert (forall ((o T@U) (T T@U) ) (!  (=> (and (= (type o) refType) (= (type T) nameType)) (= ($RefIs o T)  (or (= o null) (UOrdering2 ($typeof o) T))))
 :qid |ModifiedBagbpl.126:15|
 :skolemid |14|
 :no-pattern (type o)
 :no-pattern (type T)
 :no-pattern (U_2_int o)
 :no-pattern (U_2_bool o)
 :no-pattern (U_2_int T)
 :no-pattern (U_2_bool T)
)))
(assert (forall ((arg0@@18 T@U) ) (! (= (type ($NotNull arg0@@18)) nameType)
 :qid |funType:$NotNull|
 :pattern ( ($NotNull arg0@@18))
)))
(assert (forall ((o@@0 T@U) (T@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (= (type T@@0) nameType)) (= ($RefIs o@@0 ($NotNull T@@0))  (and (not (= o@@0 null)) ($RefIs o@@0 T@@0))))
 :qid |ModifiedBagbpl.128:15|
 :skolemid |15|
 :no-pattern (type o@@0)
 :no-pattern (type T@@0)
 :no-pattern (U_2_int o@@0)
 :no-pattern (U_2_bool o@@0)
 :no-pattern (U_2_int T@@0)
 :no-pattern (U_2_bool T@@0)
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) (arg1@@5 T@T) (arg2@@3 T@T) ) (! (= (Ctor (MapType0Type arg0@@19 arg1@@5 arg2@@3)) 9)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@20 T@T) (arg1@@6 T@T) (arg2@@4 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@20 arg1@@6 arg2@@4)) arg0@@20)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@20 arg1@@6 arg2@@4))
))) (forall ((arg0@@21 T@T) (arg1@@7 T@T) (arg2@@5 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@21 arg1@@7 arg2@@5)) arg1@@7)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@21 arg1@@7 arg2@@5))
))) (forall ((arg0@@22 T@T) (arg1@@8 T@T) (arg2@@6 T@T) ) (! (= (MapType0TypeInv2 (MapType0Type arg0@@22 arg1@@8 arg2@@6)) arg2@@6)
 :qid |typeInv:MapType0TypeInv2|
 :pattern ( (MapType0Type arg0@@22 arg1@@8 arg2@@6))
))) (forall ((arg0@@23 T@U) (arg1@@9 T@U) (arg2@@7 T@U) ) (! (let ((aVar2 (MapType0TypeInv2 (type arg0@@23))))
(= (type (MapType0Select arg0@@23 arg1@@9 arg2@@7)) aVar2))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@23 arg1@@9 arg2@@7))
))) (forall ((arg0@@24 T@U) (arg1@@10 T@U) (arg2@@8 T@U) (arg3 T@U) ) (! (let ((aVar2@@0 (type arg3)))
(let ((aVar1 (type arg2@@8)))
(let ((aVar0 (type arg1@@10)))
(= (type (MapType0Store arg0@@24 arg1@@10 arg2@@8 arg3)) (MapType0Type aVar0 aVar1 aVar2@@0)))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@24 arg1@@10 arg2@@8 arg3))
))) (forall ((m T@U) (x0 T@U) (x1 T@U) (val T@U) ) (! (let ((aVar2@@1 (MapType0TypeInv2 (type m))))
 (=> (= (type val) aVar2@@1) (= (MapType0Select (MapType0Store m x0 x1 val) x0 x1) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select (MapType0Store m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
))) (forall ((val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@2 T@U) (y0@@1 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@2 x0@@2 x1@@2 val@@2) y0@@1 y1@@1) (MapType0Select m@@2 y0@@1 y1@@1)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (forall ((arg0@@25 T@U) ) (! (= (type ($IntArray arg0@@25)) nameType)
 :qid |funType:$IntArray|
 :pattern ( ($IntArray arg0@@25))
))) (= (type $elements) nameType)))
(assert (forall ((a T@U) (T@@1 T@U) (i@@3 Int) ($ArrayHeap T@U) ) (!  (=> (and (and (and (= (type a) refType) (= (type T@@1) nameType)) (= (type $ArrayHeap) (MapType0Type refType nameType elementsType))) (and ($RefIs a ($IntArray T@@1)) (not (= a null)))) ($IntIs ($IntArrayGet (MapType0Select $ArrayHeap a $elements) i@@3) T@@1))
 :qid |ModifiedBagbpl.130:15|
 :skolemid |16|
 :no-pattern (type a)
 :no-pattern (type T@@1)
 :no-pattern (type $ArrayHeap)
 :no-pattern (U_2_int a)
 :no-pattern (U_2_bool a)
 :no-pattern (U_2_int T@@1)
 :no-pattern (U_2_bool T@@1)
 :no-pattern (U_2_int $ArrayHeap)
 :no-pattern (U_2_bool $ArrayHeap)
)))
(assert (forall ((arg0@@26 T@U) ) (! (= (type ($RealArray arg0@@26)) nameType)
 :qid |funType:$RealArray|
 :pattern ( ($RealArray arg0@@26))
)))
(assert (forall ((a@@0 T@U) (T@@2 T@U) (i@@4 Int) ($ArrayHeap@@0 T@U) ) (!  (=> (and (and (and (= (type a@@0) refType) (= (type T@@2) nameType)) (= (type $ArrayHeap@@0) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@0 ($RealArray T@@2)) (not (= a@@0 null)))) ($RealIs ($RealArrayGet (MapType0Select $ArrayHeap@@0 a@@0 $elements) i@@4) T@@2))
 :qid |ModifiedBagbpl.132:15|
 :skolemid |17|
 :no-pattern (type a@@0)
 :no-pattern (type T@@2)
 :no-pattern (type $ArrayHeap@@0)
 :no-pattern (U_2_int a@@0)
 :no-pattern (U_2_bool a@@0)
 :no-pattern (U_2_int T@@2)
 :no-pattern (U_2_bool T@@2)
 :no-pattern (U_2_int $ArrayHeap@@0)
 :no-pattern (U_2_bool $ArrayHeap@@0)
)))
(assert (forall ((arg0@@27 T@U) ) (! (= (type ($BoolArray arg0@@27)) nameType)
 :qid |funType:$BoolArray|
 :pattern ( ($BoolArray arg0@@27))
)))
(assert (forall ((a@@1 T@U) (T@@3 T@U) (i@@5 Int) ($ArrayHeap@@1 T@U) ) (!  (=> (and (and (and (= (type a@@1) refType) (= (type T@@3) nameType)) (= (type $ArrayHeap@@1) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@1 ($BoolArray T@@3)) (not (= a@@1 null)))) ($BoolIs ($BoolArrayGet (MapType0Select $ArrayHeap@@1 a@@1 $elements) i@@5) T@@3))
 :qid |ModifiedBagbpl.134:15|
 :skolemid |18|
 :no-pattern (type a@@1)
 :no-pattern (type T@@3)
 :no-pattern (type $ArrayHeap@@1)
 :no-pattern (U_2_int a@@1)
 :no-pattern (U_2_bool a@@1)
 :no-pattern (U_2_int T@@3)
 :no-pattern (U_2_bool T@@3)
 :no-pattern (U_2_int $ArrayHeap@@1)
 :no-pattern (U_2_bool $ArrayHeap@@1)
)))
(assert (forall ((arg0@@28 T@U) ) (! (= (type ($RefArray arg0@@28)) nameType)
 :qid |funType:$RefArray|
 :pattern ( ($RefArray arg0@@28))
)))
(assert (forall ((a@@2 T@U) (T@@4 T@U) (i@@6 Int) ($ArrayHeap@@2 T@U) ) (!  (=> (and (and (and (= (type a@@2) refType) (= (type T@@4) nameType)) (= (type $ArrayHeap@@2) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@2 ($RefArray T@@4)) (not (= a@@2 null)))) ($RefIs ($RefArrayGet (MapType0Select $ArrayHeap@@2 a@@2 $elements) i@@6) T@@4))
 :qid |ModifiedBagbpl.136:15|
 :skolemid |19|
 :no-pattern (type a@@2)
 :no-pattern (type T@@4)
 :no-pattern (type $ArrayHeap@@2)
 :no-pattern (U_2_int a@@2)
 :no-pattern (U_2_bool a@@2)
 :no-pattern (U_2_int T@@4)
 :no-pattern (U_2_bool T@@4)
 :no-pattern (U_2_int $ArrayHeap@@2)
 :no-pattern (U_2_bool $ArrayHeap@@2)
)))
(assert (forall ((arg0@@29 T@U) (arg1@@11 Int) (arg2@@9 Bool) ) (! (= (type ($BoolArraySet arg0@@29 arg1@@11 arg2@@9)) elementsType)
 :qid |funType:$BoolArraySet|
 :pattern ( ($BoolArraySet arg0@@29 arg1@@11 arg2@@9))
)))
(assert (forall ((A@@3 T@U) (i@@7 Int) (j Int) (x@@12 Bool) ) (!  (=> (and (= (type A@@3) elementsType) (not (= i@@7 j))) (= ($BoolArrayGet ($BoolArraySet A@@3 i@@7 x@@12) j) ($BoolArrayGet A@@3 j)))
 :qid |ModifiedBagbpl.74:15|
 :skolemid |7|
 :no-pattern (type A@@3)
 :no-pattern (U_2_int A@@3)
 :no-pattern (U_2_bool A@@3)
)))
(assert (forall ((A@@4 T@U) (i@@8 Int) (j@@0 Int) (x@@13 T@U) ) (!  (=> (and (and (= (type A@@4) elementsType) (= (type x@@13) refType)) (not (= i@@8 j@@0))) (= ($RefArrayGet ($RefArraySet A@@4 i@@8 x@@13) j@@0) ($RefArrayGet A@@4 j@@0)))
 :qid |ModifiedBagbpl.62:15|
 :skolemid |1|
 :no-pattern (type A@@4)
 :no-pattern (type x@@13)
 :no-pattern (U_2_int A@@4)
 :no-pattern (U_2_bool A@@4)
 :no-pattern (U_2_int x@@13)
 :no-pattern (U_2_bool x@@13)
)))
(assert (forall ((A@@5 T@U) (i@@9 Int) (j@@1 Int) (x@@14 Int) ) (!  (=> (and (= (type A@@5) elementsType) (not (= i@@9 j@@1))) (= ($IntArrayGet ($IntArraySet A@@5 i@@9 x@@14) j@@1) ($IntArrayGet A@@5 j@@1)))
 :qid |ModifiedBagbpl.66:15|
 :skolemid |3|
 :no-pattern (type A@@5)
 :no-pattern (U_2_int A@@5)
 :no-pattern (U_2_bool A@@5)
)))
(assert (forall ((A@@6 T@U) (i@@10 Int) (j@@2 Int) (x@@15 Real) ) (!  (=> (and (= (type A@@6) elementsType) (not (= i@@10 j@@2))) (= ($RealArrayGet ($RealArraySet A@@6 i@@10 x@@15) j@@2) ($RealArrayGet A@@6 j@@2)))
 :qid |ModifiedBagbpl.70:15|
 :skolemid |5|
 :no-pattern (type A@@6)
 :no-pattern (U_2_int A@@6)
 :no-pattern (U_2_bool A@@6)
)))
(assert (forall ((A@@7 T@U) (i@@11 Int) (j@@3 Int) (x@@16 T@U) ) (!  (=> (and (and (= (type A@@7) elementsType) (= (type x@@16) elementsType)) (not (= i@@11 j@@3))) (= ($ArrayArrayGet ($ArrayArraySet A@@7 i@@11 x@@16) j@@3) ($ArrayArrayGet A@@7 j@@3)))
 :qid |ModifiedBagbpl.78:15|
 :skolemid |9|
 :no-pattern (type A@@7)
 :no-pattern (type x@@16)
 :no-pattern (U_2_int A@@7)
 :no-pattern (U_2_bool A@@7)
 :no-pattern (U_2_int x@@16)
 :no-pattern (U_2_bool x@@16)
)))
(assert (forall ((a@@3 T@U) ) (!  (=> (= (type a@@3) refType) (<= 0 ($ArrayLength a@@3)))
 :qid |ModifiedBagbpl.80:15|
 :skolemid |10|
 :no-pattern (type a@@3)
 :no-pattern (U_2_int a@@3)
 :no-pattern (U_2_bool a@@3)
)))
(assert (= (type System.Int16) nameType))
(assert (forall ((i@@12 Int) ) (! (= ($IntIs i@@12 System.Int16)  (and (<= System.Int16.MinValue i@@12) (<= i@@12 System.Int16.MaxValue)))
 :qid |ModifiedBagbpl.118:15|
 :skolemid |11|
)))
(assert (= (type System.Int32) nameType))
(assert (forall ((i@@13 Int) ) (! (= ($IntIs i@@13 System.Int32)  (and (<= System.Int32.MinValue i@@13) (<= i@@13 System.Int32.MaxValue)))
 :qid |ModifiedBagbpl.120:15|
 :skolemid |12|
)))
(assert (= (type System.Int64) nameType))
(assert (forall ((i@@14 Int) ) (! (= ($IntIs i@@14 System.Int64)  (and (<= System.Int64.MinValue i@@14) (<= i@@14 System.Int64.MaxValue)))
 :qid |ModifiedBagbpl.122:15|
 :skolemid |13|
)))
(assert (< System.Int64.MinValue System.Int32.MinValue))
(assert (< System.Int32.MinValue System.Int16.MinValue))
(assert (< System.Int16.MinValue System.Int16.MaxValue))
(assert (< System.Int16.MaxValue System.Int32.MaxValue))
(assert (< System.Int32.MaxValue System.Int64.MaxValue))
(assert (forall ((A@@8 T@U) (i@@15 Int) (x@@17 Bool) ) (!  (=> (= (type A@@8) elementsType) (= ($BoolArrayGet ($BoolArraySet A@@8 i@@15 x@@17) i@@15) x@@17))
 :qid |ModifiedBagbpl.72:15|
 :skolemid |6|
 :no-pattern (type A@@8)
 :no-pattern (U_2_int A@@8)
 :no-pattern (U_2_bool A@@8)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stack0b@0 () Bool)
(declare-fun stack1o@1 () T@U)
(declare-fun $RefHeap () T@U)
(declare-fun this () T@U)
(declare-fun Bag.a () T@U)
(declare-fun stack1i@1 () Int)
(declare-fun stack0i@1 () Int)
(declare-fun $IntHeap () T@U)
(declare-fun Bag.n () T@U)
(declare-fun Bag () T@U)
(declare-fun x$in () Int)
(declare-fun stack0i@0 () Int)
(declare-fun stack1o@0 () T@U)
(declare-fun stack1i@0 () Int)
(assert  (and (and (and (and (and (and (and (= (type stack1o@1) refType) (= (type $RefHeap) (MapType0Type refType nameType refType))) (= (type this) refType)) (= (type Bag.a) nameType)) (= (type $IntHeap) (MapType0Type refType nameType intType))) (= (type Bag.n) nameType)) (= (type Bag) nameType)) (= (type stack1o@0) refType)))
(set-info :boogie-vc-id Bag.Add$System.Int32)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((falseblock206_correct  (=> (= stack0b@0 false) (=> (and (and (= stack1o@1 (MapType0Select $RefHeap this Bag.a)) (= stack1i@1 ($ArrayLength stack1o@1))) (and (= stack0i@1 (* 2 stack1i@1)) (= (ControlFlow 0 3) (- 0 2)))) (<= (U_2_int (MapType0Select $IntHeap this Bag.n)) stack0i@1)))))
(let ((trueblock208_correct true))
(let ((entry_correct  (=> (and ($RefIs this ($NotNull Bag)) ($IntIs x$in System.Int32)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not (= this null))) (=> (not (= this null)) (=> (and (<= 0 (U_2_int (MapType0Select $IntHeap this Bag.n))) (<= (U_2_int (MapType0Select $IntHeap this Bag.n)) ($ArrayLength (MapType0Select $RefHeap this Bag.a)))) (=> (and (and (= stack0i@0 (U_2_int (MapType0Select $IntHeap this Bag.n))) (= stack1o@0 (MapType0Select $RefHeap this Bag.a))) (and (= stack1i@0 ($ArrayLength stack1o@0)) (= stack0b@0 (not (= stack0i@0 stack1i@0))))) (and (=> (= (ControlFlow 0 4) 1) trueblock208_correct) (=> (= (ControlFlow 0 4) 3) falseblock206_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 4) entry_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-proof)
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
(declare-fun elementsType () T@T)
(declare-fun refType () T@T)
(declare-fun $RefArrayGet (T@U Int) T@U)
(declare-fun $RefArraySet (T@U Int T@U) T@U)
(declare-fun $IntArrayGet (T@U Int) Int)
(declare-fun $IntArraySet (T@U Int Int) T@U)
(declare-fun $RealArrayGet (T@U Int) Real)
(declare-fun $RealArraySet (T@U Int Real) T@U)
(declare-fun $ArrayArrayGet (T@U Int) T@U)
(declare-fun $ArrayArraySet (T@U Int T@U) T@U)
(declare-fun nameType () T@T)
(declare-fun $RefIs (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $typeof (T@U) T@U)
(declare-fun $NotNull (T@U) T@U)
(declare-fun MapType0Type (T@T T@T T@T) T@T)
(declare-fun $IntArray (T@U) T@U)
(declare-fun $IntIs (Int T@U) Bool)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun $elements () T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0TypeInv2 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun $RealArray (T@U) T@U)
(declare-fun $RealIs (Real T@U) Bool)
(declare-fun $BoolArray (T@U) T@U)
(declare-fun $BoolIs (Bool T@U) Bool)
(declare-fun $BoolArrayGet (T@U Int) Bool)
(declare-fun $RefArray (T@U) T@U)
(declare-fun $BoolArraySet (T@U Int Bool) T@U)
(declare-fun $ArrayLength (T@U) Int)
(declare-fun System.Int16 () T@U)
(declare-fun System.Int16.MinValue () Int)
(declare-fun System.Int16.MaxValue () Int)
(declare-fun System.Int32 () T@U)
(declare-fun System.Int32.MinValue () Int)
(declare-fun System.Int32.MaxValue () Int)
(declare-fun System.Int64 () T@U)
(declare-fun System.Int64.MinValue () Int)
(declare-fun System.Int64.MaxValue () Int)
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
(assert  (and (and (and (= (Ctor elementsType) 6) (= (Ctor refType) 7)) (forall ((arg0@@11 T@U) (arg1 Int) ) (! (= (type ($RefArrayGet arg0@@11 arg1)) refType)
 :qid |funType:$RefArrayGet|
 :pattern ( ($RefArrayGet arg0@@11 arg1))
))) (forall ((arg0@@12 T@U) (arg1@@0 Int) (arg2 T@U) ) (! (= (type ($RefArraySet arg0@@12 arg1@@0 arg2)) elementsType)
 :qid |funType:$RefArraySet|
 :pattern ( ($RefArraySet arg0@@12 arg1@@0 arg2))
))))
(assert (forall ((A T@U) (i Int) (x@@8 T@U) ) (!  (=> (and (= (type A) elementsType) (= (type x@@8) refType)) (= ($RefArrayGet ($RefArraySet A i x@@8) i) x@@8))
 :qid |ModifiedBagbpl.60:15|
 :skolemid |0|
 :no-pattern (type A)
 :no-pattern (type x@@8)
 :no-pattern (U_2_int A)
 :no-pattern (U_2_bool A)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert (forall ((arg0@@13 T@U) (arg1@@1 Int) (arg2@@0 Int) ) (! (= (type ($IntArraySet arg0@@13 arg1@@1 arg2@@0)) elementsType)
 :qid |funType:$IntArraySet|
 :pattern ( ($IntArraySet arg0@@13 arg1@@1 arg2@@0))
)))
(assert (forall ((A@@0 T@U) (i@@0 Int) (x@@9 Int) ) (!  (=> (= (type A@@0) elementsType) (= ($IntArrayGet ($IntArraySet A@@0 i@@0 x@@9) i@@0) x@@9))
 :qid |ModifiedBagbpl.64:15|
 :skolemid |2|
 :no-pattern (type A@@0)
 :no-pattern (U_2_int A@@0)
 :no-pattern (U_2_bool A@@0)
)))
(assert (forall ((arg0@@14 T@U) (arg1@@2 Int) (arg2@@1 Real) ) (! (= (type ($RealArraySet arg0@@14 arg1@@2 arg2@@1)) elementsType)
 :qid |funType:$RealArraySet|
 :pattern ( ($RealArraySet arg0@@14 arg1@@2 arg2@@1))
)))
(assert (forall ((A@@1 T@U) (i@@1 Int) (x@@10 Real) ) (!  (=> (= (type A@@1) elementsType) (= ($RealArrayGet ($RealArraySet A@@1 i@@1 x@@10) i@@1) x@@10))
 :qid |ModifiedBagbpl.68:15|
 :skolemid |4|
 :no-pattern (type A@@1)
 :no-pattern (U_2_int A@@1)
 :no-pattern (U_2_bool A@@1)
)))
(assert  (and (forall ((arg0@@15 T@U) (arg1@@3 Int) ) (! (= (type ($ArrayArrayGet arg0@@15 arg1@@3)) elementsType)
 :qid |funType:$ArrayArrayGet|
 :pattern ( ($ArrayArrayGet arg0@@15 arg1@@3))
)) (forall ((arg0@@16 T@U) (arg1@@4 Int) (arg2@@2 T@U) ) (! (= (type ($ArrayArraySet arg0@@16 arg1@@4 arg2@@2)) elementsType)
 :qid |funType:$ArrayArraySet|
 :pattern ( ($ArrayArraySet arg0@@16 arg1@@4 arg2@@2))
))))
(assert (forall ((A@@2 T@U) (i@@2 Int) (x@@11 T@U) ) (!  (=> (and (= (type A@@2) elementsType) (= (type x@@11) elementsType)) (= ($ArrayArrayGet ($ArrayArraySet A@@2 i@@2 x@@11) i@@2) x@@11))
 :qid |ModifiedBagbpl.76:15|
 :skolemid |8|
 :no-pattern (type A@@2)
 :no-pattern (type x@@11)
 :no-pattern (U_2_int A@@2)
 :no-pattern (U_2_bool A@@2)
 :no-pattern (U_2_int x@@11)
 :no-pattern (U_2_bool x@@11)
)))
(assert  (and (and (= (Ctor nameType) 8) (= (type null) refType)) (forall ((arg0@@17 T@U) ) (! (= (type ($typeof arg0@@17)) nameType)
 :qid |funType:$typeof|
 :pattern ( ($typeof arg0@@17))
))))
(assert (forall ((o T@U) (T T@U) ) (!  (=> (and (= (type o) refType) (= (type T) nameType)) (= ($RefIs o T)  (or (= o null) (UOrdering2 ($typeof o) T))))
 :qid |ModifiedBagbpl.126:15|
 :skolemid |14|
 :no-pattern (type o)
 :no-pattern (type T)
 :no-pattern (U_2_int o)
 :no-pattern (U_2_bool o)
 :no-pattern (U_2_int T)
 :no-pattern (U_2_bool T)
)))
(assert (forall ((arg0@@18 T@U) ) (! (= (type ($NotNull arg0@@18)) nameType)
 :qid |funType:$NotNull|
 :pattern ( ($NotNull arg0@@18))
)))
(assert (forall ((o@@0 T@U) (T@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (= (type T@@0) nameType)) (= ($RefIs o@@0 ($NotNull T@@0))  (and (not (= o@@0 null)) ($RefIs o@@0 T@@0))))
 :qid |ModifiedBagbpl.128:15|
 :skolemid |15|
 :no-pattern (type o@@0)
 :no-pattern (type T@@0)
 :no-pattern (U_2_int o@@0)
 :no-pattern (U_2_bool o@@0)
 :no-pattern (U_2_int T@@0)
 :no-pattern (U_2_bool T@@0)
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) (arg1@@5 T@T) (arg2@@3 T@T) ) (! (= (Ctor (MapType0Type arg0@@19 arg1@@5 arg2@@3)) 9)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@20 T@T) (arg1@@6 T@T) (arg2@@4 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@20 arg1@@6 arg2@@4)) arg0@@20)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@20 arg1@@6 arg2@@4))
))) (forall ((arg0@@21 T@T) (arg1@@7 T@T) (arg2@@5 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@21 arg1@@7 arg2@@5)) arg1@@7)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@21 arg1@@7 arg2@@5))
))) (forall ((arg0@@22 T@T) (arg1@@8 T@T) (arg2@@6 T@T) ) (! (= (MapType0TypeInv2 (MapType0Type arg0@@22 arg1@@8 arg2@@6)) arg2@@6)
 :qid |typeInv:MapType0TypeInv2|
 :pattern ( (MapType0Type arg0@@22 arg1@@8 arg2@@6))
))) (forall ((arg0@@23 T@U) (arg1@@9 T@U) (arg2@@7 T@U) ) (! (let ((aVar2 (MapType0TypeInv2 (type arg0@@23))))
(= (type (MapType0Select arg0@@23 arg1@@9 arg2@@7)) aVar2))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@23 arg1@@9 arg2@@7))
))) (forall ((arg0@@24 T@U) (arg1@@10 T@U) (arg2@@8 T@U) (arg3 T@U) ) (! (let ((aVar2@@0 (type arg3)))
(let ((aVar1 (type arg2@@8)))
(let ((aVar0 (type arg1@@10)))
(= (type (MapType0Store arg0@@24 arg1@@10 arg2@@8 arg3)) (MapType0Type aVar0 aVar1 aVar2@@0)))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@24 arg1@@10 arg2@@8 arg3))
))) (forall ((m T@U) (x0 T@U) (x1 T@U) (val T@U) ) (! (let ((aVar2@@1 (MapType0TypeInv2 (type m))))
 (=> (= (type val) aVar2@@1) (= (MapType0Select (MapType0Store m x0 x1 val) x0 x1) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select (MapType0Store m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
))) (forall ((val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@2 T@U) (y0@@1 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@2 x0@@2 x1@@2 val@@2) y0@@1 y1@@1) (MapType0Select m@@2 y0@@1 y1@@1)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (forall ((arg0@@25 T@U) ) (! (= (type ($IntArray arg0@@25)) nameType)
 :qid |funType:$IntArray|
 :pattern ( ($IntArray arg0@@25))
))) (= (type $elements) nameType)))
(assert (forall ((a T@U) (T@@1 T@U) (i@@3 Int) ($ArrayHeap T@U) ) (!  (=> (and (and (and (= (type a) refType) (= (type T@@1) nameType)) (= (type $ArrayHeap) (MapType0Type refType nameType elementsType))) (and ($RefIs a ($IntArray T@@1)) (not (= a null)))) ($IntIs ($IntArrayGet (MapType0Select $ArrayHeap a $elements) i@@3) T@@1))
 :qid |ModifiedBagbpl.130:15|
 :skolemid |16|
 :no-pattern (type a)
 :no-pattern (type T@@1)
 :no-pattern (type $ArrayHeap)
 :no-pattern (U_2_int a)
 :no-pattern (U_2_bool a)
 :no-pattern (U_2_int T@@1)
 :no-pattern (U_2_bool T@@1)
 :no-pattern (U_2_int $ArrayHeap)
 :no-pattern (U_2_bool $ArrayHeap)
)))
(assert (forall ((arg0@@26 T@U) ) (! (= (type ($RealArray arg0@@26)) nameType)
 :qid |funType:$RealArray|
 :pattern ( ($RealArray arg0@@26))
)))
(assert (forall ((a@@0 T@U) (T@@2 T@U) (i@@4 Int) ($ArrayHeap@@0 T@U) ) (!  (=> (and (and (and (= (type a@@0) refType) (= (type T@@2) nameType)) (= (type $ArrayHeap@@0) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@0 ($RealArray T@@2)) (not (= a@@0 null)))) ($RealIs ($RealArrayGet (MapType0Select $ArrayHeap@@0 a@@0 $elements) i@@4) T@@2))
 :qid |ModifiedBagbpl.132:15|
 :skolemid |17|
 :no-pattern (type a@@0)
 :no-pattern (type T@@2)
 :no-pattern (type $ArrayHeap@@0)
 :no-pattern (U_2_int a@@0)
 :no-pattern (U_2_bool a@@0)
 :no-pattern (U_2_int T@@2)
 :no-pattern (U_2_bool T@@2)
 :no-pattern (U_2_int $ArrayHeap@@0)
 :no-pattern (U_2_bool $ArrayHeap@@0)
)))
(assert (forall ((arg0@@27 T@U) ) (! (= (type ($BoolArray arg0@@27)) nameType)
 :qid |funType:$BoolArray|
 :pattern ( ($BoolArray arg0@@27))
)))
(assert (forall ((a@@1 T@U) (T@@3 T@U) (i@@5 Int) ($ArrayHeap@@1 T@U) ) (!  (=> (and (and (and (= (type a@@1) refType) (= (type T@@3) nameType)) (= (type $ArrayHeap@@1) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@1 ($BoolArray T@@3)) (not (= a@@1 null)))) ($BoolIs ($BoolArrayGet (MapType0Select $ArrayHeap@@1 a@@1 $elements) i@@5) T@@3))
 :qid |ModifiedBagbpl.134:15|
 :skolemid |18|
 :no-pattern (type a@@1)
 :no-pattern (type T@@3)
 :no-pattern (type $ArrayHeap@@1)
 :no-pattern (U_2_int a@@1)
 :no-pattern (U_2_bool a@@1)
 :no-pattern (U_2_int T@@3)
 :no-pattern (U_2_bool T@@3)
 :no-pattern (U_2_int $ArrayHeap@@1)
 :no-pattern (U_2_bool $ArrayHeap@@1)
)))
(assert (forall ((arg0@@28 T@U) ) (! (= (type ($RefArray arg0@@28)) nameType)
 :qid |funType:$RefArray|
 :pattern ( ($RefArray arg0@@28))
)))
(assert (forall ((a@@2 T@U) (T@@4 T@U) (i@@6 Int) ($ArrayHeap@@2 T@U) ) (!  (=> (and (and (and (= (type a@@2) refType) (= (type T@@4) nameType)) (= (type $ArrayHeap@@2) (MapType0Type refType nameType elementsType))) (and ($RefIs a@@2 ($RefArray T@@4)) (not (= a@@2 null)))) ($RefIs ($RefArrayGet (MapType0Select $ArrayHeap@@2 a@@2 $elements) i@@6) T@@4))
 :qid |ModifiedBagbpl.136:15|
 :skolemid |19|
 :no-pattern (type a@@2)
 :no-pattern (type T@@4)
 :no-pattern (type $ArrayHeap@@2)
 :no-pattern (U_2_int a@@2)
 :no-pattern (U_2_bool a@@2)
 :no-pattern (U_2_int T@@4)
 :no-pattern (U_2_bool T@@4)
 :no-pattern (U_2_int $ArrayHeap@@2)
 :no-pattern (U_2_bool $ArrayHeap@@2)
)))
(assert (forall ((arg0@@29 T@U) (arg1@@11 Int) (arg2@@9 Bool) ) (! (= (type ($BoolArraySet arg0@@29 arg1@@11 arg2@@9)) elementsType)
 :qid |funType:$BoolArraySet|
 :pattern ( ($BoolArraySet arg0@@29 arg1@@11 arg2@@9))
)))
(assert (forall ((A@@3 T@U) (i@@7 Int) (j Int) (x@@12 Bool) ) (!  (=> (and (= (type A@@3) elementsType) (not (= i@@7 j))) (= ($BoolArrayGet ($BoolArraySet A@@3 i@@7 x@@12) j) ($BoolArrayGet A@@3 j)))
 :qid |ModifiedBagbpl.74:15|
 :skolemid |7|
 :no-pattern (type A@@3)
 :no-pattern (U_2_int A@@3)
 :no-pattern (U_2_bool A@@3)
)))
(assert (forall ((A@@4 T@U) (i@@8 Int) (j@@0 Int) (x@@13 T@U) ) (!  (=> (and (and (= (type A@@4) elementsType) (= (type x@@13) refType)) (not (= i@@8 j@@0))) (= ($RefArrayGet ($RefArraySet A@@4 i@@8 x@@13) j@@0) ($RefArrayGet A@@4 j@@0)))
 :qid |ModifiedBagbpl.62:15|
 :skolemid |1|
 :no-pattern (type A@@4)
 :no-pattern (type x@@13)
 :no-pattern (U_2_int A@@4)
 :no-pattern (U_2_bool A@@4)
 :no-pattern (U_2_int x@@13)
 :no-pattern (U_2_bool x@@13)
)))
(assert (forall ((A@@5 T@U) (i@@9 Int) (j@@1 Int) (x@@14 Int) ) (!  (=> (and (= (type A@@5) elementsType) (not (= i@@9 j@@1))) (= ($IntArrayGet ($IntArraySet A@@5 i@@9 x@@14) j@@1) ($IntArrayGet A@@5 j@@1)))
 :qid |ModifiedBagbpl.66:15|
 :skolemid |3|
 :no-pattern (type A@@5)
 :no-pattern (U_2_int A@@5)
 :no-pattern (U_2_bool A@@5)
)))
(assert (forall ((A@@6 T@U) (i@@10 Int) (j@@2 Int) (x@@15 Real) ) (!  (=> (and (= (type A@@6) elementsType) (not (= i@@10 j@@2))) (= ($RealArrayGet ($RealArraySet A@@6 i@@10 x@@15) j@@2) ($RealArrayGet A@@6 j@@2)))
 :qid |ModifiedBagbpl.70:15|
 :skolemid |5|
 :no-pattern (type A@@6)
 :no-pattern (U_2_int A@@6)
 :no-pattern (U_2_bool A@@6)
)))
(assert (forall ((A@@7 T@U) (i@@11 Int) (j@@3 Int) (x@@16 T@U) ) (!  (=> (and (and (= (type A@@7) elementsType) (= (type x@@16) elementsType)) (not (= i@@11 j@@3))) (= ($ArrayArrayGet ($ArrayArraySet A@@7 i@@11 x@@16) j@@3) ($ArrayArrayGet A@@7 j@@3)))
 :qid |ModifiedBagbpl.78:15|
 :skolemid |9|
 :no-pattern (type A@@7)
 :no-pattern (type x@@16)
 :no-pattern (U_2_int A@@7)
 :no-pattern (U_2_bool A@@7)
 :no-pattern (U_2_int x@@16)
 :no-pattern (U_2_bool x@@16)
)))
(assert (forall ((a@@3 T@U) ) (!  (=> (= (type a@@3) refType) (<= 0 ($ArrayLength a@@3)))
 :qid |ModifiedBagbpl.80:15|
 :skolemid |10|
 :no-pattern (type a@@3)
 :no-pattern (U_2_int a@@3)
 :no-pattern (U_2_bool a@@3)
)))
(assert (= (type System.Int16) nameType))
(assert (forall ((i@@12 Int) ) (! (= ($IntIs i@@12 System.Int16)  (and (<= System.Int16.MinValue i@@12) (<= i@@12 System.Int16.MaxValue)))
 :qid |ModifiedBagbpl.118:15|
 :skolemid |11|
)))
(assert (= (type System.Int32) nameType))
(assert (forall ((i@@13 Int) ) (! (= ($IntIs i@@13 System.Int32)  (and (<= System.Int32.MinValue i@@13) (<= i@@13 System.Int32.MaxValue)))
 :qid |ModifiedBagbpl.120:15|
 :skolemid |12|
)))
(assert (= (type System.Int64) nameType))
(assert (forall ((i@@14 Int) ) (! (= ($IntIs i@@14 System.Int64)  (and (<= System.Int64.MinValue i@@14) (<= i@@14 System.Int64.MaxValue)))
 :qid |ModifiedBagbpl.122:15|
 :skolemid |13|
)))
(assert (< System.Int64.MinValue System.Int32.MinValue))
(assert (< System.Int32.MinValue System.Int16.MinValue))
(assert (< System.Int16.MinValue System.Int16.MaxValue))
(assert (< System.Int16.MaxValue System.Int32.MaxValue))
(assert (< System.Int32.MaxValue System.Int64.MaxValue))
(assert (forall ((A@@8 T@U) (i@@15 Int) (x@@17 Bool) ) (!  (=> (= (type A@@8) elementsType) (= ($BoolArrayGet ($BoolArraySet A@@8 i@@15 x@@17) i@@15) x@@17))
 :qid |ModifiedBagbpl.72:15|
 :skolemid |6|
 :no-pattern (type A@@8)
 :no-pattern (U_2_int A@@8)
 :no-pattern (U_2_bool A@@8)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun stack0b@2 () Bool)
(declare-fun stack0o@3 () T@U)
(declare-fun $RefHeap () T@U)
(declare-fun this () T@U)
(declare-fun Bag.a () T@U)
(declare-fun m@1 () Int)
(declare-fun $ArrayHeap@@3 () T@U)
(declare-fun i@0 () Int)
(declare-fun stack0b@1 () Bool)
(declare-fun stack0o@1 () T@U)
(declare-fun stack0i@2 () Int)
(declare-fun m@0 () Int)
(declare-fun stack1i@0 () Int)
(declare-fun $IntHeap () T@U)
(declare-fun Bag.n () T@U)
(declare-fun stack1i@1 () Int)
(declare-fun $IntHeap@0 () T@U)
(declare-fun stack0o@2 () T@U)
(declare-fun stack1o@0 () T@U)
(declare-fun stack2i@0 () Int)
(declare-fun stack1i@2 () Int)
(declare-fun $ArrayHeap@0 () T@U)
(declare-fun mindex@0 () Int)
(declare-fun stack0i@1 () Int)
(declare-fun Bag () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (= (type $IntHeap) (MapType0Type refType nameType intType)) (= (type this) refType)) (= (type Bag.n) nameType)) (= (type $IntHeap@0) (MapType0Type refType nameType intType))) (= (type stack0o@2) refType)) (= (type $RefHeap) (MapType0Type refType nameType refType))) (= (type Bag.a) nameType)) (= (type stack1o@0) refType)) (= (type $ArrayHeap@@3) (MapType0Type refType nameType elementsType))) (= (type $ArrayHeap@0) (MapType0Type refType nameType elementsType))) (= (type stack0o@3) refType)) (= (type stack0o@1) refType)) (= (type Bag) nameType)))
(set-info :boogie-vc-id Bag.ExtractMin)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 11) (let ((block285_correct true))
(let ((falseblock284_correct  (=> (and (and (= stack0b@2 false) (= stack0o@3 (MapType0Select $RefHeap this Bag.a))) (and (= m@1 ($IntArrayGet (MapType0Select $ArrayHeap@@3 stack0o@3 $elements) i@0)) (= (ControlFlow 0 6) 4))) block285_correct)))
(let ((trueblock285_correct  (=> (and (= stack0b@2 true) (= (ControlFlow 0 5) 4)) block285_correct)))
(let ((trueblock283_correct  (=> (and (and (= stack0b@1 true) (= stack0o@1 (MapType0Select $RefHeap this Bag.a))) (and (= stack0i@2 ($IntArrayGet (MapType0Select $ArrayHeap@@3 stack0o@1 $elements) i@0)) (= stack0b@2 (>= stack0i@2 m@0)))) (and (=> (= (ControlFlow 0 7) 5) trueblock285_correct) (=> (= (ControlFlow 0 7) 6) falseblock284_correct)))))
(let ((falseblock287_correct  (=> (= stack0b@1 false) (=> (and (and (and (= stack1i@0 (U_2_int (MapType0Select $IntHeap this Bag.n))) (= stack1i@1 (- stack1i@0 1))) (and (= $IntHeap@0 (MapType0Store $IntHeap this Bag.n (int_2_U stack1i@1))) (= stack0o@2 (MapType0Select $RefHeap this Bag.a)))) (and (and (= stack1o@0 (MapType0Select $RefHeap this Bag.a)) (= stack2i@0 (U_2_int (MapType0Select $IntHeap@0 this Bag.n)))) (and (= stack1i@2 ($IntArrayGet (MapType0Select $ArrayHeap@@3 stack1o@0 $elements) stack2i@0)) (= $ArrayHeap@0 (MapType0Store $ArrayHeap@@3 stack0o@2 $elements ($IntArraySet (MapType0Select $ArrayHeap@@3 stack0o@2 $elements) mindex@0 stack1i@2)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= this null))) (=> (not (= this null)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (U_2_int (MapType0Select $IntHeap@0 this Bag.n))) (<= (U_2_int (MapType0Select $IntHeap@0 this Bag.n)) ($ArrayLength (MapType0Select $RefHeap this Bag.a)))))))))))
(let ((block286_correct  (=> (and (= stack0i@1 (U_2_int (MapType0Select $IntHeap this Bag.n))) (= stack0b@1 (<= i@0 stack0i@1))) (and (=> (= (ControlFlow 0 8) 7) trueblock283_correct) (=> (= (ControlFlow 0 8) 2) falseblock287_correct)))))
(let ((entry_correct  (=> ($RefIs this ($NotNull Bag)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (not (= this null))) (=> (not (= this null)) (=> (and (and (<= 0 (U_2_int (MapType0Select $IntHeap this Bag.n))) (<= (U_2_int (MapType0Select $IntHeap this Bag.n)) ($ArrayLength (MapType0Select $RefHeap this Bag.a)))) (= (ControlFlow 0 9) 8)) block286_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 11) 9) entry_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-proof)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
