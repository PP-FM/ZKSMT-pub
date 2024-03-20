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
(declare-fun $allocated () T@U)
(declare-fun f_6 () T@U)
(declare-fun g () T@U)
(declare-fun FieldType (T@T T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun FieldTypeInv1 (T@T) T@T)
(declare-fun NormalFieldType () T@T)
(declare-fun succHeap (T@U T@U) Bool)
(declare-fun MapType0Type (T@T) T@T)
(declare-fun RefType () T@T)
(declare-fun succHeapTrans (T@U T@U) Bool)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun MultiSetTypeInv0 (T@T) T@T)
(declare-fun MultiSetType (T@T) T@T)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun state (T@U T@U) Bool)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun GoodMask (T@U) Bool)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun P (T@U Bool) T@U)
(declare-fun IsPredicateField (T@U) Bool)
(declare-fun PredicateType_PType () T@T)
(declare-fun FrameTypeType () T@T)
(declare-fun |P#trigger| (T@U T@U) Bool)
(declare-fun |P#everUsed| (T@U) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun IdenticalOnKnownLocations (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun PredicateMaskField (T@U) T@U)
(declare-fun HasDirectPerm (T@U T@U T@U) Bool)
(declare-fun IsWandField (T@U) Bool)
(declare-fun WandMaskField (T@U) T@U)
(declare-fun |MultiSet#Select| (T@U T@U) Int)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2Type (T@T T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2Select (T@U T@U) T@U)
(declare-fun MapType2Store (T@U T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun |P#sm| (T@U Bool) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun InsidePredicate (T@U T@U T@U T@U) Bool)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun sumMask (T@U T@U T@U) Bool)
(declare-fun ConditionalFrame (Real T@U) T@U)
(declare-fun EmptyFrame () T@U)
(declare-fun NoPerm () Real)
(declare-fun ZeroMask () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Empty| (T@T) T@U)
(declare-fun getPredicateId (T@U) Int)
(declare-fun FullPerm () Real)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun ZeroPMask () T@U)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (FieldType arg0@@11 arg1)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (FieldTypeInv1 (FieldType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:FieldTypeInv1|
 :pattern ( (FieldType arg0@@13 arg1@@1))
))) (= (Ctor NormalFieldType) 7)) (= (type $allocated) (FieldType NormalFieldType boolType))) (= (type f_6) (FieldType NormalFieldType intType))) (= (type g) (FieldType NormalFieldType boolType))))
(assert (distinct $allocated f_6 g)
)
(assert  (and (and (and (and (and (and (forall ((arg0@@14 T@T) ) (! (= (Ctor (MapType0Type arg0@@14)) 8)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@15 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@15)) arg0@@15)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@15))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) (arg2 T@U) ) (! (let ((B (FieldTypeInv1 (type arg2))))
(= (type (MapType0Select arg0@@16 arg1@@2 arg2)) B))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2 arg2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2@@0 T@U) (arg3 T@U) ) (! (let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2@@0 arg3)) (MapType0Type aVar0)))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2@@0 arg3))
))) (forall ((m T@U) (x0 T@U) (x1 T@U) (val T@U) ) (! (let ((B@@0 (FieldTypeInv1 (type x1))))
 (=> (= (type val) B@@0) (= (MapType0Select (MapType0Store m x0 x1 val) x0 x1) val)))
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
)))) (= (Ctor RefType) 9)))
(assert (forall ((Heap0 T@U) (Heap1 T@U) ) (!  (=> (and (and (= (type Heap0) (MapType0Type RefType)) (= (type Heap1) (MapType0Type RefType))) (succHeap Heap0 Heap1)) (succHeapTrans Heap0 Heap1))
 :qid |knownfoldedbpl.78:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert  (and (and (and (and (forall ((arg0@@18 T@T) ) (! (= (Ctor (MultiSetType arg0@@18)) 10)
 :qid |ctor:MultiSetType|
)) (forall ((arg0@@19 T@T) ) (! (= (MultiSetTypeInv0 (MultiSetType arg0@@19)) arg0@@19)
 :qid |typeInv:MultiSetTypeInv0|
 :pattern ( (MultiSetType arg0@@19))
))) (forall ((arg0@@20 T@U) (arg1@@4 T@U) ) (! (let ((T (MultiSetTypeInv0 (type arg0@@20))))
(= (type (|MultiSet#Difference| arg0@@20 arg1@@4)) (MultiSetType T)))
 :qid |funType:MultiSet#Difference|
 :pattern ( (|MultiSet#Difference| arg0@@20 arg1@@4))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) ) (! (let ((T@@0 (MultiSetTypeInv0 (type arg0@@21))))
(= (type (|MultiSet#Intersection| arg0@@21 arg1@@5)) (MultiSetType T@@0)))
 :qid |funType:MultiSet#Intersection|
 :pattern ( (|MultiSet#Intersection| arg0@@21 arg1@@5))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) ) (! (let ((T@@1 (MultiSetTypeInv0 (type arg0@@22))))
(= (type (|MultiSet#Union| arg0@@22 arg1@@6)) (MultiSetType T@@1)))
 :qid |funType:MultiSet#Union|
 :pattern ( (|MultiSet#Union| arg0@@22 arg1@@6))
))))
(assert (forall ((a T@U) (b T@U) ) (! (let ((T@@2 (MultiSetTypeInv0 (type a))))
 (=> (and (= (type a) (MultiSetType T@@2)) (= (type b) (MultiSetType T@@2))) (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))))
 :qid |knownfoldedbpl.349:18|
 :skolemid |74|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@23 T@T) (arg1@@7 T@T) ) (! (= (Ctor (MapType1Type arg0@@23 arg1@@7)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@24 T@T) (arg1@@8 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@24 arg1@@8)) arg0@@24)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@24 arg1@@8))
))) (forall ((arg0@@25 T@T) (arg1@@9 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@25 arg1@@9)) arg1@@9)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@25 arg1@@9))
))) (forall ((arg0@@26 T@U) (arg1@@10 T@U) (arg2@@1 T@U) ) (! (let ((aVar1 (MapType1TypeInv1 (type arg0@@26))))
(= (type (MapType1Select arg0@@26 arg1@@10 arg2@@1)) aVar1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@26 arg1@@10 arg2@@1))
))) (forall ((arg0@@27 T@U) (arg1@@11 T@U) (arg2@@2 T@U) (arg3@@0 T@U) ) (! (let ((aVar1@@0 (type arg3@@0)))
(let ((aVar0@@0 (type arg1@@11)))
(= (type (MapType1Store arg0@@27 arg1@@11 arg2@@2 arg3@@0)) (MapType1Type aVar0@@0 aVar1@@0))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@27 arg1@@11 arg2@@2 arg3@@0))
))) (forall ((m@@3 T@U) (x0@@3 T@U) (x1@@3 T@U) (val@@3 T@U) ) (! (let ((aVar1@@1 (MapType1TypeInv1 (type m@@3))))
 (=> (= (type val@@3) aVar1@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 x1@@3 val@@3) x0@@3 x1@@3) val@@3)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (and (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@4 T@U) (y0@@2 T@U) (y1@@2 T@U) ) (!  (or (= x0@@4 y0@@2) (= (MapType1Select (MapType1Store m@@4 x0@@4 x1@@4 val@@4) y0@@2 y1@@2) (MapType1Select m@@4 y0@@2 y1@@2)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@5 T@U) (y0@@3 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType1Select (MapType1Store m@@5 x0@@5 x1@@5 val@@5) y0@@3 y1@@3) (MapType1Select m@@5 y0@@3 y1@@3)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@6 T@U) (y0@@4 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@6 x0@@6 x1@@6 val@@6) y0@@4 y1@@4) (MapType1Select m@@6 y0@@4 y1@@4)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))))
(assert (forall ((Heap T@U) (Mask T@U) ) (!  (=> (and (and (= (type Heap) (MapType0Type RefType)) (= (type Mask) (MapType1Type RefType realType))) (state Heap Mask)) (GoodMask Mask))
 :qid |knownfoldedbpl.114:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@U) (Heap1@@0 T@U) (Heap2 T@U) ) (!  (=> (and (and (and (= (type Heap0@@0) (MapType0Type RefType)) (= (type Heap1@@0) (MapType0Type RefType))) (= (type Heap2) (MapType0Type RefType))) (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))) (succHeapTrans Heap0@@0 Heap2))
 :qid |knownfoldedbpl.83:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert  (and (and (= (Ctor PredicateType_PType) 12) (= (Ctor FrameTypeType) 13)) (forall ((arg0@@28 T@U) (arg1@@12 Bool) ) (! (= (type (P arg0@@28 arg1@@12)) (FieldType PredicateType_PType FrameTypeType))
 :qid |funType:P|
 :pattern ( (P arg0@@28 arg1@@12))
))))
(assert (forall ((x@@8 T@U) (b_2 Bool) ) (!  (=> (= (type x@@8) RefType) (IsPredicateField (P x@@8 b_2)))
 :qid |knownfoldedbpl.396:15|
 :skolemid |83|
 :pattern ( (P x@@8 b_2))
)))
(assert (forall ((Heap@@0 T@U) (x@@9 T@U) (b_2@@0 Bool) ) (!  (=> (and (= (type Heap@@0) (MapType0Type RefType)) (= (type x@@9) RefType)) (|P#everUsed| (P x@@9 b_2@@0)))
 :qid |knownfoldedbpl.415:15|
 :skolemid |87|
 :pattern ( (|P#trigger| Heap@@0 (P x@@9 b_2@@0)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |knownfoldedbpl.280:15|
 :skolemid |53|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert  (and (= (type null) RefType) (forall ((arg0@@29 T@U) ) (! (let ((A (FieldTypeInv0 (type arg0@@29))))
(= (type (PredicateMaskField arg0@@29)) (FieldType A (MapType1Type RefType boolType))))
 :qid |funType:PredicateMaskField|
 :pattern ( (PredicateMaskField arg0@@29))
))))
(assert (forall ((Heap@@1 T@U) (ExhaleHeap T@U) (Mask@@0 T@U) (pm_f T@U) ) (! (let ((C (FieldTypeInv0 (type pm_f))))
 (=> (and (and (and (and (and (= (type Heap@@1) (MapType0Type RefType)) (= (type ExhaleHeap) (MapType0Type RefType))) (= (type Mask@@0) (MapType1Type RefType realType))) (= (type pm_f) (FieldType C FrameTypeType))) (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0)) (and (HasDirectPerm Mask@@0 null pm_f) (IsPredicateField pm_f))) (= (MapType0Select Heap@@1 null (PredicateMaskField pm_f)) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))))
 :qid |knownfoldedbpl.37:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField pm_f) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))
)))
(assert (forall ((arg0@@30 T@U) ) (! (let ((A@@0 (FieldTypeInv0 (type arg0@@30))))
(= (type (WandMaskField arg0@@30)) (FieldType A@@0 (MapType1Type RefType boolType))))
 :qid |funType:WandMaskField|
 :pattern ( (WandMaskField arg0@@30))
)))
(assert (forall ((Heap@@2 T@U) (ExhaleHeap@@0 T@U) (Mask@@1 T@U) (pm_f@@0 T@U) ) (! (let ((C@@0 (FieldTypeInv0 (type pm_f@@0))))
 (=> (and (and (and (and (and (= (type Heap@@2) (MapType0Type RefType)) (= (type ExhaleHeap@@0) (MapType0Type RefType))) (= (type Mask@@1) (MapType1Type RefType realType))) (= (type pm_f@@0) (FieldType C@@0 FrameTypeType))) (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1)) (and (HasDirectPerm Mask@@1 null pm_f@@0) (IsWandField pm_f@@0))) (= (MapType0Select Heap@@2 null (WandMaskField pm_f@@0)) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))))
 :qid |knownfoldedbpl.50:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField pm_f@@0) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (! (let ((T@@3 (type y@@1)))
 (=> (and (and (= (type a@@1) (MultiSetType T@@3)) (= (type b@@1) (MultiSetType T@@3))) (<= (|MultiSet#Select| a@@1 y@@1) (|MultiSet#Select| b@@1 y@@1))) (= (|MultiSet#Select| (|MultiSet#Difference| a@@1 b@@1) y@@1) 0)))
 :qid |knownfoldedbpl.347:18|
 :skolemid |73|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Select| b@@1 y@@1) (|MultiSet#Select| a@@1 y@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@31 T@T) (arg1@@13 T@T) ) (! (= (Ctor (MapType2Type arg0@@31 arg1@@13)) 14)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@32 T@T) (arg1@@14 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@32 arg1@@14)) arg0@@32)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@32 arg1@@14))
))) (forall ((arg0@@33 T@T) (arg1@@15 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@33 arg1@@15)) arg1@@15)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@33 arg1@@15))
))) (forall ((arg0@@34 T@U) (arg1@@16 T@U) ) (! (let ((aVar1@@2 (MapType2TypeInv1 (type arg0@@34))))
(= (type (MapType2Select arg0@@34 arg1@@16)) aVar1@@2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@34 arg1@@16))
))) (forall ((arg0@@35 T@U) (arg1@@17 T@U) (arg2@@3 T@U) ) (! (let ((aVar1@@3 (type arg2@@3)))
(let ((aVar0@@1 (type arg1@@17)))
(= (type (MapType2Store arg0@@35 arg1@@17 arg2@@3)) (MapType2Type aVar0@@1 aVar1@@3))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@35 arg1@@17 arg2@@3))
))) (forall ((m@@7 T@U) (x0@@7 T@U) (val@@7 T@U) ) (! (let ((aVar1@@4 (MapType2TypeInv1 (type m@@7))))
 (=> (= (type val@@7) aVar1@@4) (= (MapType2Select (MapType2Store m@@7 x0@@7 val@@7) x0@@7) val@@7)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (y0@@5 T@U) ) (!  (or (= x0@@8 y0@@5) (= (MapType2Select (MapType2Store m@@8 x0@@8 val@@8) y0@@5) (MapType2Select m@@8 y0@@5)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@9 T@U) (m@@9 T@U) (x0@@9 T@U) (y0@@6 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@9 x0@@9 val@@9) y0@@6) (MapType2Select m@@9 y0@@6)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@36 T@U) (arg1@@18 T@U) ) (! (let ((T@@4 (MapType2TypeInv0 (type arg0@@36))))
(= (type (|Set#Union| arg0@@36 arg1@@18)) (MapType2Type T@@4 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@36 arg1@@18))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (let ((T@@5 (MapType2TypeInv0 (type a@@2))))
 (=> (and (= (type a@@2) (MapType2Type T@@5 boolType)) (= (type b@@2) (MapType2Type T@@5 boolType))) (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))))
 :qid |knownfoldedbpl.232:18|
 :skolemid |38|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((arg0@@37 T@U) (arg1@@19 T@U) ) (! (let ((T@@6 (MapType2TypeInv0 (type arg0@@37))))
(= (type (|Set#Intersection| arg0@@37 arg1@@19)) (MapType2Type T@@6 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@37 arg1@@19))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (let ((T@@7 (MapType2TypeInv0 (type a@@3))))
 (=> (and (= (type a@@3) (MapType2Type T@@7 boolType)) (= (type b@@3) (MapType2Type T@@7 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@3 b@@3) b@@3) (|Set#Intersection| a@@3 b@@3))))
 :qid |knownfoldedbpl.236:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (let ((T@@8 (MultiSetTypeInv0 (type a@@4))))
 (=> (and (= (type a@@4) (MultiSetType T@@8)) (= (type b@@4) (MultiSetType T@@8))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@4 b@@4) b@@4) (|MultiSet#Intersection| a@@4 b@@4))))
 :qid |knownfoldedbpl.338:18|
 :skolemid |70|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@4 b@@4) b@@4))
)))
(assert (forall ((arg0@@38 T@U) ) (! (let ((T@@9 (type arg0@@38)))
(= (type (|Set#Singleton| arg0@@38)) (MapType2Type T@@9 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@38))
)))
(assert (forall ((r T@U) (o T@U) ) (! (let ((T@@10 (type r)))
 (=> (= (type o) T@@10) (= (U_2_bool (MapType2Select (|Set#Singleton| r) o)) (= r o))))
 :qid |knownfoldedbpl.201:18|
 :skolemid |27|
 :pattern ( (MapType2Select (|Set#Singleton| r) o))
)))
(assert (forall ((x@@10 T@U) (b_2@@1 Bool) (x2 T@U) (b2 Bool) ) (!  (=> (and (and (= (type x@@10) RefType) (= (type x2) RefType)) (= (P x@@10 b_2@@1) (P x2 b2))) (and (= x@@10 x2) (= b_2@@1 b2)))
 :qid |knownfoldedbpl.406:15|
 :skolemid |85|
 :pattern ( (P x@@10 b_2@@1) (P x2 b2))
)))
(assert (forall ((arg0@@39 T@U) (arg1@@20 Bool) ) (! (= (type (|P#sm| arg0@@39 arg1@@20)) (FieldType PredicateType_PType (MapType1Type RefType boolType)))
 :qid |funType:P#sm|
 :pattern ( (|P#sm| arg0@@39 arg1@@20))
)))
(assert (forall ((x@@11 T@U) (b_2@@2 Bool) (x2@@0 T@U) (b2@@0 Bool) ) (!  (=> (and (and (= (type x@@11) RefType) (= (type x2@@0) RefType)) (= (|P#sm| x@@11 b_2@@2) (|P#sm| x2@@0 b2@@0))) (and (= x@@11 x2@@0) (= b_2@@2 b2@@0)))
 :qid |knownfoldedbpl.410:15|
 :skolemid |86|
 :pattern ( (|P#sm| x@@11 b_2@@2) (|P#sm| x2@@0 b2@@0))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (let ((T@@11 (MapType2TypeInv0 (type a@@5))))
 (=> (and (= (type a@@5) (MapType2Type T@@11 boolType)) (= (type b@@5) (MapType2Type T@@11 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@5 b@@5)) (|Set#Card| (|Set#Intersection| a@@5 b@@5))) (+ (|Set#Card| a@@5) (|Set#Card| b@@5)))))
 :qid |knownfoldedbpl.240:18|
 :skolemid |42|
 :pattern ( (|Set#Card| (|Set#Union| a@@5 b@@5)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@5 b@@5)))
)))
(assert (forall ((Heap@@3 T@U) (ExhaleHeap@@1 T@U) (Mask@@2 T@U) (o@@0 T@U) ) (!  (=> (and (and (and (and (and (= (type Heap@@3) (MapType0Type RefType)) (= (type ExhaleHeap@@1) (MapType0Type RefType))) (= (type Mask@@2) (MapType1Type RefType realType))) (= (type o@@0) RefType)) (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2)) (U_2_bool (MapType0Select Heap@@3 o@@0 $allocated))) (U_2_bool (MapType0Select ExhaleHeap@@1 o@@0 $allocated)))
 :qid |knownfoldedbpl.63:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (MapType0Select ExhaleHeap@@1 o@@0 $allocated))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |knownfoldedbpl.283:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((a@@7 T@U) (b@@6 T@U) (o@@1 T@U) ) (! (let ((T@@12 (type o@@1)))
 (=> (and (= (type a@@7) (MultiSetType T@@12)) (= (type b@@6) (MultiSetType T@@12))) (= (|MultiSet#Select| (|MultiSet#Intersection| a@@7 b@@6) o@@1) (|Math#min| (|MultiSet#Select| a@@7 o@@1) (|MultiSet#Select| b@@6 o@@1)))))
 :qid |knownfoldedbpl.334:18|
 :skolemid |69|
 :pattern ( (|MultiSet#Select| (|MultiSet#Intersection| a@@7 b@@6) o@@1))
)))
(assert (forall ((Heap@@4 T@U) (ExhaleHeap@@2 T@U) (Mask@@3 T@U) (o@@2 T@U) (f_2 T@U) ) (! (let ((B@@1 (FieldTypeInv1 (type f_2))))
(let ((A@@1 (FieldTypeInv0 (type f_2))))
 (=> (and (and (and (and (and (and (= (type Heap@@4) (MapType0Type RefType)) (= (type ExhaleHeap@@2) (MapType0Type RefType))) (= (type Mask@@3) (MapType1Type RefType realType))) (= (type o@@2) RefType)) (= (type f_2) (FieldType A@@1 B@@1))) (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3)) (HasDirectPerm Mask@@3 o@@2 f_2)) (= (MapType0Select Heap@@4 o@@2 f_2) (MapType0Select ExhaleHeap@@2 o@@2 f_2)))))
 :qid |knownfoldedbpl.32:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (MapType0Select ExhaleHeap@@2 o@@2 f_2))
)))
(assert (forall ((arg0@@40 T@U) (arg1@@21 T@U) ) (! (let ((T@@13 (type arg1@@21)))
(= (type (|MultiSet#UnionOne| arg0@@40 arg1@@21)) (MultiSetType T@@13)))
 :qid |funType:MultiSet#UnionOne|
 :pattern ( (|MultiSet#UnionOne| arg0@@40 arg1@@21))
)))
(assert (forall ((a@@8 T@U) (x@@12 T@U) ) (! (let ((T@@14 (type x@@12)))
 (=> (= (type a@@8) (MultiSetType T@@14)) (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@8 x@@12)) (+ (|MultiSet#Card| a@@8) 1))))
 :qid |knownfoldedbpl.320:18|
 :skolemid |65|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@8 x@@12)))
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@12) (|MultiSet#Card| a@@8))
)))
(assert (forall ((a@@9 T@U) (b@@7 T@U) ) (! (let ((T@@15 (MultiSetTypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MultiSetType T@@15)) (= (type b@@7) (MultiSetType T@@15))) (= (|MultiSet#Disjoint| a@@9 b@@7) (forall ((o@@3 T@U) ) (!  (=> (= (type o@@3) T@@15) (or (= (|MultiSet#Select| a@@9 o@@3) 0) (= (|MultiSet#Select| b@@7 o@@3) 0)))
 :qid |knownfoldedbpl.370:39|
 :skolemid |80|
 :pattern ( (|MultiSet#Select| a@@9 o@@3))
 :pattern ( (|MultiSet#Select| b@@7 o@@3))
)))))
 :qid |knownfoldedbpl.369:18|
 :skolemid |81|
 :pattern ( (|MultiSet#Disjoint| a@@9 b@@7))
)))
(assert (forall ((p T@U) (v_1 T@U) (w T@U) ) (! (let ((A@@2 (FieldTypeInv0 (type p))))
 (=> (and (and (= (type p) (FieldType A@@2 FrameTypeType)) (= (type v_1) FrameTypeType)) (= (type w) FrameTypeType)) (not (InsidePredicate p v_1 p w))))
 :qid |knownfoldedbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate p v_1 p w))
)))
(assert (forall ((arg0@@41 T@U) ) (! (let ((T@@16 (type arg0@@41)))
(= (type (|MultiSet#Singleton| arg0@@41)) (MultiSetType T@@16)))
 :qid |funType:MultiSet#Singleton|
 :pattern ( (|MultiSet#Singleton| arg0@@41))
)))
(assert (forall ((r@@0 T@U) ) (!  (and (= (|MultiSet#Card| (|MultiSet#Singleton| r@@0)) 1) (= (|MultiSet#Select| (|MultiSet#Singleton| r@@0) r@@0) 1))
 :qid |knownfoldedbpl.312:18|
 :skolemid |62|
 :pattern ( (|MultiSet#Singleton| r@@0))
)))
(assert  (not (IsPredicateField f_6)))
(assert  (not (IsWandField f_6)))
(assert  (not (IsPredicateField g)))
(assert  (not (IsWandField g)))
(assert (forall ((Heap@@5 T@U) (ExhaleHeap@@3 T@U) (Mask@@4 T@U) ) (!  (=> (and (and (and (= (type Heap@@5) (MapType0Type RefType)) (= (type ExhaleHeap@@3) (MapType0Type RefType))) (= (type Mask@@4) (MapType1Type RefType realType))) (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4)) (succHeap Heap@@5 ExhaleHeap@@3))
 :qid |knownfoldedbpl.73:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4))
)))
(assert (forall ((a@@10 T@U) (b@@8 T@U) ) (! (let ((T@@17 (MapType2TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType2Type T@@17 boolType)) (= (type b@@8) (MapType2Type T@@17 boolType))) (= (|Set#Equal| a@@10 b@@8) (forall ((o@@4 T@U) ) (!  (=> (= (type o@@4) T@@17) (= (U_2_bool (MapType2Select a@@10 o@@4)) (U_2_bool (MapType2Select b@@8 o@@4))))
 :qid |knownfoldedbpl.265:31|
 :skolemid |48|
 :pattern ( (MapType2Select a@@10 o@@4))
 :pattern ( (MapType2Select b@@8 o@@4))
)))))
 :qid |knownfoldedbpl.264:17|
 :skolemid |49|
 :pattern ( (|Set#Equal| a@@10 b@@8))
)))
(assert (forall ((ResultMask T@U) (SummandMask1 T@U) (SummandMask2 T@U) (o_1 T@U) (f_3 T@U) ) (! (let ((B@@2 (FieldTypeInv1 (type f_3))))
(let ((A@@3 (FieldTypeInv0 (type f_3))))
 (=> (and (and (and (and (and (= (type ResultMask) (MapType1Type RefType realType)) (= (type SummandMask1) (MapType1Type RefType realType))) (= (type SummandMask2) (MapType1Type RefType realType))) (= (type o_1) RefType)) (= (type f_3) (FieldType A@@3 B@@2))) (sumMask ResultMask SummandMask1 SummandMask2)) (= (U_2_real (MapType1Select ResultMask o_1 f_3)) (+ (U_2_real (MapType1Select SummandMask1 o_1 f_3)) (U_2_real (MapType1Select SummandMask2 o_1 f_3)))))))
 :qid |knownfoldedbpl.128:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select ResultMask o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask1 o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask2 o_1 f_3))
)))
(assert (forall ((a@@11 T@U) (b@@9 T@U) ) (! (let ((T@@18 (MultiSetTypeInv0 (type a@@11))))
 (=> (and (= (type a@@11) (MultiSetType T@@18)) (= (type b@@9) (MultiSetType T@@18))) (= (|MultiSet#Card| (|MultiSet#Union| a@@11 b@@9)) (+ (|MultiSet#Card| a@@11) (|MultiSet#Card| b@@9)))))
 :qid |knownfoldedbpl.330:18|
 :skolemid |68|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@11 b@@9)))
 :pattern ( (|MultiSet#Card| a@@11) (|MultiSet#Union| a@@11 b@@9))
 :pattern ( (|MultiSet#Card| b@@9) (|MultiSet#Union| a@@11 b@@9))
)))
(assert  (and (forall ((arg0@@42 Real) (arg1@@22 T@U) ) (! (= (type (ConditionalFrame arg0@@42 arg1@@22)) FrameTypeType)
 :qid |funType:ConditionalFrame|
 :pattern ( (ConditionalFrame arg0@@42 arg1@@22))
)) (= (type EmptyFrame) FrameTypeType)))
(assert (forall ((p@@0 Real) (f_5 T@U) ) (!  (=> (= (type f_5) FrameTypeType) (= (ConditionalFrame p@@0 f_5) (ite (> p@@0 0.0) f_5 EmptyFrame)))
 :qid |knownfoldedbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_5))
)))
(assert (forall ((Mask@@5 T@U) (o_1@@0 T@U) (f_3@@0 T@U) ) (! (let ((B@@3 (FieldTypeInv1 (type f_3@@0))))
(let ((A@@4 (FieldTypeInv0 (type f_3@@0))))
 (=> (and (and (= (type Mask@@5) (MapType1Type RefType realType)) (= (type o_1@@0) RefType)) (= (type f_3@@0) (FieldType A@@4 B@@3))) (= (HasDirectPerm Mask@@5 o_1@@0 f_3@@0) (> (U_2_real (MapType1Select Mask@@5 o_1@@0 f_3@@0)) NoPerm)))))
 :qid |knownfoldedbpl.123:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm Mask@@5 o_1@@0 f_3@@0))
)))
(assert (= (type ZeroMask) (MapType1Type RefType realType)))
(assert (forall ((o_1@@1 T@U) (f_3@@1 T@U) ) (! (let ((B@@4 (FieldTypeInv1 (type f_3@@1))))
(let ((A@@5 (FieldTypeInv0 (type f_3@@1))))
 (=> (and (= (type o_1@@1) RefType) (= (type f_3@@1) (FieldType A@@5 B@@4))) (= (U_2_real (MapType1Select ZeroMask o_1@@1 f_3@@1)) NoPerm))))
 :qid |knownfoldedbpl.96:22|
 :skolemid |13|
 :pattern ( (MapType1Select ZeroMask o_1@@1 f_3@@1))
)))
(assert (forall ((a@@12 T@U) (b@@10 T@U) (o@@5 T@U) ) (! (let ((T@@19 (type o@@5)))
 (=> (and (= (type a@@12) (MapType2Type T@@19 boolType)) (= (type b@@10) (MapType2Type T@@19 boolType))) (= (U_2_bool (MapType2Select (|Set#Intersection| a@@12 b@@10) o@@5))  (and (U_2_bool (MapType2Select a@@12 o@@5)) (U_2_bool (MapType2Select b@@10 o@@5))))))
 :qid |knownfoldedbpl.229:18|
 :skolemid |37|
 :pattern ( (MapType2Select (|Set#Intersection| a@@12 b@@10) o@@5))
 :pattern ( (|Set#Intersection| a@@12 b@@10) (MapType2Select a@@12 o@@5))
 :pattern ( (|Set#Intersection| a@@12 b@@10) (MapType2Select b@@10 o@@5))
)))
(assert (forall ((arg0@@43 T@U) (arg1@@23 T@U) ) (! (let ((T@@20 (MapType2TypeInv0 (type arg0@@43))))
(= (type (|Set#Difference| arg0@@43 arg1@@23)) (MapType2Type T@@20 boolType)))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@43 arg1@@23))
)))
(assert (forall ((a@@13 T@U) (b@@11 T@U) (o@@6 T@U) ) (! (let ((T@@21 (type o@@6)))
 (=> (and (= (type a@@13) (MapType2Type T@@21 boolType)) (= (type b@@11) (MapType2Type T@@21 boolType))) (= (U_2_bool (MapType2Select (|Set#Difference| a@@13 b@@11) o@@6))  (and (U_2_bool (MapType2Select a@@13 o@@6)) (not (U_2_bool (MapType2Select b@@11 o@@6)))))))
 :qid |knownfoldedbpl.244:18|
 :skolemid |43|
 :pattern ( (MapType2Select (|Set#Difference| a@@13 b@@11) o@@6))
 :pattern ( (|Set#Difference| a@@13 b@@11) (MapType2Select a@@13 o@@6))
)))
(assert (forall ((a@@14 T@U) (b@@12 T@U) ) (! (let ((T@@22 (MapType2TypeInv0 (type a@@14))))
 (=> (and (and (= (type a@@14) (MapType2Type T@@22 boolType)) (= (type b@@12) (MapType2Type T@@22 boolType))) (|Set#Equal| a@@14 b@@12)) (= a@@14 b@@12)))
 :qid |knownfoldedbpl.266:17|
 :skolemid |50|
 :pattern ( (|Set#Equal| a@@14 b@@12))
)))
(assert (forall ((a@@15 T@U) (b@@13 T@U) ) (! (let ((T@@23 (MultiSetTypeInv0 (type a@@15))))
 (=> (and (and (= (type a@@15) (MultiSetType T@@23)) (= (type b@@13) (MultiSetType T@@23))) (|MultiSet#Equal| a@@15 b@@13)) (= a@@15 b@@13)))
 :qid |knownfoldedbpl.365:17|
 :skolemid |79|
 :pattern ( (|MultiSet#Equal| a@@15 b@@13))
)))
(assert (forall ((arg0@@44 T@U) (arg1@@24 T@U) ) (! (let ((T@@24 (type arg1@@24)))
(= (type (|Set#UnionOne| arg0@@44 arg1@@24)) (MapType2Type T@@24 boolType)))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@44 arg1@@24))
)))
(assert (forall ((a@@16 T@U) (x@@13 T@U) (y@@2 T@U) ) (! (let ((T@@25 (type x@@13)))
 (=> (and (and (= (type a@@16) (MapType2Type T@@25 boolType)) (= (type y@@2) T@@25)) (U_2_bool (MapType2Select a@@16 y@@2))) (U_2_bool (MapType2Select (|Set#UnionOne| a@@16 x@@13) y@@2))))
 :qid |knownfoldedbpl.209:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne| a@@16 x@@13) (MapType2Select a@@16 y@@2))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) (y@@3 T@U) ) (! (let ((T@@26 (type y@@3)))
 (=> (and (and (= (type a@@17) (MapType2Type T@@26 boolType)) (= (type b@@14) (MapType2Type T@@26 boolType))) (U_2_bool (MapType2Select a@@17 y@@3))) (U_2_bool (MapType2Select (|Set#Union| a@@17 b@@14) y@@3))))
 :qid |knownfoldedbpl.219:18|
 :skolemid |35|
 :pattern ( (|Set#Union| a@@17 b@@14) (MapType2Select a@@17 y@@3))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) (y@@4 T@U) ) (! (let ((T@@27 (type y@@4)))
 (=> (and (and (= (type a@@18) (MapType2Type T@@27 boolType)) (= (type b@@15) (MapType2Type T@@27 boolType))) (U_2_bool (MapType2Select b@@15 y@@4))) (U_2_bool (MapType2Select (|Set#Union| a@@18 b@@15) y@@4))))
 :qid |knownfoldedbpl.221:18|
 :skolemid |36|
 :pattern ( (|Set#Union| a@@18 b@@15) (MapType2Select b@@15 y@@4))
)))
(assert (forall ((ms T@U) (x@@14 T@U) ) (! (let ((T@@28 (type x@@14)))
 (=> (= (type ms) (MultiSetType T@@28)) (>= (|MultiSet#Select| ms x@@14) 0)))
 :qid |knownfoldedbpl.296:18|
 :skolemid |56|
 :pattern ( (|MultiSet#Select| ms x@@14))
)))
(assert (forall ((a@@19 T@U) (x@@15 T@U) (o@@7 T@U) ) (! (let ((T@@29 (type x@@15)))
 (=> (and (= (type a@@19) (MapType2Type T@@29 boolType)) (= (type o@@7) T@@29)) (= (U_2_bool (MapType2Select (|Set#UnionOne| a@@19 x@@15) o@@7))  (or (= o@@7 x@@15) (U_2_bool (MapType2Select a@@19 o@@7))))))
 :qid |knownfoldedbpl.205:18|
 :skolemid |29|
 :pattern ( (MapType2Select (|Set#UnionOne| a@@19 x@@15) o@@7))
)))
(assert (forall ((a@@20 T@U) (b@@16 T@U) (y@@5 T@U) ) (! (let ((T@@30 (type y@@5)))
 (=> (and (and (= (type a@@20) (MapType2Type T@@30 boolType)) (= (type b@@16) (MapType2Type T@@30 boolType))) (U_2_bool (MapType2Select b@@16 y@@5))) (not (U_2_bool (MapType2Select (|Set#Difference| a@@20 b@@16) y@@5)))))
 :qid |knownfoldedbpl.246:18|
 :skolemid |44|
 :pattern ( (|Set#Difference| a@@20 b@@16) (MapType2Select b@@16 y@@5))
)))
(assert (forall ((a@@21 T@U) (b@@17 T@U) ) (! (let ((T@@31 (MapType2TypeInv0 (type a@@21))))
 (=> (and (= (type a@@21) (MapType2Type T@@31 boolType)) (= (type b@@17) (MapType2Type T@@31 boolType))) (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@21 b@@17)) (|Set#Card| (|Set#Difference| b@@17 a@@21))) (|Set#Card| (|Set#Intersection| a@@21 b@@17))) (|Set#Card| (|Set#Union| a@@21 b@@17))) (= (|Set#Card| (|Set#Difference| a@@21 b@@17)) (- (|Set#Card| a@@21) (|Set#Card| (|Set#Intersection| a@@21 b@@17)))))))
 :qid |knownfoldedbpl.248:18|
 :skolemid |45|
 :pattern ( (|Set#Card| (|Set#Difference| a@@21 b@@17)))
)))
(assert (forall ((s T@U) ) (! (let ((T@@32 (MapType2TypeInv0 (type s))))
 (=> (= (type s) (MapType2Type T@@32 boolType)) (<= 0 (|Set#Card| s))))
 :qid |knownfoldedbpl.191:18|
 :skolemid |22|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((s@@0 T@U) ) (! (let ((T@@33 (MultiSetTypeInv0 (type s@@0))))
 (=> (= (type s@@0) (MultiSetType T@@33)) (<= 0 (|MultiSet#Card| s@@0))))
 :qid |knownfoldedbpl.299:18|
 :skolemid |57|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((T@@34 T@T) ) (! (= (type (|MultiSet#Empty| T@@34)) (MultiSetType T@@34))
 :qid |funType:MultiSet#Empty|
 :pattern ( (|MultiSet#Empty| T@@34))
)))
(assert (forall ((o@@8 T@U) ) (! (let ((T@@35 (type o@@8)))
(= (|MultiSet#Select| (|MultiSet#Empty| T@@35) o@@8) 0))
 :qid |knownfoldedbpl.304:18|
 :skolemid |58|
 :pattern ( (let ((T@@35 (type o@@8)))
(|MultiSet#Select| (|MultiSet#Empty| T@@35) o@@8)))
)))
(assert (forall ((x@@16 T@U) (b_2@@3 Bool) ) (!  (=> (= (type x@@16) RefType) (= (getPredicateId (P x@@16 b_2@@3)) 0))
 :qid |knownfoldedbpl.400:15|
 :skolemid |84|
 :pattern ( (P x@@16 b_2@@3))
)))
(assert (forall ((a@@22 T@U) (x@@17 T@U) ) (! (let ((T@@36 (type x@@17)))
 (=> (= (type a@@22) (MapType2Type T@@36 boolType)) (U_2_bool (MapType2Select (|Set#UnionOne| a@@22 x@@17) x@@17))))
 :qid |knownfoldedbpl.207:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne| a@@22 x@@17))
)))
(assert (forall ((Heap@@6 T@U) (ExhaleHeap@@4 T@U) (Mask@@6 T@U) (pm_f@@1 T@U) ) (! (let ((C@@1 (FieldTypeInv0 (type pm_f@@1))))
 (=> (and (and (and (and (and (= (type Heap@@6) (MapType0Type RefType)) (= (type ExhaleHeap@@4) (MapType0Type RefType))) (= (type Mask@@6) (MapType1Type RefType realType))) (= (type pm_f@@1) (FieldType C@@1 FrameTypeType))) (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@6)) (and (HasDirectPerm Mask@@6 null pm_f@@1) (IsPredicateField pm_f@@1))) (forall ((o2 T@U) (f_2@@0 T@U) ) (! (let ((B@@5 (FieldTypeInv1 (type f_2@@0))))
(let ((A@@6 (FieldTypeInv0 (type f_2@@0))))
 (=> (and (and (= (type o2) RefType) (= (type f_2@@0) (FieldType A@@6 B@@5))) (U_2_bool (MapType1Select (MapType0Select Heap@@6 null (PredicateMaskField pm_f@@1)) o2 f_2@@0))) (= (MapType0Select Heap@@6 o2 f_2@@0) (MapType0Select ExhaleHeap@@4 o2 f_2@@0)))))
 :qid |knownfoldedbpl.44:134|
 :skolemid |3|
 :pattern ( (MapType0Select ExhaleHeap@@4 o2 f_2@@0))
))))
 :qid |knownfoldedbpl.42:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@6) (MapType0Select ExhaleHeap@@4 null pm_f@@1) (IsPredicateField pm_f@@1))
)))
(assert (forall ((Heap@@7 T@U) (ExhaleHeap@@5 T@U) (Mask@@7 T@U) (pm_f@@2 T@U) ) (! (let ((C@@2 (FieldTypeInv0 (type pm_f@@2))))
 (=> (and (and (and (and (and (= (type Heap@@7) (MapType0Type RefType)) (= (type ExhaleHeap@@5) (MapType0Type RefType))) (= (type Mask@@7) (MapType1Type RefType realType))) (= (type pm_f@@2) (FieldType C@@2 FrameTypeType))) (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@7)) (and (HasDirectPerm Mask@@7 null pm_f@@2) (IsWandField pm_f@@2))) (forall ((o2@@0 T@U) (f_2@@1 T@U) ) (! (let ((B@@6 (FieldTypeInv1 (type f_2@@1))))
(let ((A@@7 (FieldTypeInv0 (type f_2@@1))))
 (=> (and (and (= (type o2@@0) RefType) (= (type f_2@@1) (FieldType A@@7 B@@6))) (U_2_bool (MapType1Select (MapType0Select Heap@@7 null (WandMaskField pm_f@@2)) o2@@0 f_2@@1))) (= (MapType0Select Heap@@7 o2@@0 f_2@@1) (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1)))))
 :qid |knownfoldedbpl.57:129|
 :skolemid |6|
 :pattern ( (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1))
))))
 :qid |knownfoldedbpl.55:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@7) (IsWandField pm_f@@2))
)))
(assert (forall ((a@@23 T@U) (x@@18 T@U) ) (! (let ((T@@37 (type x@@18)))
 (=> (and (= (type a@@23) (MapType2Type T@@37 boolType)) (U_2_bool (MapType2Select a@@23 x@@18))) (= (|Set#Card| (|Set#UnionOne| a@@23 x@@18)) (|Set#Card| a@@23))))
 :qid |knownfoldedbpl.211:18|
 :skolemid |32|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@23 x@@18)))
)))
(assert (forall ((a@@24 T@U) (x@@19 T@U) ) (! (let ((T@@38 (type x@@19)))
 (=> (= (type a@@24) (MultiSetType T@@38)) (and (> (|MultiSet#Select| (|MultiSet#UnionOne| a@@24 x@@19) x@@19) 0) (> (|MultiSet#Card| (|MultiSet#UnionOne| a@@24 x@@19)) 0))))
 :qid |knownfoldedbpl.323:18|
 :skolemid |66|
 :pattern ( (|MultiSet#UnionOne| a@@24 x@@19))
)))
(assert (forall ((r@@1 T@U) ) (! (= (|Set#Card| (|Set#Singleton| r@@1)) 1)
 :qid |knownfoldedbpl.202:18|
 :skolemid |28|
 :pattern ( (|Set#Card| (|Set#Singleton| r@@1)))
)))
(assert (forall ((Mask@@8 T@U) (o_1@@2 T@U) (f_3@@2 T@U) ) (! (let ((B@@7 (FieldTypeInv1 (type f_3@@2))))
(let ((A@@8 (FieldTypeInv0 (type f_3@@2))))
 (=> (and (and (and (= (type Mask@@8) (MapType1Type RefType realType)) (= (type o_1@@2) RefType)) (= (type f_3@@2) (FieldType A@@8 B@@7))) (GoodMask Mask@@8)) (and (>= (U_2_real (MapType1Select Mask@@8 o_1@@2 f_3@@2)) NoPerm) (=> (and (and (GoodMask Mask@@8) (not (IsPredicateField f_3@@2))) (not (IsWandField f_3@@2))) (<= (U_2_real (MapType1Select Mask@@8 o_1@@2 f_3@@2)) FullPerm))))))
 :qid |knownfoldedbpl.118:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (MapType1Select Mask@@8 o_1@@2 f_3@@2))
)))
(assert (forall ((r@@2 T@U) ) (! (U_2_bool (MapType2Select (|Set#Singleton| r@@2) r@@2))
 :qid |knownfoldedbpl.200:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton| r@@2))
)))
(assert (forall ((a@@25 T@U) (b@@18 T@U) ) (! (let ((T@@39 (MapType2TypeInv0 (type a@@25))))
 (=> (and (= (type a@@25) (MapType2Type T@@39 boolType)) (= (type b@@18) (MapType2Type T@@39 boolType))) (= (|Set#Union| a@@25 (|Set#Union| a@@25 b@@18)) (|Set#Union| a@@25 b@@18))))
 :qid |knownfoldedbpl.234:18|
 :skolemid |39|
 :pattern ( (|Set#Union| a@@25 (|Set#Union| a@@25 b@@18)))
)))
(assert (forall ((a@@26 T@U) (b@@19 T@U) ) (! (let ((T@@40 (MapType2TypeInv0 (type a@@26))))
 (=> (and (= (type a@@26) (MapType2Type T@@40 boolType)) (= (type b@@19) (MapType2Type T@@40 boolType))) (= (|Set#Intersection| a@@26 (|Set#Intersection| a@@26 b@@19)) (|Set#Intersection| a@@26 b@@19))))
 :qid |knownfoldedbpl.238:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection| a@@26 (|Set#Intersection| a@@26 b@@19)))
)))
(assert (forall ((a@@27 T@U) (b@@20 T@U) ) (! (let ((T@@41 (MultiSetTypeInv0 (type a@@27))))
 (=> (and (= (type a@@27) (MultiSetType T@@41)) (= (type b@@20) (MultiSetType T@@41))) (= (|MultiSet#Intersection| a@@27 (|MultiSet#Intersection| a@@27 b@@20)) (|MultiSet#Intersection| a@@27 b@@20))))
 :qid |knownfoldedbpl.340:18|
 :skolemid |71|
 :pattern ( (|MultiSet#Intersection| a@@27 (|MultiSet#Intersection| a@@27 b@@20)))
)))
(assert (forall ((s@@1 T@U) ) (! (let ((T@@42 (MultiSetTypeInv0 (type s@@1))))
 (=> (= (type s@@1) (MultiSetType T@@42)) (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 (|MultiSet#Empty| T@@42))) (=> (not (= (|MultiSet#Card| s@@1) 0)) (exists ((x@@20 T@U) ) (!  (and (= (type x@@20) T@@42) (< 0 (|MultiSet#Select| s@@1 x@@20)))
 :qid |knownfoldedbpl.307:38|
 :skolemid |59|
 :no-pattern (type x@@20)
 :no-pattern (U_2_int x@@20)
 :no-pattern (U_2_bool x@@20)
))))))
 :qid |knownfoldedbpl.305:18|
 :skolemid |60|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((r@@3 T@U) (o@@9 T@U) ) (! (let ((T@@43 (type r@@3)))
 (=> (= (type o@@9) T@@43) (and (= (= (|MultiSet#Select| (|MultiSet#Singleton| r@@3) o@@9) 1) (= r@@3 o@@9)) (= (= (|MultiSet#Select| (|MultiSet#Singleton| r@@3) o@@9) 0) (not (= r@@3 o@@9))))))
 :qid |knownfoldedbpl.310:18|
 :skolemid |61|
 :pattern ( (|MultiSet#Select| (|MultiSet#Singleton| r@@3) o@@9))
)))
(assert (forall ((o@@10 T@U) (f T@U) (Heap@@8 T@U) ) (!  (=> (and (and (and (= (type o@@10) RefType) (= (type f) (FieldType NormalFieldType RefType))) (= (type Heap@@8) (MapType0Type RefType))) (U_2_bool (MapType0Select Heap@@8 o@@10 $allocated))) (U_2_bool (MapType0Select Heap@@8 (MapType0Select Heap@@8 o@@10 f) $allocated)))
 :qid |knownfoldedbpl.21:15|
 :skolemid |0|
 :pattern ( (MapType0Select Heap@@8 o@@10 f))
)))
(assert (forall ((x@@21 T@U) (b_2@@4 Bool) ) (!  (=> (= (type x@@21) RefType) (= (PredicateMaskField (P x@@21 b_2@@4)) (|P#sm| x@@21 b_2@@4)))
 :qid |knownfoldedbpl.392:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField (P x@@21 b_2@@4)))
)))
(assert (forall ((a@@28 T@U) (b@@21 T@U) (o@@11 T@U) ) (! (let ((T@@44 (type o@@11)))
 (=> (and (= (type a@@28) (MultiSetType T@@44)) (= (type b@@21) (MultiSetType T@@44))) (= (|MultiSet#Select| (|MultiSet#Union| a@@28 b@@21) o@@11) (+ (|MultiSet#Select| a@@28 o@@11) (|MultiSet#Select| b@@21 o@@11)))))
 :qid |knownfoldedbpl.328:18|
 :skolemid |67|
 :pattern ( (|MultiSet#Select| (|MultiSet#Union| a@@28 b@@21) o@@11))
 :pattern ( (|MultiSet#Union| a@@28 b@@21) (|MultiSet#Select| a@@28 o@@11) (|MultiSet#Select| b@@21 o@@11))
)))
(assert (forall ((T@@45 T@T) ) (! (= (type (|Set#Empty| T@@45)) (MapType2Type T@@45 boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@45))
)))
(assert (forall ((o@@12 T@U) ) (! (let ((T@@46 (type o@@12)))
 (not (U_2_bool (MapType2Select (|Set#Empty| T@@46) o@@12))))
 :qid |knownfoldedbpl.194:18|
 :skolemid |23|
 :pattern ( (let ((T@@46 (type o@@12)))
(MapType2Select (|Set#Empty| T@@46) o@@12)))
)))
(assert (forall ((r@@4 T@U) ) (! (let ((T@@47 (type r@@4)))
(= (|MultiSet#Singleton| r@@4) (|MultiSet#UnionOne| (|MultiSet#Empty| T@@47) r@@4)))
 :qid |knownfoldedbpl.313:18|
 :skolemid |63|
 :pattern ( (|MultiSet#Singleton| r@@4))
)))
(assert (forall ((a@@29 Int) (b@@22 Int) ) (! (= (<= a@@29 b@@22) (= (|Math#min| a@@29 b@@22) a@@29))
 :qid |knownfoldedbpl.278:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@29 b@@22))
)))
(assert (forall ((a@@30 Int) (b@@23 Int) ) (! (= (<= b@@23 a@@30) (= (|Math#min| a@@30 b@@23) b@@23))
 :qid |knownfoldedbpl.279:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@30 b@@23))
)))
(assert (forall ((s@@2 T@U) ) (! (let ((T@@48 (MapType2TypeInv0 (type s@@2))))
 (=> (= (type s@@2) (MapType2Type T@@48 boolType)) (and (= (= (|Set#Card| s@@2) 0) (= s@@2 (|Set#Empty| T@@48))) (=> (not (= (|Set#Card| s@@2) 0)) (exists ((x@@22 T@U) ) (!  (and (= (type x@@22) T@@48) (U_2_bool (MapType2Select s@@2 x@@22)))
 :qid |knownfoldedbpl.197:33|
 :skolemid |24|
 :no-pattern (type x@@22)
 :no-pattern (U_2_int x@@22)
 :no-pattern (U_2_bool x@@22)
))))))
 :qid |knownfoldedbpl.195:18|
 :skolemid |25|
 :pattern ( (|Set#Card| s@@2))
)))
(assert (forall ((Heap@@9 T@U) (o@@13 T@U) (f_2@@2 T@U) (v T@U) ) (! (let ((B@@8 (type v)))
(let ((A@@9 (FieldTypeInv0 (type f_2@@2))))
 (=> (and (and (= (type Heap@@9) (MapType0Type RefType)) (= (type o@@13) RefType)) (= (type f_2@@2) (FieldType A@@9 B@@8))) (succHeap Heap@@9 (MapType0Store Heap@@9 o@@13 f_2@@2 v)))))
 :qid |knownfoldedbpl.68:22|
 :skolemid |9|
 :pattern ( (MapType0Store Heap@@9 o@@13 f_2@@2 v))
)))
(assert (forall ((a@@31 T@U) (b@@24 T@U) ) (! (let ((T@@49 (MapType2TypeInv0 (type a@@31))))
 (=> (and (= (type a@@31) (MapType2Type T@@49 boolType)) (= (type b@@24) (MapType2Type T@@49 boolType))) (= (|Set#Subset| a@@31 b@@24) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) T@@49) (U_2_bool (MapType2Select a@@31 o@@14))) (U_2_bool (MapType2Select b@@24 o@@14)))
 :qid |knownfoldedbpl.257:32|
 :skolemid |46|
 :pattern ( (MapType2Select a@@31 o@@14))
 :pattern ( (MapType2Select b@@24 o@@14))
)))))
 :qid |knownfoldedbpl.256:17|
 :skolemid |47|
 :pattern ( (|Set#Subset| a@@31 b@@24))
)))
(assert (forall ((a@@32 T@U) (x@@23 T@U) ) (! (let ((T@@50 (type x@@23)))
 (=> (and (= (type a@@32) (MapType2Type T@@50 boolType)) (not (U_2_bool (MapType2Select a@@32 x@@23)))) (= (|Set#Card| (|Set#UnionOne| a@@32 x@@23)) (+ (|Set#Card| a@@32) 1))))
 :qid |knownfoldedbpl.213:18|
 :skolemid |33|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@32 x@@23)))
)))
(assert (forall ((a@@33 T@U) (b@@25 T@U) (o@@15 T@U) ) (! (let ((T@@51 (type o@@15)))
 (=> (and (= (type a@@33) (MultiSetType T@@51)) (= (type b@@25) (MultiSetType T@@51))) (= (|MultiSet#Select| (|MultiSet#Difference| a@@33 b@@25) o@@15) (|Math#clip| (- (|MultiSet#Select| a@@33 o@@15) (|MultiSet#Select| b@@25 o@@15))))))
 :qid |knownfoldedbpl.345:18|
 :skolemid |72|
 :pattern ( (|MultiSet#Select| (|MultiSet#Difference| a@@33 b@@25) o@@15))
)))
(assert (= (type ZeroPMask) (MapType1Type RefType boolType)))
(assert (forall ((o_1@@3 T@U) (f_3@@3 T@U) ) (! (let ((B@@9 (FieldTypeInv1 (type f_3@@3))))
(let ((A@@10 (FieldTypeInv0 (type f_3@@3))))
 (=> (and (= (type o_1@@3) RefType) (= (type f_3@@3) (FieldType A@@10 B@@9))) (not (U_2_bool (MapType1Select ZeroPMask o_1@@3 f_3@@3))))))
 :qid |knownfoldedbpl.102:22|
 :skolemid |14|
 :pattern ( (MapType1Select ZeroPMask o_1@@3 f_3@@3))
)))
(assert (forall ((p@@1 T@U) (v_1@@0 T@U) (q T@U) (w@@0 T@U) (r@@5 T@U) (u T@U) ) (! (let ((C@@3 (FieldTypeInv0 (type r@@5))))
(let ((B@@10 (FieldTypeInv0 (type q))))
(let ((A@@11 (FieldTypeInv0 (type p@@1))))
 (=> (and (and (and (and (and (and (= (type p@@1) (FieldType A@@11 FrameTypeType)) (= (type v_1@@0) FrameTypeType)) (= (type q) (FieldType B@@10 FrameTypeType))) (= (type w@@0) FrameTypeType)) (= (type r@@5) (FieldType C@@3 FrameTypeType))) (= (type u) FrameTypeType)) (and (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r@@5 u))) (InsidePredicate p@@1 v_1@@0 r@@5 u)))))
 :qid |knownfoldedbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r@@5 u))
)))
(assert (forall ((a@@34 Int) ) (!  (=> (< a@@34 0) (= (|Math#clip| a@@34) 0))
 :qid |knownfoldedbpl.284:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@34))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@35 T@U) (x@@24 T@U) (o@@16 T@U) ) (! (let ((T@@52 (type x@@24)))
 (=> (and (= (type a@@35) (MultiSetType T@@52)) (= (type o@@16) T@@52)) (= (|MultiSet#Select| (|MultiSet#UnionOne| a@@35 x@@24) o@@16) (ite (= x@@24 o@@16) (+ (|MultiSet#Select| a@@35 o@@16) 1) (|MultiSet#Select| a@@35 o@@16)))))
 :qid |knownfoldedbpl.317:18|
 :skolemid |64|
 :pattern ( (|MultiSet#Select| (|MultiSet#UnionOne| a@@35 x@@24) o@@16))
 :pattern ( (|MultiSet#UnionOne| a@@35 x@@24) (|MultiSet#Select| a@@35 o@@16))
)))
(assert (forall ((a@@36 T@U) (b@@26 T@U) ) (! (let ((T@@53 (MultiSetTypeInv0 (type a@@36))))
 (=> (and (= (type a@@36) (MultiSetType T@@53)) (= (type b@@26) (MultiSetType T@@53))) (= (|MultiSet#Equal| a@@36 b@@26) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) T@@53) (= (|MultiSet#Select| a@@36 o@@17) (|MultiSet#Select| b@@26 o@@17)))
 :qid |knownfoldedbpl.363:36|
 :skolemid |77|
 :pattern ( (|MultiSet#Select| a@@36 o@@17))
 :pattern ( (|MultiSet#Select| b@@26 o@@17))
)))))
 :qid |knownfoldedbpl.362:17|
 :skolemid |78|
 :pattern ( (|MultiSet#Equal| a@@36 b@@26))
)))
(assert (forall ((a@@37 T@U) (b@@27 T@U) ) (! (let ((T@@54 (MultiSetTypeInv0 (type a@@37))))
 (=> (and (= (type a@@37) (MultiSetType T@@54)) (= (type b@@27) (MultiSetType T@@54))) (= (|MultiSet#Subset| a@@37 b@@27) (forall ((o@@18 T@U) ) (!  (=> (= (type o@@18) T@@54) (<= (|MultiSet#Select| a@@37 o@@18) (|MultiSet#Select| b@@27 o@@18)))
 :qid |knownfoldedbpl.359:37|
 :skolemid |75|
 :pattern ( (|MultiSet#Select| a@@37 o@@18))
 :pattern ( (|MultiSet#Select| b@@27 o@@18))
)))))
 :qid |knownfoldedbpl.358:17|
 :skolemid |76|
 :pattern ( (|MultiSet#Subset| a@@37 b@@27))
)))
(assert (forall ((a@@38 T@U) (b@@28 T@U) (o@@19 T@U) ) (! (let ((T@@55 (type o@@19)))
 (=> (and (= (type a@@38) (MapType2Type T@@55 boolType)) (= (type b@@28) (MapType2Type T@@55 boolType))) (= (U_2_bool (MapType2Select (|Set#Union| a@@38 b@@28) o@@19))  (or (U_2_bool (MapType2Select a@@38 o@@19)) (U_2_bool (MapType2Select b@@28 o@@19))))))
 :qid |knownfoldedbpl.217:18|
 :skolemid |34|
 :pattern ( (MapType2Select (|Set#Union| a@@38 b@@28) o@@19))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@5 () T@U)
(declare-fun Mask@3 () T@U)
(declare-fun x@@25 () T@U)
(declare-fun perm@1 () Real)
(declare-fun Heap@4 () T@U)
(declare-fun Mask@6 () T@U)
(declare-fun b_2@@5 () Bool)
(declare-fun Mask@4 () T@U)
(declare-fun perm@2 () Real)
(declare-fun Heap@3 () T@U)
(declare-fun Heap@1 () T@U)
(declare-fun Heap@2 () T@U)
(declare-fun Mask@2 () T@U)
(declare-fun Mask@0 () T@U)
(declare-fun Mask@1 () T@U)
(declare-fun Heap@@10 () T@U)
(declare-fun Heap@0 () T@U)
(declare-fun newVersion@0 () T@U)
(declare-fun QPMask@0 () T@U)
(declare-fun perm@0 () Real)
(declare-fun FrameFragment (T@U) T@U)
(declare-fun PostMask@1 () T@U)
(declare-fun PostHeap@0 () T@U)
(declare-fun PostMask@0 () T@U)
(declare-fun xs () T@U)
(declare-fun invRecv1 (T@U Bool) T@U)
(declare-fun qpRange1 (T@U Bool) Bool)
(declare-fun Mask@@9 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type x@@25) RefType) (= (type PostMask@0) (MapType1Type RefType realType))) (= (type PostHeap@0) (MapType0Type RefType))) (= (type PostMask@1) (MapType1Type RefType realType))) (= (type Mask@4) (MapType1Type RefType realType))) (= (type Mask@3) (MapType1Type RefType realType))) (= (type Heap@4) (MapType0Type RefType))) (= (type Mask@6) (MapType1Type RefType realType))) (= (type Mask@5) (MapType1Type RefType realType))) (= (type Heap@2) (MapType0Type RefType))) (= (type Heap@1) (MapType0Type RefType))) (= (type Heap@3) (MapType0Type RefType))) (= (type Mask@1) (MapType1Type RefType realType))) (= (type Mask@0) (MapType1Type RefType realType))) (= (type Mask@2) (MapType1Type RefType realType))) (= (type Heap@0) (MapType0Type RefType))) (= (type Heap@@10) (MapType0Type RefType))) (= (type newVersion@0) FrameTypeType)) (= (type QPMask@0) (MapType1Type RefType realType))) (forall ((arg0@@45 T@U) ) (! (= (type (FrameFragment arg0@@45)) FrameTypeType)
 :qid |funType:FrameFragment|
 :pattern ( (FrameFragment arg0@@45))
))) (= (type xs) (MapType2Type RefType boolType))) (forall ((arg0@@46 T@U) (arg1@@25 Bool) ) (! (= (type (invRecv1 arg0@@46 arg1@@25)) RefType)
 :qid |funType:invRecv1|
 :pattern ( (invRecv1 arg0@@46 arg1@@25))
))) (= (type Mask@@9) (MapType1Type RefType realType))))
(set-info :boogie-vc-id known_folded_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 37) (let ((anon24_correct true))
(let ((anon20_correct  (=> (= Mask@5 (MapType1Store Mask@3 x@@25 f_6 (real_2_U (- (U_2_real (MapType1Select Mask@3 x@@25 f_6)) perm@1)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (U_2_int (MapType0Select Heap@4 x@@25 f_6)) 0)) (=> (= (U_2_int (MapType0Select Heap@4 x@@25 f_6)) 0) (=> (and (= Mask@6 Mask@5) (= (ControlFlow 0 14) 7)) anon24_correct))))))
(let ((anon33_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 18) 14)) anon20_correct)))
(let ((anon33_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (<= perm@1 (U_2_real (MapType1Select Mask@3 x@@25 f_6)))) (=> (<= perm@1 (U_2_real (MapType1Select Mask@3 x@@25 f_6))) (=> (= (ControlFlow 0 16) 14) anon20_correct))))))
(let ((anon32_Then_correct  (=> (and b_2@@5 (= perm@1 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 19) 16) anon33_Then_correct) (=> (= (ControlFlow 0 19) 18) anon33_Else_correct)))))
(let ((anon23_correct  (=> (= Mask@4 (MapType1Store Mask@3 x@@25 g (real_2_U (- (U_2_real (MapType1Select Mask@3 x@@25 g)) perm@2)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (U_2_bool (MapType0Select Heap@4 x@@25 g))) (=> (U_2_bool (MapType0Select Heap@4 x@@25 g)) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 8) 7)) anon24_correct))))))
(let ((anon34_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 12) 8)) anon23_correct)))
(let ((anon34_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= perm@2 (U_2_real (MapType1Select Mask@3 x@@25 g)))) (=> (<= perm@2 (U_2_real (MapType1Select Mask@3 x@@25 g))) (=> (= (ControlFlow 0 10) 8) anon23_correct))))))
(let ((anon32_Else_correct  (=> (and (not b_2@@5) (= perm@2 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 13) 10) anon34_Then_correct) (=> (= (ControlFlow 0 13) 12) anon34_Else_correct)))))
(let ((anon17_correct  (=> (state Heap@4 Mask@3) (and (=> (= (ControlFlow 0 20) 19) anon32_Then_correct) (=> (= (ControlFlow 0 20) 13) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not b_2@@5) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 g)))) (=> (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 g))) (=> (and (and (= Heap@3 (MapType0Store Heap@1 x@@25 g (bool_2_U true))) (state Heap@3 Mask@3)) (and (= Heap@4 Heap@3) (= (ControlFlow 0 23) 20))) anon17_correct))))))
(let ((anon31_Then_correct  (=> b_2@@5 (and (=> (= (ControlFlow 0 21) (- 0 22)) (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 f_6)))) (=> (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 f_6))) (=> (and (and (= Heap@2 (MapType0Store Heap@1 x@@25 f_6 (int_2_U 0))) (state Heap@2 Mask@3)) (and (= Heap@4 Heap@2) (= (ControlFlow 0 21) 20))) anon17_correct))))))
(let ((anon14_correct  (=> (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 25) 21) anon31_Then_correct) (=> (= (ControlFlow 0 25) 23) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not b_2@@5) (not (= x@@25 null))) (=> (and (and (= Mask@2 (MapType1Store Mask@0 x@@25 g (real_2_U (+ (U_2_real (MapType1Select Mask@0 x@@25 g)) FullPerm)))) (state Heap@1 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 27) 25))) anon14_correct))))
(let ((anon30_Then_correct  (=> (and b_2@@5 (not (= x@@25 null))) (=> (and (and (= Mask@1 (MapType1Store Mask@0 x@@25 f_6 (real_2_U (+ (U_2_real (MapType1Select Mask@0 x@@25 f_6)) FullPerm)))) (state Heap@1 Mask@1)) (and (= Mask@3 Mask@1) (= (ControlFlow 0 26) 25))) anon14_correct))))
(let ((anon29_Else_correct  (=> (and (HasDirectPerm Mask@0 null (P x@@25 b_2@@5)) (= Heap@1 Heap@@10)) (and (=> (= (ControlFlow 0 29) 26) anon30_Then_correct) (=> (= (ControlFlow 0 29) 27) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (not (HasDirectPerm Mask@0 null (P x@@25 b_2@@5))) (=> (and (= Heap@0 (MapType0Store Heap@@10 null (P x@@25 b_2@@5) newVersion@0)) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 28) 26) anon30_Then_correct) (=> (= (ControlFlow 0 28) 27) anon30_Else_correct))))))
(let ((anon9_correct  (=> (= Mask@0 (MapType1Store QPMask@0 null (P x@@25 b_2@@5) (real_2_U (- (U_2_real (MapType1Select QPMask@0 null (P x@@25 b_2@@5))) perm@0)))) (and (=> (= (ControlFlow 0 30) 28) anon29_Then_correct) (=> (= (ControlFlow 0 30) 29) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 33) 30)) anon9_correct)))
(let ((anon28_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= perm@0 (U_2_real (MapType1Select QPMask@0 null (P x@@25 b_2@@5))))) (=> (<= perm@0 (U_2_real (MapType1Select QPMask@0 null (P x@@25 b_2@@5)))) (=> (= (ControlFlow 0 31) 30) anon9_correct))))))
(let ((anon26_Else_correct  (=> (|P#trigger| Heap@@10 (P x@@25 b_2@@5)) (=> (and (= (MapType0Select Heap@@10 null (P x@@25 b_2@@5)) (FrameFragment (ite b_2@@5 (FrameFragment (MapType0Select Heap@@10 x@@25 f_6)) (FrameFragment (MapType0Select Heap@@10 x@@25 g))))) (= perm@0 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 34) 31) anon28_Then_correct) (=> (= (ControlFlow 0 34) 33) anon28_Else_correct))))))
(let ((anon6_correct true))
(let ((anon27_Else_correct  (=> (not b_2@@5) (=> (and (and (not (= x@@25 null)) (= PostMask@1 (MapType1Store ZeroMask x@@25 g (real_2_U (+ (U_2_real (MapType1Select ZeroMask x@@25 g)) FullPerm))))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm PostMask@1 x@@25 g)) (=> (HasDirectPerm PostMask@1 x@@25 g) (=> (and (and (state PostHeap@0 PostMask@1) (U_2_bool (MapType0Select PostHeap@0 x@@25 g))) (and (state PostHeap@0 PostMask@1) (= (ControlFlow 0 5) 2))) anon6_correct)))))))
(let ((anon27_Then_correct  (=> b_2@@5 (=> (and (and (not (= x@@25 null)) (= PostMask@0 (MapType1Store ZeroMask x@@25 f_6 (real_2_U (+ (U_2_real (MapType1Select ZeroMask x@@25 f_6)) FullPerm))))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm PostMask@0 x@@25 f_6)) (=> (HasDirectPerm PostMask@0 x@@25 f_6) (=> (and (and (state PostHeap@0 PostMask@0) (= (U_2_int (MapType0Select PostHeap@0 x@@25 f_6)) 0)) (and (state PostHeap@0 PostMask@0) (= (ControlFlow 0 3) 2))) anon6_correct)))))))
(let ((anon25_Else_correct  (=> (state Heap@@10 ZeroMask) (=> (and (and (forall ((y_1 T@U) ) (!  (=> (= (type y_1) RefType) (=> (and (U_2_bool (MapType2Select xs y_1)) (< NoPerm FullPerm)) (and (= (invRecv1 y_1 b_2@@5) y_1) (qpRange1 y_1 b_2@@5))))
 :qid |knownfoldedbpl.451:22|
 :skolemid |88|
 :pattern ( (MapType0Select Heap@@10 null (P y_1 b_2@@5)))
 :pattern ( (MapType1Select ZeroMask null (P y_1 b_2@@5)))
 :pattern ( (MapType2Select xs y_1))
)) (forall ((x_1_1 T@U) (b_1_1 Bool) ) (!  (=> (= (type x_1_1) RefType) (=> (and (and (U_2_bool (MapType2Select xs (invRecv1 x_1_1 b_1_1))) (< NoPerm FullPerm)) (qpRange1 x_1_1 b_1_1)) (and (= (invRecv1 x_1_1 b_1_1) x_1_1) (= b_2@@5 b_1_1))))
 :qid |knownfoldedbpl.455:22|
 :skolemid |89|
 :pattern ( (invRecv1 x_1_1 b_1_1))
))) (and (forall ((x_1_1@@0 T@U) (b_1_1@@0 Bool) ) (!  (=> (= (type x_1_1@@0) RefType) (=> (and (and (U_2_bool (MapType2Select xs (invRecv1 x_1_1@@0 b_1_1@@0))) (< NoPerm FullPerm)) (qpRange1 x_1_1@@0 b_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv1 x_1_1@@0 b_1_1@@0) x_1_1@@0) (= b_2@@5 b_1_1@@0))) (= (U_2_real (MapType1Select QPMask@0 null (P x_1_1@@0 b_1_1@@0))) (+ (U_2_real (MapType1Select ZeroMask null (P x_1_1@@0 b_1_1@@0))) FullPerm)))))
 :qid |knownfoldedbpl.461:22|
 :skolemid |90|
 :pattern ( (MapType1Select QPMask@0 null (P x_1_1@@0 b_1_1@@0)))
)) (forall ((o_2 T@U) (f_4 T@U) ) (! (let ((B@@11 (FieldTypeInv1 (type f_4))))
(let ((A@@12 (FieldTypeInv0 (type f_4))))
 (=> (and (and (= (type o_2) RefType) (= (type f_4) (FieldType A@@12 B@@11))) (or (or (not (= o_2 null)) (not (IsPredicateField f_4))) (not (= (getPredicateId f_4) 0)))) (= (U_2_real (MapType1Select ZeroMask o_2 f_4)) (U_2_real (MapType1Select QPMask@0 o_2 f_4))))))
 :qid |knownfoldedbpl.467:29|
 :skolemid |91|
 :pattern ( (MapType1Select ZeroMask o_2 f_4))
 :pattern ( (MapType1Select QPMask@0 o_2 f_4))
)))) (=> (and (and (and (forall ((x_1_1@@1 T@U) (b_1_1@@1 Bool) ) (!  (=> (and (= (type x_1_1@@1) RefType) (not (and (and (U_2_bool (MapType2Select xs (invRecv1 x_1_1@@1 b_1_1@@1))) (< NoPerm FullPerm)) (qpRange1 x_1_1@@1 b_1_1@@1)))) (= (U_2_real (MapType1Select QPMask@0 null (P x_1_1@@1 b_1_1@@1))) (U_2_real (MapType1Select ZeroMask null (P x_1_1@@1 b_1_1@@1)))))
 :qid |knownfoldedbpl.471:22|
 :skolemid |92|
 :pattern ( (MapType1Select QPMask@0 null (P x_1_1@@1 b_1_1@@1)))
)) (state Heap@@10 QPMask@0)) (and (state Heap@@10 QPMask@0) (U_2_bool (MapType2Select xs x@@25)))) (and (and (state Heap@@10 QPMask@0) (= Heap@@10 Heap@@10)) (and (= QPMask@0 Mask@@9) (state PostHeap@0 ZeroMask)))) (and (and (=> (= (ControlFlow 0 35) 34) anon26_Else_correct) (=> (= (ControlFlow 0 35) 3) anon27_Then_correct)) (=> (= (ControlFlow 0 35) 5) anon27_Else_correct)))))))
(let ((anon25_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@10 ZeroMask) (U_2_bool (MapType0Select Heap@@10 x@@25 $allocated))) (and (=> (= (ControlFlow 0 36) 1) anon25_Then_correct) (=> (= (ControlFlow 0 36) 35) anon25_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 37) 36) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
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
(declare-fun $allocated () T@U)
(declare-fun f_6 () T@U)
(declare-fun g () T@U)
(declare-fun FieldType (T@T T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun FieldTypeInv1 (T@T) T@T)
(declare-fun NormalFieldType () T@T)
(declare-fun succHeap (T@U T@U) Bool)
(declare-fun MapType0Type (T@T) T@T)
(declare-fun RefType () T@T)
(declare-fun succHeapTrans (T@U T@U) Bool)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun MultiSetTypeInv0 (T@T) T@T)
(declare-fun MultiSetType (T@T) T@T)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun state (T@U T@U) Bool)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun GoodMask (T@U) Bool)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun P (T@U Bool) T@U)
(declare-fun IsPredicateField (T@U) Bool)
(declare-fun PredicateType_PType () T@T)
(declare-fun FrameTypeType () T@T)
(declare-fun |P#trigger| (T@U T@U) Bool)
(declare-fun |P#everUsed| (T@U) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun IdenticalOnKnownLocations (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun PredicateMaskField (T@U) T@U)
(declare-fun HasDirectPerm (T@U T@U T@U) Bool)
(declare-fun IsWandField (T@U) Bool)
(declare-fun WandMaskField (T@U) T@U)
(declare-fun |MultiSet#Select| (T@U T@U) Int)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2Type (T@T T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2Select (T@U T@U) T@U)
(declare-fun MapType2Store (T@U T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun |P#sm| (T@U Bool) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun InsidePredicate (T@U T@U T@U T@U) Bool)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun sumMask (T@U T@U T@U) Bool)
(declare-fun ConditionalFrame (Real T@U) T@U)
(declare-fun EmptyFrame () T@U)
(declare-fun NoPerm () Real)
(declare-fun ZeroMask () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Empty| (T@T) T@U)
(declare-fun getPredicateId (T@U) Int)
(declare-fun FullPerm () Real)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun ZeroPMask () T@U)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (FieldType arg0@@11 arg1)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (FieldTypeInv1 (FieldType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:FieldTypeInv1|
 :pattern ( (FieldType arg0@@13 arg1@@1))
))) (= (Ctor NormalFieldType) 7)) (= (type $allocated) (FieldType NormalFieldType boolType))) (= (type f_6) (FieldType NormalFieldType intType))) (= (type g) (FieldType NormalFieldType boolType))))
(assert (distinct $allocated f_6 g)
)
(assert  (and (and (and (and (and (and (forall ((arg0@@14 T@T) ) (! (= (Ctor (MapType0Type arg0@@14)) 8)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@15 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@15)) arg0@@15)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@15))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) (arg2 T@U) ) (! (let ((B (FieldTypeInv1 (type arg2))))
(= (type (MapType0Select arg0@@16 arg1@@2 arg2)) B))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2 arg2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2@@0 T@U) (arg3 T@U) ) (! (let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2@@0 arg3)) (MapType0Type aVar0)))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2@@0 arg3))
))) (forall ((m T@U) (x0 T@U) (x1 T@U) (val T@U) ) (! (let ((B@@0 (FieldTypeInv1 (type x1))))
 (=> (= (type val) B@@0) (= (MapType0Select (MapType0Store m x0 x1 val) x0 x1) val)))
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
)))) (= (Ctor RefType) 9)))
(assert (forall ((Heap0 T@U) (Heap1 T@U) ) (!  (=> (and (and (= (type Heap0) (MapType0Type RefType)) (= (type Heap1) (MapType0Type RefType))) (succHeap Heap0 Heap1)) (succHeapTrans Heap0 Heap1))
 :qid |knownfoldedbpl.78:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert  (and (and (and (and (forall ((arg0@@18 T@T) ) (! (= (Ctor (MultiSetType arg0@@18)) 10)
 :qid |ctor:MultiSetType|
)) (forall ((arg0@@19 T@T) ) (! (= (MultiSetTypeInv0 (MultiSetType arg0@@19)) arg0@@19)
 :qid |typeInv:MultiSetTypeInv0|
 :pattern ( (MultiSetType arg0@@19))
))) (forall ((arg0@@20 T@U) (arg1@@4 T@U) ) (! (let ((T (MultiSetTypeInv0 (type arg0@@20))))
(= (type (|MultiSet#Difference| arg0@@20 arg1@@4)) (MultiSetType T)))
 :qid |funType:MultiSet#Difference|
 :pattern ( (|MultiSet#Difference| arg0@@20 arg1@@4))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) ) (! (let ((T@@0 (MultiSetTypeInv0 (type arg0@@21))))
(= (type (|MultiSet#Intersection| arg0@@21 arg1@@5)) (MultiSetType T@@0)))
 :qid |funType:MultiSet#Intersection|
 :pattern ( (|MultiSet#Intersection| arg0@@21 arg1@@5))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) ) (! (let ((T@@1 (MultiSetTypeInv0 (type arg0@@22))))
(= (type (|MultiSet#Union| arg0@@22 arg1@@6)) (MultiSetType T@@1)))
 :qid |funType:MultiSet#Union|
 :pattern ( (|MultiSet#Union| arg0@@22 arg1@@6))
))))
(assert (forall ((a T@U) (b T@U) ) (! (let ((T@@2 (MultiSetTypeInv0 (type a))))
 (=> (and (= (type a) (MultiSetType T@@2)) (= (type b) (MultiSetType T@@2))) (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))))
 :qid |knownfoldedbpl.349:18|
 :skolemid |74|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@23 T@T) (arg1@@7 T@T) ) (! (= (Ctor (MapType1Type arg0@@23 arg1@@7)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@24 T@T) (arg1@@8 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@24 arg1@@8)) arg0@@24)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@24 arg1@@8))
))) (forall ((arg0@@25 T@T) (arg1@@9 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@25 arg1@@9)) arg1@@9)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@25 arg1@@9))
))) (forall ((arg0@@26 T@U) (arg1@@10 T@U) (arg2@@1 T@U) ) (! (let ((aVar1 (MapType1TypeInv1 (type arg0@@26))))
(= (type (MapType1Select arg0@@26 arg1@@10 arg2@@1)) aVar1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@26 arg1@@10 arg2@@1))
))) (forall ((arg0@@27 T@U) (arg1@@11 T@U) (arg2@@2 T@U) (arg3@@0 T@U) ) (! (let ((aVar1@@0 (type arg3@@0)))
(let ((aVar0@@0 (type arg1@@11)))
(= (type (MapType1Store arg0@@27 arg1@@11 arg2@@2 arg3@@0)) (MapType1Type aVar0@@0 aVar1@@0))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@27 arg1@@11 arg2@@2 arg3@@0))
))) (forall ((m@@3 T@U) (x0@@3 T@U) (x1@@3 T@U) (val@@3 T@U) ) (! (let ((aVar1@@1 (MapType1TypeInv1 (type m@@3))))
 (=> (= (type val@@3) aVar1@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 x1@@3 val@@3) x0@@3 x1@@3) val@@3)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (and (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@4 T@U) (y0@@2 T@U) (y1@@2 T@U) ) (!  (or (= x0@@4 y0@@2) (= (MapType1Select (MapType1Store m@@4 x0@@4 x1@@4 val@@4) y0@@2 y1@@2) (MapType1Select m@@4 y0@@2 y1@@2)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@5 T@U) (y0@@3 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType1Select (MapType1Store m@@5 x0@@5 x1@@5 val@@5) y0@@3 y1@@3) (MapType1Select m@@5 y0@@3 y1@@3)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@6 T@U) (y0@@4 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@6 x0@@6 x1@@6 val@@6) y0@@4 y1@@4) (MapType1Select m@@6 y0@@4 y1@@4)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))))
(assert (forall ((Heap T@U) (Mask T@U) ) (!  (=> (and (and (= (type Heap) (MapType0Type RefType)) (= (type Mask) (MapType1Type RefType realType))) (state Heap Mask)) (GoodMask Mask))
 :qid |knownfoldedbpl.114:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@U) (Heap1@@0 T@U) (Heap2 T@U) ) (!  (=> (and (and (and (= (type Heap0@@0) (MapType0Type RefType)) (= (type Heap1@@0) (MapType0Type RefType))) (= (type Heap2) (MapType0Type RefType))) (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))) (succHeapTrans Heap0@@0 Heap2))
 :qid |knownfoldedbpl.83:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert  (and (and (= (Ctor PredicateType_PType) 12) (= (Ctor FrameTypeType) 13)) (forall ((arg0@@28 T@U) (arg1@@12 Bool) ) (! (= (type (P arg0@@28 arg1@@12)) (FieldType PredicateType_PType FrameTypeType))
 :qid |funType:P|
 :pattern ( (P arg0@@28 arg1@@12))
))))
(assert (forall ((x@@8 T@U) (b_2 Bool) ) (!  (=> (= (type x@@8) RefType) (IsPredicateField (P x@@8 b_2)))
 :qid |knownfoldedbpl.396:15|
 :skolemid |83|
 :pattern ( (P x@@8 b_2))
)))
(assert (forall ((Heap@@0 T@U) (x@@9 T@U) (b_2@@0 Bool) ) (!  (=> (and (= (type Heap@@0) (MapType0Type RefType)) (= (type x@@9) RefType)) (|P#everUsed| (P x@@9 b_2@@0)))
 :qid |knownfoldedbpl.415:15|
 :skolemid |87|
 :pattern ( (|P#trigger| Heap@@0 (P x@@9 b_2@@0)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |knownfoldedbpl.280:15|
 :skolemid |53|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert  (and (= (type null) RefType) (forall ((arg0@@29 T@U) ) (! (let ((A (FieldTypeInv0 (type arg0@@29))))
(= (type (PredicateMaskField arg0@@29)) (FieldType A (MapType1Type RefType boolType))))
 :qid |funType:PredicateMaskField|
 :pattern ( (PredicateMaskField arg0@@29))
))))
(assert (forall ((Heap@@1 T@U) (ExhaleHeap T@U) (Mask@@0 T@U) (pm_f T@U) ) (! (let ((C (FieldTypeInv0 (type pm_f))))
 (=> (and (and (and (and (and (= (type Heap@@1) (MapType0Type RefType)) (= (type ExhaleHeap) (MapType0Type RefType))) (= (type Mask@@0) (MapType1Type RefType realType))) (= (type pm_f) (FieldType C FrameTypeType))) (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0)) (and (HasDirectPerm Mask@@0 null pm_f) (IsPredicateField pm_f))) (= (MapType0Select Heap@@1 null (PredicateMaskField pm_f)) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))))
 :qid |knownfoldedbpl.37:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField pm_f) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))
)))
(assert (forall ((arg0@@30 T@U) ) (! (let ((A@@0 (FieldTypeInv0 (type arg0@@30))))
(= (type (WandMaskField arg0@@30)) (FieldType A@@0 (MapType1Type RefType boolType))))
 :qid |funType:WandMaskField|
 :pattern ( (WandMaskField arg0@@30))
)))
(assert (forall ((Heap@@2 T@U) (ExhaleHeap@@0 T@U) (Mask@@1 T@U) (pm_f@@0 T@U) ) (! (let ((C@@0 (FieldTypeInv0 (type pm_f@@0))))
 (=> (and (and (and (and (and (= (type Heap@@2) (MapType0Type RefType)) (= (type ExhaleHeap@@0) (MapType0Type RefType))) (= (type Mask@@1) (MapType1Type RefType realType))) (= (type pm_f@@0) (FieldType C@@0 FrameTypeType))) (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1)) (and (HasDirectPerm Mask@@1 null pm_f@@0) (IsWandField pm_f@@0))) (= (MapType0Select Heap@@2 null (WandMaskField pm_f@@0)) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))))
 :qid |knownfoldedbpl.50:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField pm_f@@0) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (! (let ((T@@3 (type y@@1)))
 (=> (and (and (= (type a@@1) (MultiSetType T@@3)) (= (type b@@1) (MultiSetType T@@3))) (<= (|MultiSet#Select| a@@1 y@@1) (|MultiSet#Select| b@@1 y@@1))) (= (|MultiSet#Select| (|MultiSet#Difference| a@@1 b@@1) y@@1) 0)))
 :qid |knownfoldedbpl.347:18|
 :skolemid |73|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Select| b@@1 y@@1) (|MultiSet#Select| a@@1 y@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@31 T@T) (arg1@@13 T@T) ) (! (= (Ctor (MapType2Type arg0@@31 arg1@@13)) 14)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@32 T@T) (arg1@@14 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@32 arg1@@14)) arg0@@32)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@32 arg1@@14))
))) (forall ((arg0@@33 T@T) (arg1@@15 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@33 arg1@@15)) arg1@@15)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@33 arg1@@15))
))) (forall ((arg0@@34 T@U) (arg1@@16 T@U) ) (! (let ((aVar1@@2 (MapType2TypeInv1 (type arg0@@34))))
(= (type (MapType2Select arg0@@34 arg1@@16)) aVar1@@2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@34 arg1@@16))
))) (forall ((arg0@@35 T@U) (arg1@@17 T@U) (arg2@@3 T@U) ) (! (let ((aVar1@@3 (type arg2@@3)))
(let ((aVar0@@1 (type arg1@@17)))
(= (type (MapType2Store arg0@@35 arg1@@17 arg2@@3)) (MapType2Type aVar0@@1 aVar1@@3))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@35 arg1@@17 arg2@@3))
))) (forall ((m@@7 T@U) (x0@@7 T@U) (val@@7 T@U) ) (! (let ((aVar1@@4 (MapType2TypeInv1 (type m@@7))))
 (=> (= (type val@@7) aVar1@@4) (= (MapType2Select (MapType2Store m@@7 x0@@7 val@@7) x0@@7) val@@7)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (y0@@5 T@U) ) (!  (or (= x0@@8 y0@@5) (= (MapType2Select (MapType2Store m@@8 x0@@8 val@@8) y0@@5) (MapType2Select m@@8 y0@@5)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@9 T@U) (m@@9 T@U) (x0@@9 T@U) (y0@@6 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@9 x0@@9 val@@9) y0@@6) (MapType2Select m@@9 y0@@6)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@36 T@U) (arg1@@18 T@U) ) (! (let ((T@@4 (MapType2TypeInv0 (type arg0@@36))))
(= (type (|Set#Union| arg0@@36 arg1@@18)) (MapType2Type T@@4 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@36 arg1@@18))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (let ((T@@5 (MapType2TypeInv0 (type a@@2))))
 (=> (and (= (type a@@2) (MapType2Type T@@5 boolType)) (= (type b@@2) (MapType2Type T@@5 boolType))) (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))))
 :qid |knownfoldedbpl.232:18|
 :skolemid |38|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((arg0@@37 T@U) (arg1@@19 T@U) ) (! (let ((T@@6 (MapType2TypeInv0 (type arg0@@37))))
(= (type (|Set#Intersection| arg0@@37 arg1@@19)) (MapType2Type T@@6 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@37 arg1@@19))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (let ((T@@7 (MapType2TypeInv0 (type a@@3))))
 (=> (and (= (type a@@3) (MapType2Type T@@7 boolType)) (= (type b@@3) (MapType2Type T@@7 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@3 b@@3) b@@3) (|Set#Intersection| a@@3 b@@3))))
 :qid |knownfoldedbpl.236:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (let ((T@@8 (MultiSetTypeInv0 (type a@@4))))
 (=> (and (= (type a@@4) (MultiSetType T@@8)) (= (type b@@4) (MultiSetType T@@8))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@4 b@@4) b@@4) (|MultiSet#Intersection| a@@4 b@@4))))
 :qid |knownfoldedbpl.338:18|
 :skolemid |70|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@4 b@@4) b@@4))
)))
(assert (forall ((arg0@@38 T@U) ) (! (let ((T@@9 (type arg0@@38)))
(= (type (|Set#Singleton| arg0@@38)) (MapType2Type T@@9 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@38))
)))
(assert (forall ((r T@U) (o T@U) ) (! (let ((T@@10 (type r)))
 (=> (= (type o) T@@10) (= (U_2_bool (MapType2Select (|Set#Singleton| r) o)) (= r o))))
 :qid |knownfoldedbpl.201:18|
 :skolemid |27|
 :pattern ( (MapType2Select (|Set#Singleton| r) o))
)))
(assert (forall ((x@@10 T@U) (b_2@@1 Bool) (x2 T@U) (b2 Bool) ) (!  (=> (and (and (= (type x@@10) RefType) (= (type x2) RefType)) (= (P x@@10 b_2@@1) (P x2 b2))) (and (= x@@10 x2) (= b_2@@1 b2)))
 :qid |knownfoldedbpl.406:15|
 :skolemid |85|
 :pattern ( (P x@@10 b_2@@1) (P x2 b2))
)))
(assert (forall ((arg0@@39 T@U) (arg1@@20 Bool) ) (! (= (type (|P#sm| arg0@@39 arg1@@20)) (FieldType PredicateType_PType (MapType1Type RefType boolType)))
 :qid |funType:P#sm|
 :pattern ( (|P#sm| arg0@@39 arg1@@20))
)))
(assert (forall ((x@@11 T@U) (b_2@@2 Bool) (x2@@0 T@U) (b2@@0 Bool) ) (!  (=> (and (and (= (type x@@11) RefType) (= (type x2@@0) RefType)) (= (|P#sm| x@@11 b_2@@2) (|P#sm| x2@@0 b2@@0))) (and (= x@@11 x2@@0) (= b_2@@2 b2@@0)))
 :qid |knownfoldedbpl.410:15|
 :skolemid |86|
 :pattern ( (|P#sm| x@@11 b_2@@2) (|P#sm| x2@@0 b2@@0))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (let ((T@@11 (MapType2TypeInv0 (type a@@5))))
 (=> (and (= (type a@@5) (MapType2Type T@@11 boolType)) (= (type b@@5) (MapType2Type T@@11 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@5 b@@5)) (|Set#Card| (|Set#Intersection| a@@5 b@@5))) (+ (|Set#Card| a@@5) (|Set#Card| b@@5)))))
 :qid |knownfoldedbpl.240:18|
 :skolemid |42|
 :pattern ( (|Set#Card| (|Set#Union| a@@5 b@@5)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@5 b@@5)))
)))
(assert (forall ((Heap@@3 T@U) (ExhaleHeap@@1 T@U) (Mask@@2 T@U) (o@@0 T@U) ) (!  (=> (and (and (and (and (and (= (type Heap@@3) (MapType0Type RefType)) (= (type ExhaleHeap@@1) (MapType0Type RefType))) (= (type Mask@@2) (MapType1Type RefType realType))) (= (type o@@0) RefType)) (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2)) (U_2_bool (MapType0Select Heap@@3 o@@0 $allocated))) (U_2_bool (MapType0Select ExhaleHeap@@1 o@@0 $allocated)))
 :qid |knownfoldedbpl.63:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (MapType0Select ExhaleHeap@@1 o@@0 $allocated))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |knownfoldedbpl.283:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((a@@7 T@U) (b@@6 T@U) (o@@1 T@U) ) (! (let ((T@@12 (type o@@1)))
 (=> (and (= (type a@@7) (MultiSetType T@@12)) (= (type b@@6) (MultiSetType T@@12))) (= (|MultiSet#Select| (|MultiSet#Intersection| a@@7 b@@6) o@@1) (|Math#min| (|MultiSet#Select| a@@7 o@@1) (|MultiSet#Select| b@@6 o@@1)))))
 :qid |knownfoldedbpl.334:18|
 :skolemid |69|
 :pattern ( (|MultiSet#Select| (|MultiSet#Intersection| a@@7 b@@6) o@@1))
)))
(assert (forall ((Heap@@4 T@U) (ExhaleHeap@@2 T@U) (Mask@@3 T@U) (o@@2 T@U) (f_2 T@U) ) (! (let ((B@@1 (FieldTypeInv1 (type f_2))))
(let ((A@@1 (FieldTypeInv0 (type f_2))))
 (=> (and (and (and (and (and (and (= (type Heap@@4) (MapType0Type RefType)) (= (type ExhaleHeap@@2) (MapType0Type RefType))) (= (type Mask@@3) (MapType1Type RefType realType))) (= (type o@@2) RefType)) (= (type f_2) (FieldType A@@1 B@@1))) (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3)) (HasDirectPerm Mask@@3 o@@2 f_2)) (= (MapType0Select Heap@@4 o@@2 f_2) (MapType0Select ExhaleHeap@@2 o@@2 f_2)))))
 :qid |knownfoldedbpl.32:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (MapType0Select ExhaleHeap@@2 o@@2 f_2))
)))
(assert (forall ((arg0@@40 T@U) (arg1@@21 T@U) ) (! (let ((T@@13 (type arg1@@21)))
(= (type (|MultiSet#UnionOne| arg0@@40 arg1@@21)) (MultiSetType T@@13)))
 :qid |funType:MultiSet#UnionOne|
 :pattern ( (|MultiSet#UnionOne| arg0@@40 arg1@@21))
)))
(assert (forall ((a@@8 T@U) (x@@12 T@U) ) (! (let ((T@@14 (type x@@12)))
 (=> (= (type a@@8) (MultiSetType T@@14)) (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@8 x@@12)) (+ (|MultiSet#Card| a@@8) 1))))
 :qid |knownfoldedbpl.320:18|
 :skolemid |65|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@8 x@@12)))
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@12) (|MultiSet#Card| a@@8))
)))
(assert (forall ((a@@9 T@U) (b@@7 T@U) ) (! (let ((T@@15 (MultiSetTypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MultiSetType T@@15)) (= (type b@@7) (MultiSetType T@@15))) (= (|MultiSet#Disjoint| a@@9 b@@7) (forall ((o@@3 T@U) ) (!  (=> (= (type o@@3) T@@15) (or (= (|MultiSet#Select| a@@9 o@@3) 0) (= (|MultiSet#Select| b@@7 o@@3) 0)))
 :qid |knownfoldedbpl.370:39|
 :skolemid |80|
 :pattern ( (|MultiSet#Select| a@@9 o@@3))
 :pattern ( (|MultiSet#Select| b@@7 o@@3))
)))))
 :qid |knownfoldedbpl.369:18|
 :skolemid |81|
 :pattern ( (|MultiSet#Disjoint| a@@9 b@@7))
)))
(assert (forall ((p T@U) (v_1 T@U) (w T@U) ) (! (let ((A@@2 (FieldTypeInv0 (type p))))
 (=> (and (and (= (type p) (FieldType A@@2 FrameTypeType)) (= (type v_1) FrameTypeType)) (= (type w) FrameTypeType)) (not (InsidePredicate p v_1 p w))))
 :qid |knownfoldedbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate p v_1 p w))
)))
(assert (forall ((arg0@@41 T@U) ) (! (let ((T@@16 (type arg0@@41)))
(= (type (|MultiSet#Singleton| arg0@@41)) (MultiSetType T@@16)))
 :qid |funType:MultiSet#Singleton|
 :pattern ( (|MultiSet#Singleton| arg0@@41))
)))
(assert (forall ((r@@0 T@U) ) (!  (and (= (|MultiSet#Card| (|MultiSet#Singleton| r@@0)) 1) (= (|MultiSet#Select| (|MultiSet#Singleton| r@@0) r@@0) 1))
 :qid |knownfoldedbpl.312:18|
 :skolemid |62|
 :pattern ( (|MultiSet#Singleton| r@@0))
)))
(assert  (not (IsPredicateField f_6)))
(assert  (not (IsWandField f_6)))
(assert  (not (IsPredicateField g)))
(assert  (not (IsWandField g)))
(assert (forall ((Heap@@5 T@U) (ExhaleHeap@@3 T@U) (Mask@@4 T@U) ) (!  (=> (and (and (and (= (type Heap@@5) (MapType0Type RefType)) (= (type ExhaleHeap@@3) (MapType0Type RefType))) (= (type Mask@@4) (MapType1Type RefType realType))) (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4)) (succHeap Heap@@5 ExhaleHeap@@3))
 :qid |knownfoldedbpl.73:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4))
)))
(assert (forall ((a@@10 T@U) (b@@8 T@U) ) (! (let ((T@@17 (MapType2TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType2Type T@@17 boolType)) (= (type b@@8) (MapType2Type T@@17 boolType))) (= (|Set#Equal| a@@10 b@@8) (forall ((o@@4 T@U) ) (!  (=> (= (type o@@4) T@@17) (= (U_2_bool (MapType2Select a@@10 o@@4)) (U_2_bool (MapType2Select b@@8 o@@4))))
 :qid |knownfoldedbpl.265:31|
 :skolemid |48|
 :pattern ( (MapType2Select a@@10 o@@4))
 :pattern ( (MapType2Select b@@8 o@@4))
)))))
 :qid |knownfoldedbpl.264:17|
 :skolemid |49|
 :pattern ( (|Set#Equal| a@@10 b@@8))
)))
(assert (forall ((ResultMask T@U) (SummandMask1 T@U) (SummandMask2 T@U) (o_1 T@U) (f_3 T@U) ) (! (let ((B@@2 (FieldTypeInv1 (type f_3))))
(let ((A@@3 (FieldTypeInv0 (type f_3))))
 (=> (and (and (and (and (and (= (type ResultMask) (MapType1Type RefType realType)) (= (type SummandMask1) (MapType1Type RefType realType))) (= (type SummandMask2) (MapType1Type RefType realType))) (= (type o_1) RefType)) (= (type f_3) (FieldType A@@3 B@@2))) (sumMask ResultMask SummandMask1 SummandMask2)) (= (U_2_real (MapType1Select ResultMask o_1 f_3)) (+ (U_2_real (MapType1Select SummandMask1 o_1 f_3)) (U_2_real (MapType1Select SummandMask2 o_1 f_3)))))))
 :qid |knownfoldedbpl.128:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select ResultMask o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask1 o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask2 o_1 f_3))
)))
(assert (forall ((a@@11 T@U) (b@@9 T@U) ) (! (let ((T@@18 (MultiSetTypeInv0 (type a@@11))))
 (=> (and (= (type a@@11) (MultiSetType T@@18)) (= (type b@@9) (MultiSetType T@@18))) (= (|MultiSet#Card| (|MultiSet#Union| a@@11 b@@9)) (+ (|MultiSet#Card| a@@11) (|MultiSet#Card| b@@9)))))
 :qid |knownfoldedbpl.330:18|
 :skolemid |68|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@11 b@@9)))
 :pattern ( (|MultiSet#Card| a@@11) (|MultiSet#Union| a@@11 b@@9))
 :pattern ( (|MultiSet#Card| b@@9) (|MultiSet#Union| a@@11 b@@9))
)))
(assert  (and (forall ((arg0@@42 Real) (arg1@@22 T@U) ) (! (= (type (ConditionalFrame arg0@@42 arg1@@22)) FrameTypeType)
 :qid |funType:ConditionalFrame|
 :pattern ( (ConditionalFrame arg0@@42 arg1@@22))
)) (= (type EmptyFrame) FrameTypeType)))
(assert (forall ((p@@0 Real) (f_5 T@U) ) (!  (=> (= (type f_5) FrameTypeType) (= (ConditionalFrame p@@0 f_5) (ite (> p@@0 0.0) f_5 EmptyFrame)))
 :qid |knownfoldedbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_5))
)))
(assert (forall ((Mask@@5 T@U) (o_1@@0 T@U) (f_3@@0 T@U) ) (! (let ((B@@3 (FieldTypeInv1 (type f_3@@0))))
(let ((A@@4 (FieldTypeInv0 (type f_3@@0))))
 (=> (and (and (= (type Mask@@5) (MapType1Type RefType realType)) (= (type o_1@@0) RefType)) (= (type f_3@@0) (FieldType A@@4 B@@3))) (= (HasDirectPerm Mask@@5 o_1@@0 f_3@@0) (> (U_2_real (MapType1Select Mask@@5 o_1@@0 f_3@@0)) NoPerm)))))
 :qid |knownfoldedbpl.123:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm Mask@@5 o_1@@0 f_3@@0))
)))
(assert (= (type ZeroMask) (MapType1Type RefType realType)))
(assert (forall ((o_1@@1 T@U) (f_3@@1 T@U) ) (! (let ((B@@4 (FieldTypeInv1 (type f_3@@1))))
(let ((A@@5 (FieldTypeInv0 (type f_3@@1))))
 (=> (and (= (type o_1@@1) RefType) (= (type f_3@@1) (FieldType A@@5 B@@4))) (= (U_2_real (MapType1Select ZeroMask o_1@@1 f_3@@1)) NoPerm))))
 :qid |knownfoldedbpl.96:22|
 :skolemid |13|
 :pattern ( (MapType1Select ZeroMask o_1@@1 f_3@@1))
)))
(assert (forall ((a@@12 T@U) (b@@10 T@U) (o@@5 T@U) ) (! (let ((T@@19 (type o@@5)))
 (=> (and (= (type a@@12) (MapType2Type T@@19 boolType)) (= (type b@@10) (MapType2Type T@@19 boolType))) (= (U_2_bool (MapType2Select (|Set#Intersection| a@@12 b@@10) o@@5))  (and (U_2_bool (MapType2Select a@@12 o@@5)) (U_2_bool (MapType2Select b@@10 o@@5))))))
 :qid |knownfoldedbpl.229:18|
 :skolemid |37|
 :pattern ( (MapType2Select (|Set#Intersection| a@@12 b@@10) o@@5))
 :pattern ( (|Set#Intersection| a@@12 b@@10) (MapType2Select a@@12 o@@5))
 :pattern ( (|Set#Intersection| a@@12 b@@10) (MapType2Select b@@10 o@@5))
)))
(assert (forall ((arg0@@43 T@U) (arg1@@23 T@U) ) (! (let ((T@@20 (MapType2TypeInv0 (type arg0@@43))))
(= (type (|Set#Difference| arg0@@43 arg1@@23)) (MapType2Type T@@20 boolType)))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@43 arg1@@23))
)))
(assert (forall ((a@@13 T@U) (b@@11 T@U) (o@@6 T@U) ) (! (let ((T@@21 (type o@@6)))
 (=> (and (= (type a@@13) (MapType2Type T@@21 boolType)) (= (type b@@11) (MapType2Type T@@21 boolType))) (= (U_2_bool (MapType2Select (|Set#Difference| a@@13 b@@11) o@@6))  (and (U_2_bool (MapType2Select a@@13 o@@6)) (not (U_2_bool (MapType2Select b@@11 o@@6)))))))
 :qid |knownfoldedbpl.244:18|
 :skolemid |43|
 :pattern ( (MapType2Select (|Set#Difference| a@@13 b@@11) o@@6))
 :pattern ( (|Set#Difference| a@@13 b@@11) (MapType2Select a@@13 o@@6))
)))
(assert (forall ((a@@14 T@U) (b@@12 T@U) ) (! (let ((T@@22 (MapType2TypeInv0 (type a@@14))))
 (=> (and (and (= (type a@@14) (MapType2Type T@@22 boolType)) (= (type b@@12) (MapType2Type T@@22 boolType))) (|Set#Equal| a@@14 b@@12)) (= a@@14 b@@12)))
 :qid |knownfoldedbpl.266:17|
 :skolemid |50|
 :pattern ( (|Set#Equal| a@@14 b@@12))
)))
(assert (forall ((a@@15 T@U) (b@@13 T@U) ) (! (let ((T@@23 (MultiSetTypeInv0 (type a@@15))))
 (=> (and (and (= (type a@@15) (MultiSetType T@@23)) (= (type b@@13) (MultiSetType T@@23))) (|MultiSet#Equal| a@@15 b@@13)) (= a@@15 b@@13)))
 :qid |knownfoldedbpl.365:17|
 :skolemid |79|
 :pattern ( (|MultiSet#Equal| a@@15 b@@13))
)))
(assert (forall ((arg0@@44 T@U) (arg1@@24 T@U) ) (! (let ((T@@24 (type arg1@@24)))
(= (type (|Set#UnionOne| arg0@@44 arg1@@24)) (MapType2Type T@@24 boolType)))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@44 arg1@@24))
)))
(assert (forall ((a@@16 T@U) (x@@13 T@U) (y@@2 T@U) ) (! (let ((T@@25 (type x@@13)))
 (=> (and (and (= (type a@@16) (MapType2Type T@@25 boolType)) (= (type y@@2) T@@25)) (U_2_bool (MapType2Select a@@16 y@@2))) (U_2_bool (MapType2Select (|Set#UnionOne| a@@16 x@@13) y@@2))))
 :qid |knownfoldedbpl.209:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne| a@@16 x@@13) (MapType2Select a@@16 y@@2))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) (y@@3 T@U) ) (! (let ((T@@26 (type y@@3)))
 (=> (and (and (= (type a@@17) (MapType2Type T@@26 boolType)) (= (type b@@14) (MapType2Type T@@26 boolType))) (U_2_bool (MapType2Select a@@17 y@@3))) (U_2_bool (MapType2Select (|Set#Union| a@@17 b@@14) y@@3))))
 :qid |knownfoldedbpl.219:18|
 :skolemid |35|
 :pattern ( (|Set#Union| a@@17 b@@14) (MapType2Select a@@17 y@@3))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) (y@@4 T@U) ) (! (let ((T@@27 (type y@@4)))
 (=> (and (and (= (type a@@18) (MapType2Type T@@27 boolType)) (= (type b@@15) (MapType2Type T@@27 boolType))) (U_2_bool (MapType2Select b@@15 y@@4))) (U_2_bool (MapType2Select (|Set#Union| a@@18 b@@15) y@@4))))
 :qid |knownfoldedbpl.221:18|
 :skolemid |36|
 :pattern ( (|Set#Union| a@@18 b@@15) (MapType2Select b@@15 y@@4))
)))
(assert (forall ((ms T@U) (x@@14 T@U) ) (! (let ((T@@28 (type x@@14)))
 (=> (= (type ms) (MultiSetType T@@28)) (>= (|MultiSet#Select| ms x@@14) 0)))
 :qid |knownfoldedbpl.296:18|
 :skolemid |56|
 :pattern ( (|MultiSet#Select| ms x@@14))
)))
(assert (forall ((a@@19 T@U) (x@@15 T@U) (o@@7 T@U) ) (! (let ((T@@29 (type x@@15)))
 (=> (and (= (type a@@19) (MapType2Type T@@29 boolType)) (= (type o@@7) T@@29)) (= (U_2_bool (MapType2Select (|Set#UnionOne| a@@19 x@@15) o@@7))  (or (= o@@7 x@@15) (U_2_bool (MapType2Select a@@19 o@@7))))))
 :qid |knownfoldedbpl.205:18|
 :skolemid |29|
 :pattern ( (MapType2Select (|Set#UnionOne| a@@19 x@@15) o@@7))
)))
(assert (forall ((a@@20 T@U) (b@@16 T@U) (y@@5 T@U) ) (! (let ((T@@30 (type y@@5)))
 (=> (and (and (= (type a@@20) (MapType2Type T@@30 boolType)) (= (type b@@16) (MapType2Type T@@30 boolType))) (U_2_bool (MapType2Select b@@16 y@@5))) (not (U_2_bool (MapType2Select (|Set#Difference| a@@20 b@@16) y@@5)))))
 :qid |knownfoldedbpl.246:18|
 :skolemid |44|
 :pattern ( (|Set#Difference| a@@20 b@@16) (MapType2Select b@@16 y@@5))
)))
(assert (forall ((a@@21 T@U) (b@@17 T@U) ) (! (let ((T@@31 (MapType2TypeInv0 (type a@@21))))
 (=> (and (= (type a@@21) (MapType2Type T@@31 boolType)) (= (type b@@17) (MapType2Type T@@31 boolType))) (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@21 b@@17)) (|Set#Card| (|Set#Difference| b@@17 a@@21))) (|Set#Card| (|Set#Intersection| a@@21 b@@17))) (|Set#Card| (|Set#Union| a@@21 b@@17))) (= (|Set#Card| (|Set#Difference| a@@21 b@@17)) (- (|Set#Card| a@@21) (|Set#Card| (|Set#Intersection| a@@21 b@@17)))))))
 :qid |knownfoldedbpl.248:18|
 :skolemid |45|
 :pattern ( (|Set#Card| (|Set#Difference| a@@21 b@@17)))
)))
(assert (forall ((s T@U) ) (! (let ((T@@32 (MapType2TypeInv0 (type s))))
 (=> (= (type s) (MapType2Type T@@32 boolType)) (<= 0 (|Set#Card| s))))
 :qid |knownfoldedbpl.191:18|
 :skolemid |22|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((s@@0 T@U) ) (! (let ((T@@33 (MultiSetTypeInv0 (type s@@0))))
 (=> (= (type s@@0) (MultiSetType T@@33)) (<= 0 (|MultiSet#Card| s@@0))))
 :qid |knownfoldedbpl.299:18|
 :skolemid |57|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((T@@34 T@T) ) (! (= (type (|MultiSet#Empty| T@@34)) (MultiSetType T@@34))
 :qid |funType:MultiSet#Empty|
 :pattern ( (|MultiSet#Empty| T@@34))
)))
(assert (forall ((o@@8 T@U) ) (! (let ((T@@35 (type o@@8)))
(= (|MultiSet#Select| (|MultiSet#Empty| T@@35) o@@8) 0))
 :qid |knownfoldedbpl.304:18|
 :skolemid |58|
 :pattern ( (let ((T@@35 (type o@@8)))
(|MultiSet#Select| (|MultiSet#Empty| T@@35) o@@8)))
)))
(assert (forall ((x@@16 T@U) (b_2@@3 Bool) ) (!  (=> (= (type x@@16) RefType) (= (getPredicateId (P x@@16 b_2@@3)) 0))
 :qid |knownfoldedbpl.400:15|
 :skolemid |84|
 :pattern ( (P x@@16 b_2@@3))
)))
(assert (forall ((a@@22 T@U) (x@@17 T@U) ) (! (let ((T@@36 (type x@@17)))
 (=> (= (type a@@22) (MapType2Type T@@36 boolType)) (U_2_bool (MapType2Select (|Set#UnionOne| a@@22 x@@17) x@@17))))
 :qid |knownfoldedbpl.207:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne| a@@22 x@@17))
)))
(assert (forall ((Heap@@6 T@U) (ExhaleHeap@@4 T@U) (Mask@@6 T@U) (pm_f@@1 T@U) ) (! (let ((C@@1 (FieldTypeInv0 (type pm_f@@1))))
 (=> (and (and (and (and (and (= (type Heap@@6) (MapType0Type RefType)) (= (type ExhaleHeap@@4) (MapType0Type RefType))) (= (type Mask@@6) (MapType1Type RefType realType))) (= (type pm_f@@1) (FieldType C@@1 FrameTypeType))) (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@6)) (and (HasDirectPerm Mask@@6 null pm_f@@1) (IsPredicateField pm_f@@1))) (forall ((o2 T@U) (f_2@@0 T@U) ) (! (let ((B@@5 (FieldTypeInv1 (type f_2@@0))))
(let ((A@@6 (FieldTypeInv0 (type f_2@@0))))
 (=> (and (and (= (type o2) RefType) (= (type f_2@@0) (FieldType A@@6 B@@5))) (U_2_bool (MapType1Select (MapType0Select Heap@@6 null (PredicateMaskField pm_f@@1)) o2 f_2@@0))) (= (MapType0Select Heap@@6 o2 f_2@@0) (MapType0Select ExhaleHeap@@4 o2 f_2@@0)))))
 :qid |knownfoldedbpl.44:134|
 :skolemid |3|
 :pattern ( (MapType0Select ExhaleHeap@@4 o2 f_2@@0))
))))
 :qid |knownfoldedbpl.42:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@6) (MapType0Select ExhaleHeap@@4 null pm_f@@1) (IsPredicateField pm_f@@1))
)))
(assert (forall ((Heap@@7 T@U) (ExhaleHeap@@5 T@U) (Mask@@7 T@U) (pm_f@@2 T@U) ) (! (let ((C@@2 (FieldTypeInv0 (type pm_f@@2))))
 (=> (and (and (and (and (and (= (type Heap@@7) (MapType0Type RefType)) (= (type ExhaleHeap@@5) (MapType0Type RefType))) (= (type Mask@@7) (MapType1Type RefType realType))) (= (type pm_f@@2) (FieldType C@@2 FrameTypeType))) (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@7)) (and (HasDirectPerm Mask@@7 null pm_f@@2) (IsWandField pm_f@@2))) (forall ((o2@@0 T@U) (f_2@@1 T@U) ) (! (let ((B@@6 (FieldTypeInv1 (type f_2@@1))))
(let ((A@@7 (FieldTypeInv0 (type f_2@@1))))
 (=> (and (and (= (type o2@@0) RefType) (= (type f_2@@1) (FieldType A@@7 B@@6))) (U_2_bool (MapType1Select (MapType0Select Heap@@7 null (WandMaskField pm_f@@2)) o2@@0 f_2@@1))) (= (MapType0Select Heap@@7 o2@@0 f_2@@1) (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1)))))
 :qid |knownfoldedbpl.57:129|
 :skolemid |6|
 :pattern ( (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1))
))))
 :qid |knownfoldedbpl.55:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@7) (IsWandField pm_f@@2))
)))
(assert (forall ((a@@23 T@U) (x@@18 T@U) ) (! (let ((T@@37 (type x@@18)))
 (=> (and (= (type a@@23) (MapType2Type T@@37 boolType)) (U_2_bool (MapType2Select a@@23 x@@18))) (= (|Set#Card| (|Set#UnionOne| a@@23 x@@18)) (|Set#Card| a@@23))))
 :qid |knownfoldedbpl.211:18|
 :skolemid |32|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@23 x@@18)))
)))
(assert (forall ((a@@24 T@U) (x@@19 T@U) ) (! (let ((T@@38 (type x@@19)))
 (=> (= (type a@@24) (MultiSetType T@@38)) (and (> (|MultiSet#Select| (|MultiSet#UnionOne| a@@24 x@@19) x@@19) 0) (> (|MultiSet#Card| (|MultiSet#UnionOne| a@@24 x@@19)) 0))))
 :qid |knownfoldedbpl.323:18|
 :skolemid |66|
 :pattern ( (|MultiSet#UnionOne| a@@24 x@@19))
)))
(assert (forall ((r@@1 T@U) ) (! (= (|Set#Card| (|Set#Singleton| r@@1)) 1)
 :qid |knownfoldedbpl.202:18|
 :skolemid |28|
 :pattern ( (|Set#Card| (|Set#Singleton| r@@1)))
)))
(assert (forall ((Mask@@8 T@U) (o_1@@2 T@U) (f_3@@2 T@U) ) (! (let ((B@@7 (FieldTypeInv1 (type f_3@@2))))
(let ((A@@8 (FieldTypeInv0 (type f_3@@2))))
 (=> (and (and (and (= (type Mask@@8) (MapType1Type RefType realType)) (= (type o_1@@2) RefType)) (= (type f_3@@2) (FieldType A@@8 B@@7))) (GoodMask Mask@@8)) (and (>= (U_2_real (MapType1Select Mask@@8 o_1@@2 f_3@@2)) NoPerm) (=> (and (and (GoodMask Mask@@8) (not (IsPredicateField f_3@@2))) (not (IsWandField f_3@@2))) (<= (U_2_real (MapType1Select Mask@@8 o_1@@2 f_3@@2)) FullPerm))))))
 :qid |knownfoldedbpl.118:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (MapType1Select Mask@@8 o_1@@2 f_3@@2))
)))
(assert (forall ((r@@2 T@U) ) (! (U_2_bool (MapType2Select (|Set#Singleton| r@@2) r@@2))
 :qid |knownfoldedbpl.200:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton| r@@2))
)))
(assert (forall ((a@@25 T@U) (b@@18 T@U) ) (! (let ((T@@39 (MapType2TypeInv0 (type a@@25))))
 (=> (and (= (type a@@25) (MapType2Type T@@39 boolType)) (= (type b@@18) (MapType2Type T@@39 boolType))) (= (|Set#Union| a@@25 (|Set#Union| a@@25 b@@18)) (|Set#Union| a@@25 b@@18))))
 :qid |knownfoldedbpl.234:18|
 :skolemid |39|
 :pattern ( (|Set#Union| a@@25 (|Set#Union| a@@25 b@@18)))
)))
(assert (forall ((a@@26 T@U) (b@@19 T@U) ) (! (let ((T@@40 (MapType2TypeInv0 (type a@@26))))
 (=> (and (= (type a@@26) (MapType2Type T@@40 boolType)) (= (type b@@19) (MapType2Type T@@40 boolType))) (= (|Set#Intersection| a@@26 (|Set#Intersection| a@@26 b@@19)) (|Set#Intersection| a@@26 b@@19))))
 :qid |knownfoldedbpl.238:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection| a@@26 (|Set#Intersection| a@@26 b@@19)))
)))
(assert (forall ((a@@27 T@U) (b@@20 T@U) ) (! (let ((T@@41 (MultiSetTypeInv0 (type a@@27))))
 (=> (and (= (type a@@27) (MultiSetType T@@41)) (= (type b@@20) (MultiSetType T@@41))) (= (|MultiSet#Intersection| a@@27 (|MultiSet#Intersection| a@@27 b@@20)) (|MultiSet#Intersection| a@@27 b@@20))))
 :qid |knownfoldedbpl.340:18|
 :skolemid |71|
 :pattern ( (|MultiSet#Intersection| a@@27 (|MultiSet#Intersection| a@@27 b@@20)))
)))
(assert (forall ((s@@1 T@U) ) (! (let ((T@@42 (MultiSetTypeInv0 (type s@@1))))
 (=> (= (type s@@1) (MultiSetType T@@42)) (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 (|MultiSet#Empty| T@@42))) (=> (not (= (|MultiSet#Card| s@@1) 0)) (exists ((x@@20 T@U) ) (!  (and (= (type x@@20) T@@42) (< 0 (|MultiSet#Select| s@@1 x@@20)))
 :qid |knownfoldedbpl.307:38|
 :skolemid |59|
 :no-pattern (type x@@20)
 :no-pattern (U_2_int x@@20)
 :no-pattern (U_2_bool x@@20)
))))))
 :qid |knownfoldedbpl.305:18|
 :skolemid |60|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((r@@3 T@U) (o@@9 T@U) ) (! (let ((T@@43 (type r@@3)))
 (=> (= (type o@@9) T@@43) (and (= (= (|MultiSet#Select| (|MultiSet#Singleton| r@@3) o@@9) 1) (= r@@3 o@@9)) (= (= (|MultiSet#Select| (|MultiSet#Singleton| r@@3) o@@9) 0) (not (= r@@3 o@@9))))))
 :qid |knownfoldedbpl.310:18|
 :skolemid |61|
 :pattern ( (|MultiSet#Select| (|MultiSet#Singleton| r@@3) o@@9))
)))
(assert (forall ((o@@10 T@U) (f T@U) (Heap@@8 T@U) ) (!  (=> (and (and (and (= (type o@@10) RefType) (= (type f) (FieldType NormalFieldType RefType))) (= (type Heap@@8) (MapType0Type RefType))) (U_2_bool (MapType0Select Heap@@8 o@@10 $allocated))) (U_2_bool (MapType0Select Heap@@8 (MapType0Select Heap@@8 o@@10 f) $allocated)))
 :qid |knownfoldedbpl.21:15|
 :skolemid |0|
 :pattern ( (MapType0Select Heap@@8 o@@10 f))
)))
(assert (forall ((x@@21 T@U) (b_2@@4 Bool) ) (!  (=> (= (type x@@21) RefType) (= (PredicateMaskField (P x@@21 b_2@@4)) (|P#sm| x@@21 b_2@@4)))
 :qid |knownfoldedbpl.392:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField (P x@@21 b_2@@4)))
)))
(assert (forall ((a@@28 T@U) (b@@21 T@U) (o@@11 T@U) ) (! (let ((T@@44 (type o@@11)))
 (=> (and (= (type a@@28) (MultiSetType T@@44)) (= (type b@@21) (MultiSetType T@@44))) (= (|MultiSet#Select| (|MultiSet#Union| a@@28 b@@21) o@@11) (+ (|MultiSet#Select| a@@28 o@@11) (|MultiSet#Select| b@@21 o@@11)))))
 :qid |knownfoldedbpl.328:18|
 :skolemid |67|
 :pattern ( (|MultiSet#Select| (|MultiSet#Union| a@@28 b@@21) o@@11))
 :pattern ( (|MultiSet#Union| a@@28 b@@21) (|MultiSet#Select| a@@28 o@@11) (|MultiSet#Select| b@@21 o@@11))
)))
(assert (forall ((T@@45 T@T) ) (! (= (type (|Set#Empty| T@@45)) (MapType2Type T@@45 boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@45))
)))
(assert (forall ((o@@12 T@U) ) (! (let ((T@@46 (type o@@12)))
 (not (U_2_bool (MapType2Select (|Set#Empty| T@@46) o@@12))))
 :qid |knownfoldedbpl.194:18|
 :skolemid |23|
 :pattern ( (let ((T@@46 (type o@@12)))
(MapType2Select (|Set#Empty| T@@46) o@@12)))
)))
(assert (forall ((r@@4 T@U) ) (! (let ((T@@47 (type r@@4)))
(= (|MultiSet#Singleton| r@@4) (|MultiSet#UnionOne| (|MultiSet#Empty| T@@47) r@@4)))
 :qid |knownfoldedbpl.313:18|
 :skolemid |63|
 :pattern ( (|MultiSet#Singleton| r@@4))
)))
(assert (forall ((a@@29 Int) (b@@22 Int) ) (! (= (<= a@@29 b@@22) (= (|Math#min| a@@29 b@@22) a@@29))
 :qid |knownfoldedbpl.278:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@29 b@@22))
)))
(assert (forall ((a@@30 Int) (b@@23 Int) ) (! (= (<= b@@23 a@@30) (= (|Math#min| a@@30 b@@23) b@@23))
 :qid |knownfoldedbpl.279:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@30 b@@23))
)))
(assert (forall ((s@@2 T@U) ) (! (let ((T@@48 (MapType2TypeInv0 (type s@@2))))
 (=> (= (type s@@2) (MapType2Type T@@48 boolType)) (and (= (= (|Set#Card| s@@2) 0) (= s@@2 (|Set#Empty| T@@48))) (=> (not (= (|Set#Card| s@@2) 0)) (exists ((x@@22 T@U) ) (!  (and (= (type x@@22) T@@48) (U_2_bool (MapType2Select s@@2 x@@22)))
 :qid |knownfoldedbpl.197:33|
 :skolemid |24|
 :no-pattern (type x@@22)
 :no-pattern (U_2_int x@@22)
 :no-pattern (U_2_bool x@@22)
))))))
 :qid |knownfoldedbpl.195:18|
 :skolemid |25|
 :pattern ( (|Set#Card| s@@2))
)))
(assert (forall ((Heap@@9 T@U) (o@@13 T@U) (f_2@@2 T@U) (v T@U) ) (! (let ((B@@8 (type v)))
(let ((A@@9 (FieldTypeInv0 (type f_2@@2))))
 (=> (and (and (= (type Heap@@9) (MapType0Type RefType)) (= (type o@@13) RefType)) (= (type f_2@@2) (FieldType A@@9 B@@8))) (succHeap Heap@@9 (MapType0Store Heap@@9 o@@13 f_2@@2 v)))))
 :qid |knownfoldedbpl.68:22|
 :skolemid |9|
 :pattern ( (MapType0Store Heap@@9 o@@13 f_2@@2 v))
)))
(assert (forall ((a@@31 T@U) (b@@24 T@U) ) (! (let ((T@@49 (MapType2TypeInv0 (type a@@31))))
 (=> (and (= (type a@@31) (MapType2Type T@@49 boolType)) (= (type b@@24) (MapType2Type T@@49 boolType))) (= (|Set#Subset| a@@31 b@@24) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) T@@49) (U_2_bool (MapType2Select a@@31 o@@14))) (U_2_bool (MapType2Select b@@24 o@@14)))
 :qid |knownfoldedbpl.257:32|
 :skolemid |46|
 :pattern ( (MapType2Select a@@31 o@@14))
 :pattern ( (MapType2Select b@@24 o@@14))
)))))
 :qid |knownfoldedbpl.256:17|
 :skolemid |47|
 :pattern ( (|Set#Subset| a@@31 b@@24))
)))
(assert (forall ((a@@32 T@U) (x@@23 T@U) ) (! (let ((T@@50 (type x@@23)))
 (=> (and (= (type a@@32) (MapType2Type T@@50 boolType)) (not (U_2_bool (MapType2Select a@@32 x@@23)))) (= (|Set#Card| (|Set#UnionOne| a@@32 x@@23)) (+ (|Set#Card| a@@32) 1))))
 :qid |knownfoldedbpl.213:18|
 :skolemid |33|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@32 x@@23)))
)))
(assert (forall ((a@@33 T@U) (b@@25 T@U) (o@@15 T@U) ) (! (let ((T@@51 (type o@@15)))
 (=> (and (= (type a@@33) (MultiSetType T@@51)) (= (type b@@25) (MultiSetType T@@51))) (= (|MultiSet#Select| (|MultiSet#Difference| a@@33 b@@25) o@@15) (|Math#clip| (- (|MultiSet#Select| a@@33 o@@15) (|MultiSet#Select| b@@25 o@@15))))))
 :qid |knownfoldedbpl.345:18|
 :skolemid |72|
 :pattern ( (|MultiSet#Select| (|MultiSet#Difference| a@@33 b@@25) o@@15))
)))
(assert (= (type ZeroPMask) (MapType1Type RefType boolType)))
(assert (forall ((o_1@@3 T@U) (f_3@@3 T@U) ) (! (let ((B@@9 (FieldTypeInv1 (type f_3@@3))))
(let ((A@@10 (FieldTypeInv0 (type f_3@@3))))
 (=> (and (= (type o_1@@3) RefType) (= (type f_3@@3) (FieldType A@@10 B@@9))) (not (U_2_bool (MapType1Select ZeroPMask o_1@@3 f_3@@3))))))
 :qid |knownfoldedbpl.102:22|
 :skolemid |14|
 :pattern ( (MapType1Select ZeroPMask o_1@@3 f_3@@3))
)))
(assert (forall ((p@@1 T@U) (v_1@@0 T@U) (q T@U) (w@@0 T@U) (r@@5 T@U) (u T@U) ) (! (let ((C@@3 (FieldTypeInv0 (type r@@5))))
(let ((B@@10 (FieldTypeInv0 (type q))))
(let ((A@@11 (FieldTypeInv0 (type p@@1))))
 (=> (and (and (and (and (and (and (= (type p@@1) (FieldType A@@11 FrameTypeType)) (= (type v_1@@0) FrameTypeType)) (= (type q) (FieldType B@@10 FrameTypeType))) (= (type w@@0) FrameTypeType)) (= (type r@@5) (FieldType C@@3 FrameTypeType))) (= (type u) FrameTypeType)) (and (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r@@5 u))) (InsidePredicate p@@1 v_1@@0 r@@5 u)))))
 :qid |knownfoldedbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r@@5 u))
)))
(assert (forall ((a@@34 Int) ) (!  (=> (< a@@34 0) (= (|Math#clip| a@@34) 0))
 :qid |knownfoldedbpl.284:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@34))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@35 T@U) (x@@24 T@U) (o@@16 T@U) ) (! (let ((T@@52 (type x@@24)))
 (=> (and (= (type a@@35) (MultiSetType T@@52)) (= (type o@@16) T@@52)) (= (|MultiSet#Select| (|MultiSet#UnionOne| a@@35 x@@24) o@@16) (ite (= x@@24 o@@16) (+ (|MultiSet#Select| a@@35 o@@16) 1) (|MultiSet#Select| a@@35 o@@16)))))
 :qid |knownfoldedbpl.317:18|
 :skolemid |64|
 :pattern ( (|MultiSet#Select| (|MultiSet#UnionOne| a@@35 x@@24) o@@16))
 :pattern ( (|MultiSet#UnionOne| a@@35 x@@24) (|MultiSet#Select| a@@35 o@@16))
)))
(assert (forall ((a@@36 T@U) (b@@26 T@U) ) (! (let ((T@@53 (MultiSetTypeInv0 (type a@@36))))
 (=> (and (= (type a@@36) (MultiSetType T@@53)) (= (type b@@26) (MultiSetType T@@53))) (= (|MultiSet#Equal| a@@36 b@@26) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) T@@53) (= (|MultiSet#Select| a@@36 o@@17) (|MultiSet#Select| b@@26 o@@17)))
 :qid |knownfoldedbpl.363:36|
 :skolemid |77|
 :pattern ( (|MultiSet#Select| a@@36 o@@17))
 :pattern ( (|MultiSet#Select| b@@26 o@@17))
)))))
 :qid |knownfoldedbpl.362:17|
 :skolemid |78|
 :pattern ( (|MultiSet#Equal| a@@36 b@@26))
)))
(assert (forall ((a@@37 T@U) (b@@27 T@U) ) (! (let ((T@@54 (MultiSetTypeInv0 (type a@@37))))
 (=> (and (= (type a@@37) (MultiSetType T@@54)) (= (type b@@27) (MultiSetType T@@54))) (= (|MultiSet#Subset| a@@37 b@@27) (forall ((o@@18 T@U) ) (!  (=> (= (type o@@18) T@@54) (<= (|MultiSet#Select| a@@37 o@@18) (|MultiSet#Select| b@@27 o@@18)))
 :qid |knownfoldedbpl.359:37|
 :skolemid |75|
 :pattern ( (|MultiSet#Select| a@@37 o@@18))
 :pattern ( (|MultiSet#Select| b@@27 o@@18))
)))))
 :qid |knownfoldedbpl.358:17|
 :skolemid |76|
 :pattern ( (|MultiSet#Subset| a@@37 b@@27))
)))
(assert (forall ((a@@38 T@U) (b@@28 T@U) (o@@19 T@U) ) (! (let ((T@@55 (type o@@19)))
 (=> (and (= (type a@@38) (MapType2Type T@@55 boolType)) (= (type b@@28) (MapType2Type T@@55 boolType))) (= (U_2_bool (MapType2Select (|Set#Union| a@@38 b@@28) o@@19))  (or (U_2_bool (MapType2Select a@@38 o@@19)) (U_2_bool (MapType2Select b@@28 o@@19))))))
 :qid |knownfoldedbpl.217:18|
 :skolemid |34|
 :pattern ( (MapType2Select (|Set#Union| a@@38 b@@28) o@@19))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_2@@5 () Bool)
(declare-fun PostHeap@8 () T@U)
(declare-fun PostHeap@6 () T@U)
(declare-fun x@@25 () T@U)
(declare-fun PostHeap@9 () T@U)
(declare-fun PostHeap@7 () T@U)
(declare-fun UnfoldingMask@10 () T@U)
(declare-fun UnfoldingMask@9 () T@U)
(declare-fun UnfoldingMask@7 () T@U)
(declare-fun UnfoldingMask@8 () T@U)
(declare-fun FrameFragment (T@U) T@U)
(declare-fun perm@5 () Real)
(declare-fun PostMask@0 () T@U)
(declare-fun PostHeap@5 () T@U)
(declare-fun PostHeap@3 () T@U)
(declare-fun PostHeap@4 () T@U)
(declare-fun PostHeap@2 () T@U)
(declare-fun PostHeap@0 () T@U)
(declare-fun PostHeap@1 () T@U)
(declare-fun UnfoldingMask@6 () T@U)
(declare-fun UnfoldingMask@5 () T@U)
(declare-fun UnfoldingMask@3 () T@U)
(declare-fun UnfoldingMask@4 () T@U)
(declare-fun perm@0 () Real)
(declare-fun Heap@12 () T@U)
(declare-fun Heap@10 () T@U)
(declare-fun Heap@13 () T@U)
(declare-fun Heap@11 () T@U)
(declare-fun UnfoldingMask@2 () T@U)
(declare-fun UnfoldingMask@1 () T@U)
(declare-fun Mask@8 () T@U)
(declare-fun UnfoldingMask@0 () T@U)
(declare-fun Mask@7 () T@U)
(declare-fun perm@4 () Real)
(declare-fun Heap@9 () T@U)
(declare-fun Heap@7 () T@U)
(declare-fun Heap@8 () T@U)
(declare-fun Heap@4 () T@U)
(declare-fun Heap@5 () T@U)
(declare-fun Heap@6 () T@U)
(declare-fun freshVersion@0 () T@U)
(declare-fun Mask@6 () T@U)
(declare-fun Mask@5 () T@U)
(declare-fun Mask@3 () T@U)
(declare-fun perm@2 () Real)
(declare-fun Mask@4 () T@U)
(declare-fun perm@3 () Real)
(declare-fun Heap@3 () T@U)
(declare-fun Heap@1 () T@U)
(declare-fun Heap@2 () T@U)
(declare-fun Mask@2 () T@U)
(declare-fun Mask@0 () T@U)
(declare-fun Mask@1 () T@U)
(declare-fun Heap@@10 () T@U)
(declare-fun Heap@0 () T@U)
(declare-fun newVersion@0 () T@U)
(declare-fun QPMask@0 () T@U)
(declare-fun perm@1 () Real)
(declare-fun xs () T@U)
(declare-fun invRecv2 (T@U Bool) T@U)
(declare-fun qpRange2 (T@U Bool) Bool)
(declare-fun Mask@@9 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type Heap@11) (MapType0Type RefType)) (= (type Heap@10) (MapType0Type RefType))) (= (type x@@25) RefType)) (= (type Heap@13) (MapType0Type RefType))) (= (type Heap@12) (MapType0Type RefType))) (= (type UnfoldingMask@2) (MapType1Type RefType realType))) (= (type UnfoldingMask@0) (MapType1Type RefType realType))) (= (type Mask@8) (MapType1Type RefType realType))) (= (type UnfoldingMask@1) (MapType1Type RefType realType))) (= (type Mask@7) (MapType1Type RefType realType))) (forall ((arg0@@45 T@U) ) (! (= (type (FrameFragment arg0@@45)) FrameTypeType)
 :qid |funType:FrameFragment|
 :pattern ( (FrameFragment arg0@@45))
))) (= (type Heap@8) (MapType0Type RefType))) (= (type Heap@7) (MapType0Type RefType))) (= (type Heap@9) (MapType0Type RefType))) (= (type Heap@5) (MapType0Type RefType))) (= (type Heap@4) (MapType0Type RefType))) (= (type Heap@6) (MapType0Type RefType))) (= (type freshVersion@0) FrameTypeType)) (= (type Mask@6) (MapType1Type RefType realType))) (= (type Mask@4) (MapType1Type RefType realType))) (= (type Mask@3) (MapType1Type RefType realType))) (= (type Mask@5) (MapType1Type RefType realType))) (= (type Heap@2) (MapType0Type RefType))) (= (type Heap@1) (MapType0Type RefType))) (= (type Heap@3) (MapType0Type RefType))) (= (type Mask@1) (MapType1Type RefType realType))) (= (type Mask@0) (MapType1Type RefType realType))) (= (type Mask@2) (MapType1Type RefType realType))) (= (type Heap@0) (MapType0Type RefType))) (= (type Heap@@10) (MapType0Type RefType))) (= (type newVersion@0) FrameTypeType)) (= (type QPMask@0) (MapType1Type RefType realType))) (= (type PostHeap@7) (MapType0Type RefType))) (= (type PostHeap@6) (MapType0Type RefType))) (= (type PostHeap@9) (MapType0Type RefType))) (= (type PostHeap@8) (MapType0Type RefType))) (= (type UnfoldingMask@10) (MapType1Type RefType realType))) (= (type UnfoldingMask@8) (MapType1Type RefType realType))) (= (type UnfoldingMask@7) (MapType1Type RefType realType))) (= (type UnfoldingMask@9) (MapType1Type RefType realType))) (= (type PostMask@0) (MapType1Type RefType realType))) (= (type PostHeap@4) (MapType0Type RefType))) (= (type PostHeap@3) (MapType0Type RefType))) (= (type PostHeap@5) (MapType0Type RefType))) (= (type PostHeap@1) (MapType0Type RefType))) (= (type PostHeap@0) (MapType0Type RefType))) (= (type PostHeap@2) (MapType0Type RefType))) (= (type UnfoldingMask@6) (MapType1Type RefType realType))) (= (type UnfoldingMask@4) (MapType1Type RefType realType))) (= (type UnfoldingMask@3) (MapType1Type RefType realType))) (= (type UnfoldingMask@5) (MapType1Type RefType realType))) (= (type xs) (MapType2Type RefType boolType))) (forall ((arg0@@46 T@U) (arg1@@25 Bool) ) (! (= (type (invRecv2 arg0@@46 arg1@@25)) RefType)
 :qid |funType:invRecv2|
 :pattern ( (invRecv2 arg0@@46 arg1@@25))
))) (= (type Mask@@9) (MapType1Type RefType realType))))
(set-info :boogie-vc-id known_folded_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73) (let ((anon23_correct true))
(let ((anon66_Else_correct  (=> (and (and (not b_2@@5) (= PostHeap@8 (MapType0Store PostHeap@6 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select PostHeap@6 null (|P#sm| x@@25 b_2@@5)) x@@25 g (bool_2_U true))))) (and (= PostHeap@9 PostHeap@8) (= (ControlFlow 0 49) 47))) anon23_correct)))
(let ((anon66_Then_correct  (=> (and (and b_2@@5 (= PostHeap@7 (MapType0Store PostHeap@6 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select PostHeap@6 null (|P#sm| x@@25 b_2@@5)) x@@25 f_6 (bool_2_U true))))) (and (= PostHeap@9 PostHeap@7) (= (ControlFlow 0 48) 47))) anon23_correct)))
(let ((anon20_correct  (=> (and (state PostHeap@6 UnfoldingMask@10) (ite b_2@@5 (= (U_2_int (MapType0Select PostHeap@6 x@@25 f_6)) 0) (U_2_bool (MapType0Select PostHeap@6 x@@25 g)))) (and (=> (= (ControlFlow 0 50) 48) anon66_Then_correct) (=> (= (ControlFlow 0 50) 49) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (not b_2@@5) (not (= x@@25 null))) (=> (and (and (= UnfoldingMask@9 (MapType1Store UnfoldingMask@7 x@@25 g (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@7 x@@25 g)) FullPerm)))) (state PostHeap@6 UnfoldingMask@9)) (and (= UnfoldingMask@10 UnfoldingMask@9) (= (ControlFlow 0 52) 50))) anon20_correct))))
(let ((anon65_Then_correct  (=> (and b_2@@5 (not (= x@@25 null))) (=> (and (and (= UnfoldingMask@8 (MapType1Store UnfoldingMask@7 x@@25 f_6 (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@7 x@@25 f_6)) FullPerm)))) (state PostHeap@6 UnfoldingMask@8)) (and (= UnfoldingMask@10 UnfoldingMask@8) (= (ControlFlow 0 51) 50))) anon20_correct))))
(let ((anon17_correct  (=> (and (and (|P#trigger| PostHeap@6 (P x@@25 b_2@@5)) (= (MapType0Select PostHeap@6 null (P x@@25 b_2@@5)) (FrameFragment (ite b_2@@5 (FrameFragment (MapType0Select PostHeap@6 x@@25 f_6)) (FrameFragment (MapType0Select PostHeap@6 x@@25 g)))))) (and (= perm@5 (+ NoPerm FullPerm)) (= UnfoldingMask@7 (MapType1Store PostMask@0 null (P x@@25 b_2@@5) (real_2_U (- (U_2_real (MapType1Select PostMask@0 null (P x@@25 b_2@@5))) perm@5)))))) (and (=> (= (ControlFlow 0 53) 51) anon65_Then_correct) (=> (= (ControlFlow 0 53) 52) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (and (not b_2@@5) (= PostHeap@5 (MapType0Store PostHeap@3 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select PostHeap@3 null (|P#sm| x@@25 b_2@@5)) x@@25 g (bool_2_U true))))) (and (= PostHeap@6 PostHeap@5) (= (ControlFlow 0 55) 53))) anon17_correct)))
(let ((anon64_Then_correct  (=> (and (and b_2@@5 (= PostHeap@4 (MapType0Store PostHeap@3 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select PostHeap@3 null (|P#sm| x@@25 b_2@@5)) x@@25 f_6 (bool_2_U true))))) (and (= PostHeap@6 PostHeap@4) (= (ControlFlow 0 54) 53))) anon17_correct)))
(let ((anon14_correct  (=> (and (state PostHeap@3 PostMask@0) (state PostHeap@3 PostMask@0)) (and (=> (= (ControlFlow 0 56) 54) anon64_Then_correct) (=> (= (ControlFlow 0 56) 55) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (and (not b_2@@5) (= PostHeap@2 (MapType0Store PostHeap@0 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select PostHeap@0 null (|P#sm| x@@25 b_2@@5)) x@@25 g (bool_2_U true))))) (and (= PostHeap@3 PostHeap@2) (= (ControlFlow 0 58) 56))) anon14_correct)))
(let ((anon63_Then_correct  (=> (and (and b_2@@5 (= PostHeap@1 (MapType0Store PostHeap@0 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select PostHeap@0 null (|P#sm| x@@25 b_2@@5)) x@@25 f_6 (bool_2_U true))))) (and (= PostHeap@3 PostHeap@1) (= (ControlFlow 0 57) 56))) anon14_correct)))
(let ((anon62_Else_correct  (=> (not b_2@@5) (and (=> (= (ControlFlow 0 61) (- 0 62)) (HasDirectPerm UnfoldingMask@6 x@@25 g)) (=> (HasDirectPerm UnfoldingMask@6 x@@25 g) (and (=> (= (ControlFlow 0 61) 57) anon63_Then_correct) (=> (= (ControlFlow 0 61) 58) anon63_Else_correct)))))))
(let ((anon62_Then_correct  (=> b_2@@5 (and (=> (= (ControlFlow 0 59) (- 0 60)) (HasDirectPerm UnfoldingMask@6 x@@25 f_6)) (=> (HasDirectPerm UnfoldingMask@6 x@@25 f_6) (and (=> (= (ControlFlow 0 59) 57) anon63_Then_correct) (=> (= (ControlFlow 0 59) 58) anon63_Else_correct)))))))
(let ((anon8_correct  (=> (state PostHeap@0 UnfoldingMask@6) (and (=> (= (ControlFlow 0 63) 59) anon62_Then_correct) (=> (= (ControlFlow 0 63) 61) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (not b_2@@5) (not (= x@@25 null))) (=> (and (and (= UnfoldingMask@5 (MapType1Store UnfoldingMask@3 x@@25 g (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@3 x@@25 g)) FullPerm)))) (state PostHeap@0 UnfoldingMask@5)) (and (= UnfoldingMask@6 UnfoldingMask@5) (= (ControlFlow 0 65) 63))) anon8_correct))))
(let ((anon61_Then_correct  (=> (and b_2@@5 (not (= x@@25 null))) (=> (and (and (= UnfoldingMask@4 (MapType1Store UnfoldingMask@3 x@@25 f_6 (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@3 x@@25 f_6)) FullPerm)))) (state PostHeap@0 UnfoldingMask@4)) (and (= UnfoldingMask@6 UnfoldingMask@4) (= (ControlFlow 0 64) 63))) anon8_correct))))
(let ((anon5_correct  (=> (= UnfoldingMask@3 (MapType1Store PostMask@0 null (P x@@25 b_2@@5) (real_2_U (- (U_2_real (MapType1Select PostMask@0 null (P x@@25 b_2@@5))) perm@0)))) (and (=> (= (ControlFlow 0 66) 64) anon61_Then_correct) (=> (= (ControlFlow 0 66) 65) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 69) 66)) anon5_correct)))
(let ((anon60_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (<= perm@0 (U_2_real (MapType1Select PostMask@0 null (P x@@25 b_2@@5))))) (=> (<= perm@0 (U_2_real (MapType1Select PostMask@0 null (P x@@25 b_2@@5)))) (=> (= (ControlFlow 0 67) 66) anon5_correct))))))
(let ((anon59_Then_correct  (=> (and (= PostMask@0 (MapType1Store ZeroMask null (P x@@25 b_2@@5) (real_2_U (+ (U_2_real (MapType1Select ZeroMask null (P x@@25 b_2@@5))) FullPerm)))) (state PostHeap@0 PostMask@0)) (=> (and (and (state PostHeap@0 PostMask@0) (|P#trigger| PostHeap@0 (P x@@25 b_2@@5))) (and (= (MapType0Select PostHeap@0 null (P x@@25 b_2@@5)) (FrameFragment (ite b_2@@5 (FrameFragment (MapType0Select PostHeap@0 x@@25 f_6)) (FrameFragment (MapType0Select PostHeap@0 x@@25 g))))) (= perm@0 (+ NoPerm FullPerm)))) (and (=> (= (ControlFlow 0 70) 67) anon60_Then_correct) (=> (= (ControlFlow 0 70) 69) anon60_Else_correct))))))
(let ((anon57_correct true))
(let ((anon79_Else_correct  (=> (and (and (not b_2@@5) (= Heap@12 (MapType0Store Heap@10 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select Heap@10 null (|P#sm| x@@25 b_2@@5)) x@@25 g (bool_2_U true))))) (and (= Heap@13 Heap@12) (= (ControlFlow 0 4) 2))) anon57_correct)))
(let ((anon79_Then_correct  (=> (and (and b_2@@5 (= Heap@11 (MapType0Store Heap@10 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select Heap@10 null (|P#sm| x@@25 b_2@@5)) x@@25 f_6 (bool_2_U true))))) (and (= Heap@13 Heap@11) (= (ControlFlow 0 3) 2))) anon57_correct)))
(let ((anon78_Else_correct  (=> (not b_2@@5) (and (=> (= (ControlFlow 0 7) (- 0 8)) (U_2_bool (MapType0Select Heap@10 x@@25 g))) (=> (U_2_bool (MapType0Select Heap@10 x@@25 g)) (and (=> (= (ControlFlow 0 7) 3) anon79_Then_correct) (=> (= (ControlFlow 0 7) 4) anon79_Else_correct)))))))
(let ((anon78_Then_correct  (=> b_2@@5 (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (U_2_int (MapType0Select Heap@10 x@@25 f_6)) 0)) (=> (= (U_2_int (MapType0Select Heap@10 x@@25 f_6)) 0) (and (=> (= (ControlFlow 0 5) 3) anon79_Then_correct) (=> (= (ControlFlow 0 5) 4) anon79_Else_correct)))))))
(let ((anon51_correct  (=> (state Heap@10 UnfoldingMask@2) (and (=> (= (ControlFlow 0 9) 5) anon78_Then_correct) (=> (= (ControlFlow 0 9) 7) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (not b_2@@5) (not (= x@@25 null))) (=> (and (and (= UnfoldingMask@1 (MapType1Store Mask@8 x@@25 g (real_2_U (+ (U_2_real (MapType1Select Mask@8 x@@25 g)) FullPerm)))) (state Heap@10 UnfoldingMask@1)) (and (= UnfoldingMask@2 UnfoldingMask@1) (= (ControlFlow 0 11) 9))) anon51_correct))))
(let ((anon77_Then_correct  (=> (and b_2@@5 (not (= x@@25 null))) (=> (and (and (= UnfoldingMask@0 (MapType1Store Mask@8 x@@25 f_6 (real_2_U (+ (U_2_real (MapType1Select Mask@8 x@@25 f_6)) FullPerm)))) (state Heap@10 UnfoldingMask@0)) (and (= UnfoldingMask@2 UnfoldingMask@0) (= (ControlFlow 0 10) 9))) anon51_correct))))
(let ((anon48_correct  (=> (= Mask@8 (MapType1Store Mask@7 null (P x@@25 b_2@@5) (real_2_U (- (U_2_real (MapType1Select Mask@7 null (P x@@25 b_2@@5))) perm@4)))) (=> (and (|P#trigger| Heap@10 (P x@@25 b_2@@5)) (= (MapType0Select Heap@10 null (P x@@25 b_2@@5)) (FrameFragment (ite b_2@@5 (FrameFragment (MapType0Select Heap@10 x@@25 f_6)) (FrameFragment (MapType0Select Heap@10 x@@25 g)))))) (and (=> (= (ControlFlow 0 12) 10) anon77_Then_correct) (=> (= (ControlFlow 0 12) 11) anon77_Else_correct))))))
(let ((anon76_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 15) 12)) anon48_correct)))
(let ((anon76_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= perm@4 (U_2_real (MapType1Select Mask@7 null (P x@@25 b_2@@5))))) (=> (<= perm@4 (U_2_real (MapType1Select Mask@7 null (P x@@25 b_2@@5)))) (=> (= (ControlFlow 0 13) 12) anon48_correct))))))
(let ((anon46_correct  (=> (state Heap@10 Mask@7) (=> (and (state Heap@10 Mask@7) (= perm@4 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 16) 13) anon76_Then_correct) (=> (= (ControlFlow 0 16) 15) anon76_Else_correct))))))
(let ((anon75_Else_correct  (=> (and (and (not b_2@@5) (= Heap@9 (MapType0Store Heap@7 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select Heap@7 null (|P#sm| x@@25 b_2@@5)) x@@25 g (bool_2_U true))))) (and (= Heap@10 Heap@9) (= (ControlFlow 0 18) 16))) anon46_correct)))
(let ((anon75_Then_correct  (=> (and (and b_2@@5 (= Heap@8 (MapType0Store Heap@7 null (|P#sm| x@@25 b_2@@5) (MapType1Store (MapType0Select Heap@7 null (|P#sm| x@@25 b_2@@5)) x@@25 f_6 (bool_2_U true))))) (and (= Heap@10 Heap@8) (= (ControlFlow 0 17) 16))) anon46_correct)))
(let ((anon74_Else_correct  (=> (and (HasDirectPerm Mask@7 null (P x@@25 b_2@@5)) (= Heap@7 Heap@4)) (and (=> (= (ControlFlow 0 20) 17) anon75_Then_correct) (=> (= (ControlFlow 0 20) 18) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (and (and (not (HasDirectPerm Mask@7 null (P x@@25 b_2@@5))) (= Heap@5 (MapType0Store Heap@4 null (|P#sm| x@@25 b_2@@5) ZeroPMask))) (and (= Heap@6 (MapType0Store Heap@5 null (P x@@25 b_2@@5) freshVersion@0)) (= Heap@7 Heap@6))) (and (=> (= (ControlFlow 0 19) 17) anon75_Then_correct) (=> (= (ControlFlow 0 19) 18) anon75_Else_correct)))))
(let ((anon41_correct  (=> (= Mask@7 (MapType1Store Mask@6 null (P x@@25 b_2@@5) (real_2_U (+ (U_2_real (MapType1Select Mask@6 null (P x@@25 b_2@@5))) FullPerm)))) (=> (and (and (state Heap@4 Mask@7) (state Heap@4 Mask@7)) (and (|P#trigger| Heap@4 (P x@@25 b_2@@5)) (= (MapType0Select Heap@4 null (P x@@25 b_2@@5)) (FrameFragment (ite b_2@@5 (FrameFragment (MapType0Select Heap@4 x@@25 f_6)) (FrameFragment (MapType0Select Heap@4 x@@25 g))))))) (and (=> (= (ControlFlow 0 21) 19) anon74_Then_correct) (=> (= (ControlFlow 0 21) 20) anon74_Else_correct))))))
(let ((anon37_correct  (=> (= Mask@5 (MapType1Store Mask@3 x@@25 f_6 (real_2_U (- (U_2_real (MapType1Select Mask@3 x@@25 f_6)) perm@2)))) (=> (and (= Mask@6 Mask@5) (= (ControlFlow 0 27) 21)) anon41_correct))))
(let ((anon72_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 30) 27)) anon37_correct)))
(let ((anon72_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= perm@2 (U_2_real (MapType1Select Mask@3 x@@25 f_6)))) (=> (<= perm@2 (U_2_real (MapType1Select Mask@3 x@@25 f_6))) (=> (= (ControlFlow 0 28) 27) anon37_correct))))))
(let ((anon71_Then_correct  (=> (and b_2@@5 (= perm@2 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 31) 28) anon72_Then_correct) (=> (= (ControlFlow 0 31) 30) anon72_Else_correct)))))
(let ((anon40_correct  (=> (= Mask@4 (MapType1Store Mask@3 x@@25 g (real_2_U (- (U_2_real (MapType1Select Mask@3 x@@25 g)) perm@3)))) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 22) 21)) anon41_correct))))
(let ((anon73_Else_correct  (=> (and (= perm@3 NoPerm) (= (ControlFlow 0 25) 22)) anon40_correct)))
(let ((anon73_Then_correct  (=> (not (= perm@3 NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= perm@3 (U_2_real (MapType1Select Mask@3 x@@25 g)))) (=> (<= perm@3 (U_2_real (MapType1Select Mask@3 x@@25 g))) (=> (= (ControlFlow 0 23) 22) anon40_correct))))))
(let ((anon71_Else_correct  (=> (and (not b_2@@5) (= perm@3 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 26) 23) anon73_Then_correct) (=> (= (ControlFlow 0 26) 25) anon73_Else_correct)))))
(let ((anon34_correct  (=> (state Heap@4 Mask@3) (and (=> (= (ControlFlow 0 32) 31) anon71_Then_correct) (=> (= (ControlFlow 0 32) 26) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (not b_2@@5) (and (=> (= (ControlFlow 0 35) (- 0 36)) (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 g)))) (=> (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 g))) (=> (and (and (= Heap@3 (MapType0Store Heap@1 x@@25 g (bool_2_U true))) (state Heap@3 Mask@3)) (and (= Heap@4 Heap@3) (= (ControlFlow 0 35) 32))) anon34_correct))))))
(let ((anon70_Then_correct  (=> b_2@@5 (and (=> (= (ControlFlow 0 33) (- 0 34)) (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 f_6)))) (=> (= FullPerm (U_2_real (MapType1Select Mask@3 x@@25 f_6))) (=> (and (and (= Heap@2 (MapType0Store Heap@1 x@@25 f_6 (int_2_U 0))) (state Heap@2 Mask@3)) (and (= Heap@4 Heap@2) (= (ControlFlow 0 33) 32))) anon34_correct))))))
(let ((anon31_correct  (=> (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 37) 33) anon70_Then_correct) (=> (= (ControlFlow 0 37) 35) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (not b_2@@5) (not (= x@@25 null))) (=> (and (and (= Mask@2 (MapType1Store Mask@0 x@@25 g (real_2_U (+ (U_2_real (MapType1Select Mask@0 x@@25 g)) FullPerm)))) (state Heap@1 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 39) 37))) anon31_correct))))
(let ((anon69_Then_correct  (=> (and b_2@@5 (not (= x@@25 null))) (=> (and (and (= Mask@1 (MapType1Store Mask@0 x@@25 f_6 (real_2_U (+ (U_2_real (MapType1Select Mask@0 x@@25 f_6)) FullPerm)))) (state Heap@1 Mask@1)) (and (= Mask@3 Mask@1) (= (ControlFlow 0 38) 37))) anon31_correct))))
(let ((anon68_Else_correct  (=> (and (HasDirectPerm Mask@0 null (P x@@25 b_2@@5)) (= Heap@1 Heap@@10)) (and (=> (= (ControlFlow 0 41) 38) anon69_Then_correct) (=> (= (ControlFlow 0 41) 39) anon69_Else_correct)))))
(let ((anon68_Then_correct  (=> (not (HasDirectPerm Mask@0 null (P x@@25 b_2@@5))) (=> (and (= Heap@0 (MapType0Store Heap@@10 null (P x@@25 b_2@@5) newVersion@0)) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 40) 38) anon69_Then_correct) (=> (= (ControlFlow 0 40) 39) anon69_Else_correct))))))
(let ((anon26_correct  (=> (= Mask@0 (MapType1Store QPMask@0 null (P x@@25 b_2@@5) (real_2_U (- (U_2_real (MapType1Select QPMask@0 null (P x@@25 b_2@@5))) perm@1)))) (and (=> (= (ControlFlow 0 42) 40) anon68_Then_correct) (=> (= (ControlFlow 0 42) 41) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 45) 42)) anon26_correct)))
(let ((anon67_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= perm@1 (U_2_real (MapType1Select QPMask@0 null (P x@@25 b_2@@5))))) (=> (<= perm@1 (U_2_real (MapType1Select QPMask@0 null (P x@@25 b_2@@5)))) (=> (= (ControlFlow 0 43) 42) anon26_correct))))))
(let ((anon59_Else_correct  (=> (|P#trigger| Heap@@10 (P x@@25 b_2@@5)) (=> (and (= (MapType0Select Heap@@10 null (P x@@25 b_2@@5)) (FrameFragment (ite b_2@@5 (FrameFragment (MapType0Select Heap@@10 x@@25 f_6)) (FrameFragment (MapType0Select Heap@@10 x@@25 g))))) (= perm@1 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 46) 43) anon67_Then_correct) (=> (= (ControlFlow 0 46) 45) anon67_Else_correct))))))
(let ((anon58_Else_correct  (=> (state Heap@@10 ZeroMask) (=> (and (and (forall ((y_1 T@U) ) (!  (=> (= (type y_1) RefType) (=> (and (U_2_bool (MapType2Select xs y_1)) (< NoPerm FullPerm)) (and (= (invRecv2 y_1 b_2@@5) y_1) (qpRange2 y_1 b_2@@5))))
 :qid |knownfoldedbpl.638:22|
 :skolemid |93|
 :pattern ( (MapType0Select Heap@@10 null (P y_1 b_2@@5)))
 :pattern ( (MapType1Select ZeroMask null (P y_1 b_2@@5)))
 :pattern ( (MapType2Select xs y_1))
)) (forall ((x_1_1 T@U) (b_1_1 Bool) ) (!  (=> (= (type x_1_1) RefType) (=> (and (and (U_2_bool (MapType2Select xs (invRecv2 x_1_1 b_1_1))) (< NoPerm FullPerm)) (qpRange2 x_1_1 b_1_1)) (and (= (invRecv2 x_1_1 b_1_1) x_1_1) (= b_2@@5 b_1_1))))
 :qid |knownfoldedbpl.642:22|
 :skolemid |94|
 :pattern ( (invRecv2 x_1_1 b_1_1))
))) (and (forall ((x_1_1@@0 T@U) (b_1_1@@0 Bool) ) (!  (=> (= (type x_1_1@@0) RefType) (=> (and (and (U_2_bool (MapType2Select xs (invRecv2 x_1_1@@0 b_1_1@@0))) (< NoPerm FullPerm)) (qpRange2 x_1_1@@0 b_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv2 x_1_1@@0 b_1_1@@0) x_1_1@@0) (= b_2@@5 b_1_1@@0))) (= (U_2_real (MapType1Select QPMask@0 null (P x_1_1@@0 b_1_1@@0))) (+ (U_2_real (MapType1Select ZeroMask null (P x_1_1@@0 b_1_1@@0))) FullPerm)))))
 :qid |knownfoldedbpl.648:22|
 :skolemid |95|
 :pattern ( (MapType1Select QPMask@0 null (P x_1_1@@0 b_1_1@@0)))
)) (forall ((o_2 T@U) (f_4 T@U) ) (! (let ((B@@11 (FieldTypeInv1 (type f_4))))
(let ((A@@12 (FieldTypeInv0 (type f_4))))
 (=> (and (and (= (type o_2) RefType) (= (type f_4) (FieldType A@@12 B@@11))) (or (or (not (= o_2 null)) (not (IsPredicateField f_4))) (not (= (getPredicateId f_4) 0)))) (= (U_2_real (MapType1Select ZeroMask o_2 f_4)) (U_2_real (MapType1Select QPMask@0 o_2 f_4))))))
 :qid |knownfoldedbpl.654:29|
 :skolemid |96|
 :pattern ( (MapType1Select ZeroMask o_2 f_4))
 :pattern ( (MapType1Select QPMask@0 o_2 f_4))
)))) (=> (and (and (and (forall ((x_1_1@@1 T@U) (b_1_1@@1 Bool) ) (!  (=> (and (= (type x_1_1@@1) RefType) (not (and (and (U_2_bool (MapType2Select xs (invRecv2 x_1_1@@1 b_1_1@@1))) (< NoPerm FullPerm)) (qpRange2 x_1_1@@1 b_1_1@@1)))) (= (U_2_real (MapType1Select QPMask@0 null (P x_1_1@@1 b_1_1@@1))) (U_2_real (MapType1Select ZeroMask null (P x_1_1@@1 b_1_1@@1)))))
 :qid |knownfoldedbpl.658:22|
 :skolemid |97|
 :pattern ( (MapType1Select QPMask@0 null (P x_1_1@@1 b_1_1@@1)))
)) (state Heap@@10 QPMask@0)) (and (state Heap@@10 QPMask@0) (U_2_bool (MapType2Select xs x@@25)))) (and (and (state Heap@@10 QPMask@0) (= Heap@@10 Heap@@10)) (and (= QPMask@0 Mask@@9) (state PostHeap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 71) 70) anon59_Then_correct) (=> (= (ControlFlow 0 71) 46) anon59_Else_correct)))))))
(let ((anon58_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@10 ZeroMask) (U_2_bool (MapType0Select Heap@@10 x@@25 $allocated))) (and (=> (= (ControlFlow 0 72) 1) anon58_Then_correct) (=> (= (ControlFlow 0 72) 71) anon58_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 73) 72) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)