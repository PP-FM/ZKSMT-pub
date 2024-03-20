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
(declare-fun Left (T@U) T@U)
(declare-fun MP (T@U T@U) T@U)
(declare-fun PairType (T@T T@T) T@T)
(declare-fun PairTypeInv0 (T@T) T@T)
(declare-fun PairTypeInv1 (T@T) T@T)
(declare-fun Right (T@U) T@U)
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
(assert  (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (PairType arg0@@11 arg1)) 6)
 :qid |ctor:PairType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (PairTypeInv0 (PairType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:PairTypeInv0|
 :pattern ( (PairType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (PairTypeInv1 (PairType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:PairTypeInv1|
 :pattern ( (PairType arg0@@13 arg1@@1))
))) (forall ((arg0@@14 T@U) ) (! (let ((a (PairTypeInv0 (type arg0@@14))))
(= (type (Left arg0@@14)) a))
 :qid |funType:Left|
 :pattern ( (Left arg0@@14))
))) (forall ((arg0@@15 T@U) (arg1@@2 T@U) ) (! (let ((b (type arg1@@2)))
(let ((a@@0 (type arg0@@15)))
(= (type (MP arg0@@15 arg1@@2)) (PairType a@@0 b))))
 :qid |funType:MP|
 :pattern ( (MP arg0@@15 arg1@@2))
))))
(assert (forall ((x@@8 T@U) (y@@1 T@U) ) (! (= (Left (MP x@@8 y@@1)) x@@8)
 :qid |FunAxiomsbpl.13:20|
 :skolemid |0|
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((b@@0 (PairTypeInv1 (type arg0@@16))))
(= (type (Right arg0@@16)) b@@0))
 :qid |funType:Right|
 :pattern ( (Right arg0@@16))
)))
(assert (forall ((x@@9 T@U) (y@@2 T@U) ) (! (= (Right (MP x@@9 y@@2)) y@@2)
 :qid |FunAxiomsbpl.14:20|
 :skolemid |1|
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@10 () T@U)
(declare-fun y@@3 () T@U)
(declare-fun p@0 () T@U)
(declare-fun p@1 () T@U)
(declare-fun z@@0 () T@U)
(declare-fun AType () T@T)
(declare-fun BType () T@T)
(assert  (and (and (and (and (and (and (= (Ctor AType) 7) (= (type x@@10) AType)) (= (Ctor BType) 8)) (= (type y@@3) BType)) (= (type p@0) (PairType AType BType))) (= (type p@1) (PairType AType BType))) (= (type z@@0) AType)))
(set-info :boogie-vc-id P)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) (= (Left (MP x@@10 y@@3)) x@@10)) (=> (= (Left (MP x@@10 y@@3)) x@@10) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= (Right (MP x@@10 y@@3)) y@@3)) (=> (= (Right (MP x@@10 y@@3)) y@@3) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (Right (MP x@@10 (MP x@@10 y@@3))) (MP x@@10 y@@3))) (=> (= (Right (MP x@@10 (MP x@@10 y@@3))) (MP x@@10 y@@3)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (Left (MP x@@10 (MP x@@10 y@@3))) x@@10)) (=> (= (Left (MP x@@10 (MP x@@10 y@@3))) x@@10) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (Right (Right (MP x@@10 (MP x@@10 y@@3)))) y@@3)) (=> (= (Right (Right (MP x@@10 (MP x@@10 y@@3)))) y@@3) (=> (and (= p@0 (MP x@@10 y@@3)) (= p@1 (MP (Left p@0) y@@3))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (= (Left p@1) x@@10) (= (Right p@1) y@@3))) (=> (and (= (Left p@1) x@@10) (= (Right p@1) y@@3)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (Left p@1) z@@0)))))))))))))))))
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
(declare-fun Left (T@U) T@U)
(declare-fun MP (T@U T@U) T@U)
(declare-fun PairType (T@T T@T) T@T)
(declare-fun PairTypeInv0 (T@T) T@T)
(declare-fun PairTypeInv1 (T@T) T@T)
(declare-fun Right (T@U) T@U)
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
(assert  (and (and (and (and (forall ((arg0@@11 T@T) (arg1 T@T) ) (! (= (Ctor (PairType arg0@@11 arg1)) 6)
 :qid |ctor:PairType|
)) (forall ((arg0@@12 T@T) (arg1@@0 T@T) ) (! (= (PairTypeInv0 (PairType arg0@@12 arg1@@0)) arg0@@12)
 :qid |typeInv:PairTypeInv0|
 :pattern ( (PairType arg0@@12 arg1@@0))
))) (forall ((arg0@@13 T@T) (arg1@@1 T@T) ) (! (= (PairTypeInv1 (PairType arg0@@13 arg1@@1)) arg1@@1)
 :qid |typeInv:PairTypeInv1|
 :pattern ( (PairType arg0@@13 arg1@@1))
))) (forall ((arg0@@14 T@U) ) (! (let ((a (PairTypeInv0 (type arg0@@14))))
(= (type (Left arg0@@14)) a))
 :qid |funType:Left|
 :pattern ( (Left arg0@@14))
))) (forall ((arg0@@15 T@U) (arg1@@2 T@U) ) (! (let ((b (type arg1@@2)))
(let ((a@@0 (type arg0@@15)))
(= (type (MP arg0@@15 arg1@@2)) (PairType a@@0 b))))
 :qid |funType:MP|
 :pattern ( (MP arg0@@15 arg1@@2))
))))
(assert (forall ((x@@8 T@U) (y@@1 T@U) ) (! (= (Left (MP x@@8 y@@1)) x@@8)
 :qid |FunAxiomsbpl.13:20|
 :skolemid |0|
 :no-pattern (U_2_int x@@8)
 :no-pattern (U_2_bool x@@8)
 :no-pattern (U_2_int y@@1)
 :no-pattern (U_2_bool y@@1)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((b@@0 (PairTypeInv1 (type arg0@@16))))
(= (type (Right arg0@@16)) b@@0))
 :qid |funType:Right|
 :pattern ( (Right arg0@@16))
)))
(assert (forall ((x@@9 T@U) (y@@2 T@U) ) (! (= (Right (MP x@@9 y@@2)) y@@2)
 :qid |FunAxiomsbpl.14:20|
 :skolemid |1|
 :no-pattern (U_2_int x@@9)
 :no-pattern (U_2_bool x@@9)
 :no-pattern (U_2_int y@@2)
 :no-pattern (U_2_bool y@@2)
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Q)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (U_2_int (Left (MP (int_2_U 1) (int_2_U 3)))) 1)) (=> (= (U_2_int (Left (MP (int_2_U 1) (int_2_U 3)))) 1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (U_2_int (Right (MP (int_2_U 1) (int_2_U 3)))) 3)) (=> (= (U_2_int (Right (MP (int_2_U 1) (int_2_U 3)))) 3) (=> (= (ControlFlow 0 2) (- 0 1)) (= (U_2_bool (Right (MP (int_2_U 1) (bool_2_U true)))) true))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
