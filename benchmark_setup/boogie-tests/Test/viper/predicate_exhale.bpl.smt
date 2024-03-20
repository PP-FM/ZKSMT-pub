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
(declare-fun next () T@U)
(declare-fun FieldType (T@T T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun FieldTypeInv1 (T@T) T@T)
(declare-fun NormalFieldType () T@T)
(declare-fun RefType () T@T)
(declare-fun succHeap (T@U T@U) Bool)
(declare-fun MapType0Type (T@T) T@T)
(declare-fun succHeapTrans (T@U T@U) Bool)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun state (T@U T@U) Bool)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun GoodMask (T@U) Bool)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun IdenticalOnKnownLocations (T@U T@U T@U) Bool)
(declare-fun IsPredicateField (T@U) Bool)
(declare-fun null () T@U)
(declare-fun PredicateMaskField (T@U) T@U)
(declare-fun FrameTypeType () T@T)
(declare-fun HasDirectPerm (T@U T@U T@U) Bool)
(declare-fun IsWandField (T@U) Bool)
(declare-fun WandMaskField (T@U) T@U)
(declare-fun list (T@U) T@U)
(declare-fun PredicateType_listType () T@T)
(declare-fun |length'| (T@U T@U) Int)
(declare-fun dummyFunction (T@U) Bool)
(declare-fun |length#triggerStateless| (T@U) Int)
(declare-fun |list#trigger| (T@U T@U) Bool)
(declare-fun |list#everUsed| (T@U) Bool)
(declare-fun length (T@U T@U) Int)
(declare-fun get (T@U) T@U)
(declare-fun |list#sm| (T@U) T@U)
(declare-fun InsidePredicate (T@U T@U T@U T@U) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@U T@U T@U) Bool)
(declare-fun ConditionalFrame (Real T@U) T@U)
(declare-fun EmptyFrame () T@U)
(declare-fun NoPerm () Real)
(declare-fun ZeroMask () T@U)
(declare-fun getPredicateId (T@U) Int)
(declare-fun FullPerm () Real)
(declare-fun |length#frame| (T@U T@U) Int)
(declare-fun ZeroPMask () T@U)
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
(assert  (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (FieldType arg0@@11 arg1)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (FieldTypeInv1 (FieldType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:FieldTypeInv1|
 :pattern ( (FieldType arg0@@13 arg1@@1))
))) (= (Ctor NormalFieldType) 7)) (= (type $allocated) (FieldType NormalFieldType boolType))) (= (type f_6) (FieldType NormalFieldType intType))) (= (Ctor RefType) 8)) (= (type next) (FieldType NormalFieldType RefType))))
(assert (distinct $allocated f_6 next)
)
(assert  (and (and (and (and (and (forall ((arg0@@14 T@T) ) (! (= (Ctor (MapType0Type arg0@@14)) 9)
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
)))))
(assert (forall ((Heap0 T@U) (Heap1 T@U) ) (!  (=> (and (and (= (type Heap0) (MapType0Type RefType)) (= (type Heap1) (MapType0Type RefType))) (succHeap Heap0 Heap1)) (succHeapTrans Heap0 Heap1))
 :qid |predicateexhalebpl.77:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@18 T@T) (arg1@@4 T@T) ) (! (= (Ctor (MapType1Type arg0@@18 arg1@@4)) 10)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@19 T@T) (arg1@@5 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@19 arg1@@5)) arg0@@19)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@19 arg1@@5))
))) (forall ((arg0@@20 T@T) (arg1@@6 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@20 arg1@@6)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@20 arg1@@6))
))) (forall ((arg0@@21 T@U) (arg1@@7 T@U) (arg2@@1 T@U) ) (! (let ((aVar1 (MapType1TypeInv1 (type arg0@@21))))
(= (type (MapType1Select arg0@@21 arg1@@7 arg2@@1)) aVar1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@7 arg2@@1))
))) (forall ((arg0@@22 T@U) (arg1@@8 T@U) (arg2@@2 T@U) (arg3@@0 T@U) ) (! (let ((aVar1@@0 (type arg3@@0)))
(let ((aVar0@@0 (type arg1@@8)))
(= (type (MapType1Store arg0@@22 arg1@@8 arg2@@2 arg3@@0)) (MapType1Type aVar0@@0 aVar1@@0))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@8 arg2@@2 arg3@@0))
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
 :qid |predicateexhalebpl.113:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@U) (Heap1@@0 T@U) (Heap2 T@U) ) (!  (=> (and (and (and (= (type Heap0@@0) (MapType0Type RefType)) (= (type Heap1@@0) (MapType0Type RefType))) (= (type Heap2) (MapType0Type RefType))) (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))) (succHeapTrans Heap0@@0 Heap2))
 :qid |predicateexhalebpl.82:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert  (and (and (= (Ctor FrameTypeType) 11) (= (type null) RefType)) (forall ((arg0@@23 T@U) ) (! (let ((A (FieldTypeInv0 (type arg0@@23))))
(= (type (PredicateMaskField arg0@@23)) (FieldType A (MapType1Type RefType boolType))))
 :qid |funType:PredicateMaskField|
 :pattern ( (PredicateMaskField arg0@@23))
))))
(assert (forall ((Heap@@0 T@U) (ExhaleHeap T@U) (Mask@@0 T@U) (pm_f T@U) ) (! (let ((C (FieldTypeInv0 (type pm_f))))
 (=> (and (and (and (and (and (= (type Heap@@0) (MapType0Type RefType)) (= (type ExhaleHeap) (MapType0Type RefType))) (= (type Mask@@0) (MapType1Type RefType realType))) (= (type pm_f) (FieldType C FrameTypeType))) (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0)) (and (HasDirectPerm Mask@@0 null pm_f) (IsPredicateField pm_f))) (= (MapType0Select Heap@@0 null (PredicateMaskField pm_f)) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))))
 :qid |predicateexhalebpl.36:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField pm_f) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))
)))
(assert (forall ((arg0@@24 T@U) ) (! (let ((A@@0 (FieldTypeInv0 (type arg0@@24))))
(= (type (WandMaskField arg0@@24)) (FieldType A@@0 (MapType1Type RefType boolType))))
 :qid |funType:WandMaskField|
 :pattern ( (WandMaskField arg0@@24))
)))
(assert (forall ((Heap@@1 T@U) (ExhaleHeap@@0 T@U) (Mask@@1 T@U) (pm_f@@0 T@U) ) (! (let ((C@@0 (FieldTypeInv0 (type pm_f@@0))))
 (=> (and (and (and (and (and (= (type Heap@@1) (MapType0Type RefType)) (= (type ExhaleHeap@@0) (MapType0Type RefType))) (= (type Mask@@1) (MapType1Type RefType realType))) (= (type pm_f@@0) (FieldType C@@0 FrameTypeType))) (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1)) (and (HasDirectPerm Mask@@1 null pm_f@@0) (IsWandField pm_f@@0))) (= (MapType0Select Heap@@1 null (WandMaskField pm_f@@0)) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))))
 :qid |predicateexhalebpl.49:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField pm_f@@0) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))
)))
(assert  (and (= (Ctor PredicateType_listType) 12) (forall ((arg0@@25 T@U) ) (! (= (type (list arg0@@25)) (FieldType PredicateType_listType FrameTypeType))
 :qid |funType:list|
 :pattern ( (list arg0@@25))
))))
(assert (forall ((x_1 T@U) ) (!  (=> (= (type x_1) RefType) (IsPredicateField (list x_1)))
 :qid |predicateexhalebpl.356:15|
 :skolemid |30|
 :pattern ( (list x_1))
)))
(assert (forall ((Heap@@2 T@U) (x_1@@0 T@U) ) (!  (=> (and (= (type Heap@@2) (MapType0Type RefType)) (= (type x_1@@0) RefType)) (dummyFunction (int_2_U (|length#triggerStateless| x_1@@0))))
 :qid |predicateexhalebpl.205:15|
 :skolemid |24|
 :pattern ( (|length'| Heap@@2 x_1@@0))
)))
(assert (forall ((Heap@@3 T@U) (x_1@@1 T@U) ) (!  (=> (and (= (type Heap@@3) (MapType0Type RefType)) (= (type x_1@@1) RefType)) (|list#everUsed| (list x_1@@1)))
 :qid |predicateexhalebpl.375:15|
 :skolemid |34|
 :pattern ( (|list#trigger| Heap@@3 (list x_1@@1)))
)))
(assert (forall ((Heap@@4 T@U) (ExhaleHeap@@1 T@U) (Mask@@2 T@U) (o T@U) ) (!  (=> (and (and (and (and (and (= (type Heap@@4) (MapType0Type RefType)) (= (type ExhaleHeap@@1) (MapType0Type RefType))) (= (type Mask@@2) (MapType1Type RefType realType))) (= (type o) RefType)) (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2)) (U_2_bool (MapType0Select Heap@@4 o $allocated))) (U_2_bool (MapType0Select ExhaleHeap@@1 o $allocated)))
 :qid |predicateexhalebpl.62:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (MapType0Select ExhaleHeap@@1 o $allocated))
)))
(assert (forall ((Heap@@5 T@U) (x_1@@2 T@U) ) (!  (=> (and (= (type Heap@@5) (MapType0Type RefType)) (= (type x_1@@2) RefType)) (and (= (length Heap@@5 x_1@@2) (|length'| Heap@@5 x_1@@2)) (dummyFunction (int_2_U (|length#triggerStateless| x_1@@2)))))
 :qid |predicateexhalebpl.201:15|
 :skolemid |23|
 :pattern ( (length Heap@@5 x_1@@2))
)))
(assert (forall ((arg0@@26 T@U) ) (! (let ((T (type arg0@@26)))
(= (type (get arg0@@26)) T))
 :qid |funType:get|
 :pattern ( (get arg0@@26))
)))
(assert (forall ((x_1@@3 T@U) ) (! (not (= (get x_1@@3) x_1@@3))
 :qid |predicateexhalebpl.178:19|
 :skolemid |22|
 :pattern ( (get x_1@@3))
)))
(assert (forall ((x_1@@4 T@U) (x2 T@U) ) (!  (=> (and (and (= (type x_1@@4) RefType) (= (type x2) RefType)) (= (list x_1@@4) (list x2))) (= x_1@@4 x2))
 :qid |predicateexhalebpl.366:15|
 :skolemid |32|
 :pattern ( (list x_1@@4) (list x2))
)))
(assert (forall ((arg0@@27 T@U) ) (! (= (type (|list#sm| arg0@@27)) (FieldType PredicateType_listType (MapType1Type RefType boolType)))
 :qid |funType:list#sm|
 :pattern ( (|list#sm| arg0@@27))
)))
(assert (forall ((x_1@@5 T@U) (x2@@0 T@U) ) (!  (=> (and (and (= (type x_1@@5) RefType) (= (type x2@@0) RefType)) (= (|list#sm| x_1@@5) (|list#sm| x2@@0))) (= x_1@@5 x2@@0))
 :qid |predicateexhalebpl.370:15|
 :skolemid |33|
 :pattern ( (|list#sm| x_1@@5) (|list#sm| x2@@0))
)))
(assert (forall ((Heap@@6 T@U) (ExhaleHeap@@2 T@U) (Mask@@3 T@U) (o@@0 T@U) (f_2 T@U) ) (! (let ((B@@1 (FieldTypeInv1 (type f_2))))
(let ((A@@1 (FieldTypeInv0 (type f_2))))
 (=> (and (and (and (and (and (and (= (type Heap@@6) (MapType0Type RefType)) (= (type ExhaleHeap@@2) (MapType0Type RefType))) (= (type Mask@@3) (MapType1Type RefType realType))) (= (type o@@0) RefType)) (= (type f_2) (FieldType A@@1 B@@1))) (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3)) (HasDirectPerm Mask@@3 o@@0 f_2)) (= (MapType0Select Heap@@6 o@@0 f_2) (MapType0Select ExhaleHeap@@2 o@@0 f_2)))))
 :qid |predicateexhalebpl.31:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (MapType0Select ExhaleHeap@@2 o@@0 f_2))
)))
(assert (forall ((p T@U) (v_1 T@U) (w T@U) ) (! (let ((A@@2 (FieldTypeInv0 (type p))))
 (=> (and (and (= (type p) (FieldType A@@2 FrameTypeType)) (= (type v_1) FrameTypeType)) (= (type w) FrameTypeType)) (not (InsidePredicate p v_1 p w))))
 :qid |predicateexhalebpl.162:19|
 :skolemid |21|
 :pattern ( (InsidePredicate p v_1 p w))
)))
(assert  (not (IsPredicateField f_6)))
(assert  (not (IsWandField f_6)))
(assert  (not (IsPredicateField next)))
(assert  (not (IsWandField next)))
(assert (forall ((Heap@@7 T@U) (ExhaleHeap@@3 T@U) (Mask@@4 T@U) ) (!  (=> (and (and (and (= (type Heap@@7) (MapType0Type RefType)) (= (type ExhaleHeap@@3) (MapType0Type RefType))) (= (type Mask@@4) (MapType1Type RefType realType))) (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4)) (succHeap Heap@@7 ExhaleHeap@@3))
 :qid |predicateexhalebpl.72:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4))
)))
(assert (forall ((Heap@@8 T@U) (Mask@@5 T@U) (x_1@@6 T@U) ) (!  (=> (and (and (and (= (type Heap@@8) (MapType0Type RefType)) (= (type Mask@@5) (MapType1Type RefType realType))) (= (type x_1@@6) RefType)) (and (state Heap@@8 Mask@@5) (< AssumeFunctionsAbove 0))) (= (length Heap@@8 x_1@@6) (+ 1 (ite (not (= (MapType0Select Heap@@8 x_1@@6 next) null)) (|length'| Heap@@8 (MapType0Select Heap@@8 x_1@@6 next)) 0))))
 :qid |predicateexhalebpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@8 Mask@@5) (length Heap@@8 x_1@@6))
 :pattern ( (state Heap@@8 Mask@@5) (|length#triggerStateless| x_1@@6) (|list#trigger| Heap@@8 (list x_1@@6)))
)))
(assert (forall ((ResultMask T@U) (SummandMask1 T@U) (SummandMask2 T@U) (o_1 T@U) (f_3 T@U) ) (! (let ((B@@2 (FieldTypeInv1 (type f_3))))
(let ((A@@3 (FieldTypeInv0 (type f_3))))
 (=> (and (and (and (and (and (= (type ResultMask) (MapType1Type RefType realType)) (= (type SummandMask1) (MapType1Type RefType realType))) (= (type SummandMask2) (MapType1Type RefType realType))) (= (type o_1) RefType)) (= (type f_3) (FieldType A@@3 B@@2))) (sumMask ResultMask SummandMask1 SummandMask2)) (= (U_2_real (MapType1Select ResultMask o_1 f_3)) (+ (U_2_real (MapType1Select SummandMask1 o_1 f_3)) (U_2_real (MapType1Select SummandMask2 o_1 f_3)))))))
 :qid |predicateexhalebpl.127:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select ResultMask o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask1 o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask2 o_1 f_3))
)))
(assert  (and (forall ((arg0@@28 Real) (arg1@@9 T@U) ) (! (= (type (ConditionalFrame arg0@@28 arg1@@9)) FrameTypeType)
 :qid |funType:ConditionalFrame|
 :pattern ( (ConditionalFrame arg0@@28 arg1@@9))
)) (= (type EmptyFrame) FrameTypeType)))
(assert (forall ((p@@0 Real) (f_5 T@U) ) (!  (=> (= (type f_5) FrameTypeType) (= (ConditionalFrame p@@0 f_5) (ite (> p@@0 0.0) f_5 EmptyFrame)))
 :qid |predicateexhalebpl.150:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_5))
)))
(assert (forall ((Mask@@6 T@U) (o_1@@0 T@U) (f_3@@0 T@U) ) (! (let ((B@@3 (FieldTypeInv1 (type f_3@@0))))
(let ((A@@4 (FieldTypeInv0 (type f_3@@0))))
 (=> (and (and (= (type Mask@@6) (MapType1Type RefType realType)) (= (type o_1@@0) RefType)) (= (type f_3@@0) (FieldType A@@4 B@@3))) (= (HasDirectPerm Mask@@6 o_1@@0 f_3@@0) (> (U_2_real (MapType1Select Mask@@6 o_1@@0 f_3@@0)) NoPerm)))))
 :qid |predicateexhalebpl.122:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm Mask@@6 o_1@@0 f_3@@0))
)))
(assert (= (type ZeroMask) (MapType1Type RefType realType)))
(assert (forall ((o_1@@1 T@U) (f_3@@1 T@U) ) (! (let ((B@@4 (FieldTypeInv1 (type f_3@@1))))
(let ((A@@5 (FieldTypeInv0 (type f_3@@1))))
 (=> (and (= (type o_1@@1) RefType) (= (type f_3@@1) (FieldType A@@5 B@@4))) (= (U_2_real (MapType1Select ZeroMask o_1@@1 f_3@@1)) NoPerm))))
 :qid |predicateexhalebpl.95:22|
 :skolemid |13|
 :pattern ( (MapType1Select ZeroMask o_1@@1 f_3@@1))
)))
(assert (forall ((Heap@@9 T@U) (ExhaleHeap@@4 T@U) (Mask@@7 T@U) (pm_f@@1 T@U) ) (! (let ((C@@1 (FieldTypeInv0 (type pm_f@@1))))
 (=> (and (and (and (and (and (= (type Heap@@9) (MapType0Type RefType)) (= (type ExhaleHeap@@4) (MapType0Type RefType))) (= (type Mask@@7) (MapType1Type RefType realType))) (= (type pm_f@@1) (FieldType C@@1 FrameTypeType))) (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7)) (and (HasDirectPerm Mask@@7 null pm_f@@1) (IsPredicateField pm_f@@1))) (forall ((o2 T@U) (f_2@@0 T@U) ) (! (let ((B@@5 (FieldTypeInv1 (type f_2@@0))))
(let ((A@@6 (FieldTypeInv0 (type f_2@@0))))
 (=> (and (and (= (type o2) RefType) (= (type f_2@@0) (FieldType A@@6 B@@5))) (U_2_bool (MapType1Select (MapType0Select Heap@@9 null (PredicateMaskField pm_f@@1)) o2 f_2@@0))) (= (MapType0Select Heap@@9 o2 f_2@@0) (MapType0Select ExhaleHeap@@4 o2 f_2@@0)))))
 :qid |predicateexhalebpl.43:134|
 :skolemid |3|
 :pattern ( (MapType0Select ExhaleHeap@@4 o2 f_2@@0))
))))
 :qid |predicateexhalebpl.41:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (MapType0Select ExhaleHeap@@4 null pm_f@@1) (IsPredicateField pm_f@@1))
)))
(assert (forall ((Heap@@10 T@U) (ExhaleHeap@@5 T@U) (Mask@@8 T@U) (pm_f@@2 T@U) ) (! (let ((C@@2 (FieldTypeInv0 (type pm_f@@2))))
 (=> (and (and (and (and (and (= (type Heap@@10) (MapType0Type RefType)) (= (type ExhaleHeap@@5) (MapType0Type RefType))) (= (type Mask@@8) (MapType1Type RefType realType))) (= (type pm_f@@2) (FieldType C@@2 FrameTypeType))) (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@8)) (and (HasDirectPerm Mask@@8 null pm_f@@2) (IsWandField pm_f@@2))) (forall ((o2@@0 T@U) (f_2@@1 T@U) ) (! (let ((B@@6 (FieldTypeInv1 (type f_2@@1))))
(let ((A@@7 (FieldTypeInv0 (type f_2@@1))))
 (=> (and (and (= (type o2@@0) RefType) (= (type f_2@@1) (FieldType A@@7 B@@6))) (U_2_bool (MapType1Select (MapType0Select Heap@@10 null (WandMaskField pm_f@@2)) o2@@0 f_2@@1))) (= (MapType0Select Heap@@10 o2@@0 f_2@@1) (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1)))))
 :qid |predicateexhalebpl.56:129|
 :skolemid |6|
 :pattern ( (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1))
))))
 :qid |predicateexhalebpl.54:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@8) (IsWandField pm_f@@2))
)))
(assert (forall ((x_1@@7 T@U) ) (!  (=> (= (type x_1@@7) RefType) (= (getPredicateId (list x_1@@7)) 0))
 :qid |predicateexhalebpl.360:15|
 :skolemid |31|
 :pattern ( (list x_1@@7))
)))
(assert (forall ((Mask@@9 T@U) (o_1@@2 T@U) (f_3@@2 T@U) ) (! (let ((B@@7 (FieldTypeInv1 (type f_3@@2))))
(let ((A@@8 (FieldTypeInv0 (type f_3@@2))))
 (=> (and (and (and (= (type Mask@@9) (MapType1Type RefType realType)) (= (type o_1@@2) RefType)) (= (type f_3@@2) (FieldType A@@8 B@@7))) (GoodMask Mask@@9)) (and (>= (U_2_real (MapType1Select Mask@@9 o_1@@2 f_3@@2)) NoPerm) (=> (and (and (GoodMask Mask@@9) (not (IsPredicateField f_3@@2))) (not (IsWandField f_3@@2))) (<= (U_2_real (MapType1Select Mask@@9 o_1@@2 f_3@@2)) FullPerm))))))
 :qid |predicateexhalebpl.117:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (MapType1Select Mask@@9 o_1@@2 f_3@@2))
)))
(assert (forall ((Heap@@11 T@U) (Mask@@10 T@U) (x_1@@8 T@U) ) (!  (=> (and (and (and (= (type Heap@@11) (MapType0Type RefType)) (= (type Mask@@10) (MapType1Type RefType realType))) (= (type x_1@@8) RefType)) (state Heap@@11 Mask@@10)) (= (|length'| Heap@@11 x_1@@8) (|length#frame| (MapType0Select Heap@@11 null (list x_1@@8)) x_1@@8)))
 :qid |predicateexhalebpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@11 Mask@@10) (|length'| Heap@@11 x_1@@8))
 :pattern ( (state Heap@@11 Mask@@10) (|length#triggerStateless| x_1@@8) (|list#trigger| Heap@@11 (list x_1@@8)))
)))
(assert (forall ((o@@1 T@U) (f T@U) (Heap@@12 T@U) ) (!  (=> (and (and (and (= (type o@@1) RefType) (= (type f) (FieldType NormalFieldType RefType))) (= (type Heap@@12) (MapType0Type RefType))) (U_2_bool (MapType0Select Heap@@12 o@@1 $allocated))) (U_2_bool (MapType0Select Heap@@12 (MapType0Select Heap@@12 o@@1 f) $allocated)))
 :qid |predicateexhalebpl.20:15|
 :skolemid |0|
 :pattern ( (MapType0Select Heap@@12 o@@1 f))
)))
(assert (forall ((x_1@@9 T@U) ) (!  (=> (= (type x_1@@9) RefType) (= (PredicateMaskField (list x_1@@9)) (|list#sm| x_1@@9)))
 :qid |predicateexhalebpl.352:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField (list x_1@@9)))
)))
(assert (forall ((Heap@@13 T@U) (o@@2 T@U) (f_2@@2 T@U) (v T@U) ) (! (let ((B@@8 (type v)))
(let ((A@@9 (FieldTypeInv0 (type f_2@@2))))
 (=> (and (and (= (type Heap@@13) (MapType0Type RefType)) (= (type o@@2) RefType)) (= (type f_2@@2) (FieldType A@@9 B@@8))) (succHeap Heap@@13 (MapType0Store Heap@@13 o@@2 f_2@@2 v)))))
 :qid |predicateexhalebpl.67:22|
 :skolemid |9|
 :pattern ( (MapType0Store Heap@@13 o@@2 f_2@@2 v))
)))
(assert (= (type ZeroPMask) (MapType1Type RefType boolType)))
(assert (forall ((o_1@@3 T@U) (f_3@@3 T@U) ) (! (let ((B@@9 (FieldTypeInv1 (type f_3@@3))))
(let ((A@@10 (FieldTypeInv0 (type f_3@@3))))
 (=> (and (= (type o_1@@3) RefType) (= (type f_3@@3) (FieldType A@@10 B@@9))) (not (U_2_bool (MapType1Select ZeroPMask o_1@@3 f_3@@3))))))
 :qid |predicateexhalebpl.101:22|
 :skolemid |14|
 :pattern ( (MapType1Select ZeroPMask o_1@@3 f_3@@3))
)))
(assert (forall ((p@@1 T@U) (v_1@@0 T@U) (q T@U) (w@@0 T@U) (r T@U) (u T@U) ) (! (let ((C@@3 (FieldTypeInv0 (type r))))
(let ((B@@10 (FieldTypeInv0 (type q))))
(let ((A@@11 (FieldTypeInv0 (type p@@1))))
 (=> (and (and (and (and (and (and (= (type p@@1) (FieldType A@@11 FrameTypeType)) (= (type v_1@@0) FrameTypeType)) (= (type q) (FieldType B@@10 FrameTypeType))) (= (type w@@0) FrameTypeType)) (= (type r) (FieldType C@@3 FrameTypeType))) (= (type u) FrameTypeType)) (and (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r u))) (InsidePredicate p@@1 v_1@@0 r u)))))
 :qid |predicateexhalebpl.157:25|
 :skolemid |20|
 :pattern ( (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun perm@1 () Real)
(declare-fun UnfoldingMask@4 () T@U)
(declare-fun Heap@@14 () T@U)
(declare-fun x_1@@10 () T@U)
(declare-fun Heap@5 () T@U)
(declare-fun Heap@7 () T@U)
(declare-fun newPMask@1 () T@U)
(declare-fun Heap@6 () T@U)
(declare-fun Heap@3 () T@U)
(declare-fun Mask@0 () T@U)
(declare-fun Heap@4 () T@U)
(declare-fun Heap@1 () T@U)
(declare-fun newPMask@0 () T@U)
(declare-fun Heap@2 () T@U)
(declare-fun Heap@0 () T@U)
(declare-fun |length#trigger| (T@U T@U) Bool)
(declare-fun UnfoldingMask@2 () T@U)
(declare-fun UnfoldingMask@3 () T@U)
(declare-fun UnfoldingMask@0 () T@U)
(declare-fun perm@0 () Real)
(declare-fun UnfoldingMask@1 () T@U)
(declare-fun Mask@@11 () T@U)
(declare-fun CombineFrames (T@U T@U) T@U)
(declare-fun FrameFragment (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type Heap@5) (MapType0Type RefType)) (= (type x_1@@10) RefType)) (= (type newPMask@1) (MapType1Type RefType boolType))) (= (type Heap@6) (MapType0Type RefType))) (= (type Heap@7) (MapType0Type RefType))) (= (type Heap@3) (MapType0Type RefType))) (= (type Mask@0) (MapType1Type RefType realType))) (= (type Heap@4) (MapType0Type RefType))) (= (type Heap@1) (MapType0Type RefType))) (= (type newPMask@0) (MapType1Type RefType boolType))) (= (type Heap@2) (MapType0Type RefType))) (= (type Heap@0) (MapType0Type RefType))) (= (type Heap@@14) (MapType0Type RefType))) (= (type UnfoldingMask@4) (MapType1Type RefType realType))) (= (type UnfoldingMask@3) (MapType1Type RefType realType))) (= (type UnfoldingMask@2) (MapType1Type RefType realType))) (= (type UnfoldingMask@0) (MapType1Type RefType realType))) (= (type UnfoldingMask@1) (MapType1Type RefType realType))) (= (type Mask@@11) (MapType1Type RefType realType))) (forall ((arg0@@29 T@U) (arg1@@10 T@U) ) (! (= (type (CombineFrames arg0@@29 arg1@@10)) FrameTypeType)
 :qid |funType:CombineFrames|
 :pattern ( (CombineFrames arg0@@29 arg1@@10))
))) (forall ((arg0@@30 T@U) ) (! (= (type (FrameFragment arg0@@30)) FrameTypeType)
 :qid |funType:FrameFragment|
 :pattern ( (FrameFragment arg0@@30))
))))
(set-info :boogie-vc-id |length#definedness|)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26) (let ((anon8_correct true))
(let ((anon19_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 13) 10)) anon8_correct)))
(let ((anon19_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= perm@1 (U_2_real (MapType1Select UnfoldingMask@4 null (list (MapType0Select Heap@@14 x_1@@10 next)))))) (=> (<= perm@1 (U_2_real (MapType1Select UnfoldingMask@4 null (list (MapType0Select Heap@@14 x_1@@10 next))))) (=> (= (ControlFlow 0 11) 10) anon8_correct))))))
(let ((anon18_Then_correct  (=> (= perm@1 (+ NoPerm FullPerm)) (and (=> (= (ControlFlow 0 14) 11) anon19_Then_correct) (=> (= (ControlFlow 0 14) 13) anon19_Else_correct)))))
(let ((anon14_correct true))
(let ((anon21_Else_correct  (=> (= (MapType0Select Heap@5 x_1@@10 next) null) (=> (and (= Heap@7 Heap@5) (= (ControlFlow 0 3) 1)) anon14_correct))))
(let ((anon21_Then_correct  (=> (not (= (MapType0Select Heap@5 x_1@@10 next) null)) (=> (and (and (forall ((o_3 T@U) (f_8 T@U) ) (! (let ((B@@11 (FieldTypeInv1 (type f_8))))
(let ((A@@12 (FieldTypeInv0 (type f_8))))
 (=> (and (and (= (type o_3) RefType) (= (type f_8) (FieldType A@@12 B@@11))) (or (U_2_bool (MapType1Select (MapType0Select Heap@5 null (|list#sm| x_1@@10)) o_3 f_8)) (U_2_bool (MapType1Select (MapType0Select Heap@5 null (|list#sm| (MapType0Select Heap@5 x_1@@10 next))) o_3 f_8)))) (U_2_bool (MapType1Select newPMask@1 o_3 f_8)))))
 :qid |predicateexhalebpl.332:33|
 :skolemid |28|
 :pattern ( (MapType1Select newPMask@1 o_3 f_8))
)) (= Heap@6 (MapType0Store Heap@5 null (|list#sm| x_1@@10) newPMask@1))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 2) 1))) anon14_correct))))
(let ((anon12_correct  (=> (state Heap@3 Mask@0) (=> (and (= Heap@4 (MapType0Store Heap@3 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@3 null (|list#sm| x_1@@10)) x_1@@10 f_6 (bool_2_U true)))) (= Heap@5 (MapType0Store Heap@4 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@4 null (|list#sm| x_1@@10)) x_1@@10 next (bool_2_U true))))) (and (=> (= (ControlFlow 0 4) 2) anon21_Then_correct) (=> (= (ControlFlow 0 4) 3) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (= (MapType0Select Heap@1 x_1@@10 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon12_correct))))
(let ((anon20_Then_correct  (=> (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (=> (and (and (forall ((o_2 T@U) (f_7 T@U) ) (! (let ((B@@12 (FieldTypeInv1 (type f_7))))
(let ((A@@13 (FieldTypeInv0 (type f_7))))
 (=> (and (and (= (type o_2) RefType) (= (type f_7) (FieldType A@@13 B@@12))) (or (U_2_bool (MapType1Select (MapType0Select Heap@1 null (|list#sm| x_1@@10)) o_2 f_7)) (U_2_bool (MapType1Select (MapType0Select Heap@1 null (|list#sm| (MapType0Select Heap@1 x_1@@10 next))) o_2 f_7)))) (U_2_bool (MapType1Select newPMask@0 o_2 f_7)))))
 :qid |predicateexhalebpl.319:33|
 :skolemid |27|
 :pattern ( (MapType1Select newPMask@0 o_2 f_7))
)) (= Heap@2 (MapType0Store Heap@1 null (|list#sm| x_1@@10) newPMask@0))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon12_correct))))
(let ((anon10_correct  (=> (and (= Heap@0 (MapType0Store Heap@@14 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@@14 null (|list#sm| x_1@@10)) x_1@@10 f_6 (bool_2_U true)))) (= Heap@1 (MapType0Store Heap@0 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@0 null (|list#sm| x_1@@10)) x_1@@10 next (bool_2_U true))))) (and (=> (= (ControlFlow 0 7) 5) anon20_Then_correct) (=> (= (ControlFlow 0 7) 6) anon20_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (|length#trigger| (MapType0Select Heap@@14 null (list (MapType0Select Heap@@14 x_1@@10 next))) (MapType0Select Heap@@14 x_1@@10 next)) (= (ControlFlow 0 9) 7)) anon10_correct)))
(let ((anon17_Then_correct  (=> (not (= (MapType0Select Heap@@14 x_1@@10 next) null)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm UnfoldingMask@4 x_1@@10 next)) (=> (HasDirectPerm UnfoldingMask@4 x_1@@10 next) (and (=> (= (ControlFlow 0 15) 14) anon18_Then_correct) (=> (= (ControlFlow 0 15) 9) anon18_Else_correct)))))))
(let ((anon17_Else_correct  (=> (and (= (MapType0Select Heap@@14 x_1@@10 next) null) (= (ControlFlow 0 8) 7)) anon10_correct)))
(let ((anon4_correct  (=> (state Heap@@14 UnfoldingMask@4) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm UnfoldingMask@4 x_1@@10 next)) (=> (HasDirectPerm UnfoldingMask@4 x_1@@10 next) (and (=> (= (ControlFlow 0 17) 15) anon17_Then_correct) (=> (= (ControlFlow 0 17) 8) anon17_Else_correct)))))))
(let ((anon16_Else_correct  (=> (= (MapType0Select Heap@@14 x_1@@10 next) null) (=> (and (= UnfoldingMask@4 UnfoldingMask@2) (= (ControlFlow 0 20) 17)) anon4_correct))))
(let ((anon16_Then_correct  (=> (and (not (= (MapType0Select Heap@@14 x_1@@10 next) null)) (= UnfoldingMask@3 (MapType1Store UnfoldingMask@2 null (list (MapType0Select Heap@@14 x_1@@10 next)) (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@2 null (list (MapType0Select Heap@@14 x_1@@10 next)))) FullPerm))))) (=> (and (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@@14 null (list x_1@@10)) (list (MapType0Select Heap@@14 x_1@@10 next)) (MapType0Select Heap@@14 null (list (MapType0Select Heap@@14 x_1@@10 next)))) (state Heap@@14 UnfoldingMask@3)) (and (= UnfoldingMask@4 UnfoldingMask@3) (= (ControlFlow 0 19) 17))) anon4_correct))))
(let ((anon2_correct  (=> (= UnfoldingMask@0 (MapType1Store Mask@0 null (list x_1@@10) (real_2_U (- (U_2_real (MapType1Select Mask@0 null (list x_1@@10))) perm@0)))) (=> (and (not (= x_1@@10 null)) (= UnfoldingMask@1 (MapType1Store UnfoldingMask@0 x_1@@10 f_6 (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@0 x_1@@10 f_6)) FullPerm))))) (=> (and (and (state Heap@@14 UnfoldingMask@1) (not (= x_1@@10 null))) (and (= UnfoldingMask@2 (MapType1Store UnfoldingMask@1 x_1@@10 next (real_2_U (+ (U_2_real (MapType1Select UnfoldingMask@1 x_1@@10 next)) FullPerm)))) (state Heap@@14 UnfoldingMask@2))) (and (=> (= (ControlFlow 0 21) 19) anon16_Then_correct) (=> (= (ControlFlow 0 21) 20) anon16_Else_correct)))))))
(let ((anon15_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 24) 21)) anon2_correct)))
(let ((anon15_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (<= perm@0 (U_2_real (MapType1Select Mask@0 null (list x_1@@10))))) (=> (<= perm@0 (U_2_real (MapType1Select Mask@0 null (list x_1@@10)))) (=> (= (ControlFlow 0 22) 21) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@14 ZeroMask) (=> (and (U_2_bool (MapType0Select Heap@@14 x_1@@10 $allocated)) (= AssumeFunctionsAbove 0)) (=> (and (and (and (= Heap@@14 Heap@@14) (= ZeroMask Mask@@11)) (and (= Mask@0 (MapType1Store ZeroMask null (list x_1@@10) (real_2_U (+ (U_2_real (MapType1Select ZeroMask null (list x_1@@10))) FullPerm)))) (state Heap@@14 Mask@0))) (and (and (state Heap@@14 Mask@0) (|list#trigger| Heap@@14 (list x_1@@10))) (and (= (MapType0Select Heap@@14 null (list x_1@@10)) (CombineFrames (FrameFragment (MapType0Select Heap@@14 x_1@@10 f_6)) (CombineFrames (FrameFragment (MapType0Select Heap@@14 x_1@@10 next)) (FrameFragment (ite (not (= (MapType0Select Heap@@14 x_1@@10 next) null)) (MapType0Select Heap@@14 null (list (MapType0Select Heap@@14 x_1@@10 next))) EmptyFrame))))) (= perm@0 (+ NoPerm FullPerm))))) (and (=> (= (ControlFlow 0 25) 22) anon15_Then_correct) (=> (= (ControlFlow 0 25) 24) anon15_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26) 25) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
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
(declare-fun next () T@U)
(declare-fun FieldType (T@T T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun FieldTypeInv1 (T@T) T@T)
(declare-fun NormalFieldType () T@T)
(declare-fun RefType () T@T)
(declare-fun succHeap (T@U T@U) Bool)
(declare-fun MapType0Type (T@T) T@T)
(declare-fun succHeapTrans (T@U T@U) Bool)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun state (T@U T@U) Bool)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun GoodMask (T@U) Bool)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun IdenticalOnKnownLocations (T@U T@U T@U) Bool)
(declare-fun IsPredicateField (T@U) Bool)
(declare-fun null () T@U)
(declare-fun PredicateMaskField (T@U) T@U)
(declare-fun FrameTypeType () T@T)
(declare-fun HasDirectPerm (T@U T@U T@U) Bool)
(declare-fun IsWandField (T@U) Bool)
(declare-fun WandMaskField (T@U) T@U)
(declare-fun list (T@U) T@U)
(declare-fun PredicateType_listType () T@T)
(declare-fun |length'| (T@U T@U) Int)
(declare-fun dummyFunction (T@U) Bool)
(declare-fun |length#triggerStateless| (T@U) Int)
(declare-fun |list#trigger| (T@U T@U) Bool)
(declare-fun |list#everUsed| (T@U) Bool)
(declare-fun length (T@U T@U) Int)
(declare-fun get (T@U) T@U)
(declare-fun |list#sm| (T@U) T@U)
(declare-fun InsidePredicate (T@U T@U T@U T@U) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@U T@U T@U) Bool)
(declare-fun ConditionalFrame (Real T@U) T@U)
(declare-fun EmptyFrame () T@U)
(declare-fun NoPerm () Real)
(declare-fun ZeroMask () T@U)
(declare-fun getPredicateId (T@U) Int)
(declare-fun FullPerm () Real)
(declare-fun |length#frame| (T@U T@U) Int)
(declare-fun ZeroPMask () T@U)
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
(assert  (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (FieldType arg0@@11 arg1)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (FieldTypeInv1 (FieldType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:FieldTypeInv1|
 :pattern ( (FieldType arg0@@13 arg1@@1))
))) (= (Ctor NormalFieldType) 7)) (= (type $allocated) (FieldType NormalFieldType boolType))) (= (type f_6) (FieldType NormalFieldType intType))) (= (Ctor RefType) 8)) (= (type next) (FieldType NormalFieldType RefType))))
(assert (distinct $allocated f_6 next)
)
(assert  (and (and (and (and (and (forall ((arg0@@14 T@T) ) (! (= (Ctor (MapType0Type arg0@@14)) 9)
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
)))))
(assert (forall ((Heap0 T@U) (Heap1 T@U) ) (!  (=> (and (and (= (type Heap0) (MapType0Type RefType)) (= (type Heap1) (MapType0Type RefType))) (succHeap Heap0 Heap1)) (succHeapTrans Heap0 Heap1))
 :qid |predicateexhalebpl.77:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@18 T@T) (arg1@@4 T@T) ) (! (= (Ctor (MapType1Type arg0@@18 arg1@@4)) 10)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@19 T@T) (arg1@@5 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@19 arg1@@5)) arg0@@19)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@19 arg1@@5))
))) (forall ((arg0@@20 T@T) (arg1@@6 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@20 arg1@@6)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@20 arg1@@6))
))) (forall ((arg0@@21 T@U) (arg1@@7 T@U) (arg2@@1 T@U) ) (! (let ((aVar1 (MapType1TypeInv1 (type arg0@@21))))
(= (type (MapType1Select arg0@@21 arg1@@7 arg2@@1)) aVar1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@7 arg2@@1))
))) (forall ((arg0@@22 T@U) (arg1@@8 T@U) (arg2@@2 T@U) (arg3@@0 T@U) ) (! (let ((aVar1@@0 (type arg3@@0)))
(let ((aVar0@@0 (type arg1@@8)))
(= (type (MapType1Store arg0@@22 arg1@@8 arg2@@2 arg3@@0)) (MapType1Type aVar0@@0 aVar1@@0))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@8 arg2@@2 arg3@@0))
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
 :qid |predicateexhalebpl.113:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@U) (Heap1@@0 T@U) (Heap2 T@U) ) (!  (=> (and (and (and (= (type Heap0@@0) (MapType0Type RefType)) (= (type Heap1@@0) (MapType0Type RefType))) (= (type Heap2) (MapType0Type RefType))) (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))) (succHeapTrans Heap0@@0 Heap2))
 :qid |predicateexhalebpl.82:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert  (and (and (= (Ctor FrameTypeType) 11) (= (type null) RefType)) (forall ((arg0@@23 T@U) ) (! (let ((A (FieldTypeInv0 (type arg0@@23))))
(= (type (PredicateMaskField arg0@@23)) (FieldType A (MapType1Type RefType boolType))))
 :qid |funType:PredicateMaskField|
 :pattern ( (PredicateMaskField arg0@@23))
))))
(assert (forall ((Heap@@0 T@U) (ExhaleHeap T@U) (Mask@@0 T@U) (pm_f T@U) ) (! (let ((C (FieldTypeInv0 (type pm_f))))
 (=> (and (and (and (and (and (= (type Heap@@0) (MapType0Type RefType)) (= (type ExhaleHeap) (MapType0Type RefType))) (= (type Mask@@0) (MapType1Type RefType realType))) (= (type pm_f) (FieldType C FrameTypeType))) (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0)) (and (HasDirectPerm Mask@@0 null pm_f) (IsPredicateField pm_f))) (= (MapType0Select Heap@@0 null (PredicateMaskField pm_f)) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))))
 :qid |predicateexhalebpl.36:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField pm_f) (MapType0Select ExhaleHeap null (PredicateMaskField pm_f)))
)))
(assert (forall ((arg0@@24 T@U) ) (! (let ((A@@0 (FieldTypeInv0 (type arg0@@24))))
(= (type (WandMaskField arg0@@24)) (FieldType A@@0 (MapType1Type RefType boolType))))
 :qid |funType:WandMaskField|
 :pattern ( (WandMaskField arg0@@24))
)))
(assert (forall ((Heap@@1 T@U) (ExhaleHeap@@0 T@U) (Mask@@1 T@U) (pm_f@@0 T@U) ) (! (let ((C@@0 (FieldTypeInv0 (type pm_f@@0))))
 (=> (and (and (and (and (and (= (type Heap@@1) (MapType0Type RefType)) (= (type ExhaleHeap@@0) (MapType0Type RefType))) (= (type Mask@@1) (MapType1Type RefType realType))) (= (type pm_f@@0) (FieldType C@@0 FrameTypeType))) (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1)) (and (HasDirectPerm Mask@@1 null pm_f@@0) (IsWandField pm_f@@0))) (= (MapType0Select Heap@@1 null (WandMaskField pm_f@@0)) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))))
 :qid |predicateexhalebpl.49:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField pm_f@@0) (MapType0Select ExhaleHeap@@0 null (WandMaskField pm_f@@0)))
)))
(assert  (and (= (Ctor PredicateType_listType) 12) (forall ((arg0@@25 T@U) ) (! (= (type (list arg0@@25)) (FieldType PredicateType_listType FrameTypeType))
 :qid |funType:list|
 :pattern ( (list arg0@@25))
))))
(assert (forall ((x_1 T@U) ) (!  (=> (= (type x_1) RefType) (IsPredicateField (list x_1)))
 :qid |predicateexhalebpl.356:15|
 :skolemid |30|
 :pattern ( (list x_1))
)))
(assert (forall ((Heap@@2 T@U) (x_1@@0 T@U) ) (!  (=> (and (= (type Heap@@2) (MapType0Type RefType)) (= (type x_1@@0) RefType)) (dummyFunction (int_2_U (|length#triggerStateless| x_1@@0))))
 :qid |predicateexhalebpl.205:15|
 :skolemid |24|
 :pattern ( (|length'| Heap@@2 x_1@@0))
)))
(assert (forall ((Heap@@3 T@U) (x_1@@1 T@U) ) (!  (=> (and (= (type Heap@@3) (MapType0Type RefType)) (= (type x_1@@1) RefType)) (|list#everUsed| (list x_1@@1)))
 :qid |predicateexhalebpl.375:15|
 :skolemid |34|
 :pattern ( (|list#trigger| Heap@@3 (list x_1@@1)))
)))
(assert (forall ((Heap@@4 T@U) (ExhaleHeap@@1 T@U) (Mask@@2 T@U) (o T@U) ) (!  (=> (and (and (and (and (and (= (type Heap@@4) (MapType0Type RefType)) (= (type ExhaleHeap@@1) (MapType0Type RefType))) (= (type Mask@@2) (MapType1Type RefType realType))) (= (type o) RefType)) (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2)) (U_2_bool (MapType0Select Heap@@4 o $allocated))) (U_2_bool (MapType0Select ExhaleHeap@@1 o $allocated)))
 :qid |predicateexhalebpl.62:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (MapType0Select ExhaleHeap@@1 o $allocated))
)))
(assert (forall ((Heap@@5 T@U) (x_1@@2 T@U) ) (!  (=> (and (= (type Heap@@5) (MapType0Type RefType)) (= (type x_1@@2) RefType)) (and (= (length Heap@@5 x_1@@2) (|length'| Heap@@5 x_1@@2)) (dummyFunction (int_2_U (|length#triggerStateless| x_1@@2)))))
 :qid |predicateexhalebpl.201:15|
 :skolemid |23|
 :pattern ( (length Heap@@5 x_1@@2))
)))
(assert (forall ((arg0@@26 T@U) ) (! (let ((T (type arg0@@26)))
(= (type (get arg0@@26)) T))
 :qid |funType:get|
 :pattern ( (get arg0@@26))
)))
(assert (forall ((x_1@@3 T@U) ) (! (not (= (get x_1@@3) x_1@@3))
 :qid |predicateexhalebpl.178:19|
 :skolemid |22|
 :pattern ( (get x_1@@3))
)))
(assert (forall ((x_1@@4 T@U) (x2 T@U) ) (!  (=> (and (and (= (type x_1@@4) RefType) (= (type x2) RefType)) (= (list x_1@@4) (list x2))) (= x_1@@4 x2))
 :qid |predicateexhalebpl.366:15|
 :skolemid |32|
 :pattern ( (list x_1@@4) (list x2))
)))
(assert (forall ((arg0@@27 T@U) ) (! (= (type (|list#sm| arg0@@27)) (FieldType PredicateType_listType (MapType1Type RefType boolType)))
 :qid |funType:list#sm|
 :pattern ( (|list#sm| arg0@@27))
)))
(assert (forall ((x_1@@5 T@U) (x2@@0 T@U) ) (!  (=> (and (and (= (type x_1@@5) RefType) (= (type x2@@0) RefType)) (= (|list#sm| x_1@@5) (|list#sm| x2@@0))) (= x_1@@5 x2@@0))
 :qid |predicateexhalebpl.370:15|
 :skolemid |33|
 :pattern ( (|list#sm| x_1@@5) (|list#sm| x2@@0))
)))
(assert (forall ((Heap@@6 T@U) (ExhaleHeap@@2 T@U) (Mask@@3 T@U) (o@@0 T@U) (f_2 T@U) ) (! (let ((B@@1 (FieldTypeInv1 (type f_2))))
(let ((A@@1 (FieldTypeInv0 (type f_2))))
 (=> (and (and (and (and (and (and (= (type Heap@@6) (MapType0Type RefType)) (= (type ExhaleHeap@@2) (MapType0Type RefType))) (= (type Mask@@3) (MapType1Type RefType realType))) (= (type o@@0) RefType)) (= (type f_2) (FieldType A@@1 B@@1))) (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3)) (HasDirectPerm Mask@@3 o@@0 f_2)) (= (MapType0Select Heap@@6 o@@0 f_2) (MapType0Select ExhaleHeap@@2 o@@0 f_2)))))
 :qid |predicateexhalebpl.31:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (MapType0Select ExhaleHeap@@2 o@@0 f_2))
)))
(assert (forall ((p T@U) (v_1 T@U) (w T@U) ) (! (let ((A@@2 (FieldTypeInv0 (type p))))
 (=> (and (and (= (type p) (FieldType A@@2 FrameTypeType)) (= (type v_1) FrameTypeType)) (= (type w) FrameTypeType)) (not (InsidePredicate p v_1 p w))))
 :qid |predicateexhalebpl.162:19|
 :skolemid |21|
 :pattern ( (InsidePredicate p v_1 p w))
)))
(assert  (not (IsPredicateField f_6)))
(assert  (not (IsWandField f_6)))
(assert  (not (IsPredicateField next)))
(assert  (not (IsWandField next)))
(assert (forall ((Heap@@7 T@U) (ExhaleHeap@@3 T@U) (Mask@@4 T@U) ) (!  (=> (and (and (and (= (type Heap@@7) (MapType0Type RefType)) (= (type ExhaleHeap@@3) (MapType0Type RefType))) (= (type Mask@@4) (MapType1Type RefType realType))) (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4)) (succHeap Heap@@7 ExhaleHeap@@3))
 :qid |predicateexhalebpl.72:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4))
)))
(assert (forall ((Heap@@8 T@U) (Mask@@5 T@U) (x_1@@6 T@U) ) (!  (=> (and (and (and (= (type Heap@@8) (MapType0Type RefType)) (= (type Mask@@5) (MapType1Type RefType realType))) (= (type x_1@@6) RefType)) (and (state Heap@@8 Mask@@5) (< AssumeFunctionsAbove 0))) (= (length Heap@@8 x_1@@6) (+ 1 (ite (not (= (MapType0Select Heap@@8 x_1@@6 next) null)) (|length'| Heap@@8 (MapType0Select Heap@@8 x_1@@6 next)) 0))))
 :qid |predicateexhalebpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@8 Mask@@5) (length Heap@@8 x_1@@6))
 :pattern ( (state Heap@@8 Mask@@5) (|length#triggerStateless| x_1@@6) (|list#trigger| Heap@@8 (list x_1@@6)))
)))
(assert (forall ((ResultMask T@U) (SummandMask1 T@U) (SummandMask2 T@U) (o_1 T@U) (f_3 T@U) ) (! (let ((B@@2 (FieldTypeInv1 (type f_3))))
(let ((A@@3 (FieldTypeInv0 (type f_3))))
 (=> (and (and (and (and (and (= (type ResultMask) (MapType1Type RefType realType)) (= (type SummandMask1) (MapType1Type RefType realType))) (= (type SummandMask2) (MapType1Type RefType realType))) (= (type o_1) RefType)) (= (type f_3) (FieldType A@@3 B@@2))) (sumMask ResultMask SummandMask1 SummandMask2)) (= (U_2_real (MapType1Select ResultMask o_1 f_3)) (+ (U_2_real (MapType1Select SummandMask1 o_1 f_3)) (U_2_real (MapType1Select SummandMask2 o_1 f_3)))))))
 :qid |predicateexhalebpl.127:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select ResultMask o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask1 o_1 f_3))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (MapType1Select SummandMask2 o_1 f_3))
)))
(assert  (and (forall ((arg0@@28 Real) (arg1@@9 T@U) ) (! (= (type (ConditionalFrame arg0@@28 arg1@@9)) FrameTypeType)
 :qid |funType:ConditionalFrame|
 :pattern ( (ConditionalFrame arg0@@28 arg1@@9))
)) (= (type EmptyFrame) FrameTypeType)))
(assert (forall ((p@@0 Real) (f_5 T@U) ) (!  (=> (= (type f_5) FrameTypeType) (= (ConditionalFrame p@@0 f_5) (ite (> p@@0 0.0) f_5 EmptyFrame)))
 :qid |predicateexhalebpl.150:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_5))
)))
(assert (forall ((Mask@@6 T@U) (o_1@@0 T@U) (f_3@@0 T@U) ) (! (let ((B@@3 (FieldTypeInv1 (type f_3@@0))))
(let ((A@@4 (FieldTypeInv0 (type f_3@@0))))
 (=> (and (and (= (type Mask@@6) (MapType1Type RefType realType)) (= (type o_1@@0) RefType)) (= (type f_3@@0) (FieldType A@@4 B@@3))) (= (HasDirectPerm Mask@@6 o_1@@0 f_3@@0) (> (U_2_real (MapType1Select Mask@@6 o_1@@0 f_3@@0)) NoPerm)))))
 :qid |predicateexhalebpl.122:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm Mask@@6 o_1@@0 f_3@@0))
)))
(assert (= (type ZeroMask) (MapType1Type RefType realType)))
(assert (forall ((o_1@@1 T@U) (f_3@@1 T@U) ) (! (let ((B@@4 (FieldTypeInv1 (type f_3@@1))))
(let ((A@@5 (FieldTypeInv0 (type f_3@@1))))
 (=> (and (= (type o_1@@1) RefType) (= (type f_3@@1) (FieldType A@@5 B@@4))) (= (U_2_real (MapType1Select ZeroMask o_1@@1 f_3@@1)) NoPerm))))
 :qid |predicateexhalebpl.95:22|
 :skolemid |13|
 :pattern ( (MapType1Select ZeroMask o_1@@1 f_3@@1))
)))
(assert (forall ((Heap@@9 T@U) (ExhaleHeap@@4 T@U) (Mask@@7 T@U) (pm_f@@1 T@U) ) (! (let ((C@@1 (FieldTypeInv0 (type pm_f@@1))))
 (=> (and (and (and (and (and (= (type Heap@@9) (MapType0Type RefType)) (= (type ExhaleHeap@@4) (MapType0Type RefType))) (= (type Mask@@7) (MapType1Type RefType realType))) (= (type pm_f@@1) (FieldType C@@1 FrameTypeType))) (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7)) (and (HasDirectPerm Mask@@7 null pm_f@@1) (IsPredicateField pm_f@@1))) (forall ((o2 T@U) (f_2@@0 T@U) ) (! (let ((B@@5 (FieldTypeInv1 (type f_2@@0))))
(let ((A@@6 (FieldTypeInv0 (type f_2@@0))))
 (=> (and (and (= (type o2) RefType) (= (type f_2@@0) (FieldType A@@6 B@@5))) (U_2_bool (MapType1Select (MapType0Select Heap@@9 null (PredicateMaskField pm_f@@1)) o2 f_2@@0))) (= (MapType0Select Heap@@9 o2 f_2@@0) (MapType0Select ExhaleHeap@@4 o2 f_2@@0)))))
 :qid |predicateexhalebpl.43:134|
 :skolemid |3|
 :pattern ( (MapType0Select ExhaleHeap@@4 o2 f_2@@0))
))))
 :qid |predicateexhalebpl.41:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (MapType0Select ExhaleHeap@@4 null pm_f@@1) (IsPredicateField pm_f@@1))
)))
(assert (forall ((Heap@@10 T@U) (ExhaleHeap@@5 T@U) (Mask@@8 T@U) (pm_f@@2 T@U) ) (! (let ((C@@2 (FieldTypeInv0 (type pm_f@@2))))
 (=> (and (and (and (and (and (= (type Heap@@10) (MapType0Type RefType)) (= (type ExhaleHeap@@5) (MapType0Type RefType))) (= (type Mask@@8) (MapType1Type RefType realType))) (= (type pm_f@@2) (FieldType C@@2 FrameTypeType))) (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@8)) (and (HasDirectPerm Mask@@8 null pm_f@@2) (IsWandField pm_f@@2))) (forall ((o2@@0 T@U) (f_2@@1 T@U) ) (! (let ((B@@6 (FieldTypeInv1 (type f_2@@1))))
(let ((A@@7 (FieldTypeInv0 (type f_2@@1))))
 (=> (and (and (= (type o2@@0) RefType) (= (type f_2@@1) (FieldType A@@7 B@@6))) (U_2_bool (MapType1Select (MapType0Select Heap@@10 null (WandMaskField pm_f@@2)) o2@@0 f_2@@1))) (= (MapType0Select Heap@@10 o2@@0 f_2@@1) (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1)))))
 :qid |predicateexhalebpl.56:129|
 :skolemid |6|
 :pattern ( (MapType0Select ExhaleHeap@@5 o2@@0 f_2@@1))
))))
 :qid |predicateexhalebpl.54:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@8) (IsWandField pm_f@@2))
)))
(assert (forall ((x_1@@7 T@U) ) (!  (=> (= (type x_1@@7) RefType) (= (getPredicateId (list x_1@@7)) 0))
 :qid |predicateexhalebpl.360:15|
 :skolemid |31|
 :pattern ( (list x_1@@7))
)))
(assert (forall ((Mask@@9 T@U) (o_1@@2 T@U) (f_3@@2 T@U) ) (! (let ((B@@7 (FieldTypeInv1 (type f_3@@2))))
(let ((A@@8 (FieldTypeInv0 (type f_3@@2))))
 (=> (and (and (and (= (type Mask@@9) (MapType1Type RefType realType)) (= (type o_1@@2) RefType)) (= (type f_3@@2) (FieldType A@@8 B@@7))) (GoodMask Mask@@9)) (and (>= (U_2_real (MapType1Select Mask@@9 o_1@@2 f_3@@2)) NoPerm) (=> (and (and (GoodMask Mask@@9) (not (IsPredicateField f_3@@2))) (not (IsWandField f_3@@2))) (<= (U_2_real (MapType1Select Mask@@9 o_1@@2 f_3@@2)) FullPerm))))))
 :qid |predicateexhalebpl.117:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (MapType1Select Mask@@9 o_1@@2 f_3@@2))
)))
(assert (forall ((Heap@@11 T@U) (Mask@@10 T@U) (x_1@@8 T@U) ) (!  (=> (and (and (and (= (type Heap@@11) (MapType0Type RefType)) (= (type Mask@@10) (MapType1Type RefType realType))) (= (type x_1@@8) RefType)) (state Heap@@11 Mask@@10)) (= (|length'| Heap@@11 x_1@@8) (|length#frame| (MapType0Select Heap@@11 null (list x_1@@8)) x_1@@8)))
 :qid |predicateexhalebpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@11 Mask@@10) (|length'| Heap@@11 x_1@@8))
 :pattern ( (state Heap@@11 Mask@@10) (|length#triggerStateless| x_1@@8) (|list#trigger| Heap@@11 (list x_1@@8)))
)))
(assert (forall ((o@@1 T@U) (f T@U) (Heap@@12 T@U) ) (!  (=> (and (and (and (= (type o@@1) RefType) (= (type f) (FieldType NormalFieldType RefType))) (= (type Heap@@12) (MapType0Type RefType))) (U_2_bool (MapType0Select Heap@@12 o@@1 $allocated))) (U_2_bool (MapType0Select Heap@@12 (MapType0Select Heap@@12 o@@1 f) $allocated)))
 :qid |predicateexhalebpl.20:15|
 :skolemid |0|
 :pattern ( (MapType0Select Heap@@12 o@@1 f))
)))
(assert (forall ((x_1@@9 T@U) ) (!  (=> (= (type x_1@@9) RefType) (= (PredicateMaskField (list x_1@@9)) (|list#sm| x_1@@9)))
 :qid |predicateexhalebpl.352:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField (list x_1@@9)))
)))
(assert (forall ((Heap@@13 T@U) (o@@2 T@U) (f_2@@2 T@U) (v T@U) ) (! (let ((B@@8 (type v)))
(let ((A@@9 (FieldTypeInv0 (type f_2@@2))))
 (=> (and (and (= (type Heap@@13) (MapType0Type RefType)) (= (type o@@2) RefType)) (= (type f_2@@2) (FieldType A@@9 B@@8))) (succHeap Heap@@13 (MapType0Store Heap@@13 o@@2 f_2@@2 v)))))
 :qid |predicateexhalebpl.67:22|
 :skolemid |9|
 :pattern ( (MapType0Store Heap@@13 o@@2 f_2@@2 v))
)))
(assert (= (type ZeroPMask) (MapType1Type RefType boolType)))
(assert (forall ((o_1@@3 T@U) (f_3@@3 T@U) ) (! (let ((B@@9 (FieldTypeInv1 (type f_3@@3))))
(let ((A@@10 (FieldTypeInv0 (type f_3@@3))))
 (=> (and (= (type o_1@@3) RefType) (= (type f_3@@3) (FieldType A@@10 B@@9))) (not (U_2_bool (MapType1Select ZeroPMask o_1@@3 f_3@@3))))))
 :qid |predicateexhalebpl.101:22|
 :skolemid |14|
 :pattern ( (MapType1Select ZeroPMask o_1@@3 f_3@@3))
)))
(assert (forall ((p@@1 T@U) (v_1@@0 T@U) (q T@U) (w@@0 T@U) (r T@U) (u T@U) ) (! (let ((C@@3 (FieldTypeInv0 (type r))))
(let ((B@@10 (FieldTypeInv0 (type q))))
(let ((A@@11 (FieldTypeInv0 (type p@@1))))
 (=> (and (and (and (and (and (and (= (type p@@1) (FieldType A@@11 FrameTypeType)) (= (type v_1@@0) FrameTypeType)) (= (type q) (FieldType B@@10 FrameTypeType))) (= (type w@@0) FrameTypeType)) (= (type r) (FieldType C@@3 FrameTypeType))) (= (type u) FrameTypeType)) (and (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r u))) (InsidePredicate p@@1 v_1@@0 r u)))))
 :qid |predicateexhalebpl.157:25|
 :skolemid |20|
 :pattern ( (InsidePredicate p@@1 v_1@@0 q w@@0) (InsidePredicate q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@U)
(declare-fun x_1@@10 () T@U)
(declare-fun perm@5 () Real)
(declare-fun Mask@10 () T@U)
(declare-fun perm@10 () Real)
(declare-fun Mask@20 () T@U)
(declare-fun perm@12 () Real)
(declare-fun Mask@22 () T@U)
(declare-fun ExhaleHeap@0 () T@U)
(declare-fun Mask@21 () T@U)
(declare-fun perm@11 () Real)
(declare-fun Heap@17 () T@U)
(declare-fun Heap@15 () T@U)
(declare-fun newPMask@1 () T@U)
(declare-fun Heap@16 () T@U)
(declare-fun Heap@14 () T@U)
(declare-fun Heap@13 () T@U)
(declare-fun Heap@10 () T@U)
(declare-fun Heap@11 () T@U)
(declare-fun Heap@12 () T@U)
(declare-fun freshVersion@1 () T@U)
(declare-fun Mask@19 () T@U)
(declare-fun CombineFrames (T@U T@U) T@U)
(declare-fun FrameFragment (T@U) T@U)
(declare-fun Mask@18 () T@U)
(declare-fun Mask@17 () T@U)
(declare-fun perm@9 () Real)
(declare-fun Mask@16 () T@U)
(declare-fun perm@8 () Real)
(declare-fun Mask@15 () T@U)
(declare-fun perm@7 () Real)
(declare-fun Mask@13 () T@U)
(declare-fun Mask@14 () T@U)
(declare-fun Mask@12 () T@U)
(declare-fun Mask@11 () T@U)
(declare-fun Heap@8 () T@U)
(declare-fun Heap@9 () T@U)
(declare-fun newVersion@1 () T@U)
(declare-fun perm@6 () Real)
(declare-fun Heap@6 () T@U)
(declare-fun newPMask@0 () T@U)
(declare-fun Heap@7 () T@U)
(declare-fun Heap@5 () T@U)
(declare-fun Heap@4 () T@U)
(declare-fun Heap@1 () T@U)
(declare-fun Heap@2 () T@U)
(declare-fun Heap@3 () T@U)
(declare-fun freshVersion@0 () T@U)
(declare-fun Mask@9 () T@U)
(declare-fun Mask@8 () T@U)
(declare-fun Mask@7 () T@U)
(declare-fun perm@4 () Real)
(declare-fun Mask@6 () T@U)
(declare-fun perm@3 () Real)
(declare-fun Mask@5 () T@U)
(declare-fun perm@2 () Real)
(declare-fun Mask@3 () T@U)
(declare-fun Mask@4 () T@U)
(declare-fun Mask@2 () T@U)
(declare-fun Mask@1 () T@U)
(declare-fun Heap@@14 () T@U)
(declare-fun Heap@0 () T@U)
(declare-fun newVersion@0 () T@U)
(declare-fun perm@1 () Real)
(declare-fun Mask@@11 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type ExhaleHeap@0) (MapType0Type RefType)) (= (type Mask@22) (MapType1Type RefType realType))) (= (type x_1@@10) RefType)) (= (type Mask@21) (MapType1Type RefType realType))) (= (type Mask@20) (MapType1Type RefType realType))) (= (type Heap@17) (MapType0Type RefType))) (= (type Heap@15) (MapType0Type RefType))) (= (type newPMask@1) (MapType1Type RefType boolType))) (= (type Heap@16) (MapType0Type RefType))) (= (type Heap@14) (MapType0Type RefType))) (= (type Heap@13) (MapType0Type RefType))) (= (type Heap@11) (MapType0Type RefType))) (= (type Heap@10) (MapType0Type RefType))) (= (type Heap@12) (MapType0Type RefType))) (= (type freshVersion@1) FrameTypeType)) (= (type Mask@19) (MapType1Type RefType realType))) (forall ((arg0@@29 T@U) (arg1@@10 T@U) ) (! (= (type (CombineFrames arg0@@29 arg1@@10)) FrameTypeType)
 :qid |funType:CombineFrames|
 :pattern ( (CombineFrames arg0@@29 arg1@@10))
))) (forall ((arg0@@30 T@U) ) (! (= (type (FrameFragment arg0@@30)) FrameTypeType)
 :qid |funType:FrameFragment|
 :pattern ( (FrameFragment arg0@@30))
))) (= (type Mask@17) (MapType1Type RefType realType))) (= (type Mask@18) (MapType1Type RefType realType))) (= (type Mask@16) (MapType1Type RefType realType))) (= (type Mask@15) (MapType1Type RefType realType))) (= (type Mask@14) (MapType1Type RefType realType))) (= (type Mask@13) (MapType1Type RefType realType))) (= (type Mask@12) (MapType1Type RefType realType))) (= (type Mask@11) (MapType1Type RefType realType))) (= (type Heap@9) (MapType0Type RefType))) (= (type Heap@8) (MapType0Type RefType))) (= (type newVersion@1) FrameTypeType)) (= (type Mask@10) (MapType1Type RefType realType))) (= (type Heap@6) (MapType0Type RefType))) (= (type newPMask@0) (MapType1Type RefType boolType))) (= (type Heap@7) (MapType0Type RefType))) (= (type Heap@5) (MapType0Type RefType))) (= (type Heap@4) (MapType0Type RefType))) (= (type Heap@2) (MapType0Type RefType))) (= (type Heap@1) (MapType0Type RefType))) (= (type Heap@3) (MapType0Type RefType))) (= (type freshVersion@0) FrameTypeType)) (= (type Mask@9) (MapType1Type RefType realType))) (= (type Mask@7) (MapType1Type RefType realType))) (= (type Mask@8) (MapType1Type RefType realType))) (= (type Mask@6) (MapType1Type RefType realType))) (= (type Mask@5) (MapType1Type RefType realType))) (= (type Mask@4) (MapType1Type RefType realType))) (= (type Mask@3) (MapType1Type RefType realType))) (= (type Mask@2) (MapType1Type RefType realType))) (= (type Mask@1) (MapType1Type RefType realType))) (= (type Heap@0) (MapType0Type RefType))) (= (type Heap@@14) (MapType0Type RefType))) (= (type newVersion@0) FrameTypeType)) (= (type Mask@0) (MapType1Type RefType realType))) (= (type Mask@@11) (MapType1Type RefType realType))))
(set-info :boogie-vc-id test1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 107) (let ((anon3_correct true))
(let ((anon64_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 104) 101)) anon3_correct)))
(let ((anon64_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 102) (- 0 103)) (<= perm@0 (U_2_real (MapType1Select Mask@0 null (list x_1@@10))))) (=> (<= perm@0 (U_2_real (MapType1Select Mask@0 null (list x_1@@10)))) (=> (= (ControlFlow 0 102) 101) anon3_correct))))))
(let ((anon63_Then_correct  (=> (= perm@0 (+ NoPerm FullPerm)) (and (=> (= (ControlFlow 0 105) 102) anon64_Then_correct) (=> (= (ControlFlow 0 105) 104) anon64_Else_correct)))))
(let ((anon29_correct true))
(let ((anon77_Else_correct  (=> (and (= perm@5 NoPerm) (= (ControlFlow 0 61) 58)) anon29_correct)))
(let ((anon77_Then_correct  (=> (not (= perm@5 NoPerm)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (<= perm@5 (U_2_real (MapType1Select Mask@10 null (list x_1@@10))))) (=> (<= perm@5 (U_2_real (MapType1Select Mask@10 null (list x_1@@10)))) (=> (= (ControlFlow 0 59) 58) anon29_correct))))))
(let ((anon76_Then_correct  (=> (= perm@5 (+ NoPerm FullPerm)) (and (=> (= (ControlFlow 0 62) 59) anon77_Then_correct) (=> (= (ControlFlow 0 62) 61) anon77_Else_correct)))))
(let ((anon55_correct true))
(let ((anon90_Else_correct  (=> (and (= perm@10 NoPerm) (= (ControlFlow 0 17) 14)) anon55_correct)))
(let ((anon90_Then_correct  (=> (not (= perm@10 NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= perm@10 (U_2_real (MapType1Select Mask@20 null (list x_1@@10))))) (=> (<= perm@10 (U_2_real (MapType1Select Mask@20 null (list x_1@@10)))) (=> (= (ControlFlow 0 15) 14) anon55_correct))))))
(let ((anon89_Then_correct  (=> (= perm@10 (+ NoPerm FullPerm)) (and (=> (= (ControlFlow 0 18) 15) anon90_Then_correct) (=> (= (ControlFlow 0 18) 17) anon90_Else_correct)))))
(let ((anon61_correct true))
(let ((anon93_Else_correct  (=> (and (= perm@12 NoPerm) (= (ControlFlow 0 6) 3)) anon61_correct)))
(let ((anon93_Then_correct  (=> (not (= perm@12 NoPerm)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= perm@12 (U_2_real (MapType1Select Mask@22 null (list x_1@@10))))) (=> (<= perm@12 (U_2_real (MapType1Select Mask@22 null (list x_1@@10)))) (=> (= (ControlFlow 0 4) 3) anon61_correct))))))
(let ((anon92_Then_correct  (=> (= perm@12 (+ NoPerm FullPerm)) (and (=> (= (ControlFlow 0 7) 4) anon93_Then_correct) (=> (= (ControlFlow 0 7) 6) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (state ExhaleHeap@0 Mask@22) (= (ControlFlow 0 2) (- 0 1))) (= (length ExhaleHeap@0 x_1@@10) 7))))
(let ((anon58_correct  (=> (= Mask@21 (MapType1Store Mask@20 null (list x_1@@10) (real_2_U (- (U_2_real (MapType1Select Mask@20 null (list x_1@@10))) perm@11)))) (=> (and (IdenticalOnKnownLocations Heap@17 ExhaleHeap@0 Mask@21) (state ExhaleHeap@0 Mask@21)) (=> (and (and (= Mask@22 (MapType1Store Mask@21 null (list x_1@@10) (real_2_U (+ (U_2_real (MapType1Select Mask@21 null (list x_1@@10))) FullPerm)))) (state ExhaleHeap@0 Mask@22)) (and (state ExhaleHeap@0 Mask@22) (state ExhaleHeap@0 Mask@22))) (and (=> (= (ControlFlow 0 8) 7) anon92_Then_correct) (=> (= (ControlFlow 0 8) 2) anon92_Else_correct)))))))
(let ((anon91_Else_correct  (=> (and (= perm@11 NoPerm) (= (ControlFlow 0 11) 8)) anon58_correct)))
(let ((anon91_Then_correct  (=> (not (= perm@11 NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= perm@11 (U_2_real (MapType1Select Mask@20 null (list x_1@@10))))) (=> (<= perm@11 (U_2_real (MapType1Select Mask@20 null (list x_1@@10)))) (=> (= (ControlFlow 0 9) 8) anon58_correct))))))
(let ((anon89_Else_correct  (=> (state Heap@17 Mask@20) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (length Heap@17 x_1@@10) 7)) (=> (= (length Heap@17 x_1@@10) 7) (=> (and (state Heap@17 Mask@20) (= perm@11 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 12) 9) anon91_Then_correct) (=> (= (ControlFlow 0 12) 11) anon91_Else_correct))))))))
(let ((anon52_correct  (=> (and (state Heap@17 Mask@20) (state Heap@17 Mask@20)) (and (=> (= (ControlFlow 0 19) 18) anon89_Then_correct) (=> (= (ControlFlow 0 19) 12) anon89_Else_correct)))))
(let ((anon88_Else_correct  (=> (= (MapType0Select Heap@15 x_1@@10 next) null) (=> (and (= Heap@17 Heap@15) (= (ControlFlow 0 21) 19)) anon52_correct))))
(let ((anon88_Then_correct  (=> (not (= (MapType0Select Heap@15 x_1@@10 next) null)) (=> (and (and (forall ((o_5 T@U) (f_10 T@U) ) (! (let ((B@@11 (FieldTypeInv1 (type f_10))))
(let ((A@@12 (FieldTypeInv0 (type f_10))))
 (=> (and (and (= (type o_5) RefType) (= (type f_10) (FieldType A@@12 B@@11))) (or (U_2_bool (MapType1Select (MapType0Select Heap@15 null (|list#sm| x_1@@10)) o_5 f_10)) (U_2_bool (MapType1Select (MapType0Select Heap@15 null (|list#sm| (MapType0Select Heap@15 x_1@@10 next))) o_5 f_10)))) (U_2_bool (MapType1Select newPMask@1 o_5 f_10)))))
 :qid |predicateexhalebpl.684:29|
 :skolemid |36|
 :pattern ( (MapType1Select newPMask@1 o_5 f_10))
)) (= Heap@16 (MapType0Store Heap@15 null (|list#sm| x_1@@10) newPMask@1))) (and (= Heap@17 Heap@16) (= (ControlFlow 0 20) 19))) anon52_correct))))
(let ((anon50_correct  (=> (and (= Heap@14 (MapType0Store Heap@13 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@13 null (|list#sm| x_1@@10)) x_1@@10 f_6 (bool_2_U true)))) (= Heap@15 (MapType0Store Heap@14 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@14 null (|list#sm| x_1@@10)) x_1@@10 next (bool_2_U true))))) (and (=> (= (ControlFlow 0 22) 20) anon88_Then_correct) (=> (= (ControlFlow 0 22) 21) anon88_Else_correct)))))
(let ((anon87_Else_correct  (=> (HasDirectPerm Mask@20 null (list x_1@@10)) (=> (and (= Heap@13 Heap@10) (= (ControlFlow 0 24) 22)) anon50_correct))))
(let ((anon87_Then_correct  (=> (not (HasDirectPerm Mask@20 null (list x_1@@10))) (=> (and (and (= Heap@11 (MapType0Store Heap@10 null (|list#sm| x_1@@10) ZeroPMask)) (= Heap@12 (MapType0Store Heap@11 null (list x_1@@10) freshVersion@1))) (and (= Heap@13 Heap@12) (= (ControlFlow 0 23) 22))) anon50_correct))))
(let ((anon48_correct  (=> (= Mask@20 (MapType1Store Mask@19 null (list x_1@@10) (real_2_U (+ (U_2_real (MapType1Select Mask@19 null (list x_1@@10))) FullPerm)))) (=> (and (and (state Heap@10 Mask@20) (state Heap@10 Mask@20)) (and (|list#trigger| Heap@10 (list x_1@@10)) (= (MapType0Select Heap@10 null (list x_1@@10)) (CombineFrames (FrameFragment (MapType0Select Heap@10 x_1@@10 f_6)) (CombineFrames (FrameFragment (MapType0Select Heap@10 x_1@@10 next)) (FrameFragment (ite (not (= (MapType0Select Heap@10 x_1@@10 next) null)) (MapType0Select Heap@10 null (list (MapType0Select Heap@10 x_1@@10 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 25) 23) anon87_Then_correct) (=> (= (ControlFlow 0 25) 24) anon87_Else_correct))))))
(let ((anon86_Else_correct  (=> (and (= (MapType0Select Heap@10 x_1@@10 next) null) (= (ControlFlow 0 27) 25)) anon48_correct)))
(let ((anon86_Then_correct  (=> (not (= (MapType0Select Heap@10 x_1@@10 next) null)) (=> (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@10 null (list x_1@@10)) (list (MapType0Select Heap@10 x_1@@10 next)) (MapType0Select Heap@10 null (list (MapType0Select Heap@10 x_1@@10 next)))) (= (ControlFlow 0 26) 25)) anon48_correct))))
(let ((anon85_Else_correct  (=> (= (MapType0Select Heap@10 x_1@@10 next) null) (and (=> (= (ControlFlow 0 29) 26) anon86_Then_correct) (=> (= (ControlFlow 0 29) 27) anon86_Else_correct)))))
(let ((anon85_Then_correct  (=> (and (not (= (MapType0Select Heap@10 x_1@@10 next) null)) (InsidePredicate (list x_1@@10) (MapType0Select Heap@10 null (list x_1@@10)) (list (MapType0Select Heap@10 x_1@@10 next)) (MapType0Select Heap@10 null (list (MapType0Select Heap@10 x_1@@10 next))))) (and (=> (= (ControlFlow 0 28) 26) anon86_Then_correct) (=> (= (ControlFlow 0 28) 27) anon86_Else_correct)))))
(let ((anon43_correct  (=> (= Mask@18 (MapType1Store Mask@17 null (list (MapType0Select Heap@10 x_1@@10 next)) (real_2_U (- (U_2_real (MapType1Select Mask@17 null (list (MapType0Select Heap@10 x_1@@10 next)))) perm@9)))) (=> (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@10 null (list x_1@@10)) (list (MapType0Select Heap@10 x_1@@10 next)) (MapType0Select Heap@10 null (list (MapType0Select Heap@10 x_1@@10 next)))) (= Mask@19 Mask@18)) (and (=> (= (ControlFlow 0 31) 28) anon85_Then_correct) (=> (= (ControlFlow 0 31) 29) anon85_Else_correct))))))
(let ((anon84_Else_correct  (=> (and (= perm@9 NoPerm) (= (ControlFlow 0 34) 31)) anon43_correct)))
(let ((anon84_Then_correct  (=> (not (= perm@9 NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= perm@9 (U_2_real (MapType1Select Mask@17 null (list (MapType0Select Heap@10 x_1@@10 next)))))) (=> (<= perm@9 (U_2_real (MapType1Select Mask@17 null (list (MapType0Select Heap@10 x_1@@10 next))))) (=> (= (ControlFlow 0 32) 31) anon43_correct))))))
(let ((anon83_Then_correct  (=> (and (not (= (MapType0Select Heap@10 x_1@@10 next) null)) (= perm@9 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 35) 32) anon84_Then_correct) (=> (= (ControlFlow 0 35) 34) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (= (MapType0Select Heap@10 x_1@@10 next) null) (= Mask@19 Mask@17)) (and (=> (= (ControlFlow 0 30) 28) anon85_Then_correct) (=> (= (ControlFlow 0 30) 29) anon85_Else_correct)))))
(let ((anon40_correct  (=> (= Mask@17 (MapType1Store Mask@16 x_1@@10 next (real_2_U (- (U_2_real (MapType1Select Mask@16 x_1@@10 next)) perm@8)))) (and (=> (= (ControlFlow 0 36) 35) anon83_Then_correct) (=> (= (ControlFlow 0 36) 30) anon83_Else_correct)))))
(let ((anon82_Else_correct  (=> (and (= perm@8 NoPerm) (= (ControlFlow 0 39) 36)) anon40_correct)))
(let ((anon82_Then_correct  (=> (not (= perm@8 NoPerm)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= perm@8 (U_2_real (MapType1Select Mask@16 x_1@@10 next)))) (=> (<= perm@8 (U_2_real (MapType1Select Mask@16 x_1@@10 next))) (=> (= (ControlFlow 0 37) 36) anon40_correct))))))
(let ((anon38_correct  (=> (and (= Mask@16 (MapType1Store Mask@15 x_1@@10 f_6 (real_2_U (- (U_2_real (MapType1Select Mask@15 x_1@@10 f_6)) perm@7)))) (= perm@8 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 40) 37) anon82_Then_correct) (=> (= (ControlFlow 0 40) 39) anon82_Else_correct)))))
(let ((anon81_Else_correct  (=> (and (= perm@7 NoPerm) (= (ControlFlow 0 43) 40)) anon38_correct)))
(let ((anon81_Then_correct  (=> (not (= perm@7 NoPerm)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= perm@7 (U_2_real (MapType1Select Mask@15 x_1@@10 f_6)))) (=> (<= perm@7 (U_2_real (MapType1Select Mask@15 x_1@@10 f_6))) (=> (= (ControlFlow 0 41) 40) anon38_correct))))))
(let ((anon36_correct  (=> (and (state Heap@10 Mask@15) (state Heap@10 Mask@15)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (HasDirectPerm Mask@15 x_1@@10 f_6)) (=> (HasDirectPerm Mask@15 x_1@@10 f_6) (=> (state Heap@10 Mask@15) (and (=> (= (ControlFlow 0 44) (- 0 45)) (= (U_2_int (MapType0Select Heap@10 x_1@@10 f_6)) 5)) (=> (= (U_2_int (MapType0Select Heap@10 x_1@@10 f_6)) 5) (=> (and (state Heap@10 Mask@15) (= perm@7 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 44) 41) anon81_Then_correct) (=> (= (ControlFlow 0 44) 43) anon81_Else_correct)))))))))))
(let ((anon80_Else_correct  (=> (= (MapType0Select Heap@10 x_1@@10 next) null) (=> (and (= Mask@15 Mask@13) (= (ControlFlow 0 48) 44)) anon36_correct))))
(let ((anon80_Then_correct  (=> (and (not (= (MapType0Select Heap@10 x_1@@10 next) null)) (= Mask@14 (MapType1Store Mask@13 null (list (MapType0Select Heap@10 x_1@@10 next)) (real_2_U (+ (U_2_real (MapType1Select Mask@13 null (list (MapType0Select Heap@10 x_1@@10 next)))) FullPerm))))) (=> (and (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@10 null (list x_1@@10)) (list (MapType0Select Heap@10 x_1@@10 next)) (MapType0Select Heap@10 null (list (MapType0Select Heap@10 x_1@@10 next)))) (state Heap@10 Mask@14)) (and (= Mask@15 Mask@14) (= (ControlFlow 0 47) 44))) anon36_correct))))
(let ((anon34_correct  (=> (and (not (= x_1@@10 null)) (= Mask@12 (MapType1Store Mask@11 x_1@@10 f_6 (real_2_U (+ (U_2_real (MapType1Select Mask@11 x_1@@10 f_6)) FullPerm))))) (=> (and (and (state Heap@10 Mask@12) (not (= x_1@@10 null))) (and (= Mask@13 (MapType1Store Mask@12 x_1@@10 next (real_2_U (+ (U_2_real (MapType1Select Mask@12 x_1@@10 next)) FullPerm)))) (state Heap@10 Mask@13))) (and (=> (= (ControlFlow 0 49) 47) anon80_Then_correct) (=> (= (ControlFlow 0 49) 48) anon80_Else_correct))))))
(let ((anon79_Else_correct  (=> (HasDirectPerm Mask@11 null (list x_1@@10)) (=> (and (= Heap@10 Heap@8) (= (ControlFlow 0 51) 49)) anon34_correct))))
(let ((anon79_Then_correct  (=> (and (and (not (HasDirectPerm Mask@11 null (list x_1@@10))) (= Heap@9 (MapType0Store Heap@8 null (list x_1@@10) newVersion@1))) (and (= Heap@10 Heap@9) (= (ControlFlow 0 50) 49))) anon34_correct)))
(let ((anon32_correct  (=> (= Mask@11 (MapType1Store Mask@10 null (list x_1@@10) (real_2_U (- (U_2_real (MapType1Select Mask@10 null (list x_1@@10))) perm@6)))) (and (=> (= (ControlFlow 0 52) 50) anon79_Then_correct) (=> (= (ControlFlow 0 52) 51) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (= perm@6 NoPerm) (= (ControlFlow 0 55) 52)) anon32_correct)))
(let ((anon78_Then_correct  (=> (not (= perm@6 NoPerm)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= perm@6 (U_2_real (MapType1Select Mask@10 null (list x_1@@10))))) (=> (<= perm@6 (U_2_real (MapType1Select Mask@10 null (list x_1@@10)))) (=> (= (ControlFlow 0 53) 52) anon32_correct))))))
(let ((anon76_Else_correct  (=> (state Heap@8 Mask@10) (and (=> (= (ControlFlow 0 56) (- 0 57)) (= (length Heap@8 x_1@@10) 7)) (=> (= (length Heap@8 x_1@@10) 7) (=> (and (and (state Heap@8 Mask@10) (|list#trigger| Heap@8 (list x_1@@10))) (and (= (MapType0Select Heap@8 null (list x_1@@10)) (CombineFrames (FrameFragment (MapType0Select Heap@8 x_1@@10 f_6)) (CombineFrames (FrameFragment (MapType0Select Heap@8 x_1@@10 next)) (FrameFragment (ite (not (= (MapType0Select Heap@8 x_1@@10 next) null)) (MapType0Select Heap@8 null (list (MapType0Select Heap@8 x_1@@10 next))) EmptyFrame))))) (= perm@6 (+ NoPerm FullPerm)))) (and (=> (= (ControlFlow 0 56) 53) anon78_Then_correct) (=> (= (ControlFlow 0 56) 55) anon78_Else_correct))))))))
(let ((anon26_correct  (=> (and (state Heap@8 Mask@10) (state Heap@8 Mask@10)) (and (=> (= (ControlFlow 0 63) 62) anon76_Then_correct) (=> (= (ControlFlow 0 63) 56) anon76_Else_correct)))))
(let ((anon75_Else_correct  (=> (= (MapType0Select Heap@6 x_1@@10 next) null) (=> (and (= Heap@8 Heap@6) (= (ControlFlow 0 65) 63)) anon26_correct))))
(let ((anon75_Then_correct  (=> (not (= (MapType0Select Heap@6 x_1@@10 next) null)) (=> (and (and (forall ((o_4 T@U) (f_9 T@U) ) (! (let ((B@@12 (FieldTypeInv1 (type f_9))))
(let ((A@@13 (FieldTypeInv0 (type f_9))))
 (=> (and (and (= (type o_4) RefType) (= (type f_9) (FieldType A@@13 B@@12))) (or (U_2_bool (MapType1Select (MapType0Select Heap@6 null (|list#sm| x_1@@10)) o_4 f_9)) (U_2_bool (MapType1Select (MapType0Select Heap@6 null (|list#sm| (MapType0Select Heap@6 x_1@@10 next))) o_4 f_9)))) (U_2_bool (MapType1Select newPMask@0 o_4 f_9)))))
 :qid |predicateexhalebpl.547:29|
 :skolemid |35|
 :pattern ( (MapType1Select newPMask@0 o_4 f_9))
)) (= Heap@7 (MapType0Store Heap@6 null (|list#sm| x_1@@10) newPMask@0))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 64) 63))) anon26_correct))))
(let ((anon24_correct  (=> (and (= Heap@5 (MapType0Store Heap@4 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@4 null (|list#sm| x_1@@10)) x_1@@10 f_6 (bool_2_U true)))) (= Heap@6 (MapType0Store Heap@5 null (|list#sm| x_1@@10) (MapType1Store (MapType0Select Heap@5 null (|list#sm| x_1@@10)) x_1@@10 next (bool_2_U true))))) (and (=> (= (ControlFlow 0 66) 64) anon75_Then_correct) (=> (= (ControlFlow 0 66) 65) anon75_Else_correct)))))
(let ((anon74_Else_correct  (=> (HasDirectPerm Mask@10 null (list x_1@@10)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 68) 66)) anon24_correct))))
(let ((anon74_Then_correct  (=> (not (HasDirectPerm Mask@10 null (list x_1@@10))) (=> (and (and (= Heap@2 (MapType0Store Heap@1 null (|list#sm| x_1@@10) ZeroPMask)) (= Heap@3 (MapType0Store Heap@2 null (list x_1@@10) freshVersion@0))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 67) 66))) anon24_correct))))
(let ((anon22_correct  (=> (= Mask@10 (MapType1Store Mask@9 null (list x_1@@10) (real_2_U (+ (U_2_real (MapType1Select Mask@9 null (list x_1@@10))) FullPerm)))) (=> (and (and (state Heap@1 Mask@10) (state Heap@1 Mask@10)) (and (|list#trigger| Heap@1 (list x_1@@10)) (= (MapType0Select Heap@1 null (list x_1@@10)) (CombineFrames (FrameFragment (MapType0Select Heap@1 x_1@@10 f_6)) (CombineFrames (FrameFragment (MapType0Select Heap@1 x_1@@10 next)) (FrameFragment (ite (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (MapType0Select Heap@1 null (list (MapType0Select Heap@1 x_1@@10 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 69) 67) anon74_Then_correct) (=> (= (ControlFlow 0 69) 68) anon74_Else_correct))))))
(let ((anon73_Else_correct  (=> (and (= (MapType0Select Heap@1 x_1@@10 next) null) (= (ControlFlow 0 71) 69)) anon22_correct)))
(let ((anon73_Then_correct  (=> (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (=> (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@1 null (list x_1@@10)) (list (MapType0Select Heap@1 x_1@@10 next)) (MapType0Select Heap@1 null (list (MapType0Select Heap@1 x_1@@10 next)))) (= (ControlFlow 0 70) 69)) anon22_correct))))
(let ((anon72_Else_correct  (=> (= (MapType0Select Heap@1 x_1@@10 next) null) (and (=> (= (ControlFlow 0 73) 70) anon73_Then_correct) (=> (= (ControlFlow 0 73) 71) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (and (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (InsidePredicate (list x_1@@10) (MapType0Select Heap@1 null (list x_1@@10)) (list (MapType0Select Heap@1 x_1@@10 next)) (MapType0Select Heap@1 null (list (MapType0Select Heap@1 x_1@@10 next))))) (and (=> (= (ControlFlow 0 72) 70) anon73_Then_correct) (=> (= (ControlFlow 0 72) 71) anon73_Else_correct)))))
(let ((anon17_correct  (=> (= Mask@8 (MapType1Store Mask@7 null (list (MapType0Select Heap@1 x_1@@10 next)) (real_2_U (- (U_2_real (MapType1Select Mask@7 null (list (MapType0Select Heap@1 x_1@@10 next)))) perm@4)))) (=> (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@1 null (list x_1@@10)) (list (MapType0Select Heap@1 x_1@@10 next)) (MapType0Select Heap@1 null (list (MapType0Select Heap@1 x_1@@10 next)))) (= Mask@9 Mask@8)) (and (=> (= (ControlFlow 0 75) 72) anon72_Then_correct) (=> (= (ControlFlow 0 75) 73) anon72_Else_correct))))))
(let ((anon71_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 78) 75)) anon17_correct)))
(let ((anon71_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (<= perm@4 (U_2_real (MapType1Select Mask@7 null (list (MapType0Select Heap@1 x_1@@10 next)))))) (=> (<= perm@4 (U_2_real (MapType1Select Mask@7 null (list (MapType0Select Heap@1 x_1@@10 next))))) (=> (= (ControlFlow 0 76) 75) anon17_correct))))))
(let ((anon70_Then_correct  (=> (and (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (= perm@4 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 79) 76) anon71_Then_correct) (=> (= (ControlFlow 0 79) 78) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (= (MapType0Select Heap@1 x_1@@10 next) null) (= Mask@9 Mask@7)) (and (=> (= (ControlFlow 0 74) 72) anon72_Then_correct) (=> (= (ControlFlow 0 74) 73) anon72_Else_correct)))))
(let ((anon14_correct  (=> (= Mask@7 (MapType1Store Mask@6 x_1@@10 next (real_2_U (- (U_2_real (MapType1Select Mask@6 x_1@@10 next)) perm@3)))) (and (=> (= (ControlFlow 0 80) 79) anon70_Then_correct) (=> (= (ControlFlow 0 80) 74) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (= perm@3 NoPerm) (= (ControlFlow 0 83) 80)) anon14_correct)))
(let ((anon69_Then_correct  (=> (not (= perm@3 NoPerm)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (<= perm@3 (U_2_real (MapType1Select Mask@6 x_1@@10 next)))) (=> (<= perm@3 (U_2_real (MapType1Select Mask@6 x_1@@10 next))) (=> (= (ControlFlow 0 81) 80) anon14_correct))))))
(let ((anon12_correct  (=> (and (= Mask@6 (MapType1Store Mask@5 x_1@@10 f_6 (real_2_U (- (U_2_real (MapType1Select Mask@5 x_1@@10 f_6)) perm@2)))) (= perm@3 (+ NoPerm FullPerm))) (and (=> (= (ControlFlow 0 84) 81) anon69_Then_correct) (=> (= (ControlFlow 0 84) 83) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 87) 84)) anon12_correct)))
(let ((anon68_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 85) (- 0 86)) (<= perm@2 (U_2_real (MapType1Select Mask@5 x_1@@10 f_6)))) (=> (<= perm@2 (U_2_real (MapType1Select Mask@5 x_1@@10 f_6))) (=> (= (ControlFlow 0 85) 84) anon12_correct))))))
(let ((anon10_correct  (=> (and (state Heap@1 Mask@5) (state Heap@1 Mask@5)) (and (=> (= (ControlFlow 0 88) (- 0 90)) (HasDirectPerm Mask@5 x_1@@10 next)) (=> (HasDirectPerm Mask@5 x_1@@10 next) (=> (state Heap@1 Mask@5) (=> (and (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (state Heap@1 Mask@5)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (HasDirectPerm Mask@5 x_1@@10 f_6)) (=> (HasDirectPerm Mask@5 x_1@@10 f_6) (=> (state Heap@1 Mask@5) (=> (and (and (= (U_2_int (MapType0Select Heap@1 x_1@@10 f_6)) 5) (state Heap@1 Mask@5)) (and (state Heap@1 Mask@5) (= perm@2 (+ NoPerm FullPerm)))) (and (=> (= (ControlFlow 0 88) 85) anon68_Then_correct) (=> (= (ControlFlow 0 88) 87) anon68_Else_correct)))))))))))))
(let ((anon67_Else_correct  (=> (= (MapType0Select Heap@1 x_1@@10 next) null) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 92) 88)) anon10_correct))))
(let ((anon67_Then_correct  (=> (and (not (= (MapType0Select Heap@1 x_1@@10 next) null)) (= Mask@4 (MapType1Store Mask@3 null (list (MapType0Select Heap@1 x_1@@10 next)) (real_2_U (+ (U_2_real (MapType1Select Mask@3 null (list (MapType0Select Heap@1 x_1@@10 next)))) FullPerm))))) (=> (and (and (InsidePredicate (list x_1@@10) (MapType0Select Heap@1 null (list x_1@@10)) (list (MapType0Select Heap@1 x_1@@10 next)) (MapType0Select Heap@1 null (list (MapType0Select Heap@1 x_1@@10 next)))) (state Heap@1 Mask@4)) (and (= Mask@5 Mask@4) (= (ControlFlow 0 91) 88))) anon10_correct))))
(let ((anon8_correct  (=> (and (not (= x_1@@10 null)) (= Mask@2 (MapType1Store Mask@1 x_1@@10 f_6 (real_2_U (+ (U_2_real (MapType1Select Mask@1 x_1@@10 f_6)) FullPerm))))) (=> (and (and (state Heap@1 Mask@2) (not (= x_1@@10 null))) (and (= Mask@3 (MapType1Store Mask@2 x_1@@10 next (real_2_U (+ (U_2_real (MapType1Select Mask@2 x_1@@10 next)) FullPerm)))) (state Heap@1 Mask@3))) (and (=> (= (ControlFlow 0 93) 91) anon67_Then_correct) (=> (= (ControlFlow 0 93) 92) anon67_Else_correct))))))
(let ((anon66_Else_correct  (=> (HasDirectPerm Mask@1 null (list x_1@@10)) (=> (and (= Heap@1 Heap@@14) (= (ControlFlow 0 95) 93)) anon8_correct))))
(let ((anon66_Then_correct  (=> (and (and (not (HasDirectPerm Mask@1 null (list x_1@@10))) (= Heap@0 (MapType0Store Heap@@14 null (list x_1@@10) newVersion@0))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 94) 93))) anon8_correct)))
(let ((anon6_correct  (=> (= Mask@1 (MapType1Store Mask@0 null (list x_1@@10) (real_2_U (- (U_2_real (MapType1Select Mask@0 null (list x_1@@10))) perm@1)))) (and (=> (= (ControlFlow 0 96) 94) anon66_Then_correct) (=> (= (ControlFlow 0 96) 95) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 99) 96)) anon6_correct)))
(let ((anon65_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 97) (- 0 98)) (<= perm@1 (U_2_real (MapType1Select Mask@0 null (list x_1@@10))))) (=> (<= perm@1 (U_2_real (MapType1Select Mask@0 null (list x_1@@10)))) (=> (= (ControlFlow 0 97) 96) anon6_correct))))))
(let ((anon63_Else_correct  (=> (and (and (and (state Heap@@14 Mask@0) (state Heap@@14 Mask@0)) (and (= (length Heap@@14 x_1@@10) 7) (state Heap@@14 Mask@0))) (and (and (state Heap@@14 Mask@0) (|list#trigger| Heap@@14 (list x_1@@10))) (and (= (MapType0Select Heap@@14 null (list x_1@@10)) (CombineFrames (FrameFragment (MapType0Select Heap@@14 x_1@@10 f_6)) (CombineFrames (FrameFragment (MapType0Select Heap@@14 x_1@@10 next)) (FrameFragment (ite (not (= (MapType0Select Heap@@14 x_1@@10 next) null)) (MapType0Select Heap@@14 null (list (MapType0Select Heap@@14 x_1@@10 next))) EmptyFrame))))) (= perm@1 (+ NoPerm FullPerm))))) (and (=> (= (ControlFlow 0 100) 97) anon65_Then_correct) (=> (= (ControlFlow 0 100) 99) anon65_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@14 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and (U_2_bool (MapType0Select Heap@@14 x_1@@10 $allocated)) (= Mask@0 (MapType1Store ZeroMask null (list x_1@@10) (real_2_U (+ (U_2_real (MapType1Select ZeroMask null (list x_1@@10))) FullPerm)))))) (and (and (state Heap@@14 Mask@0) (state Heap@@14 Mask@0)) (and (= Heap@@14 Heap@@14) (= Mask@0 Mask@@11)))) (and (=> (= (ControlFlow 0 106) 105) anon63_Then_correct) (=> (= (ControlFlow 0 106) 100) anon63_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 107) 106) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
