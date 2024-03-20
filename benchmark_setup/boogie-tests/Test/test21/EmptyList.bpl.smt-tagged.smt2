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
(declare-fun ListType (T@T) T@T)
(declare-fun Cons (T@U T@U) T@U)
(declare-fun NIL (T@T) T@U)
(declare-fun ListTypeInv0 (T@T) T@T)
(declare-fun car (T@U) T@U)
(declare-fun cdr (T@U) T@U)
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
(assert  (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (ListType arg0@@11)) 6)
 :qid |ctor:ListType|
)) (forall ((arg0@@12 T@T) ) (! (= (ListTypeInv0 (ListType arg0@@12)) arg0@@12)
 :qid |typeInv:ListTypeInv0|
 :pattern ( (ListType arg0@@12))
))) (forall ((arg0@@13 T@U) (arg1 T@U) ) (! (let ((a (type arg0@@13)))
(= (type (Cons arg0@@13 arg1)) (ListType a)))
 :qid |funType:Cons|
 :pattern ( (Cons arg0@@13 arg1))
))) (forall ((a@@0 T@T) ) (! (= (type (NIL a@@0)) (ListType a@@0))
 :qid |funType:NIL|
 :pattern ( (NIL a@@0))
))))
(assert (forall ((x@@8 T@U) (l T@U) ) (! (let ((a@@1 (type x@@8)))
 (=> (= (type l) (ListType a@@1)) (not (= (Cons x@@8 l) (NIL a@@1)))))
 :qid |EmptyListbpl.18:18|
 :skolemid |2|
 :no-pattern (type l)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
 :no-pattern (U_2_int l)
 :no-pattern (U_2_bool l)
)))
(assert (forall ((arg0@@14 T@U) ) (! (let ((a@@2 (ListTypeInv0 (type arg0@@14))))
(= (type (car arg0@@14)) a@@2))
 :qid |funType:car|
 :pattern ( (car arg0@@14))
)))
(assert (forall ((x@@9 T@U) (l@@0 T@U) ) (! (let ((a@@3 (type x@@9)))
 (=> (= (type l@@0) (ListType a@@3)) (= (car (Cons x@@9 l@@0)) x@@9)))
 :qid |EmptyListbpl.15:18|
 :skolemid |0|
 :no-pattern (type l@@0)
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
 :no-pattern (U_2_int l@@0)
 :no-pattern (U_2_bool l@@0)
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((a@@4 (ListTypeInv0 (type arg0@@15))))
(= (type (cdr arg0@@15)) (ListType a@@4)))
 :qid |funType:cdr|
 :pattern ( (cdr arg0@@15))
)))
(assert (forall ((x@@10 T@U) (l@@1 T@U) ) (! (let ((a@@5 (type x@@10)))
 (=> (= (type l@@1) (ListType a@@5)) (= (cdr (Cons x@@10 l@@1)) l@@1)))
 :qid |EmptyListbpl.16:18|
 :skolemid |1|
 :no-pattern (type l@@1)
 :no-pattern (U_2_int x@@10)
 :no-pattern (U_2_bool x@@10)
 :no-pattern (U_2_int l@@1)
 :no-pattern (U_2_bool l@@1)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l@0 () T@U)
(declare-fun l@1 () T@U)
(declare-fun l@2 () T@U)
(declare-fun l@3 () T@U)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun mar () T@U)
(declare-fun m () T@U)
(declare-fun mar@0 () T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun l@4 () T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type l@0) (ListType boolType)) (= (type l@1) (ListType boolType))) (= (type l@2) (ListType boolType))) (= (type l@3) (ListType boolType))) (forall ((arg0@@16 T@T) (arg1@@0 T@T) ) (! (= (Ctor (MapType0Type arg0@@16 arg1@@0)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@17 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@17 arg1@@1)) arg0@@17)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@17 arg1@@1))
))) (forall ((arg0@@18 T@T) (arg1@@2 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@18 arg1@@2)) arg1@@2)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@18 arg1@@2))
))) (forall ((arg0@@19 T@U) (arg1@@3 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@19))))
(= (type (MapType0Select arg0@@19 arg1@@3)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@19 arg1@@3))
))) (forall ((arg0@@20 T@U) (arg1@@4 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@4)))
(= (type (MapType0Store arg0@@20 arg1@@4 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@20 arg1@@4 arg2))
))) (forall ((m@@0 T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m@@0))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m@@0 x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@1 x0@@0 val@@0) y0) (MapType0Select m@@1 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@2 x0@@1 val@@1) y0@@0) (MapType0Select m@@2 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (= (type mar) (MapType0Type intType (ListType intType)))) (= (type m) (ListType intType))) (= (type mar@0) (MapType0Type intType (ListType intType)))) (= (type l@4) (ListType boolType))))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= l@0 (Cons (bool_2_U true) (NIL boolType))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (= l@0 (NIL boolType)))) (=> (not (= l@0 (NIL boolType))) (=> (= l@1 (cdr l@0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= l@1 (NIL boolType))) (=> (= l@1 (NIL boolType)) (=> (and (= l@2 (Cons (bool_2_U true) l@1)) (= l@3 (Cons (bool_2_U false) l@2))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (U_2_int (car (MapType0Select mar (int_2_U 1)))) (U_2_int (car (cdr m))))) (=> (= (U_2_int (car (MapType0Select mar (int_2_U 1)))) (U_2_int (car (cdr m)))) (=> (= mar@0 (MapType0Store mar (int_2_U 0) (NIL intType))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (not (= (MapType0Select mar@0 (int_2_U 0)) m))) (=> (not (= (MapType0Select mar@0 (int_2_U 0)) m)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (not (U_2_bool (car l@3))) (U_2_bool (car (cdr l@3))))) (=> (and (not (U_2_bool (car l@3))) (U_2_bool (car (cdr l@3)))) (=> (and (= l@4 (cdr (cdr l@3))) (= (ControlFlow 0 2) (- 0 1))) (forall ((i Int) ) (!  (=> (> i 0) (= (MapType0Select mar@0 (int_2_U i)) (cdr (MapType0Select mar@0 (int_2_U (- i 1))))))
 :qid |EmptyListbpl.46:18|
 :skolemid |4|
)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (not (= m (NIL intType))) (=> (and (and (= (MapType0Select mar (int_2_U 0)) m) (forall ((i@@0 Int) ) (!  (=> (> i@@0 0) (= (MapType0Select mar (int_2_U i@@0)) (cdr (MapType0Select mar (int_2_U (- i@@0 1))))))
 :qid |EmptyListbpl.27:39|
 :skolemid |3|
))) (= (ControlFlow 0 8) 2)) anon0_correct))))
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
(declare-fun ListType (T@T) T@T)
(declare-fun Cons (T@U T@U) T@U)
(declare-fun NIL (T@T) T@U)
(declare-fun ListTypeInv0 (T@T) T@T)
(declare-fun car (T@U) T@U)
(declare-fun cdr (T@U) T@U)
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
(assert  (and (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (ListType arg0@@11)) 6)
 :qid |ctor:ListType|
)) (forall ((arg0@@12 T@T) ) (! (= (ListTypeInv0 (ListType arg0@@12)) arg0@@12)
 :qid |typeInv:ListTypeInv0|
 :pattern ( (ListType arg0@@12))
))) (forall ((arg0@@13 T@U) (arg1 T@U) ) (! (let ((a (type arg0@@13)))
(= (type (Cons arg0@@13 arg1)) (ListType a)))
 :qid |funType:Cons|
 :pattern ( (Cons arg0@@13 arg1))
))) (forall ((a@@0 T@T) ) (! (= (type (NIL a@@0)) (ListType a@@0))
 :qid |funType:NIL|
 :pattern ( (NIL a@@0))
))))
(assert (forall ((x@@8 T@U) (l T@U) ) (! (let ((a@@1 (type x@@8)))
 (=> (= (type l) (ListType a@@1)) (not (= (Cons x@@8 l) (NIL a@@1)))))
 :qid |EmptyListbpl.18:18|
 :skolemid |2|
 :no-pattern (type l)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
 :no-pattern (U_2_int l)
 :no-pattern (U_2_bool l)
)))
(assert (forall ((arg0@@14 T@U) ) (! (let ((a@@2 (ListTypeInv0 (type arg0@@14))))
(= (type (car arg0@@14)) a@@2))
 :qid |funType:car|
 :pattern ( (car arg0@@14))
)))
(assert (forall ((x@@9 T@U) (l@@0 T@U) ) (! (let ((a@@3 (type x@@9)))
 (=> (= (type l@@0) (ListType a@@3)) (= (car (Cons x@@9 l@@0)) x@@9)))
 :qid |EmptyListbpl.15:18|
 :skolemid |0|
 :no-pattern (type l@@0)
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
 :no-pattern (U_2_int l@@0)
 :no-pattern (U_2_bool l@@0)
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((a@@4 (ListTypeInv0 (type arg0@@15))))
(= (type (cdr arg0@@15)) (ListType a@@4)))
 :qid |funType:cdr|
 :pattern ( (cdr arg0@@15))
)))
(assert (forall ((x@@10 T@U) (l@@1 T@U) ) (! (let ((a@@5 (type x@@10)))
 (=> (= (type l@@1) (ListType a@@5)) (= (cdr (Cons x@@10 l@@1)) l@@1)))
 :qid |EmptyListbpl.16:18|
 :skolemid |1|
 :no-pattern (type l@@1)
 :no-pattern (U_2_int x@@10)
 :no-pattern (U_2_bool x@@10)
 :no-pattern (U_2_int l@@1)
 :no-pattern (U_2_bool l@@1)
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (not (= (Cons (NIL intType) (NIL (ListType intType))) (NIL (ListType intType)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
