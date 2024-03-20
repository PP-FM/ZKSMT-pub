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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m@0 () T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun m () T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun o () T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun n () T@U)
(declare-fun MapType0Type (T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun refType () T@T)
(declare-fun MapType1Type () T@T)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (MapType0Type arg0@@11)) 6)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@12 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@12)) arg0@@12)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@12))
))) (forall ((arg0@@13 T@U) (arg1 T@U) ) (! (let ((aVar0 (MapType0TypeInv0 (type arg0@@13))))
(= (type (MapType0Select arg0@@13 arg1)) aVar0))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@13 arg1))
))) (forall ((arg0@@14 T@U) (arg1@@0 T@U) (arg2 T@U) ) (! (let ((aVar0@@0 (type arg2)))
(= (type (MapType0Store arg0@@14 arg1@@0 arg2)) (MapType0Type aVar0@@0)))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@14 arg1@@0 arg2))
))) (forall ((m@@0 T@U) (x0 T@U) (val T@U) ) (! (let ((aVar0@@1 (MapType0TypeInv0 (type m@@0))))
 (=> (= (type val) aVar0@@1) (= (MapType0Select (MapType0Store m@@0 x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@1 x0@@0 val@@0) y0) (MapType0Select m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@2 x0@@1 val@@1) y0@@0) (MapType0Select m@@2 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (= (Ctor refType) 7)) (= (type m@0) (MapType0Type refType))) (= (type m) (MapType0Type refType))) (= (type null) refType)) (= (type o) refType)) (forall ((arg0@@15 T@U) (arg1@@1 T@U) ) (! (let ((b (type arg1@@1)))
(= (type (MapType1Select arg0@@15 arg1@@1)) b))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@15 arg1@@1))
))) (= (Ctor MapType1Type) 8)) (forall ((arg0@@16 T@U) (arg1@@2 T@U) (arg2@@0 T@U) ) (! (= (type (MapType1Store arg0@@16 arg1@@2 arg2@@0)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@16 arg1@@2 arg2@@0))
))) (forall ((m@@3 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((b@@0 (type x0@@2)))
 (=> (= (type val@@2) b@@0) (= (MapType1Select (MapType1Store m@@3 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@4 x0@@3 val@@3) y0@@1) (MapType1Select m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@5 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@5 x0@@4 val@@4) y0@@2) (MapType1Select m@@5 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (type n) MapType1Type)))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= m@0 (MapType0Store m (int_2_U 5) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (MapType0Select (MapType0Store m@0 (bool_2_U true) o) (int_2_U 5)) null)) (=> (= (MapType0Select (MapType0Store m@0 (bool_2_U true) o) (int_2_U 5)) null) (=> (= (ControlFlow 0 2) (- 0 1)) (= (MapType0Select (MapType0Store m@0 (MapType1Select n (bool_2_U true)) o) (int_2_U 5)) null)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
