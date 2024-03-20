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
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun f (T@U) Int)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1TypeInv2 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
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
(assert  (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@11 arg1)) 6)
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
)))))
(assert (forall ((x@@8 T@U) ) (!  (=> (= (type x@@8) (MapType0Type intType boolType)) (= (f x@@8) 7))
 :qid |Maps0bpl.12:15|
 :skolemid |0|
 :no-pattern (type x@@8)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@16 T@T) (arg1@@4 T@T) (arg2@@0 T@T) ) (! (= (Ctor (MapType1Type arg0@@16 arg1@@4 arg2@@0)) 7)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@17 T@T) (arg1@@5 T@T) (arg2@@1 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@17 arg1@@5 arg2@@1)) arg0@@17)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@17 arg1@@5 arg2@@1))
))) (forall ((arg0@@18 T@T) (arg1@@6 T@T) (arg2@@2 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@18 arg1@@6 arg2@@2)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@18 arg1@@6 arg2@@2))
))) (forall ((arg0@@19 T@T) (arg1@@7 T@T) (arg2@@3 T@T) ) (! (= (MapType1TypeInv2 (MapType1Type arg0@@19 arg1@@7 arg2@@3)) arg2@@3)
 :qid |typeInv:MapType1TypeInv2|
 :pattern ( (MapType1Type arg0@@19 arg1@@7 arg2@@3))
))) (forall ((arg0@@20 T@U) (arg1@@8 T@U) (arg2@@4 T@U) ) (! (let ((aVar2 (MapType1TypeInv2 (type arg0@@20))))
(= (type (MapType1Select arg0@@20 arg1@@8 arg2@@4)) aVar2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@20 arg1@@8 arg2@@4))
))) (forall ((arg0@@21 T@U) (arg1@@9 T@U) (arg2@@5 T@U) (arg3 T@U) ) (! (let ((aVar2@@0 (type arg3)))
(let ((aVar1@@2 (type arg2@@5)))
(let ((aVar0@@0 (type arg1@@9)))
(= (type (MapType1Store arg0@@21 arg1@@9 arg2@@5 arg3)) (MapType1Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@9 arg2@@5 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar2@@1 (MapType1TypeInv2 (type m@@2))))
 (=> (= (type val@@2) aVar2@@1) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))))
(assert (forall ((y@@1 T@U) ) (!  (=> (= (type y@@1) (MapType1Type intType boolType intType)) (= (f y@@1) 7))
 :qid |Maps0bpl.13:15|
 :skolemid |1|
 :no-pattern (type y@@1)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a () T@U)
(declare-fun b () T@U)
(declare-fun x@0 () T@U)
(declare-fun x@1 () T@U)
(assert  (and (and (and (= (type a) (MapType0Type intType boolType)) (= (type b) (MapType1Type intType boolType intType))) (= (type x@0) (MapType0Type intType boolType))) (= (type x@1) (MapType0Type intType boolType))))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 6)) (> (f a) 0)) (=> (> (f a) 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (> (f b) 0)) (=> (> (f b) 0) (=> (and (= x@0 (MapType0Store a (int_2_U 17) (bool_2_U false))) (= x@1 (MapType0Store x@0 (int_2_U 16) (bool_2_U true)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (= (U_2_bool (MapType0Select x@1 (int_2_U 15))) (U_2_bool (MapType0Select a (int_2_U 15)))) (not (U_2_bool (MapType0Select x@1 (int_2_U 17)))))) (=> (and (= (U_2_bool (MapType0Select x@1 (int_2_U 15))) (U_2_bool (MapType0Select a (int_2_U 15)))) (not (U_2_bool (MapType0Select x@1 (int_2_U 17))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (f x@1) 7)) (=> (= (f x@1) 7) (=> (= (ControlFlow 0 2) (- 0 1)) (= (f x@1) 8)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
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
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun f (T@U) Int)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1TypeInv2 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
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
(assert  (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@11 arg1)) 6)
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
)))))
(assert (forall ((x@@8 T@U) ) (!  (=> (= (type x@@8) (MapType0Type intType boolType)) (= (f x@@8) 7))
 :qid |Maps0bpl.12:15|
 :skolemid |0|
 :no-pattern (type x@@8)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@16 T@T) (arg1@@4 T@T) (arg2@@0 T@T) ) (! (= (Ctor (MapType1Type arg0@@16 arg1@@4 arg2@@0)) 7)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@17 T@T) (arg1@@5 T@T) (arg2@@1 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@17 arg1@@5 arg2@@1)) arg0@@17)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@17 arg1@@5 arg2@@1))
))) (forall ((arg0@@18 T@T) (arg1@@6 T@T) (arg2@@2 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@18 arg1@@6 arg2@@2)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@18 arg1@@6 arg2@@2))
))) (forall ((arg0@@19 T@T) (arg1@@7 T@T) (arg2@@3 T@T) ) (! (= (MapType1TypeInv2 (MapType1Type arg0@@19 arg1@@7 arg2@@3)) arg2@@3)
 :qid |typeInv:MapType1TypeInv2|
 :pattern ( (MapType1Type arg0@@19 arg1@@7 arg2@@3))
))) (forall ((arg0@@20 T@U) (arg1@@8 T@U) (arg2@@4 T@U) ) (! (let ((aVar2 (MapType1TypeInv2 (type arg0@@20))))
(= (type (MapType1Select arg0@@20 arg1@@8 arg2@@4)) aVar2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@20 arg1@@8 arg2@@4))
))) (forall ((arg0@@21 T@U) (arg1@@9 T@U) (arg2@@5 T@U) (arg3 T@U) ) (! (let ((aVar2@@0 (type arg3)))
(let ((aVar1@@2 (type arg2@@5)))
(let ((aVar0@@0 (type arg1@@9)))
(= (type (MapType1Store arg0@@21 arg1@@9 arg2@@5 arg3)) (MapType1Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@9 arg2@@5 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar2@@1 (MapType1TypeInv2 (type m@@2))))
 (=> (= (type val@@2) aVar2@@1) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))))
(assert (forall ((y@@1 T@U) ) (!  (=> (= (type y@@1) (MapType1Type intType boolType intType)) (= (f y@@1) 7))
 :qid |Maps0bpl.13:15|
 :skolemid |1|
 :no-pattern (type y@@1)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun heap () T@U)
(declare-fun MapType2Type (T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@22 T@T) ) (! (= (Ctor (MapType2Type arg0@@22)) 8)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@23 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@23)) arg0@@23)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@23))
))) (forall ((arg0@@24 T@T) ) (! (= (Ctor (FieldType arg0@@24)) 9)
 :qid |ctor:FieldType|
))) (forall ((arg0@@25 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@25)) arg0@@25)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@25))
))) (forall ((arg0@@26 T@U) (arg1@@10 T@U) (arg2@@6 T@U) ) (! (let ((a (FieldTypeInv0 (type arg2@@6))))
(= (type (MapType2Select arg0@@26 arg1@@10 arg2@@6)) a))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@26 arg1@@10 arg2@@6))
))) (forall ((arg0@@27 T@U) (arg1@@11 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar0@@1 (type arg1@@11)))
(= (type (MapType2Store arg0@@27 arg1@@11 arg2@@7 arg3@@0)) (MapType2Type aVar0@@1)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@27 arg1@@11 arg2@@7 arg3@@0))
))) (forall ((m@@6 T@U) (x0@@6 T@U) (x1@@3 T@U) (val@@6 T@U) ) (! (let ((a@@0 (FieldTypeInv0 (type x1@@3))))
 (=> (= (type val@@6) a@@0) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@3 val@@6) x0@@6 x1@@3) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@4 T@U) (y0@@4 T@U) (y1@@2 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@4 val@@7) y0@@4 y1@@2) (MapType2Select m@@7 y0@@4 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@5 T@U) (y0@@5 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@5 val@@8) y0@@5 y1@@3) (MapType2Select m@@8 y0@@5 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@9 T@U) (m@@9 T@U) (x0@@9 T@U) (x1@@6 T@U) (y0@@6 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@9 x0@@9 x1@@6 val@@9) y0@@6 y1@@4) (MapType2Select m@@9 y0@@6 y1@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (Ctor refType) 10)) (= (type heap) (MapType2Type refType))))
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (> (f heap) 0))))
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
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun f (T@U) Int)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1TypeInv2 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
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
(assert  (and (and (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@11 arg1)) 6)
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
)))))
(assert (forall ((x@@8 T@U) ) (!  (=> (= (type x@@8) (MapType0Type intType boolType)) (= (f x@@8) 7))
 :qid |Maps0bpl.12:15|
 :skolemid |0|
 :no-pattern (type x@@8)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@16 T@T) (arg1@@4 T@T) (arg2@@0 T@T) ) (! (= (Ctor (MapType1Type arg0@@16 arg1@@4 arg2@@0)) 7)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@17 T@T) (arg1@@5 T@T) (arg2@@1 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@17 arg1@@5 arg2@@1)) arg0@@17)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@17 arg1@@5 arg2@@1))
))) (forall ((arg0@@18 T@T) (arg1@@6 T@T) (arg2@@2 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@18 arg1@@6 arg2@@2)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@18 arg1@@6 arg2@@2))
))) (forall ((arg0@@19 T@T) (arg1@@7 T@T) (arg2@@3 T@T) ) (! (= (MapType1TypeInv2 (MapType1Type arg0@@19 arg1@@7 arg2@@3)) arg2@@3)
 :qid |typeInv:MapType1TypeInv2|
 :pattern ( (MapType1Type arg0@@19 arg1@@7 arg2@@3))
))) (forall ((arg0@@20 T@U) (arg1@@8 T@U) (arg2@@4 T@U) ) (! (let ((aVar2 (MapType1TypeInv2 (type arg0@@20))))
(= (type (MapType1Select arg0@@20 arg1@@8 arg2@@4)) aVar2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@20 arg1@@8 arg2@@4))
))) (forall ((arg0@@21 T@U) (arg1@@9 T@U) (arg2@@5 T@U) (arg3 T@U) ) (! (let ((aVar2@@0 (type arg3)))
(let ((aVar1@@2 (type arg2@@5)))
(let ((aVar0@@0 (type arg1@@9)))
(= (type (MapType1Store arg0@@21 arg1@@9 arg2@@5 arg3)) (MapType1Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@9 arg2@@5 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar2@@1 (MapType1TypeInv2 (type m@@2))))
 (=> (= (type val@@2) aVar2@@1) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))))
(assert (forall ((y@@1 T@U) ) (!  (=> (= (type y@@1) (MapType1Type intType boolType intType)) (= (f y@@1) 7))
 :qid |Maps0bpl.13:15|
 :skolemid |1|
 :no-pattern (type y@@1)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun heap2@0 () T@U)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun heap () T@U)
(declare-fun o () T@U)
(declare-fun e () T@U)
(declare-fun heap2@1 () T@U)
(declare-fun g () T@U)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun heap2@2 () T@U)
(declare-fun h () T@U)
(declare-fun heap2@3 () T@U)
(declare-fun i () T@U)
(declare-fun MapType2Type (T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun refType () T@T)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@22 T@T) ) (! (= (Ctor (MapType2Type arg0@@22)) 8)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@23 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@23)) arg0@@23)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@23))
))) (forall ((arg0@@24 T@T) ) (! (= (Ctor (FieldType arg0@@24)) 9)
 :qid |ctor:FieldType|
))) (forall ((arg0@@25 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@25)) arg0@@25)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@25))
))) (forall ((arg0@@26 T@U) (arg1@@10 T@U) (arg2@@6 T@U) ) (! (let ((a (FieldTypeInv0 (type arg2@@6))))
(= (type (MapType2Select arg0@@26 arg1@@10 arg2@@6)) a))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@26 arg1@@10 arg2@@6))
))) (forall ((arg0@@27 T@U) (arg1@@11 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar0@@1 (type arg1@@11)))
(= (type (MapType2Store arg0@@27 arg1@@11 arg2@@7 arg3@@0)) (MapType2Type aVar0@@1)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@27 arg1@@11 arg2@@7 arg3@@0))
))) (forall ((m@@6 T@U) (x0@@6 T@U) (x1@@3 T@U) (val@@6 T@U) ) (! (let ((a@@0 (FieldTypeInv0 (type x1@@3))))
 (=> (= (type val@@6) a@@0) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@3 val@@6) x0@@6 x1@@3) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@4 T@U) (y0@@4 T@U) (y1@@2 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@4 val@@7) y0@@4 y1@@2) (MapType2Select m@@7 y0@@4 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@5 T@U) (y0@@5 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@5 val@@8) y0@@5 y1@@3) (MapType2Select m@@8 y0@@5 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@9 T@U) (m@@9 T@U) (x0@@9 T@U) (x1@@6 T@U) (y0@@6 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@9 x0@@9 x1@@6 val@@9) y0@@6 y1@@4) (MapType2Select m@@9 y0@@6 y1@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (= (Ctor refType) 10)) (= (type heap2@0) (MapType2Type refType))) (= (type heap) (MapType2Type refType))) (= (type o) refType)) (= (type e) (FieldType intType))) (= (type heap2@1) (MapType2Type refType))) (= (type g) (FieldType boolType))) (= (type heap2@2) (MapType2Type refType))) (= (type h) (FieldType (FieldType intType)))) (= (type heap2@3) (MapType2Type refType))) (= (type i) (FieldType intType))))
(set-info :boogie-vc-id R)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (= heap2@0 (MapType2Store heap o e (int_2_U 17))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= heap2@0 (MapType2Store heap o e (int_2_U 17)))) (=> (= heap2@0 (MapType2Store heap o e (int_2_U 17))) (=> (= heap2@1 (MapType2Store heap2@0 o g (bool_2_U true))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (= (U_2_int (MapType2Select heap2@1 o e)) 17) (U_2_bool (MapType2Select heap2@1 o g)))) (=> (and (= (U_2_int (MapType2Select heap2@1 o e)) 17) (U_2_bool (MapType2Select heap2@1 o g))) (=> (= heap2@2 (MapType2Store heap2@1 o h e)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (U_2_int (MapType2Select heap2@2 o (MapType2Select heap2@2 o h))) 17)) (=> (= (U_2_int (MapType2Select heap2@2 o (MapType2Select heap2@2 o h))) 17) (=> (= heap2@3 (MapType2Store heap2@2 o i (int_2_U 16))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType2Select heap2@3 o g))) (=> (U_2_bool (MapType2Select heap2@3 o g)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (U_2_int (MapType2Select heap2@3 o (MapType2Select heap2@3 o h))) 17))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
