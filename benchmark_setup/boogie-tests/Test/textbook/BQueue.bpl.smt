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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H () T@U)
(declare-fun q@@0 () T@U)
(declare-fun H@0 () T@U)
(declare-fun H@1 () T@U)
(declare-fun call2formal@n@0 () T@U)
(declare-fun NullT () T@U)
(declare-fun H@2 () T@U)
(declare-fun H@3 () T@U)
(declare-fun H@4 () T@U)
(declare-fun H@5 () T@U)
(declare-fun H@6 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (= (type H) (MapType1Type refType)) (= (type q@@0) refType)) (= (type H@0) (MapType1Type refType))) (= (type H@1) (MapType1Type refType))) (= (type call2formal@n@0) refType)) (= (type NullT) TType)) (= (type H@2) (MapType1Type refType))) (= (type H@3) (MapType1Type refType))) (= (type H@4) (MapType1Type refType))) (= (type H@5) (MapType1Type refType))) (= (type H@6) (MapType1Type refType))))
(set-info :boogie-vc-id MakeQueue)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (=> (and (Fresh H q@@0) (= H@0 (MapType1Store H q@@0 alloc (bool_2_U true)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (ValidFootprints H@0)) (=> (ValidFootprints H@0) (=> (and (ValidFootprints H@1) (ModifiesOnlySet H@0 H@1 EmptySet)) (=> (and (and (not (= call2formal@n@0 null)) (U_2_bool (MapType1Select H@1 call2formal@n@0 alloc))) (and (AllNewSet H@0 (MapType1Select H@1 call2formal@n@0 footprint)) (ValidNode H@1 call2formal@n@0))) (=> (and (and (and (= (MapType1Select H@1 call2formal@n@0 data) NullT) (= (MapType1Select H@1 call2formal@n@0 next) null)) (= H@2 (MapType1Store H@1 q@@0 head call2formal@n@0))) (and (and (= H@3 (MapType1Store H@2 q@@0 tail call2formal@n@0)) (= H@4 (MapType1Store H@3 q@@0 mynodes (SingletonSet call2formal@n@0)))) (and (= H@5 (MapType1Store H@4 q@@0 footprint (UnionSet (SingletonSet q@@0) (MapType1Select H@4 call2formal@n@0 footprint)))) (= H@6 (MapType1Store H@5 q@@0 abstractValue (MapType1Select H@5 call2formal@n@0 abstractValue)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (ValidFootprints H@6)) (=> (ValidFootprints H@6) (and (=> (= (ControlFlow 0 2) (- 0 6)) (ModifiesOnlySet H H@6 EmptySet)) (=> (ModifiesOnlySet H H@6 EmptySet) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (not (= q@@0 null)) (U_2_bool (MapType1Select H@6 q@@0 alloc)))) (=> (and (not (= q@@0 null)) (U_2_bool (MapType1Select H@6 q@@0 alloc))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (AllNewSet H (MapType1Select H@6 q@@0 footprint))) (=> (AllNewSet H (MapType1Select H@6 q@@0 footprint)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ValidQueue H@6 q@@0)) (=> (ValidQueue H@6 q@@0) (=> (= (ControlFlow 0 2) (- 0 1)) (= (Length (MapType1Select H@6 q@@0 abstractValue)) 0))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (ValidFootprints H) (= (ControlFlow 0 9) 2)) anon0_correct)))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun isEmpty@0 () Bool)
(declare-fun H () T@U)
(declare-fun q@@0 () T@U)
(assert  (and (= (type H) (MapType1Type refType)) (= (type q@@0) refType)))
(set-info :boogie-vc-id IsEmpty)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= isEmpty@0 (= (MapType1Select H q@@0 head) (MapType1Select H q@@0 tail))) (= (ControlFlow 0 2) (- 0 1))) (= isEmpty@0 (= (Length (MapType1Select H q@@0 abstractValue)) 0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (ValidFootprints H) (=> (and (and (and (not (= q@@0 null)) (U_2_bool (MapType1Select H q@@0 alloc))) (ValidQueue H q@@0)) (= (ControlFlow 0 3) 2)) anon0_correct))))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H () T@U)
(declare-fun H@0 () T@U)
(declare-fun call2formal@n@0 () T@U)
(declare-fun t@@1 () T@U)
(declare-fun call0formal@targetSet@0 () T@U)
(declare-fun q@@0 () T@U)
(declare-fun call1formal@delta@0 () T@U)
(declare-fun H@1 () T@U)
(declare-fun H@2 () T@U)
(declare-fun call0formal@targetSet@0@@0 () T@U)
(declare-fun H@3 () T@U)
(declare-fun H@4 () T@U)
(declare-fun H@5 () T@U)
(declare-fun H@6 () T@U)
(declare-fun H@7 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type H) (MapType1Type refType)) (= (type H@0) (MapType1Type refType))) (= (type call2formal@n@0) refType)) (= (type t@@1) TType)) (= (type call0formal@targetSet@0) (MapType0Type refType boolType))) (= (type q@@0) refType)) (= (type call1formal@delta@0) (MapType0Type refType boolType))) (= (type H@1) (MapType1Type refType))) (= (type H@2) (MapType1Type refType))) (= (type call0formal@targetSet@0@@0) (MapType0Type refType boolType))) (= (type H@3) (MapType1Type refType))) (= (type H@4) (MapType1Type refType))) (= (type H@5) (MapType1Type refType))) (= (type H@6) (MapType1Type refType))) (= (type H@7) (MapType1Type refType))))
(set-info :boogie-vc-id Enqueue)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 9)) (ValidFootprints H)) (=> (ValidFootprints H) (=> (and (ValidFootprints H@0) (ModifiesOnlySet H H@0 EmptySet)) (=> (and (and (and (not (= call2formal@n@0 null)) (U_2_bool (MapType1Select H@0 call2formal@n@0 alloc))) (and (AllNewSet H (MapType1Select H@0 call2formal@n@0 footprint)) (ValidNode H@0 call2formal@n@0))) (and (and (= (MapType1Select H@0 call2formal@n@0 data) t@@1) (= (MapType1Select H@0 call2formal@n@0 next) null)) (and (= call0formal@targetSet@0 (MapType1Select H@0 q@@0 mynodes)) (= call1formal@delta@0 (MapType1Select H@0 call2formal@n@0 footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (ValidFootprints H@0)) (=> (ValidFootprints H@0) (=> (ValidFootprints H@1) (=> (and (and (ModifiesOnlySetField H@0 H@1 call0formal@targetSet@0 footprint) (forall ((o@@18 T@U) ) (!  (=> (= (type o@@18) refType) (=> (and (and (not (= o@@18 null)) (U_2_bool (MapType1Select H@0 o@@18 alloc))) (U_2_bool (MapType0Select call0formal@targetSet@0 o@@18))) (= (MapType1Select H@1 o@@18 footprint) (UnionSet (MapType1Select H@0 o@@18 footprint) call1formal@delta@0))))
 :qid |BQueuebpl.173:19|
 :skolemid |12|
 :no-pattern (type o@@18)
 :no-pattern (U_2_int o@@18)
 :no-pattern (U_2_bool o@@18)
))) (and (= H@2 (MapType1Store H@1 q@@0 footprint (UnionSet (MapType1Select H@1 q@@0 footprint) (MapType1Select H@1 call2formal@n@0 footprint)))) (= call0formal@targetSet@0@@0 (MapType1Select H@2 q@@0 mynodes)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (ValidFootprints H@2)) (=> (ValidFootprints H@2) (=> (ValidFootprints H@3) (=> (and (ModifiesOnlySetField H@2 H@3 call0formal@targetSet@0@@0 abstractValue) (forall ((o@@19 T@U) ) (!  (=> (= (type o@@19) refType) (=> (and (and (not (= o@@19 null)) (U_2_bool (MapType1Select H@2 o@@19 alloc))) (U_2_bool (MapType0Select call0formal@targetSet@0@@0 o@@19))) (EqualSeq (MapType1Select H@3 o@@19 abstractValue) (Append (MapType1Select H@2 o@@19 abstractValue) (Singleton t@@1)))))
 :qid |BQueuebpl.182:19|
 :skolemid |13|
 :no-pattern (type o@@19)
 :no-pattern (U_2_int o@@19)
 :no-pattern (U_2_bool o@@19)
))) (=> (and (and (= H@4 (MapType1Store H@3 q@@0 abstractValue (MapType1Select H@3 (MapType1Select H@3 q@@0 head) abstractValue))) (= H@5 (MapType1Store H@4 q@@0 mynodes (UnionSet (MapType1Select H@4 q@@0 mynodes) (SingletonSet call2formal@n@0))))) (and (= H@6 (MapType1Store H@5 (MapType1Select H@5 q@@0 tail) next call2formal@n@0)) (= H@7 (MapType1Store H@6 q@@0 tail call2formal@n@0)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (ValidFootprints H@7)) (=> (ValidFootprints H@7) (and (=> (= (ControlFlow 0 2) (- 0 5)) (ModifiesOnlySet H H@7 (MapType1Select H q@@0 footprint))) (=> (ModifiesOnlySet H H@7 (MapType1Select H q@@0 footprint)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (DifferenceIsNew H (MapType1Select H q@@0 footprint) (MapType1Select H@7 q@@0 footprint))) (=> (DifferenceIsNew H (MapType1Select H q@@0 footprint) (MapType1Select H@7 q@@0 footprint)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ValidQueue H@7 q@@0)) (=> (ValidQueue H@7 q@@0) (=> (= (ControlFlow 0 2) (- 0 1)) (EqualSeq (MapType1Select H@7 q@@0 abstractValue) (Append (MapType1Select H q@@0 abstractValue) (Singleton t@@1)))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (ValidFootprints H) (=> (and (and (and (not (= q@@0 null)) (U_2_bool (MapType1Select H q@@0 alloc))) (ValidQueue H q@@0)) (= (ControlFlow 0 10) 2)) anon0_correct))))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun t@0 () T@U)
(declare-fun H () T@U)
(declare-fun q@@0 () T@U)
(assert  (and (and (= (type t@0) TType) (= (type H) (MapType1Type refType))) (= (type q@@0) refType)))
(set-info :boogie-vc-id Front)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= t@0 (MapType1Select H (MapType1Select H (MapType1Select H q@@0 head) next) data)) (= (ControlFlow 0 2) (- 0 1))) (= t@0 (Index (MapType1Select H q@@0 abstractValue) 0)))))
(let ((PreconditionGeneratedEntry_correct  (=> (ValidFootprints H) (=> (and (and (and (not (= q@@0 null)) (U_2_bool (MapType1Select H q@@0 alloc))) (ValidQueue H q@@0)) (and (< 0 (Length (MapType1Select H q@@0 abstractValue))) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun n@0 () T@U)
(declare-fun H () T@U)
(declare-fun q@@0 () T@U)
(declare-fun H@0 () T@U)
(declare-fun H@1 () T@U)
(assert  (and (and (and (and (= (type n@0) refType) (= (type H) (MapType1Type refType))) (= (type q@@0) refType)) (= (type H@0) (MapType1Type refType))) (= (type H@1) (MapType1Type refType))))
(set-info :boogie-vc-id Dequeue)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (= n@0 (MapType1Select H (MapType1Select H q@@0 head) next)) (=> (and (= H@0 (MapType1Store H q@@0 head n@0)) (= H@1 (MapType1Store H@0 q@@0 abstractValue (MapType1Select H@0 n@0 abstractValue)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (ValidFootprints H@1)) (=> (ValidFootprints H@1) (and (=> (= (ControlFlow 0 2) (- 0 5)) (ModifiesOnlySet H H@1 (MapType1Select H q@@0 footprint))) (=> (ModifiesOnlySet H H@1 (MapType1Select H q@@0 footprint)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (DifferenceIsNew H (MapType1Select H q@@0 footprint) (MapType1Select H@1 q@@0 footprint))) (=> (DifferenceIsNew H (MapType1Select H q@@0 footprint) (MapType1Select H@1 q@@0 footprint)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ValidQueue H@1 q@@0)) (=> (ValidQueue H@1 q@@0) (=> (= (ControlFlow 0 2) (- 0 1)) (EqualSeq (MapType1Select H@1 q@@0 abstractValue) (Drop (MapType1Select H q@@0 abstractValue) 1)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (ValidFootprints H) (=> (and (and (and (not (= q@@0 null)) (U_2_bool (MapType1Select H q@@0 alloc))) (ValidQueue H q@@0)) (and (< 0 (Length (MapType1Select H q@@0 abstractValue))) (= (ControlFlow 0 7) 2))) anon0_correct))))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H () T@U)
(declare-fun n@@9 () T@U)
(declare-fun H@0 () T@U)
(declare-fun H@1 () T@U)
(declare-fun H@2 () T@U)
(declare-fun t@@1 () T@U)
(declare-fun H@3 () T@U)
(declare-fun H@4 () T@U)
(assert  (and (and (and (and (and (and (and (= (type H) (MapType1Type refType)) (= (type n@@9) refType)) (= (type H@0) (MapType1Type refType))) (= (type H@1) (MapType1Type refType))) (= (type H@2) (MapType1Type refType))) (= (type t@@1) TType)) (= (type H@3) (MapType1Type refType))) (= (type H@4) (MapType1Type refType))))
(set-info :boogie-vc-id MakeNode)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (and (Fresh H n@@9) (= H@0 (MapType1Store H n@@9 alloc (bool_2_U true)))) (=> (and (and (= H@1 (MapType1Store H@0 n@@9 next null)) (= H@2 (MapType1Store H@1 n@@9 data t@@1))) (and (= H@3 (MapType1Store H@2 n@@9 footprint (SingletonSet n@@9))) (= H@4 (MapType1Store H@3 n@@9 abstractValue EmptySeq)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (ValidFootprints H@4)) (=> (ValidFootprints H@4) (and (=> (= (ControlFlow 0 2) (- 0 6)) (ModifiesOnlySet H H@4 EmptySet)) (=> (ModifiesOnlySet H H@4 EmptySet) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (not (= n@@9 null)) (U_2_bool (MapType1Select H@4 n@@9 alloc)))) (=> (and (not (= n@@9 null)) (U_2_bool (MapType1Select H@4 n@@9 alloc))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (AllNewSet H (MapType1Select H@4 n@@9 footprint))) (=> (AllNewSet H (MapType1Select H@4 n@@9 footprint)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ValidNode H@4 n@@9)) (=> (ValidNode H@4 n@@9) (=> (= (ControlFlow 0 2) (- 0 1)) (and (= (MapType1Select H@4 n@@9 data) t@@1) (= (MapType1Select H@4 n@@9 next) null)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (ValidFootprints H) (= (ControlFlow 0 8) 2)) anon0_correct)))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H () T@U)
(declare-fun H@0 () T@U)
(declare-fun call1formal@q@0 () T@U)
(declare-fun H@1 () T@U)
(declare-fun call1formal@q@0@@0 () T@U)
(declare-fun H@2 () T@U)
(declare-fun t@@1 () T@U)
(declare-fun H@3 () T@U)
(declare-fun u () T@U)
(declare-fun H@4 () T@U)
(declare-fun v () T@U)
(declare-fun call1formal@t@0 () T@U)
(declare-fun H@5 () T@U)
(declare-fun call1formal@t@0@@0 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type H) (MapType1Type refType)) (= (type H@0) (MapType1Type refType))) (= (type call1formal@q@0) refType)) (= (type H@1) (MapType1Type refType))) (= (type call1formal@q@0@@0) refType)) (= (type H@2) (MapType1Type refType))) (= (type t@@1) TType)) (= (type H@3) (MapType1Type refType))) (= (type u) TType)) (= (type H@4) (MapType1Type refType))) (= (type v) TType)) (= (type call1formal@t@0) TType)) (= (type H@5) (MapType1Type refType))) (= (type call1formal@t@0@@0) TType)))
(set-info :boogie-vc-id Main)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 25)) (ValidFootprints H)) (=> (ValidFootprints H) (=> (and (ValidFootprints H@0) (ModifiesOnlySet H H@0 EmptySet)) (=> (and (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@0 call1formal@q@0 alloc))) (AllNewSet H (MapType1Select H@0 call1formal@q@0 footprint))) (and (ValidQueue H@0 call1formal@q@0) (= (Length (MapType1Select H@0 call1formal@q@0 abstractValue)) 0))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (ValidFootprints H@0)) (=> (ValidFootprints H@0) (=> (and (ValidFootprints H@1) (ModifiesOnlySet H@0 H@1 EmptySet)) (=> (and (and (and (not (= call1formal@q@0@@0 null)) (U_2_bool (MapType1Select H@1 call1formal@q@0@@0 alloc))) (AllNewSet H@0 (MapType1Select H@1 call1formal@q@0@@0 footprint))) (and (ValidQueue H@1 call1formal@q@0@@0) (= (Length (MapType1Select H@1 call1formal@q@0@@0 abstractValue)) 0))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (ValidFootprints H@1)) (=> (ValidFootprints H@1) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@1 call1formal@q@0 alloc))) (ValidQueue H@1 call1formal@q@0))) (=> (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@1 call1formal@q@0 alloc))) (ValidQueue H@1 call1formal@q@0)) (=> (ValidFootprints H@2) (=> (and (and (ModifiesOnlySet H@1 H@2 (MapType1Select H@1 call1formal@q@0 footprint)) (DifferenceIsNew H@1 (MapType1Select H@1 call1formal@q@0 footprint) (MapType1Select H@2 call1formal@q@0 footprint))) (and (ValidQueue H@2 call1formal@q@0) (EqualSeq (MapType1Select H@2 call1formal@q@0 abstractValue) (Append (MapType1Select H@1 call1formal@q@0 abstractValue) (Singleton t@@1))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (ValidFootprints H@2)) (=> (ValidFootprints H@2) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@2 call1formal@q@0 alloc))) (ValidQueue H@2 call1formal@q@0))) (=> (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@2 call1formal@q@0 alloc))) (ValidQueue H@2 call1formal@q@0)) (=> (ValidFootprints H@3) (=> (and (and (ModifiesOnlySet H@2 H@3 (MapType1Select H@2 call1formal@q@0 footprint)) (DifferenceIsNew H@2 (MapType1Select H@2 call1formal@q@0 footprint) (MapType1Select H@3 call1formal@q@0 footprint))) (and (ValidQueue H@3 call1formal@q@0) (EqualSeq (MapType1Select H@3 call1formal@q@0 abstractValue) (Append (MapType1Select H@2 call1formal@q@0 abstractValue) (Singleton u))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (ValidFootprints H@3)) (=> (ValidFootprints H@3) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (and (not (= call1formal@q@0@@0 null)) (U_2_bool (MapType1Select H@3 call1formal@q@0@@0 alloc))) (ValidQueue H@3 call1formal@q@0@@0))) (=> (and (and (not (= call1formal@q@0@@0 null)) (U_2_bool (MapType1Select H@3 call1formal@q@0@@0 alloc))) (ValidQueue H@3 call1formal@q@0@@0)) (=> (ValidFootprints H@4) (=> (and (and (ModifiesOnlySet H@3 H@4 (MapType1Select H@3 call1formal@q@0@@0 footprint)) (DifferenceIsNew H@3 (MapType1Select H@3 call1formal@q@0@@0 footprint) (MapType1Select H@4 call1formal@q@0@@0 footprint))) (and (ValidQueue H@4 call1formal@q@0@@0) (EqualSeq (MapType1Select H@4 call1formal@q@0@@0 abstractValue) (Append (MapType1Select H@3 call1formal@q@0@@0 abstractValue) (Singleton v))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= (Length (MapType1Select H@4 call1formal@q@0 abstractValue)) 2)) (=> (= (Length (MapType1Select H@4 call1formal@q@0 abstractValue)) 2) (and (=> (= (ControlFlow 0 2) (- 0 16)) (ValidFootprints H@4)) (=> (ValidFootprints H@4) (and (=> (= (ControlFlow 0 2) (- 0 15)) (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@4 call1formal@q@0 alloc))) (ValidQueue H@4 call1formal@q@0))) (=> (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@4 call1formal@q@0 alloc))) (ValidQueue H@4 call1formal@q@0)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (< 0 (Length (MapType1Select H@4 call1formal@q@0 abstractValue)))) (=> (< 0 (Length (MapType1Select H@4 call1formal@q@0 abstractValue))) (=> (= call1formal@t@0 (Index (MapType1Select H@4 call1formal@q@0 abstractValue) 0)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (= call1formal@t@0 t@@1)) (=> (= call1formal@t@0 t@@1) (and (=> (= (ControlFlow 0 2) (- 0 12)) (ValidFootprints H@4)) (=> (ValidFootprints H@4) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@4 call1formal@q@0 alloc))) (ValidQueue H@4 call1formal@q@0))) (=> (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@4 call1formal@q@0 alloc))) (ValidQueue H@4 call1formal@q@0)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (< 0 (Length (MapType1Select H@4 call1formal@q@0 abstractValue)))) (=> (< 0 (Length (MapType1Select H@4 call1formal@q@0 abstractValue))) (=> (ValidFootprints H@5) (=> (and (and (ModifiesOnlySet H@4 H@5 (MapType1Select H@4 call1formal@q@0 footprint)) (DifferenceIsNew H@4 (MapType1Select H@4 call1formal@q@0 footprint) (MapType1Select H@5 call1formal@q@0 footprint))) (and (ValidQueue H@5 call1formal@q@0) (EqualSeq (MapType1Select H@5 call1formal@q@0 abstractValue) (Drop (MapType1Select H@4 call1formal@q@0 abstractValue) 1)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (ValidFootprints H@5)) (=> (ValidFootprints H@5) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@5 call1formal@q@0 alloc))) (ValidQueue H@5 call1formal@q@0))) (=> (and (and (not (= call1formal@q@0 null)) (U_2_bool (MapType1Select H@5 call1formal@q@0 alloc))) (ValidQueue H@5 call1formal@q@0)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< 0 (Length (MapType1Select H@5 call1formal@q@0 abstractValue)))) (=> (< 0 (Length (MapType1Select H@5 call1formal@q@0 abstractValue))) (=> (= call1formal@t@0@@0 (Index (MapType1Select H@5 call1formal@q@0 abstractValue) 0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= call1formal@t@0@@0 u)) (=> (= call1formal@t@0@@0 u) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (Length (MapType1Select H@5 call1formal@q@0 abstractValue)) 1)) (=> (= (Length (MapType1Select H@5 call1formal@q@0 abstractValue)) 1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (Length (MapType1Select H@5 call1formal@q@0@@0 abstractValue)) 1)) (=> (= (Length (MapType1Select H@5 call1formal@q@0@@0 abstractValue)) 1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ValidFootprints H@5)) (=> (ValidFootprints H@5) (=> (= (ControlFlow 0 2) (- 0 1)) (ModifiesOnlySet H H@5 EmptySet))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (ValidFootprints H) (= (ControlFlow 0 26) 2)) anon0_correct)))
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
(declare-fun alloc () T@U)
(declare-fun abstractValue () T@U)
(declare-fun footprint () T@U)
(declare-fun head () T@U)
(declare-fun tail () T@U)
(declare-fun mynodes () T@U)
(declare-fun data () T@U)
(declare-fun next () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun SeqType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun TType () T@T)
(declare-fun Length (T@U) Int)
(declare-fun EmptySeq () T@U)
(declare-fun Take (T@U Int) T@U)
(declare-fun Fresh (T@U T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun null () T@U)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun SingletonSet (T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ValidQueue (T@U T@U) Bool)
(declare-fun ValidNode (T@U T@U) Bool)
(declare-fun ModifiesOnlySetField (T@U T@U T@U T@U) Bool)
(declare-fun NoDeallocs (T@U T@U) Bool)
(declare-fun Drop (T@U Int) T@U)
(declare-fun Index (T@U Int) T@U)
(declare-fun EqualSeq (T@U T@U) Bool)
(declare-fun AllNewSet (T@U T@U) Bool)
(declare-fun SubSet (T@U T@U) Bool)
(declare-fun Append (T@U T@U) T@U)
(declare-fun Singleton (T@U) T@U)
(declare-fun ModifiesOnlySet (T@U T@U T@U) Bool)
(declare-fun EqualSet (T@U T@U) Bool)
(declare-fun ValidFootprints (T@U) Bool)
(declare-fun EmptySet () T@U)
(declare-fun DisjointSet (T@U T@U) Bool)
(declare-fun UnionSet (T@U T@U) T@U)
(declare-fun DifferenceIsNew (T@U T@U T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor SeqType) 7)) (= (type abstractValue) (FieldType SeqType))) (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@16))))
(= (type (MapType0Select arg0@@16 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@16 arg1@@2))
))) (forall ((arg0@@17 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@17 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@17 arg1@@3 arg2))
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
)))) (= (Ctor refType) 9)) (= (type footprint) (FieldType (MapType0Type refType boolType)))) (= (type head) (FieldType refType))) (= (type tail) (FieldType refType))) (= (type mynodes) (FieldType (MapType0Type refType boolType)))) (= (Ctor TType) 10)) (= (type data) (FieldType TType))) (= (type next) (FieldType refType))))
(assert (distinct alloc abstractValue footprint head tail mynodes data next)
)
(assert (= (type EmptySeq) SeqType))
(assert (= (Length EmptySeq) 0))
(assert (forall ((arg0@@18 T@U) (arg1@@4 Int) ) (! (= (type (Take arg0@@18 arg1@@4)) SeqType)
 :qid |funType:Take|
 :pattern ( (Take arg0@@18 arg1@@4))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (and (= (type s) SeqType) (<= 0 n)) (and (=> (<= n (Length s)) (= (Length (Take s n)) n)) (=> (< (Length s) n) (= (Length (Take s n)) (Length s)))))
 :qid |BQueuebpl.415:15|
 :skolemid |45|
 :pattern ( (Length (Take s n)))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@19 T@T) ) (! (= (Ctor (MapType1Type arg0@@19)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@20 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@20)) arg0@@20)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@20))
))) (forall ((arg0@@21 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@21 arg1@@5 arg2@@0)) x@@8))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@21 arg1@@5 arg2@@0))
))) (forall ((arg0@@22 T@U) (arg1@@6 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@6)))
(= (type (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@22 arg1@@6 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) x@@9) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type null) refType)) (forall ((arg0@@23 T@U) ) (! (= (type (SingletonSet arg0@@23)) (MapType0Type refType boolType))
 :qid |funType:SingletonSet|
 :pattern ( (SingletonSet arg0@@23))
))))
(assert (forall ((h T@U) (o T@U) ) (!  (=> (and (= (type h) (MapType1Type refType)) (= (type o) refType)) (= (Fresh h o)  (and (and (not (= o null)) (not (U_2_bool (MapType1Select h o alloc)))) (= (MapType1Select h o footprint) (SingletonSet o)))))
 :qid |BQueuebpl.352:15|
 :skolemid |26|
 :pattern ( (Fresh h o))
)))
(assert (forall ((r T@U) (o@@0 T@U) ) (!  (=> (and (= (type r) refType) (= (type o@@0) refType)) (= (U_2_bool (MapType0Select (SingletonSet r) o@@0)) (= r o@@0)))
 :qid |BQueuebpl.364:15|
 :skolemid |29|
 :pattern ( (MapType0Select (SingletonSet r) o@@0))
)))
(assert (forall ((h0 T@U) (h1 T@U) (n@@0 T@U) ) (!  (=> (and (and (and (= (type h0) (MapType1Type refType)) (= (type h1) (MapType1Type refType))) (= (type n@@0) refType)) (and (forall ((o@@1 T@U) (f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f))))
 (=> (and (= (type o@@1) refType) (= (type f) (FieldType alpha@@1))) (=> (and (and (not (= o@@1 null)) (U_2_bool (MapType1Select h0 o@@1 alloc))) (U_2_bool (MapType0Select (MapType1Select h0 n@@0 footprint) o@@1))) (= (MapType1Select h0 o@@1 f) (MapType1Select h1 o@@1 f)))))
 :qid |BQueuebpl.71:18|
 :skolemid |4|
 :no-pattern (type o@@1)
 :no-pattern (type f)
 :no-pattern (U_2_int o@@1)
 :no-pattern (U_2_bool o@@1)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
)) (forall ((o@@2 T@U) (f@@0 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type f@@0))))
 (=> (and (= (type o@@2) refType) (= (type f@@0) (FieldType alpha@@2))) (=> (and (and (not (= o@@2 null)) (U_2_bool (MapType1Select h1 o@@2 alloc))) (U_2_bool (MapType0Select (MapType1Select h1 n@@0 footprint) o@@2))) (= (MapType1Select h0 o@@2 f@@0) (MapType1Select h1 o@@2 f@@0)))))
 :qid |BQueuebpl.74:18|
 :skolemid |5|
 :no-pattern (type o@@2)
 :no-pattern (type f@@0)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int f@@0)
 :no-pattern (U_2_bool f@@0)
)))) (= (ValidQueue h0 n@@0) (ValidQueue h1 n@@0)))
 :qid |BQueuebpl.69:15|
 :skolemid |6|
 :pattern ( (ValidQueue h0 n@@0) (ValidQueue h1 n@@0))
)))
(assert (forall ((h0@@0 T@U) (h1@@0 T@U) (n@@1 T@U) ) (!  (=> (and (and (and (= (type h0@@0) (MapType1Type refType)) (= (type h1@@0) (MapType1Type refType))) (= (type n@@1) refType)) (and (forall ((o@@3 T@U) (f@@1 T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type f@@1))))
 (=> (and (= (type o@@3) refType) (= (type f@@1) (FieldType alpha@@3))) (=> (and (and (not (= o@@3 null)) (U_2_bool (MapType1Select h0@@0 o@@3 alloc))) (U_2_bool (MapType0Select (MapType1Select h0@@0 n@@1 footprint) o@@3))) (= (MapType1Select h0@@0 o@@3 f@@1) (MapType1Select h1@@0 o@@3 f@@1)))))
 :qid |BQueuebpl.99:18|
 :skolemid |9|
 :no-pattern (type o@@3)
 :no-pattern (type f@@1)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int f@@1)
 :no-pattern (U_2_bool f@@1)
)) (forall ((o@@4 T@U) (f@@2 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@2))))
 (=> (and (= (type o@@4) refType) (= (type f@@2) (FieldType alpha@@4))) (=> (and (and (not (= o@@4 null)) (U_2_bool (MapType1Select h1@@0 o@@4 alloc))) (U_2_bool (MapType0Select (MapType1Select h1@@0 n@@1 footprint) o@@4))) (= (MapType1Select h0@@0 o@@4 f@@2) (MapType1Select h1@@0 o@@4 f@@2)))))
 :qid |BQueuebpl.102:18|
 :skolemid |10|
 :no-pattern (type o@@4)
 :no-pattern (type f@@2)
 :no-pattern (U_2_int o@@4)
 :no-pattern (U_2_bool o@@4)
 :no-pattern (U_2_int f@@2)
 :no-pattern (U_2_bool f@@2)
)))) (= (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1)))
 :qid |BQueuebpl.97:15|
 :skolemid |11|
 :pattern ( (ValidNode h0@@0 n@@1) (ValidNode h1@@0 n@@1))
)))
(assert (forall ((oldHeap T@U) (newHeap T@U) (set T@U) (field T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type field))))
 (=> (and (and (and (= (type oldHeap) (MapType1Type refType)) (= (type newHeap) (MapType1Type refType))) (= (type set) (MapType0Type refType boolType))) (= (type field) (FieldType alpha@@5))) (= (ModifiesOnlySetField oldHeap newHeap set field)  (and (NoDeallocs oldHeap newHeap) (forall ((o@@5 T@U) (f@@3 T@U) ) (! (let ((beta (FieldTypeInv0 (type f@@3))))
 (=> (and (and (= (type o@@5) refType) (= (type f@@3) (FieldType beta))) (and (not (= o@@5 null)) (U_2_bool (MapType1Select oldHeap o@@5 alloc)))) (or (= (MapType1Select oldHeap o@@5 f@@3) (MapType1Select newHeap o@@5 f@@3)) (and (U_2_bool (MapType0Select set o@@5)) (= f@@3 field)))))
 :qid |BQueuebpl.319:19|
 :skolemid |16|
 :pattern ( (MapType1Select newHeap o@@5 f@@3))
))))))
 :qid |BQueuebpl.315:22|
 :skolemid |17|
 :pattern ( (ModifiesOnlySetField oldHeap newHeap set field))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (and (= (type s@@0) SeqType) (= (Length s@@0) 0)) (= s@@0 EmptySeq))
 :qid |BQueuebpl.392:15|
 :skolemid |38|
 :pattern ( (Length s@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@7 Int) ) (! (= (type (Drop arg0@@24 arg1@@7)) SeqType)
 :qid |funType:Drop|
 :pattern ( (Drop arg0@@24 arg1@@7))
)))
(assert (forall ((s@@1 T@U) (n@@2 Int) ) (!  (=> (and (= (type s@@1) SeqType) (<= 0 n@@2)) (and (=> (<= n@@2 (Length s@@1)) (= (Length (Drop s@@1 n@@2)) (- (Length s@@1) n@@2))) (=> (< (Length s@@1) n@@2) (= (Length (Drop s@@1 n@@2)) 0))))
 :qid |BQueuebpl.424:15|
 :skolemid |47|
 :pattern ( (Length (Drop s@@1 n@@2)))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@8 Int) ) (! (= (type (Index arg0@@25 arg1@@8)) TType)
 :qid |funType:Index|
 :pattern ( (Index arg0@@25 arg1@@8))
)))
(assert (forall ((s@@2 T@U) (n@@3 Int) (j Int) ) (!  (=> (= (type s@@2) SeqType) (=> (and (and (<= 0 j) (< j n@@3)) (< j (Length s@@2))) (= (Index (Take s@@2 n@@3) j) (Index s@@2 j))))
 :qid |BQueuebpl.419:15|
 :skolemid |46|
 :pattern ( (Index (Take s@@2 n@@3) j))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (!  (=> (and (= (type s0) SeqType) (= (type s1) SeqType)) (= (EqualSeq s0 s1)  (and (= (Length s0) (Length s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (Length s0))) (= (Index s0 j@@0) (Index s1 j@@0)))
 :qid |BQueuebpl.411:13|
 :skolemid |43|
 :pattern ( (Index s0 j@@0))
 :pattern ( (Index s1 j@@0))
)))))
 :qid |BQueuebpl.408:15|
 :skolemid |44|
 :pattern ( (EqualSeq s0 s1))
)))
(assert (forall ((oldHeap@@0 T@U) (set@@0 T@U) ) (!  (=> (and (= (type oldHeap@@0) (MapType1Type refType)) (= (type set@@0) (MapType0Type refType boolType))) (= (AllNewSet oldHeap@@0 set@@0) (forall ((o@@6 T@U) ) (!  (=> (= (type o@@6) refType) (=> (and (not (= o@@6 null)) (U_2_bool (MapType0Select set@@0 o@@6))) (not (U_2_bool (MapType1Select oldHeap@@0 o@@6 alloc)))))
 :qid |BQueuebpl.334:13|
 :skolemid |20|
 :pattern ( (MapType1Select oldHeap@@0 o@@6 alloc))
))))
 :qid |BQueuebpl.331:15|
 :skolemid |21|
 :pattern ( (AllNewSet oldHeap@@0 set@@0))
)))
(assert (forall ((oldHeap@@1 T@U) (newHeap@@0 T@U) ) (!  (=> (and (= (type oldHeap@@1) (MapType1Type refType)) (= (type newHeap@@0) (MapType1Type refType))) (= (NoDeallocs oldHeap@@1 newHeap@@0) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (=> (and (not (= o@@7 null)) (U_2_bool (MapType1Select oldHeap@@1 o@@7 alloc))) (U_2_bool (MapType1Select newHeap@@0 o@@7 alloc))))
 :qid |BQueuebpl.327:13|
 :skolemid |18|
 :pattern ( (MapType1Select newHeap@@0 o@@7 alloc))
))))
 :qid |BQueuebpl.324:15|
 :skolemid |19|
 :pattern ( (NoDeallocs oldHeap@@1 newHeap@@0))
)))
(assert  (and (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Append arg0@@26 arg1@@9)) SeqType)
 :qid |funType:Append|
 :pattern ( (Append arg0@@26 arg1@@9))
)) (forall ((arg0@@27 T@U) ) (! (= (type (Singleton arg0@@27)) SeqType)
 :qid |funType:Singleton|
 :pattern ( (Singleton arg0@@27))
))))
(assert (forall ((h@@0 T@U) (n@@4 T@U) ) (!  (=> (and (and (= (type h@@0) (MapType1Type refType)) (= (type n@@4) refType)) (and (not (= n@@4 null)) (U_2_bool (MapType1Select h@@0 n@@4 alloc)))) (= (ValidNode h@@0 n@@4)  (and (and (and (and (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (=> (and (not (= o@@8 null)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))) (U_2_bool (MapType1Select h@@0 o@@8 alloc))))
 :qid |BQueuebpl.85:14|
 :skolemid |7|
 :pattern ( (MapType0Select (MapType1Select h@@0 n@@4 footprint) o@@8))
)) (U_2_bool (MapType0Select (MapType1Select h@@0 n@@4 footprint) n@@4))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (and (and (U_2_bool (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) alloc)) (SubSet (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) (MapType1Select h@@0 n@@4 footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) footprint) n@@4)))))) (=> (= (MapType1Select h@@0 n@@4 next) null) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) EmptySeq))) (=> (not (= (MapType1Select h@@0 n@@4 next) null)) (EqualSeq (MapType1Select h@@0 n@@4 abstractValue) (Append (Singleton (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) data)) (MapType1Select h@@0 (MapType1Select h@@0 n@@4 next) abstractValue)))))))
 :qid |BQueuebpl.80:15|
 :skolemid |8|
 :pattern ( (ValidNode h@@0 n@@4))
)))
(assert (forall ((oldHeap@@2 T@U) (newHeap@@1 T@U) (set@@1 T@U) ) (!  (=> (and (and (= (type oldHeap@@2) (MapType1Type refType)) (= (type newHeap@@1) (MapType1Type refType))) (= (type set@@1) (MapType0Type refType boolType))) (= (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1)  (and (NoDeallocs oldHeap@@2 newHeap@@1) (forall ((o@@9 T@U) (f@@4 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type f@@4) (FieldType alpha@@6))) (and (not (= o@@9 null)) (U_2_bool (MapType1Select oldHeap@@2 o@@9 alloc)))) (or (= (MapType1Select oldHeap@@2 o@@9 f@@4) (MapType1Select newHeap@@1 o@@9 f@@4)) (U_2_bool (MapType0Select set@@1 o@@9)))))
 :qid |BQueuebpl.309:20|
 :skolemid |14|
 :pattern ( (MapType1Select newHeap@@1 o@@9 f@@4))
)))))
 :qid |BQueuebpl.305:15|
 :skolemid |15|
 :pattern ( (ModifiesOnlySet oldHeap@@2 newHeap@@1 set@@1))
)))
(assert (forall ((s@@3 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (= (type s@@3) SeqType) (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (Length s@@3) n@@5))) (= (Index (Drop s@@3 n@@5) j@@1) (Index s@@3 (+ j@@1 n@@5)))))
 :qid |BQueuebpl.428:15|
 :skolemid |48|
 :pattern ( (Index (Drop s@@3 n@@5) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) (MapType0Type refType boolType)) (= (type b) (MapType0Type refType boolType))) (= (EqualSet a b) (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) refType) (= (U_2_bool (MapType0Select a o@@10)) (U_2_bool (MapType0Select b o@@10))))
 :qid |BQueuebpl.376:30|
 :skolemid |33|
 :pattern ( (MapType0Select a o@@10))
 :pattern ( (MapType0Select b o@@10))
))))
 :qid |BQueuebpl.375:14|
 :skolemid |34|
 :pattern ( (EqualSet a b))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (!  (=> (and (= (type s0@@0) SeqType) (= (type s1@@0) SeqType)) (= (Length (Append s0@@0 s1@@0)) (+ (Length s0@@0) (Length s1@@0))))
 :qid |BQueuebpl.398:15|
 :skolemid |40|
 :pattern ( (Length (Append s0@@0 s1@@0)))
)))
(assert (forall ((h@@1 T@U) ) (!  (=> (= (type h@@1) (MapType1Type refType)) (= (ValidFootprints h@@1) (forall ((o@@11 T@U) (r@@0 T@U) ) (!  (=> (and (= (type o@@11) refType) (= (type r@@0) refType)) (=> (and (and (and (not (= o@@11 null)) (U_2_bool (MapType1Select h@@1 o@@11 alloc))) (not (= r@@0 null))) (U_2_bool (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))) (U_2_bool (MapType1Select h@@1 r@@0 alloc))))
 :qid |BQueuebpl.348:13|
 :skolemid |24|
 :pattern ( (MapType0Select (MapType1Select h@@1 o@@11 footprint) r@@0))
))))
 :qid |BQueuebpl.345:15|
 :skolemid |25|
 :pattern ( (ValidFootprints h@@1))
)))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TType) (= (Index (Singleton t) 0) t))
 :qid |BQueuebpl.402:15|
 :skolemid |41|
 :pattern ( (Index (Singleton t) 0))
)))
(assert (= (type EmptySet) (MapType0Type refType boolType)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (not (U_2_bool (MapType0Select EmptySet o@@12))))
 :qid |BQueuebpl.360:15|
 :skolemid |27|
 :pattern ( (MapType0Select EmptySet o@@12))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (type s@@4) SeqType) (<= 0 (Length s@@4)))
 :qid |BQueuebpl.388:15|
 :skolemid |37|
 :pattern ( (Length s@@4))
)))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TType) (= (Length (Singleton t@@0)) 1))
 :qid |BQueuebpl.395:15|
 :skolemid |39|
 :pattern ( (Length (Singleton t@@0)))
)))
(assert (forall ((r@@1 T@U) ) (!  (=> (= (type r@@1) refType) (U_2_bool (MapType0Select (SingletonSet r@@1) r@@1)))
 :qid |BQueuebpl.363:15|
 :skolemid |28|
 :pattern ( (SingletonSet r@@1))
)))
(assert (forall ((h@@2 T@U) (q T@U) ) (!  (=> (and (and (= (type h@@2) (MapType1Type refType)) (= (type q) refType)) (and (not (= q null)) (U_2_bool (MapType1Select h@@2 q alloc)))) (= (ValidQueue h@@2 q)  (and (and (and (and (and (and (and (and (and (and (and (not (= (MapType1Select h@@2 q head) null)) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q head) alloc))) (not (= (MapType1Select h@@2 q tail) null))) (U_2_bool (MapType1Select h@@2 (MapType1Select h@@2 q tail) alloc))) (= (MapType1Select h@@2 (MapType1Select h@@2 q tail) next) null)) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (=> (and (not (= o@@13 null)) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) o@@13))) (U_2_bool (MapType1Select h@@2 o@@13 alloc))))
 :qid |BQueuebpl.51:14|
 :skolemid |0|
 :pattern ( (MapType0Select (MapType1Select h@@2 q footprint) o@@13))
))) (U_2_bool (MapType0Select (MapType1Select h@@2 q footprint) q))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q head)))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 q tail)))) (forall ((n@@6 T@U) ) (!  (=> (and (= (type n@@6) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))) (and (and (and (and (and (not (= n@@6 null)) (U_2_bool (MapType1Select h@@2 n@@6 alloc))) (ValidNode h@@2 n@@6)) (SubSet (MapType1Select h@@2 n@@6 footprint) (MapType1Select h@@2 q footprint))) (not (U_2_bool (MapType0Select (MapType1Select h@@2 n@@6 footprint) q)))) (=> (= (MapType1Select h@@2 n@@6 next) null) (= n@@6 (MapType1Select h@@2 q tail)))))
 :qid |BQueuebpl.54:14|
 :skolemid |1|
 :pattern ( (MapType0Select (MapType1Select h@@2 q mynodes) n@@6))
))) (forall ((n@@7 T@U) ) (!  (=> (and (and (= (type n@@7) refType) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) n@@7))) (not (= (MapType1Select h@@2 n@@7 next) null))) (U_2_bool (MapType0Select (MapType1Select h@@2 q mynodes) (MapType1Select h@@2 n@@7 next))))
 :qid |BQueuebpl.61:14|
 :skolemid |2|
 :pattern ( (MapType1Select h@@2 n@@7 next))
))) (= (MapType1Select h@@2 q abstractValue) (MapType1Select h@@2 (MapType1Select h@@2 q head) abstractValue)))))
 :qid |BQueuebpl.43:15|
 :skolemid |3|
 :pattern ( (ValidQueue h@@2 q))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) (MapType0Type refType boolType)) (= (type b@@0) (MapType0Type refType boolType))) (= (SubSet a@@0 b@@0) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (U_2_bool (MapType0Select a@@0 o@@14))) (U_2_bool (MapType0Select b@@0 o@@14)))
 :qid |BQueuebpl.372:28|
 :skolemid |31|
 :pattern ( (MapType0Select a@@0 o@@14))
 :pattern ( (MapType0Select b@@0 o@@14))
))))
 :qid |BQueuebpl.371:14|
 :skolemid |32|
 :pattern ( (SubSet a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) (MapType0Type refType boolType)) (= (type b@@1) (MapType0Type refType boolType))) (= (DisjointSet a@@1 b@@1) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) refType) (or (not (U_2_bool (MapType0Select a@@1 o@@15))) (not (U_2_bool (MapType0Select b@@1 o@@15)))))
 :qid |BQueuebpl.380:33|
 :skolemid |35|
 :pattern ( (MapType0Select a@@1 o@@15))
 :pattern ( (MapType0Select b@@1 o@@15))
))))
 :qid |BQueuebpl.379:15|
 :skolemid |36|
 :pattern ( (DisjointSet a@@1 b@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (=> (and (= (type s0@@1) SeqType) (= (type s1@@1) SeqType)) (and (=> (< n@@8 (Length s0@@1)) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s0@@1 n@@8))) (=> (<= (Length s0@@1) n@@8) (= (Index (Append s0@@1 s1@@1) n@@8) (Index s1@@1 (- n@@8 (Length s0@@1)))))))
 :qid |BQueuebpl.403:15|
 :skolemid |42|
 :pattern ( (Index (Append s0@@1 s1@@1) n@@8))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@10 T@U) ) (! (= (type (UnionSet arg0@@28 arg1@@10)) (MapType0Type refType boolType))
 :qid |funType:UnionSet|
 :pattern ( (UnionSet arg0@@28 arg1@@10))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (o@@16 T@U) ) (!  (=> (and (and (= (type a@@2) (MapType0Type refType boolType)) (= (type b@@2) (MapType0Type refType boolType))) (= (type o@@16) refType)) (= (U_2_bool (MapType0Select (UnionSet a@@2 b@@2) o@@16))  (or (U_2_bool (MapType0Select a@@2 o@@16)) (U_2_bool (MapType0Select b@@2 o@@16)))))
 :qid |BQueuebpl.367:15|
 :skolemid |30|
 :pattern ( (MapType0Select (UnionSet a@@2 b@@2) o@@16))
)))
(assert (forall ((oldHeap@@3 T@U) (oldSet T@U) (newSet T@U) ) (!  (=> (and (and (= (type oldHeap@@3) (MapType1Type refType)) (= (type oldSet) (MapType0Type refType boolType))) (= (type newSet) (MapType0Type refType boolType))) (= (DifferenceIsNew oldHeap@@3 oldSet newSet) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (=> (and (and (not (= o@@17 null)) (not (U_2_bool (MapType0Select oldSet o@@17)))) (U_2_bool (MapType0Select newSet o@@17))) (not (U_2_bool (MapType1Select oldHeap@@3 o@@17 alloc)))))
 :qid |BQueuebpl.341:13|
 :skolemid |22|
 :pattern ( (MapType1Select oldHeap@@3 o@@17 alloc))
))))
 :qid |BQueuebpl.338:15|
 :skolemid |23|
 :pattern ( (DifferenceIsNew oldHeap@@3 oldSet newSet))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H () T@U)
(declare-fun q0 () T@U)
(declare-fun H@0 () T@U)
(declare-fun t@@1 () T@U)
(declare-fun H@1 () T@U)
(declare-fun u () T@U)
(declare-fun q1 () T@U)
(declare-fun H@2 () T@U)
(declare-fun v () T@U)
(declare-fun call1formal@t@0 () T@U)
(declare-fun H@3 () T@U)
(declare-fun call1formal@t@0@@0 () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (= (type H) (MapType1Type refType)) (= (type q0) refType)) (= (type H@0) (MapType1Type refType))) (= (type t@@1) TType)) (= (type H@1) (MapType1Type refType))) (= (type u) TType)) (= (type q1) refType)) (= (type H@2) (MapType1Type refType))) (= (type v) TType)) (= (type call1formal@t@0) TType)) (= (type H@3) (MapType1Type refType))) (= (type call1formal@t@0@@0) TType)))
(set-info :boogie-vc-id Main2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 23)) (ValidFootprints H)) (=> (ValidFootprints H) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (and (not (= q0 null)) (U_2_bool (MapType1Select H q0 alloc))) (ValidQueue H q0))) (=> (and (and (not (= q0 null)) (U_2_bool (MapType1Select H q0 alloc))) (ValidQueue H q0)) (=> (ValidFootprints H@0) (=> (and (and (ModifiesOnlySet H H@0 (MapType1Select H q0 footprint)) (DifferenceIsNew H (MapType1Select H q0 footprint) (MapType1Select H@0 q0 footprint))) (and (ValidQueue H@0 q0) (EqualSeq (MapType1Select H@0 q0 abstractValue) (Append (MapType1Select H q0 abstractValue) (Singleton t@@1))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (ValidFootprints H@0)) (=> (ValidFootprints H@0) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@0 q0 alloc))) (ValidQueue H@0 q0))) (=> (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@0 q0 alloc))) (ValidQueue H@0 q0)) (=> (ValidFootprints H@1) (=> (and (and (ModifiesOnlySet H@0 H@1 (MapType1Select H@0 q0 footprint)) (DifferenceIsNew H@0 (MapType1Select H@0 q0 footprint) (MapType1Select H@1 q0 footprint))) (and (ValidQueue H@1 q0) (EqualSeq (MapType1Select H@1 q0 abstractValue) (Append (MapType1Select H@0 q0 abstractValue) (Singleton u))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (ValidFootprints H@1)) (=> (ValidFootprints H@1) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (and (not (= q1 null)) (U_2_bool (MapType1Select H@1 q1 alloc))) (ValidQueue H@1 q1))) (=> (and (and (not (= q1 null)) (U_2_bool (MapType1Select H@1 q1 alloc))) (ValidQueue H@1 q1)) (=> (ValidFootprints H@2) (=> (and (and (ModifiesOnlySet H@1 H@2 (MapType1Select H@1 q1 footprint)) (DifferenceIsNew H@1 (MapType1Select H@1 q1 footprint) (MapType1Select H@2 q1 footprint))) (and (ValidQueue H@2 q1) (EqualSeq (MapType1Select H@2 q1 abstractValue) (Append (MapType1Select H@1 q1 abstractValue) (Singleton v))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= (Length (MapType1Select H@2 q0 abstractValue)) 2)) (=> (= (Length (MapType1Select H@2 q0 abstractValue)) 2) (and (=> (= (ControlFlow 0 2) (- 0 16)) (ValidFootprints H@2)) (=> (ValidFootprints H@2) (and (=> (= (ControlFlow 0 2) (- 0 15)) (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@2 q0 alloc))) (ValidQueue H@2 q0))) (=> (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@2 q0 alloc))) (ValidQueue H@2 q0)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (< 0 (Length (MapType1Select H@2 q0 abstractValue)))) (=> (< 0 (Length (MapType1Select H@2 q0 abstractValue))) (=> (= call1formal@t@0 (Index (MapType1Select H@2 q0 abstractValue) 0)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (= call1formal@t@0 t@@1)) (=> (= call1formal@t@0 t@@1) (and (=> (= (ControlFlow 0 2) (- 0 12)) (ValidFootprints H@2)) (=> (ValidFootprints H@2) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@2 q0 alloc))) (ValidQueue H@2 q0))) (=> (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@2 q0 alloc))) (ValidQueue H@2 q0)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (< 0 (Length (MapType1Select H@2 q0 abstractValue)))) (=> (< 0 (Length (MapType1Select H@2 q0 abstractValue))) (=> (ValidFootprints H@3) (=> (and (and (ModifiesOnlySet H@2 H@3 (MapType1Select H@2 q0 footprint)) (DifferenceIsNew H@2 (MapType1Select H@2 q0 footprint) (MapType1Select H@3 q0 footprint))) (and (ValidQueue H@3 q0) (EqualSeq (MapType1Select H@3 q0 abstractValue) (Drop (MapType1Select H@2 q0 abstractValue) 1)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (ValidFootprints H@3)) (=> (ValidFootprints H@3) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@3 q0 alloc))) (ValidQueue H@3 q0))) (=> (and (and (not (= q0 null)) (U_2_bool (MapType1Select H@3 q0 alloc))) (ValidQueue H@3 q0)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< 0 (Length (MapType1Select H@3 q0 abstractValue)))) (=> (< 0 (Length (MapType1Select H@3 q0 abstractValue))) (=> (= call1formal@t@0@@0 (Index (MapType1Select H@3 q0 abstractValue) 0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= call1formal@t@0@@0 u)) (=> (= call1formal@t@0@@0 u) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (Length (MapType1Select H@3 q0 abstractValue)) 1)) (=> (= (Length (MapType1Select H@3 q0 abstractValue)) 1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (Length (MapType1Select H@3 q1 abstractValue)) (+ (Length (MapType1Select H q1 abstractValue)) 1))) (=> (= (Length (MapType1Select H@3 q1 abstractValue)) (+ (Length (MapType1Select H q1 abstractValue)) 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (ValidFootprints H@3)) (=> (ValidFootprints H@3) (=> (= (ControlFlow 0 2) (- 0 1)) (ModifiesOnlySet H H@3 (UnionSet (MapType1Select H q0 footprint) (MapType1Select H q1 footprint))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (not (= q0 null)) (U_2_bool (MapType1Select H q0 alloc))) (ValidQueue H q0)) (=> (and (and (and (not (= q1 null)) (U_2_bool (MapType1Select H q1 alloc))) (ValidQueue H q1)) (and (and (DisjointSet (MapType1Select H q0 footprint) (MapType1Select H q1 footprint)) (= (Length (MapType1Select H q0 abstractValue)) 0)) (and (ValidFootprints H) (= (ControlFlow 0 24) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
