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
(declare-fun |Vec#Len| (T@U) Int)
(declare-fun |Vec#Empty| (T@T) T@U)
(declare-fun VecType (T@T) T@T)
(declare-fun VecTypeInv0 (T@T) T@T)
(declare-fun |Set#Size| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun SetType (T@T) T@T)
(declare-fun SetTypeInv0 (T@T) T@T)
(declare-fun |Vec#Unit| (T@U) T@U)
(declare-fun |Set#Unit| (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (VecType arg0@@11)) 6)
 :qid |ctor:VecType|
)) (forall ((arg0@@12 T@T) ) (! (= (VecTypeInv0 (VecType arg0@@12)) arg0@@12)
 :qid |typeInv:VecTypeInv0|
 :pattern ( (VecType arg0@@12))
))) (forall ((T T@T) ) (! (= (type (|Vec#Empty| T)) (VecType T))
 :qid |funType:Vec#Empty|
 :pattern ( (|Vec#Empty| T))
))))
(assert (forall ((U T@T) ) (! (= (|Vec#Len| (|Vec#Empty| U)) 0)
 :skolemid |0|
)))
(assert  (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (SetType arg0@@13)) 7)
 :qid |ctor:SetType|
)) (forall ((arg0@@14 T@T) ) (! (= (SetTypeInv0 (SetType arg0@@14)) arg0@@14)
 :qid |typeInv:SetTypeInv0|
 :pattern ( (SetType arg0@@14))
))) (forall ((T@@0 T@T) ) (! (= (type (|Set#Empty| T@@0)) (SetType T@@0))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@0))
))))
(assert (forall ((U@@0 T@T) ) (! (= (|Set#Size| (|Set#Empty| U@@0)) 0)
 :skolemid |2|
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((T@@1 (type arg0@@15)))
(= (type (|Vec#Unit| arg0@@15)) (VecType T@@1)))
 :qid |funType:Vec#Unit|
 :pattern ( (|Vec#Unit| arg0@@15))
)))
(assert (forall ((e T@U) ) (! (= (|Vec#Len| (|Vec#Unit| e)) 1)
 :qid |monomorphize2bpl.14:32|
 :skolemid |1|
 :no-pattern (U_2_int e)
 :no-pattern (U_2_bool e)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((T@@2 (type arg0@@16)))
(= (type (|Set#Unit| arg0@@16)) (SetType T@@2)))
 :qid |funType:Set#Unit|
 :pattern ( (|Set#Unit| arg0@@16))
)))
(assert (forall ((e@@0 T@U) ) (! (= (|Set#Size| (|Set#Unit| e@@0)) 1)
 :qid |monomorphize2bpl.28:32|
 :skolemid |3|
 :no-pattern (U_2_int e@@0)
 :no-pattern (U_2_bool e@@0)
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(assert (= (type v@0) (VecType intType)))
(set-info :boogie-vc-id empty_vec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= v@0 (|Vec#Empty| intType)) (= (ControlFlow 0 2) (- 0 1))) (= (|Vec#Len| v@0) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |Vec#Len| (T@U) Int)
(declare-fun |Vec#Empty| (T@T) T@U)
(declare-fun VecType (T@T) T@T)
(declare-fun VecTypeInv0 (T@T) T@T)
(declare-fun |Set#Size| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun SetType (T@T) T@T)
(declare-fun SetTypeInv0 (T@T) T@T)
(declare-fun |Vec#Unit| (T@U) T@U)
(declare-fun |Set#Unit| (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (VecType arg0@@11)) 6)
 :qid |ctor:VecType|
)) (forall ((arg0@@12 T@T) ) (! (= (VecTypeInv0 (VecType arg0@@12)) arg0@@12)
 :qid |typeInv:VecTypeInv0|
 :pattern ( (VecType arg0@@12))
))) (forall ((T T@T) ) (! (= (type (|Vec#Empty| T)) (VecType T))
 :qid |funType:Vec#Empty|
 :pattern ( (|Vec#Empty| T))
))))
(assert (forall ((U T@T) ) (! (= (|Vec#Len| (|Vec#Empty| U)) 0)
 :skolemid |0|
)))
(assert  (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (SetType arg0@@13)) 7)
 :qid |ctor:SetType|
)) (forall ((arg0@@14 T@T) ) (! (= (SetTypeInv0 (SetType arg0@@14)) arg0@@14)
 :qid |typeInv:SetTypeInv0|
 :pattern ( (SetType arg0@@14))
))) (forall ((T@@0 T@T) ) (! (= (type (|Set#Empty| T@@0)) (SetType T@@0))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@0))
))))
(assert (forall ((U@@0 T@T) ) (! (= (|Set#Size| (|Set#Empty| U@@0)) 0)
 :skolemid |2|
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((T@@1 (type arg0@@15)))
(= (type (|Vec#Unit| arg0@@15)) (VecType T@@1)))
 :qid |funType:Vec#Unit|
 :pattern ( (|Vec#Unit| arg0@@15))
)))
(assert (forall ((e T@U) ) (! (= (|Vec#Len| (|Vec#Unit| e)) 1)
 :qid |monomorphize2bpl.14:32|
 :skolemid |1|
 :no-pattern (U_2_int e)
 :no-pattern (U_2_bool e)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((T@@2 (type arg0@@16)))
(= (type (|Set#Unit| arg0@@16)) (SetType T@@2)))
 :qid |funType:Set#Unit|
 :pattern ( (|Set#Unit| arg0@@16))
)))
(assert (forall ((e@@0 T@U) ) (! (= (|Set#Size| (|Set#Unit| e@@0)) 1)
 :qid |monomorphize2bpl.28:32|
 :skolemid |3|
 :no-pattern (U_2_int e@@0)
 :no-pattern (U_2_bool e@@0)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(declare-fun e@@1 () Int)
(assert (= (type v@0) (VecType intType)))
(set-info :boogie-vc-id unit_vec)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= v@0 (|Vec#Unit| (int_2_U e@@1))) (= (ControlFlow 0 2) (- 0 1))) (= (|Vec#Len| v@0) 1))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |Vec#Len| (T@U) Int)
(declare-fun |Vec#Empty| (T@T) T@U)
(declare-fun VecType (T@T) T@T)
(declare-fun VecTypeInv0 (T@T) T@T)
(declare-fun |Set#Size| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun SetType (T@T) T@T)
(declare-fun SetTypeInv0 (T@T) T@T)
(declare-fun |Vec#Unit| (T@U) T@U)
(declare-fun |Set#Unit| (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (VecType arg0@@11)) 6)
 :qid |ctor:VecType|
)) (forall ((arg0@@12 T@T) ) (! (= (VecTypeInv0 (VecType arg0@@12)) arg0@@12)
 :qid |typeInv:VecTypeInv0|
 :pattern ( (VecType arg0@@12))
))) (forall ((T T@T) ) (! (= (type (|Vec#Empty| T)) (VecType T))
 :qid |funType:Vec#Empty|
 :pattern ( (|Vec#Empty| T))
))))
(assert (forall ((U T@T) ) (! (= (|Vec#Len| (|Vec#Empty| U)) 0)
 :skolemid |0|
)))
(assert  (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (SetType arg0@@13)) 7)
 :qid |ctor:SetType|
)) (forall ((arg0@@14 T@T) ) (! (= (SetTypeInv0 (SetType arg0@@14)) arg0@@14)
 :qid |typeInv:SetTypeInv0|
 :pattern ( (SetType arg0@@14))
))) (forall ((T@@0 T@T) ) (! (= (type (|Set#Empty| T@@0)) (SetType T@@0))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@0))
))))
(assert (forall ((U@@0 T@T) ) (! (= (|Set#Size| (|Set#Empty| U@@0)) 0)
 :skolemid |2|
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((T@@1 (type arg0@@15)))
(= (type (|Vec#Unit| arg0@@15)) (VecType T@@1)))
 :qid |funType:Vec#Unit|
 :pattern ( (|Vec#Unit| arg0@@15))
)))
(assert (forall ((e T@U) ) (! (= (|Vec#Len| (|Vec#Unit| e)) 1)
 :qid |monomorphize2bpl.14:32|
 :skolemid |1|
 :no-pattern (U_2_int e)
 :no-pattern (U_2_bool e)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((T@@2 (type arg0@@16)))
(= (type (|Set#Unit| arg0@@16)) (SetType T@@2)))
 :qid |funType:Set#Unit|
 :pattern ( (|Set#Unit| arg0@@16))
)))
(assert (forall ((e@@0 T@U) ) (! (= (|Set#Size| (|Set#Unit| e@@0)) 1)
 :qid |monomorphize2bpl.28:32|
 :skolemid |3|
 :no-pattern (U_2_int e@@0)
 :no-pattern (U_2_bool e@@0)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(assert (= (type v@0) (SetType intType)))
(set-info :boogie-vc-id empty_set)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= v@0 (|Set#Empty| intType)) (= (ControlFlow 0 2) (- 0 1))) (= (|Set#Size| v@0) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |Vec#Len| (T@U) Int)
(declare-fun |Vec#Empty| (T@T) T@U)
(declare-fun VecType (T@T) T@T)
(declare-fun VecTypeInv0 (T@T) T@T)
(declare-fun |Set#Size| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun SetType (T@T) T@T)
(declare-fun SetTypeInv0 (T@T) T@T)
(declare-fun |Vec#Unit| (T@U) T@U)
(declare-fun |Set#Unit| (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (VecType arg0@@11)) 6)
 :qid |ctor:VecType|
)) (forall ((arg0@@12 T@T) ) (! (= (VecTypeInv0 (VecType arg0@@12)) arg0@@12)
 :qid |typeInv:VecTypeInv0|
 :pattern ( (VecType arg0@@12))
))) (forall ((T T@T) ) (! (= (type (|Vec#Empty| T)) (VecType T))
 :qid |funType:Vec#Empty|
 :pattern ( (|Vec#Empty| T))
))))
(assert (forall ((U T@T) ) (! (= (|Vec#Len| (|Vec#Empty| U)) 0)
 :skolemid |0|
)))
(assert  (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (SetType arg0@@13)) 7)
 :qid |ctor:SetType|
)) (forall ((arg0@@14 T@T) ) (! (= (SetTypeInv0 (SetType arg0@@14)) arg0@@14)
 :qid |typeInv:SetTypeInv0|
 :pattern ( (SetType arg0@@14))
))) (forall ((T@@0 T@T) ) (! (= (type (|Set#Empty| T@@0)) (SetType T@@0))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@0))
))))
(assert (forall ((U@@0 T@T) ) (! (= (|Set#Size| (|Set#Empty| U@@0)) 0)
 :skolemid |2|
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((T@@1 (type arg0@@15)))
(= (type (|Vec#Unit| arg0@@15)) (VecType T@@1)))
 :qid |funType:Vec#Unit|
 :pattern ( (|Vec#Unit| arg0@@15))
)))
(assert (forall ((e T@U) ) (! (= (|Vec#Len| (|Vec#Unit| e)) 1)
 :qid |monomorphize2bpl.14:32|
 :skolemid |1|
 :no-pattern (U_2_int e)
 :no-pattern (U_2_bool e)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((T@@2 (type arg0@@16)))
(= (type (|Set#Unit| arg0@@16)) (SetType T@@2)))
 :qid |funType:Set#Unit|
 :pattern ( (|Set#Unit| arg0@@16))
)))
(assert (forall ((e@@0 T@U) ) (! (= (|Set#Size| (|Set#Unit| e@@0)) 1)
 :qid |monomorphize2bpl.28:32|
 :skolemid |3|
 :no-pattern (U_2_int e@@0)
 :no-pattern (U_2_bool e@@0)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(declare-fun e@@1 () Int)
(assert (= (type v@0) (SetType intType)))
(set-info :boogie-vc-id unit_set)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= v@0 (|Set#Unit| (int_2_U e@@1))) (= (ControlFlow 0 2) (- 0 1))) (= (|Set#Size| v@0) 1))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |Vec#Len| (T@U) Int)
(declare-fun |Vec#Empty| (T@T) T@U)
(declare-fun VecType (T@T) T@T)
(declare-fun VecTypeInv0 (T@T) T@T)
(declare-fun |Set#Size| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun SetType (T@T) T@T)
(declare-fun SetTypeInv0 (T@T) T@T)
(declare-fun |Vec#Unit| (T@U) T@U)
(declare-fun |Set#Unit| (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (VecType arg0@@11)) 6)
 :qid |ctor:VecType|
)) (forall ((arg0@@12 T@T) ) (! (= (VecTypeInv0 (VecType arg0@@12)) arg0@@12)
 :qid |typeInv:VecTypeInv0|
 :pattern ( (VecType arg0@@12))
))) (forall ((T T@T) ) (! (= (type (|Vec#Empty| T)) (VecType T))
 :qid |funType:Vec#Empty|
 :pattern ( (|Vec#Empty| T))
))))
(assert (forall ((U T@T) ) (! (= (|Vec#Len| (|Vec#Empty| U)) 0)
 :skolemid |0|
)))
(assert  (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (SetType arg0@@13)) 7)
 :qid |ctor:SetType|
)) (forall ((arg0@@14 T@T) ) (! (= (SetTypeInv0 (SetType arg0@@14)) arg0@@14)
 :qid |typeInv:SetTypeInv0|
 :pattern ( (SetType arg0@@14))
))) (forall ((T@@0 T@T) ) (! (= (type (|Set#Empty| T@@0)) (SetType T@@0))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@0))
))))
(assert (forall ((U@@0 T@T) ) (! (= (|Set#Size| (|Set#Empty| U@@0)) 0)
 :skolemid |2|
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((T@@1 (type arg0@@15)))
(= (type (|Vec#Unit| arg0@@15)) (VecType T@@1)))
 :qid |funType:Vec#Unit|
 :pattern ( (|Vec#Unit| arg0@@15))
)))
(assert (forall ((e T@U) ) (! (= (|Vec#Len| (|Vec#Unit| e)) 1)
 :qid |monomorphize2bpl.14:32|
 :skolemid |1|
 :no-pattern (U_2_int e)
 :no-pattern (U_2_bool e)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((T@@2 (type arg0@@16)))
(= (type (|Set#Unit| arg0@@16)) (SetType T@@2)))
 :qid |funType:Set#Unit|
 :pattern ( (|Set#Unit| arg0@@16))
)))
(assert (forall ((e@@0 T@U) ) (! (= (|Set#Size| (|Set#Unit| e@@0)) 1)
 :qid |monomorphize2bpl.28:32|
 :skolemid |3|
 :no-pattern (U_2_int e@@0)
 :no-pattern (U_2_bool e@@0)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(declare-fun KType () T@T)
(assert  (and (= (Ctor KType) 8) (= (type v@0) (VecType KType))))
(set-info :boogie-vc-id empty_vec_k)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= v@0 (|Vec#Empty| KType)) (= (ControlFlow 0 2) (- 0 1))) (= (|Vec#Len| v@0) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
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
(declare-fun |Vec#Len| (T@U) Int)
(declare-fun |Vec#Empty| (T@T) T@U)
(declare-fun VecType (T@T) T@T)
(declare-fun VecTypeInv0 (T@T) T@T)
(declare-fun |Set#Size| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun SetType (T@T) T@T)
(declare-fun SetTypeInv0 (T@T) T@T)
(declare-fun |Vec#Unit| (T@U) T@U)
(declare-fun |Set#Unit| (T@U) T@U)
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
(assert  (and (and (forall ((arg0@@11 T@T) ) (! (= (Ctor (VecType arg0@@11)) 6)
 :qid |ctor:VecType|
)) (forall ((arg0@@12 T@T) ) (! (= (VecTypeInv0 (VecType arg0@@12)) arg0@@12)
 :qid |typeInv:VecTypeInv0|
 :pattern ( (VecType arg0@@12))
))) (forall ((T T@T) ) (! (= (type (|Vec#Empty| T)) (VecType T))
 :qid |funType:Vec#Empty|
 :pattern ( (|Vec#Empty| T))
))))
(assert (forall ((U T@T) ) (! (= (|Vec#Len| (|Vec#Empty| U)) 0)
 :skolemid |0|
)))
(assert  (and (and (forall ((arg0@@13 T@T) ) (! (= (Ctor (SetType arg0@@13)) 7)
 :qid |ctor:SetType|
)) (forall ((arg0@@14 T@T) ) (! (= (SetTypeInv0 (SetType arg0@@14)) arg0@@14)
 :qid |typeInv:SetTypeInv0|
 :pattern ( (SetType arg0@@14))
))) (forall ((T@@0 T@T) ) (! (= (type (|Set#Empty| T@@0)) (SetType T@@0))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@0))
))))
(assert (forall ((U@@0 T@T) ) (! (= (|Set#Size| (|Set#Empty| U@@0)) 0)
 :skolemid |2|
)))
(assert (forall ((arg0@@15 T@U) ) (! (let ((T@@1 (type arg0@@15)))
(= (type (|Vec#Unit| arg0@@15)) (VecType T@@1)))
 :qid |funType:Vec#Unit|
 :pattern ( (|Vec#Unit| arg0@@15))
)))
(assert (forall ((e T@U) ) (! (= (|Vec#Len| (|Vec#Unit| e)) 1)
 :qid |monomorphize2bpl.14:32|
 :skolemid |1|
 :no-pattern (U_2_int e)
 :no-pattern (U_2_bool e)
)))
(assert (forall ((arg0@@16 T@U) ) (! (let ((T@@2 (type arg0@@16)))
(= (type (|Set#Unit| arg0@@16)) (SetType T@@2)))
 :qid |funType:Set#Unit|
 :pattern ( (|Set#Unit| arg0@@16))
)))
(assert (forall ((e@@0 T@U) ) (! (= (|Set#Size| (|Set#Unit| e@@0)) 1)
 :qid |monomorphize2bpl.28:32|
 :skolemid |3|
 :no-pattern (U_2_int e@@0)
 :no-pattern (U_2_bool e@@0)
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v@0 () T@U)
(declare-fun KType () T@T)
(assert  (and (= (Ctor KType) 8) (= (type v@0) (SetType KType))))
(set-info :boogie-vc-id empty_set_k)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= v@0 (|Set#Empty| KType)) (= (ControlFlow 0 2) (- 0 1))) (= (|Set#Size| v@0) 0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
