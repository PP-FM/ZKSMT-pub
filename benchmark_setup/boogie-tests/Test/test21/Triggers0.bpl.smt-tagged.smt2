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
(declare-fun CTypeInv0 (T@T) T@T)
(declare-fun CType (T@T T@T) T@T)
(declare-fun k (T@U) Bool)
(declare-fun CTypeInv1 (T@T) T@T)
(declare-fun g (T@U) T@U)
(declare-fun h (T@U) T@U)
(declare-fun TType () T@T)
(declare-fun o (T@U) Bool)
(declare-fun someConst () Int)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun ar () T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun SType () T@T)
(declare-fun f (T@U T@U) Int)
(declare-fun f2 (T@U T@U) Int)
(declare-fun l (T@U) Bool)
(declare-fun n (T@U T@U) Bool)
(declare-fun con () T@U)
(declare-fun m@@2 (T@U T@U) Bool)
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
(assert  (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (CType arg0@@11 arg1)) 6)
 :qid |ctor:CType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (CTypeInv0 (CType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:CTypeInv0|
 :pattern ( (CType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (CTypeInv1 (CType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:CTypeInv1|
 :pattern ( (CType arg0@@13 arg1@@1))
))))
(assert (forall ((x@@8 T@U) ) (! (let ((b (CTypeInv0 (type x@@8))))
 (=> (= (type x@@8) (CType b b)) (k x@@8)))
 :qid |Triggers0bpl.26:19|
 :skolemid |1|
 :no-pattern (type x@@8)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert (forall ((x@@9 T@U) ) (! (let ((b@@0 (CTypeInv0 (type x@@9))))
 (=> (= (type x@@9) (CType b@@0 b@@0)) (k x@@9)))
 :qid |Triggers0bpl.32:19|
 :skolemid |7|
 :pattern ( (k x@@9))
)))
(assert  (and (and (= (Ctor TType) 7) (forall ((arg0@@14 T@U) ) (! (= (type (g arg0@@14)) TType)
 :qid |funType:g|
 :pattern ( (g arg0@@14))
))) (forall ((arg0@@15 T@U) ) (! (let ((a (type arg0@@15)))
(= (type (h arg0@@15)) a))
 :qid |funType:h|
 :pattern ( (h arg0@@15))
))))
(assert (forall ((x@@10 T@U) ) (!  (=> (= (type x@@10) TType) (= x@@10 x@@10))
 :qid |Triggers0bpl.29:15|
 :skolemid |4|
 :pattern ( (g (h x@@10)))
 :pattern ( (g x@@10))
)))
(assert (forall ((x@@11 T@U) ) (! (= x@@11 x@@11)
 :qid |Triggers0bpl.30:19|
 :skolemid |5|
 :pattern ( (h x@@11))
)))
(assert (forall ((x@@12 T@U) (y@@1 T@U) ) (! (let ((b@@1 (type x@@12)))
 (=> (and (= (type y@@1) b@@1) (o x@@12)) (= someConst 42)))
 :qid |Triggers0bpl.31:19|
 :skolemid |6|
 :pattern ( (o x@@12) (o y@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@16 T@T) (arg1@@2 T@T) ) (! (= (Ctor (MapType0Type arg0@@16 arg1@@2)) 8)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@17 T@T) (arg1@@3 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@17 arg1@@3)) arg0@@17)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@17 arg1@@3))
))) (forall ((arg0@@18 T@T) (arg1@@4 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@18 arg1@@4)) arg1@@4)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@18 arg1@@4))
))) (forall ((arg0@@19 T@U) (arg1@@5 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@19))))
(= (type (MapType0Select arg0@@19 arg1@@5)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@19 arg1@@5))
))) (forall ((arg0@@20 T@U) (arg1@@6 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@6)))
(= (type (MapType0Store arg0@@20 arg1@@6 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@20 arg1@@6 arg2))
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
)))) (= (type ar) (MapType0Type intType boolType))))
(assert (forall ((x@@13 T@U) ) (!  (=> (= (type x@@13) intType) (not (U_2_bool (MapType0Select ar x@@13))))
 :qid |Triggers0bpl.9:15|
 :skolemid |0|
 :pattern ( (MapType0Select ar x@@13))
)))
(assert (= (Ctor SType) 9))
(assert (forall ((x@@14 T@U) (y@@2 T@U) ) (!  (=> (and (= (type x@@14) (CType SType TType)) (= (type y@@2) SType)) (= (f x@@14 y@@2) (f2 x@@14 y@@2)))
 :qid |Triggers0bpl.27:15|
 :skolemid |2|
 :no-pattern (type x@@14)
 :no-pattern (type y@@2)
 :no-pattern (U_2_int x@@14)
 :no-pattern (U_2_bool x@@14)
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
)))
(assert (= (type con) TType))
(assert (forall ((x@@15 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@15) SType) (= (type y@@3) TType)) (and (l x@@15) (= (n y@@3 con) (m@@2 y@@3 x@@15))))
 :qid |Triggers0bpl.28:15|
 :skolemid |3|
 :no-pattern (type x@@15)
 :no-pattern (type y@@3)
 :no-pattern (U_2_int x@@15)
 :no-pattern (U_2_bool x@@15)
 :no-pattern (U_2_int y@@3)
 :no-pattern (U_2_bool y@@3)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v0 () T@U)
(declare-fun v1 () T@U)
(declare-fun v2 () T@U)
(declare-fun v3 () T@U)
(assert  (and (and (and (= (type v0) (CType SType SType)) (= (type v1) (CType SType TType))) (= (type v2) SType)) (= (type v3) TType)))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (U_2_bool (MapType0Select ar (int_2_U 27))) false)) (=> (= (U_2_bool (MapType0Select ar (int_2_U 27))) false) (and (=> (= (ControlFlow 0 2) (- 0 4)) (k v0)) (=> (k v0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (f v1 v2) (f2 v1 v2))) (=> (= (f v1 v2) (f2 v1 v2)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (n v3 con) (m@@2 v3 v2)))))))))))
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
(declare-fun CTypeInv0 (T@T) T@T)
(declare-fun CType (T@T T@T) T@T)
(declare-fun k (T@U) Bool)
(declare-fun CTypeInv1 (T@T) T@T)
(declare-fun g (T@U) T@U)
(declare-fun h (T@U) T@U)
(declare-fun TType () T@T)
(declare-fun o (T@U) Bool)
(declare-fun someConst () Int)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun ar () T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun SType () T@T)
(declare-fun f (T@U T@U) Int)
(declare-fun f2 (T@U T@U) Int)
(declare-fun l (T@U) Bool)
(declare-fun n (T@U T@U) Bool)
(declare-fun con () T@U)
(declare-fun m@@2 (T@U T@U) Bool)
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
(assert  (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (CType arg0@@11 arg1)) 6)
 :qid |ctor:CType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (CTypeInv0 (CType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:CTypeInv0|
 :pattern ( (CType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (CTypeInv1 (CType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:CTypeInv1|
 :pattern ( (CType arg0@@13 arg1@@1))
))))
(assert (forall ((x@@8 T@U) ) (! (let ((b (CTypeInv0 (type x@@8))))
 (=> (= (type x@@8) (CType b b)) (k x@@8)))
 :qid |Triggers0bpl.26:19|
 :skolemid |1|
 :no-pattern (type x@@8)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert (forall ((x@@9 T@U) ) (! (let ((b@@0 (CTypeInv0 (type x@@9))))
 (=> (= (type x@@9) (CType b@@0 b@@0)) (k x@@9)))
 :qid |Triggers0bpl.32:19|
 :skolemid |7|
 :pattern ( (k x@@9))
)))
(assert  (and (and (= (Ctor TType) 7) (forall ((arg0@@14 T@U) ) (! (= (type (g arg0@@14)) TType)
 :qid |funType:g|
 :pattern ( (g arg0@@14))
))) (forall ((arg0@@15 T@U) ) (! (let ((a (type arg0@@15)))
(= (type (h arg0@@15)) a))
 :qid |funType:h|
 :pattern ( (h arg0@@15))
))))
(assert (forall ((x@@10 T@U) ) (!  (=> (= (type x@@10) TType) (= x@@10 x@@10))
 :qid |Triggers0bpl.29:15|
 :skolemid |4|
 :pattern ( (g (h x@@10)))
 :pattern ( (g x@@10))
)))
(assert (forall ((x@@11 T@U) ) (! (= x@@11 x@@11)
 :qid |Triggers0bpl.30:19|
 :skolemid |5|
 :pattern ( (h x@@11))
)))
(assert (forall ((x@@12 T@U) (y@@1 T@U) ) (! (let ((b@@1 (type x@@12)))
 (=> (and (= (type y@@1) b@@1) (o x@@12)) (= someConst 42)))
 :qid |Triggers0bpl.31:19|
 :skolemid |6|
 :pattern ( (o x@@12) (o y@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@16 T@T) (arg1@@2 T@T) ) (! (= (Ctor (MapType0Type arg0@@16 arg1@@2)) 8)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@17 T@T) (arg1@@3 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@17 arg1@@3)) arg0@@17)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@17 arg1@@3))
))) (forall ((arg0@@18 T@T) (arg1@@4 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@18 arg1@@4)) arg1@@4)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@18 arg1@@4))
))) (forall ((arg0@@19 T@U) (arg1@@5 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@19))))
(= (type (MapType0Select arg0@@19 arg1@@5)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@19 arg1@@5))
))) (forall ((arg0@@20 T@U) (arg1@@6 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@6)))
(= (type (MapType0Store arg0@@20 arg1@@6 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@20 arg1@@6 arg2))
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
)))) (= (type ar) (MapType0Type intType boolType))))
(assert (forall ((x@@13 T@U) ) (!  (=> (= (type x@@13) intType) (not (U_2_bool (MapType0Select ar x@@13))))
 :qid |Triggers0bpl.9:15|
 :skolemid |0|
 :pattern ( (MapType0Select ar x@@13))
)))
(assert (= (Ctor SType) 9))
(assert (forall ((x@@14 T@U) (y@@2 T@U) ) (!  (=> (and (= (type x@@14) (CType SType TType)) (= (type y@@2) SType)) (= (f x@@14 y@@2) (f2 x@@14 y@@2)))
 :qid |Triggers0bpl.27:15|
 :skolemid |2|
 :no-pattern (type x@@14)
 :no-pattern (type y@@2)
 :no-pattern (U_2_int x@@14)
 :no-pattern (U_2_bool x@@14)
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
)))
(assert (= (type con) TType))
(assert (forall ((x@@15 T@U) (y@@3 T@U) ) (!  (=> (and (= (type x@@15) SType) (= (type y@@3) TType)) (and (l x@@15) (= (n y@@3 con) (m@@2 y@@3 x@@15))))
 :qid |Triggers0bpl.28:15|
 :skolemid |3|
 :no-pattern (type x@@15)
 :no-pattern (type y@@3)
 :no-pattern (U_2_int x@@15)
 :no-pattern (U_2_bool x@@15)
 :no-pattern (U_2_int y@@3)
 :no-pattern (U_2_bool y@@3)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@16 () T@U)
(declare-fun a@@0 () T@T)
(assert (= (type x@@16) a@@0))
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (= someConst 42)) (=> (= someConst 42) (=> (= (o x@@16) (o x@@16)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= someConst 42)) (=> (= someConst 42) (=> (= (ControlFlow 0 2) (- 0 1)) (= someConst 43)))))))))
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
(pop 1)
; Invalid
(get-info :rlimit)
