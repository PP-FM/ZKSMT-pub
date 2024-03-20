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
(declare-fun Len (T@U) Int)
(declare-fun Cons (T@U T@U) T@U)
(declare-fun ListTypeInv0 (T@T) T@T)
(declare-fun Car (T@U) T@U)
(declare-fun Cdr (T@U) T@U)
(declare-fun Nil (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (ListType arg0@@11)) 6)
 :qid |ctor:ListType|
)) (forall ((arg0@@12 T@T) ) (! (= (ListTypeInv0 (ListType arg0@@12)) arg0@@12)
 :qid |typeInv:ListTypeInv0|
 :pattern ( (ListType arg0@@12))
))) (forall ((arg0@@13 T@U) (arg1 T@U) ) (! (let ((a (type arg0@@13)))
(= (type (Cons arg0@@13 arg1)) (ListType a)))
 :qid |funType:Cons|
 :pattern ( (Cons arg0@@13 arg1))
))))
(assert (forall ((x@@8 T@U) (y@@1 T@U) ) (! (let ((a@@0 (type x@@8)))
 (=> (= (type y@@1) (ListType a@@0)) (= (Len (Cons x@@8 y@@1)) (+ 1 (Len y@@1)))))
 :qid |PolyListbpl.24:19|
 :skolemid |3|
 :no-pattern (type y@@1)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
(assert (forall ((arg0@@14 T@U) ) (! (let ((a@@1 (ListTypeInv0 (type arg0@@14))))
(= (type (Car arg0@@14)) a@@1))
 :qid |funType:Car|
 :pattern ( (Car arg0@@14))
)))
(assert (forall ((x@@9 T@U) (y@@2 T@U) ) (! (let ((a@@2 (type x@@9)))
 (=> (= (type y@@2) (ListType a@@2)) (= (Car (Cons x@@9 y@@2)) x@@9)))
 :qid |PolyListbpl.18:18|
 :skolemid |0|
 :no-pattern (type y@@2)
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((a@@3 (ListTypeInv0 (type arg0@@15))))
(= (type (Cdr arg0@@15)) (ListType a@@3)))
 :qid |funType:Cdr|
 :pattern ( (Cdr arg0@@15))
)))
(assert (forall ((x@@10 T@U) (y@@3 T@U) ) (! (let ((a@@4 (type x@@10)))
 (=> (= (type y@@3) (ListType a@@4)) (= (Cdr (Cons x@@10 y@@3)) y@@3)))
 :qid |PolyListbpl.19:18|
 :skolemid |1|
 :no-pattern (type y@@3)
 :no-pattern (U_2_int x@@10)
 :no-pattern (U_2_bool x@@10)
 :no-pattern (U_2_int y@@3)
 :no-pattern (U_2_bool y@@3)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((a@@5 (type arg0@@16)))
(= (type (Nil arg0@@16)) (ListType a@@5)))
 :qid |funType:Nil|
 :pattern ( (Nil arg0@@16))
)))
(assert (forall ((x@@11 T@U) ) (! (= (Len (Nil x@@11)) 0)
 :qid |PolyListbpl.23:19|
 :skolemid |2|
 :no-pattern (U_2_int x@@11)
 :no-pattern (U_2_bool x@@11)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun NIL@0 () T@U)
(declare-fun x@@12 () T@U)
(declare-fun l@0 () T@U)
(declare-fun l@1 () T@U)
(declare-fun a@@6 () T@T)
(declare-fun l@2 () T@U)
(assert  (and (and (and (and (= (type NIL@0) (ListType a@@6)) (= (type x@@12) a@@6)) (= (type l@0) (ListType a@@6))) (= (type l@1) (ListType a@@6))) (= (type l@2) (ListType a@@6))))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (=> (= NIL@0 (Nil x@@12)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= (Len NIL@0) 0)) (=> (= (Len NIL@0) 0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= (Len (Cons x@@12 (Cons x@@12 NIL@0))) 2)) (=> (= (Len (Cons x@@12 (Cons x@@12 NIL@0))) 2) (=> (= l@0 (Cons x@@12 (Cons x@@12 NIL@0))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (Len l@0) 2)) (=> (= (Len l@0) 2) (=> (= l@1 (Cons x@@12 l@0)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (and (= (Len l@1) 3) (= (Car l@1) x@@12)) (< (Len (Cdr l@1)) (Len l@1)))) (=> (and (and (= (Len l@1) 3) (= (Car l@1) x@@12)) (< (Len (Cdr l@1)) (Len l@1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((m T@U) (y@@4 T@U) ) (!  (=> (and (= (type m) (ListType a@@6)) (= (type y@@4) a@@6)) (> (Len (Cons y@@4 m)) (Len m)))
 :qid |PolyListbpl.41:18|
 :skolemid |4|
 :no-pattern (type m)
 :no-pattern (type y@@4)
 :no-pattern (U_2_int m)
 :no-pattern (U_2_bool m)
 :no-pattern (U_2_int y@@4)
 :no-pattern (U_2_bool y@@4)
))) (=> (forall ((m@@0 T@U) (y@@5 T@U) ) (!  (=> (and (= (type m@@0) (ListType a@@6)) (= (type y@@5) a@@6)) (> (Len (Cons y@@5 m@@0)) (Len m@@0)))
 :qid |PolyListbpl.41:18|
 :skolemid |4|
 :no-pattern (type m@@0)
 :no-pattern (type y@@5)
 :no-pattern (U_2_int m@@0)
 :no-pattern (U_2_bool m@@0)
 :no-pattern (U_2_int y@@5)
 :no-pattern (U_2_bool y@@5)
)) (=> (= l@2 (Cdr l@1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (= (Len l@2) 2) (= (Car l@2) x@@12))) (=> (and (= (Len l@2) 2) (= (Car l@2) x@@12)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (Len (Cons x@@12 (Cons x@@12 (Cons x@@12 NIL@0)))) 2))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 2) anon0_correct)))
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
(declare-fun Len (T@U) Int)
(declare-fun Cons (T@U T@U) T@U)
(declare-fun ListTypeInv0 (T@T) T@T)
(declare-fun Car (T@U) T@U)
(declare-fun Cdr (T@U) T@U)
(declare-fun Nil (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (ListType arg0@@11)) 6)
 :qid |ctor:ListType|
)) (forall ((arg0@@12 T@T) ) (! (= (ListTypeInv0 (ListType arg0@@12)) arg0@@12)
 :qid |typeInv:ListTypeInv0|
 :pattern ( (ListType arg0@@12))
))) (forall ((arg0@@13 T@U) (arg1 T@U) ) (! (let ((a (type arg0@@13)))
(= (type (Cons arg0@@13 arg1)) (ListType a)))
 :qid |funType:Cons|
 :pattern ( (Cons arg0@@13 arg1))
))))
(assert (forall ((x@@8 T@U) (y@@1 T@U) ) (! (let ((a@@0 (type x@@8)))
 (=> (= (type y@@1) (ListType a@@0)) (= (Len (Cons x@@8 y@@1)) (+ 1 (Len y@@1)))))
 :qid |PolyListbpl.24:19|
 :skolemid |3|
 :no-pattern (type y@@1)
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
(assert (forall ((arg0@@14 T@U) ) (! (let ((a@@1 (ListTypeInv0 (type arg0@@14))))
(= (type (Car arg0@@14)) a@@1))
 :qid |funType:Car|
 :pattern ( (Car arg0@@14))
)))
(assert (forall ((x@@9 T@U) (y@@2 T@U) ) (! (let ((a@@2 (type x@@9)))
 (=> (= (type y@@2) (ListType a@@2)) (= (Car (Cons x@@9 y@@2)) x@@9)))
 :qid |PolyListbpl.18:18|
 :skolemid |0|
 :no-pattern (type y@@2)
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((a@@3 (ListTypeInv0 (type arg0@@15))))
(= (type (Cdr arg0@@15)) (ListType a@@3)))
 :qid |funType:Cdr|
 :pattern ( (Cdr arg0@@15))
)))
(assert (forall ((x@@10 T@U) (y@@3 T@U) ) (! (let ((a@@4 (type x@@10)))
 (=> (= (type y@@3) (ListType a@@4)) (= (Cdr (Cons x@@10 y@@3)) y@@3)))
 :qid |PolyListbpl.19:18|
 :skolemid |1|
 :no-pattern (type y@@3)
 :no-pattern (U_2_int x@@10)
 :no-pattern (U_2_bool x@@10)
 :no-pattern (U_2_int y@@3)
 :no-pattern (U_2_bool y@@3)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((a@@5 (type arg0@@16)))
(= (type (Nil arg0@@16)) (ListType a@@5)))
 :qid |funType:Nil|
 :pattern ( (Nil arg0@@16))
)))
(assert (forall ((x@@11 T@U) ) (! (= (Len (Nil x@@11)) 0)
 :qid |PolyListbpl.23:19|
 :skolemid |2|
 :no-pattern (U_2_int x@@11)
 :no-pattern (U_2_bool x@@11)
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun NIL@0 () T@U)
(declare-fun l@0 () T@U)
(declare-fun l@1 () T@U)
(assert  (and (and (= (type NIL@0) (ListType intType)) (= (type l@0) (ListType intType))) (= (type l@1) (ListType intType))))
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= NIL@0 (Nil (int_2_U 0))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (Len NIL@0) 0)) (=> (= (Len NIL@0) 0) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (Len (Cons (int_2_U 1) (Cons (int_2_U 2) NIL@0))) 2)) (=> (= (Len (Cons (int_2_U 1) (Cons (int_2_U 2) NIL@0))) 2) (=> (and (= l@0 (Cons (int_2_U 42) NIL@0)) (= l@1 (Cons (int_2_U (+ (U_2_int (Car l@0)) 17)) (Cdr l@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (= (Len l@1) 1) (= (U_2_int (Car l@1)) 59))) (=> (and (= (Len l@1) 1) (= (U_2_int (Car l@1)) 59)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (Len (Cons (int_2_U 1) (Cons (int_2_U 2) (Cons (int_2_U 3) NIL@0)))) 2))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
