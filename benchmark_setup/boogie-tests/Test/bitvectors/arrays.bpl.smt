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
(declare-fun f1 () T@U)
(declare-fun f2 () T@U)
(declare-fun f3 () T@U)
(declare-fun r1 () T@U)
(declare-fun r2 () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun bv32Type () T@T)
(declare-fun refType () T@T)
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
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type f1) (FieldType intType))) (= (Ctor bv32Type) 7)) (= (type f2) (FieldType bv32Type))) (= (type f3) (FieldType boolType))) (= (Ctor refType) 8)) (= (type r1) refType)) (= (type r2) refType)))
(assert (distinct f1 f2 f3 r1 r2)
)
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H@0 () T@U)
(declare-fun MapType0Store (T@U T@U T@U T@U) T@U)
(declare-fun H () T@U)
(declare-fun H@1 () T@U)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun H@2 () T@U)
(declare-fun i@0 () Int)
(declare-fun MapType0Select (T@U T@U T@U) T@U)
(declare-fun b@0 () (_ BitVec 32))
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun c@0 () Bool)
(declare-fun MapType0Type (T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (MapType0Type arg0@@13)) 9)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@14 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14)) arg0@@14)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@14))
))) (forall ((arg0@@15 T@U) (arg1 T@U) (arg2 T@U) ) (! (let ((x@@8 (FieldTypeInv0 (type arg2))))
(= (type (MapType0Select arg0@@15 arg1 arg2)) x@@8))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@15 arg1 arg2))
))) (forall ((arg0@@16 T@U) (arg1@@0 T@U) (arg2@@0 T@U) (arg3 T@U) ) (! (let ((aVar0 (type arg1@@0)))
(= (type (MapType0Store arg0@@16 arg1@@0 arg2@@0 arg3)) (MapType0Type aVar0)))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@16 arg1@@0 arg2@@0 arg3))
))) (forall ((m T@U) (x0 T@U) (x1 T@U) (val T@U) ) (! (let ((x@@9 (FieldTypeInv0 (type x1))))
 (=> (= (type val) x@@9) (= (MapType0Select (MapType0Store m x0 x1 val) x0 x1) val)))
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
)))) (= (type H@0) (MapType0Type refType))) (= (type H) (MapType0Type refType))) (= (type H@1) (MapType0Type refType))) (forall ((arg0@@17 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@17)) arg0@@17)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@17))
))) (forall ((x@@10 T@U) ) (!  (=> (= (type x@@10) bv32Type) (= (bv32_2_U (U_2_bv32 x@@10)) x@@10))
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@10))
))) (forall ((arg0@@18 (_ BitVec 32)) ) (! (= (type (bv32_2_U arg0@@18)) bv32Type)
 :qid |funType:bv32_2_U|
 :pattern ( (bv32_2_U arg0@@18))
))) (= (type H@2) (MapType0Type refType))))
(set-info :boogie-vc-id foo)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (= H@0 (MapType0Store H r1 f1 (int_2_U 3))) (= H@1 (MapType0Store H@0 r1 f2 (bv32_2_U #x0000004d)))) (=> (and (and (= H@2 (MapType0Store H@1 r1 f3 (bool_2_U true))) (= i@0 (U_2_int (MapType0Select H@2 r1 f1)))) (and (= b@0 (U_2_bv32 (MapType0Select H@2 r1 f2))) (= c@0 (U_2_bool (MapType0Select H@2 r1 f3))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= i@0 3)) (=> (= i@0 3) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= b@0 #x0000004d)) (=> (= b@0 #x0000004d) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (MapType0Select H@2 r1 f3)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
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
(declare-fun f1 () T@U)
(declare-fun f2 () T@U)
(declare-fun f3 () T@U)
(declare-fun r1 () T@U)
(declare-fun r2 () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun bv32Type () T@T)
(declare-fun refType () T@T)
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
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 6)
 :qid |ctor:FieldType|
)) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type f1) (FieldType intType))) (= (Ctor bv32Type) 7)) (= (type f2) (FieldType bv32Type))) (= (type f3) (FieldType boolType))) (= (Ctor refType) 8)) (= (type r1) refType)) (= (type r2) refType)))
(assert (distinct f1 f2 f3 r1 r2)
)
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun B@0 () T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun B () T@U)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun b@0 () (_ BitVec 32))
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@13 arg1)) 9)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@14 arg1@@0)) arg0@@14)
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
)))) (= (type B@0) (MapType0Type bv32Type bv32Type))) (= (type B) (MapType0Type bv32Type bv32Type))) (forall ((arg0@@18 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@18)) arg0@@18)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@18))
))) (forall ((x@@8 T@U) ) (!  (=> (= (type x@@8) bv32Type) (= (bv32_2_U (U_2_bv32 x@@8)) x@@8))
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@8))
))) (forall ((arg0@@19 (_ BitVec 32)) ) (! (= (type (bv32_2_U arg0@@19)) bv32Type)
 :qid |funType:bv32_2_U|
 :pattern ( (bv32_2_U arg0@@19))
))))
(set-info :boogie-vc-id bar)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= B@0 (MapType0Store B (bv32_2_U #x0000002a) (bv32_2_U #x0000004d))) (=> (and (= b@0 (U_2_bv32 (MapType0Select B@0 (bv32_2_U #x0000002a)))) (= (ControlFlow 0 2) (- 0 1))) (= b@0 #x0000004d)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
