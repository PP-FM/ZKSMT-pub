(set-logic UFNIABV)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.value_is (Int Int) Bool)
(declare-fun e_.1 () Int)
(declare-fun v4.Mem_T.INT4@0 () |T@[Int]Int|)
(declare-fun v4.Mem_T.INT4 () |T@[Int]Int|)
(declare-fun outval_.1 () Int)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun inline$v4.Eval$0$res@4 () Int)
(declare-fun inline$v4.Eval$0$res@3 () Int)
(declare-fun inline$v4.Eval$0$a1@1 () Int)
(declare-fun inline$v4.Eval$0$a2@1 () Int)
(declare-fun call2formal@ret@0 () Int)
(declare-fun inline$v4.Eval$0$op@1 () Int)
(declare-fun inline$v4.Eval$0$res@2 () Int)
(declare-fun call2formal@ret@0@@0 () Int)
(declare-fun inline$v4.Eval$0$res@1 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(set-info :boogie-vc-id v4.EvalEntry1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 42) (let ((|anon0#2$1_correct|  (=> (and (v4.value_is v4.__ctobpl_const_36 e_.1) (v4.value_is v4.__ctobpl_const_37 e_.1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= v4.Mem_T.INT4@0 (|Store__T@[Int]Int_| v4.Mem_T.INT4 outval_.1 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1)))) (v4.value_is v4.__ctobpl_const_38 outval_.1)) (=> (and (and (v4.value_is v4.__ctobpl_const_39 (|Select__T@[Int]Int_| v4.Mem_T.INT4@0 outval_.1)) (v4.value_is v4.__ctobpl_const_40 e_.1)) (and (v4.value_is v4.__ctobpl_const_41 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (= (ControlFlow 0 2) (- 0 1)))) true))))))))
(let ((inline$v4.Eval$0$Return_correct  (=> (= (ControlFlow 0 6) 2) |anon0#2$1_correct|)))
(let ((|inline$v4.Eval$0$label_12#2_correct|  (and (=> (= (ControlFlow 0 7) (- 0 10)) true) (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (=> (and (and (= v4.Mem_T.result__EXPR@0 (|Store__T@[Int]Int_| v4.Mem_T.result__EXPR (v4.result__EXPR e_.1) inline$v4.Eval$0$res@4)) (v4.value_is v4.__ctobpl_const_12 e_.1)) (and (v4.value_is v4.__ctobpl_const_13 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_14 inline$v4.Eval$0$res@4))) (and (=> (= (ControlFlow 0 7) (- 0 8)) true) (=> (= (ControlFlow 0 7) 6) inline$v4.Eval$0$Return_correct)))))))
(let ((|inline$v4.Eval$0$label_13_false#2_correct|  (=> (and (= 1 0) (v4.value_is v4.__ctobpl_const_15 1)) (and (=> (= (ControlFlow 0 22) (- 0 23)) true) (=> (and (= inline$v4.Eval$0$res@3 (v4.PLUS inline$v4.Eval$0$a1@1 1 inline$v4.Eval$0$a2@1)) (v4.value_is v4.__ctobpl_const_26 inline$v4.Eval$0$res@3)) (=> (and (and (v4.value_is v4.__ctobpl_const_27 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_28 inline$v4.Eval$0$a2@1)) (and (= inline$v4.Eval$0$res@4 inline$v4.Eval$0$res@3) (= (ControlFlow 0 22) 7))) |inline$v4.Eval$0$label_12#2_correct|))))))
(let ((|inline$v4.Eval$0$label_13_true#2_correct|  (=> (and (not (= 1 0)) (v4.value_is v4.__ctobpl_const_15 1)) (and (=> (= (ControlFlow 0 19) (- 0 21)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_29 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_30 inline$v4.Eval$0$a2@1)) (and (v4.value_is v4.__ctobpl_const_31 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_32 inline$v4.Eval$0$a2@1))) (and (=> (= (ControlFlow 0 19) (- 0 20)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_33 call2formal@ret@0) (v4.value_is v4.__ctobpl_const_34 call2formal@ret@0)) (and (= inline$v4.Eval$0$res@4 call2formal@ret@0) (= (ControlFlow 0 19) 7))) |inline$v4.Eval$0$label_12#2_correct|)))))))
(let ((|inline$v4.Eval$0$label_11_case_1#2_correct|  (=> (and (v4.INT_EQ inline$v4.Eval$0$op@1 1) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@1)) (and (=> (= (ControlFlow 0 24) (- 0 25)) true) (and (=> (= (ControlFlow 0 24) 19) |inline$v4.Eval$0$label_13_true#2_correct|) (=> (= (ControlFlow 0 24) 22) |inline$v4.Eval$0$label_13_false#2_correct|))))))
(let ((|inline$v4.Eval$0$label_14_false#2_correct|  (=> (and (= 1 0) (v4.value_is v4.__ctobpl_const_16 1)) (and (=> (= (ControlFlow 0 15) (- 0 16)) true) (=> (and (= inline$v4.Eval$0$res@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT inline$v4.Eval$0$a1@1 inline$v4.Eval$0$a2@1 1)) (v4.value_is v4.__ctobpl_const_17 inline$v4.Eval$0$res@2)) (=> (and (and (v4.value_is v4.__ctobpl_const_18 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_19 inline$v4.Eval$0$a2@1)) (and (= inline$v4.Eval$0$res@4 inline$v4.Eval$0$res@2) (= (ControlFlow 0 15) 7))) |inline$v4.Eval$0$label_12#2_correct|))))))
(let ((|inline$v4.Eval$0$label_14_true#2_correct|  (=> (and (not (= 1 0)) (v4.value_is v4.__ctobpl_const_16 1)) (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_20 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_21 inline$v4.Eval$0$a2@1)) (and (v4.value_is v4.__ctobpl_const_22 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_23 inline$v4.Eval$0$a2@1))) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_24 call2formal@ret@0@@0) (v4.value_is v4.__ctobpl_const_25 call2formal@ret@0@@0)) (and (= inline$v4.Eval$0$res@4 call2formal@ret@0@@0) (= (ControlFlow 0 12) 7))) |inline$v4.Eval$0$label_12#2_correct|)))))))
(let ((|inline$v4.Eval$0$label_11_case_2#2_correct|  (=> (and (v4.INT_EQ inline$v4.Eval$0$op@1 2) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@1)) (and (=> (= (ControlFlow 0 17) (- 0 18)) true) (and (=> (= (ControlFlow 0 17) 12) |inline$v4.Eval$0$label_14_true#2_correct|) (=> (= (ControlFlow 0 17) 15) |inline$v4.Eval$0$label_14_false#2_correct|))))))
(let ((|inline$v4.Eval$0$label_11_case_0#2_correct|  (=> (v4.INT_NEQ inline$v4.Eval$0$op@1 1) (=> (and (and (v4.INT_NEQ inline$v4.Eval$0$op@1 2) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@1)) (and (= inline$v4.Eval$0$res@4 inline$v4.Eval$0$res@1) (= (ControlFlow 0 11) 7))) |inline$v4.Eval$0$label_12#2_correct|))))
(let ((|inline$v4.Eval$0$anon0#2_correct|  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 26) (- 0 38)) true) (and (=> (= (ControlFlow 0 26) (- 0 37)) true) (and (=> (= (ControlFlow 0 26) (- 0 36)) true) (and (=> (= (ControlFlow 0 26) (- 0 35)) true) (and (=> (= (ControlFlow 0 26) (- 0 34)) true) (and (=> (= (ControlFlow 0 26) (- 0 33)) true) (=> (and (and (= inline$v4.Eval$0$op@1 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_1 inline$v4.Eval$0$op@1)) (and (v4.value_is v4.__ctobpl_const_2 e_.1) (v4.value_is v4.__ctobpl_const_3 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))))) (and (=> (= (ControlFlow 0 26) (- 0 32)) true) (and (=> (= (ControlFlow 0 26) (- 0 31)) true) (=> (and (and (= inline$v4.Eval$0$a1@1 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_4 inline$v4.Eval$0$a1@1)) (and (v4.value_is v4.__ctobpl_const_5 e_.1) (v4.value_is v4.__ctobpl_const_6 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))))) (and (=> (= (ControlFlow 0 26) (- 0 30)) true) (and (=> (= (ControlFlow 0 26) (- 0 29)) true) (=> (and (and (= inline$v4.Eval$0$a2@1 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_7 inline$v4.Eval$0$a2@1)) (and (v4.value_is v4.__ctobpl_const_8 e_.1) (v4.value_is v4.__ctobpl_const_9 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))))) (and (=> (= (ControlFlow 0 26) (- 0 28)) true) (=> (and (= inline$v4.Eval$0$res@1 (- 0 1)) (v4.value_is v4.__ctobpl_const_10 inline$v4.Eval$0$res@1)) (and (=> (= (ControlFlow 0 26) (- 0 27)) true) (and (and (=> (= (ControlFlow 0 26) 11) |inline$v4.Eval$0$label_11_case_0#2_correct|) (=> (= (ControlFlow 0 26) 24) |inline$v4.Eval$0$label_11_case_1#2_correct|)) (=> (= (ControlFlow 0 26) 17) |inline$v4.Eval$0$label_11_case_2#2_correct|)))))))))))))))))))))
(let ((|anon0#2_correct|  (=> (and (v4.INT_LT e_.1 v4.alloc) (v4.INT_LT outval_.1 v4.alloc)) (and (=> (= (ControlFlow 0 39) (- 0 41)) true) (=> (v4.value_is v4.__ctobpl_const_35 1) (and (=> (= (ControlFlow 0 39) (- 0 40)) true) (=> (= (ControlFlow 0 39) 26) |inline$v4.Eval$0$anon0#2_correct|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 42) 39) |anon0#2_correct|)))
PreconditionGeneratedEntry_correct))))))))))))))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.value_is (Int Int) Bool)
(declare-fun e_.1 () Int)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun inline$v4.Eval$0$res@4 () Int)
(declare-fun inline$v4.Eval$0$res@3 () Int)
(declare-fun inline$v4.Eval$0$a1@1 () Int)
(declare-fun inline$v4.Eval$0$a2@1 () Int)
(declare-fun call2formal@ret@0 () Int)
(declare-fun inline$v4.Eval$0$op@1 () Int)
(declare-fun inline$v4.Eval$0$res@2 () Int)
(declare-fun call2formal@ret@0@@0 () Int)
(declare-fun inline$v4.Eval$0$res@1 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(set-info :boogie-vc-id v4.EvalEntry2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 39) (let ((|anon0#2$1_correct|  (=> (v4.value_is v4.__ctobpl_const_43 e_.1) (=> (and (v4.value_is v4.__ctobpl_const_44 e_.1) (= (ControlFlow 0 2) (- 0 1))) true))))
(let ((inline$v4.Eval$0$Return_correct  (=> (= (ControlFlow 0 3) 2) |anon0#2$1_correct|)))
(let ((|inline$v4.Eval$0$label_12#2_correct|  (and (=> (= (ControlFlow 0 4) (- 0 7)) true) (and (=> (= (ControlFlow 0 4) (- 0 6)) true) (=> (and (and (= v4.Mem_T.result__EXPR@0 (|Store__T@[Int]Int_| v4.Mem_T.result__EXPR (v4.result__EXPR e_.1) inline$v4.Eval$0$res@4)) (v4.value_is v4.__ctobpl_const_12 e_.1)) (and (v4.value_is v4.__ctobpl_const_13 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_14 inline$v4.Eval$0$res@4))) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (=> (= (ControlFlow 0 4) 3) inline$v4.Eval$0$Return_correct)))))))
(let ((|inline$v4.Eval$0$label_13_false#2_correct|  (=> (and (= 0 0) (v4.value_is v4.__ctobpl_const_15 0)) (and (=> (= (ControlFlow 0 19) (- 0 20)) true) (=> (and (= inline$v4.Eval$0$res@3 (v4.PLUS inline$v4.Eval$0$a1@1 1 inline$v4.Eval$0$a2@1)) (v4.value_is v4.__ctobpl_const_26 inline$v4.Eval$0$res@3)) (=> (and (and (v4.value_is v4.__ctobpl_const_27 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_28 inline$v4.Eval$0$a2@1)) (and (= inline$v4.Eval$0$res@4 inline$v4.Eval$0$res@3) (= (ControlFlow 0 19) 4))) |inline$v4.Eval$0$label_12#2_correct|))))))
(let ((|inline$v4.Eval$0$label_13_true#2_correct|  (=> (and (not (= 0 0)) (v4.value_is v4.__ctobpl_const_15 0)) (and (=> (= (ControlFlow 0 16) (- 0 18)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_29 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_30 inline$v4.Eval$0$a2@1)) (and (v4.value_is v4.__ctobpl_const_31 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_32 inline$v4.Eval$0$a2@1))) (and (=> (= (ControlFlow 0 16) (- 0 17)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_33 call2formal@ret@0) (v4.value_is v4.__ctobpl_const_34 call2formal@ret@0)) (and (= inline$v4.Eval$0$res@4 call2formal@ret@0) (= (ControlFlow 0 16) 4))) |inline$v4.Eval$0$label_12#2_correct|)))))))
(let ((|inline$v4.Eval$0$label_11_case_1#2_correct|  (=> (and (v4.INT_EQ inline$v4.Eval$0$op@1 1) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@1)) (and (=> (= (ControlFlow 0 21) (- 0 22)) true) (and (=> (= (ControlFlow 0 21) 16) |inline$v4.Eval$0$label_13_true#2_correct|) (=> (= (ControlFlow 0 21) 19) |inline$v4.Eval$0$label_13_false#2_correct|))))))
(let ((|inline$v4.Eval$0$label_14_false#2_correct|  (=> (and (= 0 0) (v4.value_is v4.__ctobpl_const_16 0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (and (= inline$v4.Eval$0$res@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT inline$v4.Eval$0$a1@1 inline$v4.Eval$0$a2@1 1)) (v4.value_is v4.__ctobpl_const_17 inline$v4.Eval$0$res@2)) (=> (and (and (v4.value_is v4.__ctobpl_const_18 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_19 inline$v4.Eval$0$a2@1)) (and (= inline$v4.Eval$0$res@4 inline$v4.Eval$0$res@2) (= (ControlFlow 0 12) 4))) |inline$v4.Eval$0$label_12#2_correct|))))))
(let ((|inline$v4.Eval$0$label_14_true#2_correct|  (=> (and (not (= 0 0)) (v4.value_is v4.__ctobpl_const_16 0)) (and (=> (= (ControlFlow 0 9) (- 0 11)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_20 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_21 inline$v4.Eval$0$a2@1)) (and (v4.value_is v4.__ctobpl_const_22 inline$v4.Eval$0$a1@1) (v4.value_is v4.__ctobpl_const_23 inline$v4.Eval$0$a2@1))) (and (=> (= (ControlFlow 0 9) (- 0 10)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_24 call2formal@ret@0@@0) (v4.value_is v4.__ctobpl_const_25 call2formal@ret@0@@0)) (and (= inline$v4.Eval$0$res@4 call2formal@ret@0@@0) (= (ControlFlow 0 9) 4))) |inline$v4.Eval$0$label_12#2_correct|)))))))
(let ((|inline$v4.Eval$0$label_11_case_2#2_correct|  (=> (and (v4.INT_EQ inline$v4.Eval$0$op@1 2) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (and (=> (= (ControlFlow 0 14) 9) |inline$v4.Eval$0$label_14_true#2_correct|) (=> (= (ControlFlow 0 14) 12) |inline$v4.Eval$0$label_14_false#2_correct|))))))
(let ((|inline$v4.Eval$0$label_11_case_0#2_correct|  (=> (v4.INT_NEQ inline$v4.Eval$0$op@1 1) (=> (and (and (v4.INT_NEQ inline$v4.Eval$0$op@1 2) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@1)) (and (= inline$v4.Eval$0$res@4 inline$v4.Eval$0$res@1) (= (ControlFlow 0 8) 4))) |inline$v4.Eval$0$label_12#2_correct|))))
(let ((|inline$v4.Eval$0$anon0#2_correct|  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 23) (- 0 35)) true) (and (=> (= (ControlFlow 0 23) (- 0 34)) true) (and (=> (= (ControlFlow 0 23) (- 0 33)) true) (and (=> (= (ControlFlow 0 23) (- 0 32)) true) (and (=> (= (ControlFlow 0 23) (- 0 31)) true) (and (=> (= (ControlFlow 0 23) (- 0 30)) true) (=> (and (and (= inline$v4.Eval$0$op@1 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_1 inline$v4.Eval$0$op@1)) (and (v4.value_is v4.__ctobpl_const_2 e_.1) (v4.value_is v4.__ctobpl_const_3 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))))) (and (=> (= (ControlFlow 0 23) (- 0 29)) true) (and (=> (= (ControlFlow 0 23) (- 0 28)) true) (=> (and (and (= inline$v4.Eval$0$a1@1 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_4 inline$v4.Eval$0$a1@1)) (and (v4.value_is v4.__ctobpl_const_5 e_.1) (v4.value_is v4.__ctobpl_const_6 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))))) (and (=> (= (ControlFlow 0 23) (- 0 27)) true) (and (=> (= (ControlFlow 0 23) (- 0 26)) true) (=> (and (and (= inline$v4.Eval$0$a2@1 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_7 inline$v4.Eval$0$a2@1)) (and (v4.value_is v4.__ctobpl_const_8 e_.1) (v4.value_is v4.__ctobpl_const_9 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))))) (and (=> (= (ControlFlow 0 23) (- 0 25)) true) (=> (and (= inline$v4.Eval$0$res@1 (- 0 1)) (v4.value_is v4.__ctobpl_const_10 inline$v4.Eval$0$res@1)) (and (=> (= (ControlFlow 0 23) (- 0 24)) true) (and (and (=> (= (ControlFlow 0 23) 8) |inline$v4.Eval$0$label_11_case_0#2_correct|) (=> (= (ControlFlow 0 23) 21) |inline$v4.Eval$0$label_11_case_1#2_correct|)) (=> (= (ControlFlow 0 23) 14) |inline$v4.Eval$0$label_11_case_2#2_correct|)))))))))))))))))))))
(let ((|anon0#2_correct|  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 36) (- 0 38)) true) (=> (v4.value_is v4.__ctobpl_const_42 0) (and (=> (= (ControlFlow 0 36) (- 0 37)) true) (=> (= (ControlFlow 0 36) 23) |inline$v4.Eval$0$anon0#2_correct|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 39) 36) |anon0#2_correct|)))
PreconditionGeneratedEntry_correct))))))))))))))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id v4.__havoc_heapglobal_init)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.value_is (Int Int) Bool)
(declare-fun e_.1 () Int)
(declare-fun v4.Mem_T.INT4@0 () |T@[Int]Int|)
(declare-fun v4.Mem_T.INT4 () |T@[Int]Int|)
(declare-fun outval_.1 () Int)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun inline$v2.Eval$0$res@4 () Int)
(declare-fun inline$v2.Eval$0$op@1 () Int)
(declare-fun inline$v2.Eval$0$res@3 () Int)
(declare-fun inline$v2.Eval$0$a1@1 () Int)
(declare-fun inline$v2.Eval$0$a2@1 () Int)
(declare-fun inline$v2.Eval$0$res@2 () Int)
(declare-fun inline$v2.Eval$0$res@1 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(set-info :boogie-vc-id v2.EvalEntry1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31) (let ((|anon0#2$1_correct|  (=> (and (v4.value_is v2.__ctobpl_const_21 e_.1) (v4.value_is v2.__ctobpl_const_22 e_.1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= v4.Mem_T.INT4@0 (|Store__T@[Int]Int_| v4.Mem_T.INT4 outval_.1 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1)))) (v4.value_is v2.__ctobpl_const_23 outval_.1)) (=> (and (and (v4.value_is v2.__ctobpl_const_24 (|Select__T@[Int]Int_| v4.Mem_T.INT4@0 outval_.1)) (v4.value_is v2.__ctobpl_const_25 e_.1)) (and (v4.value_is v2.__ctobpl_const_26 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (= (ControlFlow 0 2) (- 0 1)))) true))))))))
(let ((inline$v2.Eval$0$Return_correct  (=> (= (ControlFlow 0 6) 2) |anon0#2$1_correct|)))
(let ((|inline$v2.Eval$0$label_12#2_correct|  (and (=> (= (ControlFlow 0 7) (- 0 10)) true) (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (=> (and (and (= v4.Mem_T.result__EXPR@0 (|Store__T@[Int]Int_| v4.Mem_T.result__EXPR (v4.result__EXPR e_.1) inline$v2.Eval$0$res@4)) (v4.value_is v2.__ctobpl_const_12 e_.1)) (and (v4.value_is v2.__ctobpl_const_13 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_14 inline$v2.Eval$0$res@4))) (and (=> (= (ControlFlow 0 7) (- 0 8)) true) (=> (= (ControlFlow 0 7) 6) inline$v2.Eval$0$Return_correct)))))))
(let ((|inline$v2.Eval$0$label_11_case_2#2_correct|  (=> (and (v4.INT_EQ inline$v2.Eval$0$op@1 2) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> (and (= inline$v2.Eval$0$res@3 (v4.MINUS_BOTH_PTR_OR_BOTH_INT inline$v2.Eval$0$a1@1 inline$v2.Eval$0$a2@1 1)) (v4.value_is v2.__ctobpl_const_18 inline$v2.Eval$0$res@3)) (=> (and (and (v4.value_is v2.__ctobpl_const_19 inline$v2.Eval$0$a1@1) (v4.value_is v2.__ctobpl_const_20 inline$v2.Eval$0$a2@1)) (and (= inline$v2.Eval$0$res@4 inline$v2.Eval$0$res@3) (= (ControlFlow 0 14) 7))) |inline$v2.Eval$0$label_12#2_correct|))))))
(let ((|inline$v2.Eval$0$label_11_case_1#2_correct|  (=> (and (v4.INT_EQ inline$v2.Eval$0$op@1 1) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@1)) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (and (= inline$v2.Eval$0$res@2 (v4.PLUS inline$v2.Eval$0$a1@1 1 inline$v2.Eval$0$a2@1)) (v4.value_is v2.__ctobpl_const_15 inline$v2.Eval$0$res@2)) (=> (and (and (v4.value_is v2.__ctobpl_const_16 inline$v2.Eval$0$a1@1) (v4.value_is v2.__ctobpl_const_17 inline$v2.Eval$0$a2@1)) (and (= inline$v2.Eval$0$res@4 inline$v2.Eval$0$res@2) (= (ControlFlow 0 12) 7))) |inline$v2.Eval$0$label_12#2_correct|))))))
(let ((|inline$v2.Eval$0$label_11_case_0#2_correct|  (=> (v4.INT_NEQ inline$v2.Eval$0$op@1 1) (=> (and (and (v4.INT_NEQ inline$v2.Eval$0$op@1 2) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@1)) (and (= inline$v2.Eval$0$res@4 inline$v2.Eval$0$res@1) (= (ControlFlow 0 11) 7))) |inline$v2.Eval$0$label_12#2_correct|))))
(let ((|inline$v2.Eval$0$anon0#2_correct|  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 16) (- 0 28)) true) (and (=> (= (ControlFlow 0 16) (- 0 27)) true) (and (=> (= (ControlFlow 0 16) (- 0 26)) true) (and (=> (= (ControlFlow 0 16) (- 0 25)) true) (and (=> (= (ControlFlow 0 16) (- 0 24)) true) (and (=> (= (ControlFlow 0 16) (- 0 23)) true) (=> (and (and (= inline$v2.Eval$0$op@1 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_1 inline$v2.Eval$0$op@1)) (and (v4.value_is v2.__ctobpl_const_2 e_.1) (v4.value_is v2.__ctobpl_const_3 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))))) (and (=> (= (ControlFlow 0 16) (- 0 22)) true) (and (=> (= (ControlFlow 0 16) (- 0 21)) true) (=> (and (and (= inline$v2.Eval$0$a1@1 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_4 inline$v2.Eval$0$a1@1)) (and (v4.value_is v2.__ctobpl_const_5 e_.1) (v4.value_is v2.__ctobpl_const_6 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))))) (and (=> (= (ControlFlow 0 16) (- 0 20)) true) (and (=> (= (ControlFlow 0 16) (- 0 19)) true) (=> (and (and (= inline$v2.Eval$0$a2@1 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_7 inline$v2.Eval$0$a2@1)) (and (v4.value_is v2.__ctobpl_const_8 e_.1) (v4.value_is v2.__ctobpl_const_9 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))))) (and (=> (= (ControlFlow 0 16) (- 0 18)) true) (=> (and (= inline$v2.Eval$0$res@1 (- 0 1)) (v4.value_is v2.__ctobpl_const_10 inline$v2.Eval$0$res@1)) (and (=> (= (ControlFlow 0 16) (- 0 17)) true) (and (and (=> (= (ControlFlow 0 16) 11) |inline$v2.Eval$0$label_11_case_0#2_correct|) (=> (= (ControlFlow 0 16) 12) |inline$v2.Eval$0$label_11_case_1#2_correct|)) (=> (= (ControlFlow 0 16) 14) |inline$v2.Eval$0$label_11_case_2#2_correct|)))))))))))))))))))))
(let ((|anon0#2_correct|  (=> (and (v4.INT_LT e_.1 v4.alloc) (v4.INT_LT outval_.1 v4.alloc)) (and (=> (= (ControlFlow 0 29) (- 0 30)) true) (=> (= (ControlFlow 0 29) 16) |inline$v2.Eval$0$anon0#2_correct|)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 31) 29) |anon0#2_correct|)))
PreconditionGeneratedEntry_correct))))))))))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.value_is (Int Int) Bool)
(declare-fun e_.1 () Int)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun inline$v2.Eval$0$res@4 () Int)
(declare-fun inline$v2.Eval$0$op@1 () Int)
(declare-fun inline$v2.Eval$0$res@3 () Int)
(declare-fun inline$v2.Eval$0$a1@1 () Int)
(declare-fun inline$v2.Eval$0$a2@1 () Int)
(declare-fun inline$v2.Eval$0$res@2 () Int)
(declare-fun inline$v2.Eval$0$res@1 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(set-info :boogie-vc-id v2.EvalEntry2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28) (let ((|anon0#2$1_correct|  (=> (v4.value_is v2.__ctobpl_const_27 e_.1) (=> (and (v4.value_is v2.__ctobpl_const_28 e_.1) (= (ControlFlow 0 2) (- 0 1))) true))))
(let ((inline$v2.Eval$0$Return_correct  (=> (= (ControlFlow 0 3) 2) |anon0#2$1_correct|)))
(let ((|inline$v2.Eval$0$label_12#2_correct|  (and (=> (= (ControlFlow 0 4) (- 0 7)) true) (and (=> (= (ControlFlow 0 4) (- 0 6)) true) (=> (and (and (= v4.Mem_T.result__EXPR@0 (|Store__T@[Int]Int_| v4.Mem_T.result__EXPR (v4.result__EXPR e_.1) inline$v2.Eval$0$res@4)) (v4.value_is v2.__ctobpl_const_12 e_.1)) (and (v4.value_is v2.__ctobpl_const_13 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_14 inline$v2.Eval$0$res@4))) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (=> (= (ControlFlow 0 4) 3) inline$v2.Eval$0$Return_correct)))))))
(let ((|inline$v2.Eval$0$label_11_case_2#2_correct|  (=> (and (v4.INT_EQ inline$v2.Eval$0$op@1 2) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@1)) (and (=> (= (ControlFlow 0 11) (- 0 12)) true) (=> (and (= inline$v2.Eval$0$res@3 (v4.MINUS_BOTH_PTR_OR_BOTH_INT inline$v2.Eval$0$a1@1 inline$v2.Eval$0$a2@1 1)) (v4.value_is v2.__ctobpl_const_18 inline$v2.Eval$0$res@3)) (=> (and (and (v4.value_is v2.__ctobpl_const_19 inline$v2.Eval$0$a1@1) (v4.value_is v2.__ctobpl_const_20 inline$v2.Eval$0$a2@1)) (and (= inline$v2.Eval$0$res@4 inline$v2.Eval$0$res@3) (= (ControlFlow 0 11) 4))) |inline$v2.Eval$0$label_12#2_correct|))))))
(let ((|inline$v2.Eval$0$label_11_case_1#2_correct|  (=> (and (v4.INT_EQ inline$v2.Eval$0$op@1 1) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@1)) (and (=> (= (ControlFlow 0 9) (- 0 10)) true) (=> (and (= inline$v2.Eval$0$res@2 (v4.PLUS inline$v2.Eval$0$a1@1 1 inline$v2.Eval$0$a2@1)) (v4.value_is v2.__ctobpl_const_15 inline$v2.Eval$0$res@2)) (=> (and (and (v4.value_is v2.__ctobpl_const_16 inline$v2.Eval$0$a1@1) (v4.value_is v2.__ctobpl_const_17 inline$v2.Eval$0$a2@1)) (and (= inline$v2.Eval$0$res@4 inline$v2.Eval$0$res@2) (= (ControlFlow 0 9) 4))) |inline$v2.Eval$0$label_12#2_correct|))))))
(let ((|inline$v2.Eval$0$label_11_case_0#2_correct|  (=> (v4.INT_NEQ inline$v2.Eval$0$op@1 1) (=> (and (and (v4.INT_NEQ inline$v2.Eval$0$op@1 2) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@1)) (and (= inline$v2.Eval$0$res@4 inline$v2.Eval$0$res@1) (= (ControlFlow 0 8) 4))) |inline$v2.Eval$0$label_12#2_correct|))))
(let ((|inline$v2.Eval$0$anon0#2_correct|  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 13) (- 0 25)) true) (and (=> (= (ControlFlow 0 13) (- 0 24)) true) (and (=> (= (ControlFlow 0 13) (- 0 23)) true) (and (=> (= (ControlFlow 0 13) (- 0 22)) true) (and (=> (= (ControlFlow 0 13) (- 0 21)) true) (and (=> (= (ControlFlow 0 13) (- 0 20)) true) (=> (and (and (= inline$v2.Eval$0$op@1 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_1 inline$v2.Eval$0$op@1)) (and (v4.value_is v2.__ctobpl_const_2 e_.1) (v4.value_is v2.__ctobpl_const_3 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))))) (and (=> (= (ControlFlow 0 13) (- 0 19)) true) (and (=> (= (ControlFlow 0 13) (- 0 18)) true) (=> (and (and (= inline$v2.Eval$0$a1@1 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_4 inline$v2.Eval$0$a1@1)) (and (v4.value_is v2.__ctobpl_const_5 e_.1) (v4.value_is v2.__ctobpl_const_6 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))))) (and (=> (= (ControlFlow 0 13) (- 0 17)) true) (and (=> (= (ControlFlow 0 13) (- 0 16)) true) (=> (and (and (= inline$v2.Eval$0$a2@1 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_7 inline$v2.Eval$0$a2@1)) (and (v4.value_is v2.__ctobpl_const_8 e_.1) (v4.value_is v2.__ctobpl_const_9 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))))) (and (=> (= (ControlFlow 0 13) (- 0 15)) true) (=> (and (= inline$v2.Eval$0$res@1 (- 0 1)) (v4.value_is v2.__ctobpl_const_10 inline$v2.Eval$0$res@1)) (and (=> (= (ControlFlow 0 13) (- 0 14)) true) (and (and (=> (= (ControlFlow 0 13) 8) |inline$v2.Eval$0$label_11_case_0#2_correct|) (=> (= (ControlFlow 0 13) 9) |inline$v2.Eval$0$label_11_case_1#2_correct|)) (=> (= (ControlFlow 0 13) 11) |inline$v2.Eval$0$label_11_case_2#2_correct|)))))))))))))))))))))
(let ((|anon0#2_correct|  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 26) (- 0 27)) true) (=> (= (ControlFlow 0 26) 13) |inline$v2.Eval$0$anon0#2_correct|)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 26) |anon0#2_correct|)))
PreconditionGeneratedEntry_correct))))))))))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id v2.__havoc_heapglobal_init)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 1) true)
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.Mem_T.result__EXPR@1 () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun e_.1 () Int)
(declare-fun inline$v4.Eval$0$res@3 () Int)
(declare-fun v4.value_is (Int Int) Bool)
(declare-fun AA_TEMP30@0 () Bool)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun v4.isUnsigned () Int)
(declare-fun inline$v4.Eval$0$res@2 () Int)
(declare-fun inline$v4.Eval$0$a1@0 () Int)
(declare-fun inline$v4.Eval$0$a2@0 () Int)
(declare-fun call2formal@ret@0 () Int)
(declare-fun inline$v4.Eval$0$op@0 () Int)
(declare-fun inline$v4.Eval$0$res@1 () Int)
(declare-fun call2formal@ret@0@@0 () Int)
(declare-fun inline$v4.Eval$0$res@0 () Int)
(declare-fun inline$v2.Eval$0$res@3 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(declare-fun inline$v2.Eval$0$op@0 () Int)
(declare-fun inline$v2.Eval$0$res@2 () Int)
(declare-fun inline$v2.Eval$0$a1@0 () Int)
(declare-fun inline$v2.Eval$0$a2@0 () Int)
(declare-fun inline$v2.Eval$0$res@1 () Int)
(declare-fun inline$v2.Eval$0$res@0 () Int)
(set-info :boogie-vc-id EQ_v2.Eval__v4.Eval)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55) (let ((|inline$v4.Eval$0$label_12#2_correct|  (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> (and (and (= v4.Mem_T.result__EXPR@1 (|Store__T@[Int]Int_| v4.Mem_T.result__EXPR (v4.result__EXPR e_.1) inline$v4.Eval$0$res@3)) (v4.value_is v4.__ctobpl_const_12 e_.1)) (and (v4.value_is v4.__ctobpl_const_13 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@1 (v4.result__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_14 inline$v4.Eval$0$res@3))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= AA_TEMP30@0  (or (= v4.Mem_T.result__EXPR@0 v4.Mem_T.result__EXPR@1) (forall ((_x0 Int) ) (! (= (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 _x0) (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@1 _x0))
 :qid |EQv2Evalv4Evaloutbpl.2102:64|
 :skolemid |208|
)))) (= (ControlFlow 0 2) (- 0 1))) AA_TEMP30@0)))))))
(let ((|inline$v4.Eval$0$label_13_false#2_correct|  (=> (and (= v4.isUnsigned 0) (v4.value_is v4.__ctobpl_const_15 v4.isUnsigned)) (and (=> (= (ControlFlow 0 17) (- 0 18)) true) (=> (and (= inline$v4.Eval$0$res@2 (v4.PLUS inline$v4.Eval$0$a1@0 1 inline$v4.Eval$0$a2@0)) (v4.value_is v4.__ctobpl_const_26 inline$v4.Eval$0$res@2)) (=> (and (and (v4.value_is v4.__ctobpl_const_27 inline$v4.Eval$0$a1@0) (v4.value_is v4.__ctobpl_const_28 inline$v4.Eval$0$a2@0)) (and (= inline$v4.Eval$0$res@3 inline$v4.Eval$0$res@2) (= (ControlFlow 0 17) 2))) |inline$v4.Eval$0$label_12#2_correct|))))))
(let ((|inline$v4.Eval$0$label_13_true#2_correct|  (=> (and (not (= v4.isUnsigned 0)) (v4.value_is v4.__ctobpl_const_15 v4.isUnsigned)) (and (=> (= (ControlFlow 0 14) (- 0 16)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_29 inline$v4.Eval$0$a1@0) (v4.value_is v4.__ctobpl_const_30 inline$v4.Eval$0$a2@0)) (and (v4.value_is v4.__ctobpl_const_31 inline$v4.Eval$0$a1@0) (v4.value_is v4.__ctobpl_const_32 inline$v4.Eval$0$a2@0))) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_33 call2formal@ret@0) (v4.value_is v4.__ctobpl_const_34 call2formal@ret@0)) (and (= inline$v4.Eval$0$res@3 call2formal@ret@0) (= (ControlFlow 0 14) 2))) |inline$v4.Eval$0$label_12#2_correct|)))))))
(let ((|inline$v4.Eval$0$label_11_case_1#2_correct|  (=> (and (v4.INT_EQ inline$v4.Eval$0$op@0 1) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@0)) (and (=> (= (ControlFlow 0 19) (- 0 20)) true) (and (=> (= (ControlFlow 0 19) 14) |inline$v4.Eval$0$label_13_true#2_correct|) (=> (= (ControlFlow 0 19) 17) |inline$v4.Eval$0$label_13_false#2_correct|))))))
(let ((|inline$v4.Eval$0$label_14_false#2_correct|  (=> (and (= v4.isUnsigned 0) (v4.value_is v4.__ctobpl_const_16 v4.isUnsigned)) (and (=> (= (ControlFlow 0 10) (- 0 11)) true) (=> (and (= inline$v4.Eval$0$res@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT inline$v4.Eval$0$a1@0 inline$v4.Eval$0$a2@0 1)) (v4.value_is v4.__ctobpl_const_17 inline$v4.Eval$0$res@1)) (=> (and (and (v4.value_is v4.__ctobpl_const_18 inline$v4.Eval$0$a1@0) (v4.value_is v4.__ctobpl_const_19 inline$v4.Eval$0$a2@0)) (and (= inline$v4.Eval$0$res@3 inline$v4.Eval$0$res@1) (= (ControlFlow 0 10) 2))) |inline$v4.Eval$0$label_12#2_correct|))))))
(let ((|inline$v4.Eval$0$label_14_true#2_correct|  (=> (and (not (= v4.isUnsigned 0)) (v4.value_is v4.__ctobpl_const_16 v4.isUnsigned)) (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_20 inline$v4.Eval$0$a1@0) (v4.value_is v4.__ctobpl_const_21 inline$v4.Eval$0$a2@0)) (and (v4.value_is v4.__ctobpl_const_22 inline$v4.Eval$0$a1@0) (v4.value_is v4.__ctobpl_const_23 inline$v4.Eval$0$a2@0))) (and (=> (= (ControlFlow 0 7) (- 0 8)) true) (=> (and (and (v4.value_is v4.__ctobpl_const_24 call2formal@ret@0@@0) (v4.value_is v4.__ctobpl_const_25 call2formal@ret@0@@0)) (and (= inline$v4.Eval$0$res@3 call2formal@ret@0@@0) (= (ControlFlow 0 7) 2))) |inline$v4.Eval$0$label_12#2_correct|)))))))
(let ((|inline$v4.Eval$0$label_11_case_2#2_correct|  (=> (and (v4.INT_EQ inline$v4.Eval$0$op@0 2) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (and (=> (= (ControlFlow 0 12) 7) |inline$v4.Eval$0$label_14_true#2_correct|) (=> (= (ControlFlow 0 12) 10) |inline$v4.Eval$0$label_14_false#2_correct|))))))
(let ((|inline$v4.Eval$0$label_11_case_0#2_correct|  (=> (v4.INT_NEQ inline$v4.Eval$0$op@0 1) (=> (and (and (v4.INT_NEQ inline$v4.Eval$0$op@0 2) (v4.value_is v4.__ctobpl_const_11 inline$v4.Eval$0$op@0)) (and (= inline$v4.Eval$0$res@3 inline$v4.Eval$0$res@0) (= (ControlFlow 0 6) 2))) |inline$v4.Eval$0$label_12#2_correct|))))
(let ((|inline$v2.Eval$0$label_12#2_correct|  (and (=> (= (ControlFlow 0 21) (- 0 36)) true) (and (=> (= (ControlFlow 0 21) (- 0 35)) true) (=> (and (and (= v4.Mem_T.result__EXPR@0 (|Store__T@[Int]Int_| v4.Mem_T.result__EXPR (v4.result__EXPR e_.1) inline$v2.Eval$0$res@3)) (v4.value_is v2.__ctobpl_const_12 e_.1)) (and (v4.value_is v2.__ctobpl_const_13 (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 (v4.result__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_14 inline$v2.Eval$0$res@3))) (and (=> (= (ControlFlow 0 21) (- 0 34)) true) (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 21) (- 0 33)) true) (and (=> (= (ControlFlow 0 21) (- 0 32)) true) (and (=> (= (ControlFlow 0 21) (- 0 31)) true) (and (=> (= (ControlFlow 0 21) (- 0 30)) true) (and (=> (= (ControlFlow 0 21) (- 0 29)) true) (and (=> (= (ControlFlow 0 21) (- 0 28)) true) (=> (and (and (= inline$v4.Eval$0$op@0 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_1 inline$v4.Eval$0$op@0)) (and (v4.value_is v4.__ctobpl_const_2 e_.1) (v4.value_is v4.__ctobpl_const_3 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))))) (and (=> (= (ControlFlow 0 21) (- 0 27)) true) (and (=> (= (ControlFlow 0 21) (- 0 26)) true) (=> (and (and (= inline$v4.Eval$0$a1@0 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_4 inline$v4.Eval$0$a1@0)) (and (v4.value_is v4.__ctobpl_const_5 e_.1) (v4.value_is v4.__ctobpl_const_6 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))))) (and (=> (= (ControlFlow 0 21) (- 0 25)) true) (and (=> (= (ControlFlow 0 21) (- 0 24)) true) (=> (and (and (= inline$v4.Eval$0$a2@0 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))) (v4.value_is v4.__ctobpl_const_7 inline$v4.Eval$0$a2@0)) (and (v4.value_is v4.__ctobpl_const_8 e_.1) (v4.value_is v4.__ctobpl_const_9 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))))) (and (=> (= (ControlFlow 0 21) (- 0 23)) true) (=> (and (= inline$v4.Eval$0$res@0 (- 0 1)) (v4.value_is v4.__ctobpl_const_10 inline$v4.Eval$0$res@0)) (and (=> (= (ControlFlow 0 21) (- 0 22)) true) (and (and (=> (= (ControlFlow 0 21) 6) |inline$v4.Eval$0$label_11_case_0#2_correct|) (=> (= (ControlFlow 0 21) 19) |inline$v4.Eval$0$label_11_case_1#2_correct|)) (=> (= (ControlFlow 0 21) 12) |inline$v4.Eval$0$label_11_case_2#2_correct|)))))))))))))))))))))))))
(let ((|inline$v2.Eval$0$label_11_case_2#2_correct|  (=> (and (v4.INT_EQ inline$v2.Eval$0$op@0 2) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@0)) (and (=> (= (ControlFlow 0 40) (- 0 41)) true) (=> (and (= inline$v2.Eval$0$res@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT inline$v2.Eval$0$a1@0 inline$v2.Eval$0$a2@0 1)) (v4.value_is v2.__ctobpl_const_18 inline$v2.Eval$0$res@2)) (=> (and (and (v4.value_is v2.__ctobpl_const_19 inline$v2.Eval$0$a1@0) (v4.value_is v2.__ctobpl_const_20 inline$v2.Eval$0$a2@0)) (and (= inline$v2.Eval$0$res@3 inline$v2.Eval$0$res@2) (= (ControlFlow 0 40) 21))) |inline$v2.Eval$0$label_12#2_correct|))))))
(let ((|inline$v2.Eval$0$label_11_case_1#2_correct|  (=> (and (v4.INT_EQ inline$v2.Eval$0$op@0 1) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@0)) (and (=> (= (ControlFlow 0 38) (- 0 39)) true) (=> (and (= inline$v2.Eval$0$res@1 (v4.PLUS inline$v2.Eval$0$a1@0 1 inline$v2.Eval$0$a2@0)) (v4.value_is v2.__ctobpl_const_15 inline$v2.Eval$0$res@1)) (=> (and (and (v4.value_is v2.__ctobpl_const_16 inline$v2.Eval$0$a1@0) (v4.value_is v2.__ctobpl_const_17 inline$v2.Eval$0$a2@0)) (and (= inline$v2.Eval$0$res@3 inline$v2.Eval$0$res@1) (= (ControlFlow 0 38) 21))) |inline$v2.Eval$0$label_12#2_correct|))))))
(let ((|inline$v2.Eval$0$label_11_case_0#2_correct|  (=> (v4.INT_NEQ inline$v2.Eval$0$op@0 1) (=> (and (and (v4.INT_NEQ inline$v2.Eval$0$op@0 2) (v4.value_is v2.__ctobpl_const_11 inline$v2.Eval$0$op@0)) (and (= inline$v2.Eval$0$res@3 inline$v2.Eval$0$res@0) (= (ControlFlow 0 37) 21))) |inline$v2.Eval$0$label_12#2_correct|))))
(let ((AA_INSTR_EQ_BODY_correct  (=> (v4.INT_LT e_.1 v4.alloc) (and (=> (= (ControlFlow 0 42) (- 0 54)) true) (and (=> (= (ControlFlow 0 42) (- 0 53)) true) (and (=> (= (ControlFlow 0 42) (- 0 52)) true) (and (=> (= (ControlFlow 0 42) (- 0 51)) true) (and (=> (= (ControlFlow 0 42) (- 0 50)) true) (and (=> (= (ControlFlow 0 42) (- 0 49)) true) (=> (and (and (= inline$v2.Eval$0$op@0 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_1 inline$v2.Eval$0$op@0)) (and (v4.value_is v2.__ctobpl_const_2 e_.1) (v4.value_is v2.__ctobpl_const_3 (|Select__T@[Int]Int_| v4.Mem_T.oper__EXPR (v4.oper__EXPR e_.1))))) (and (=> (= (ControlFlow 0 42) (- 0 48)) true) (and (=> (= (ControlFlow 0 42) (- 0 47)) true) (=> (and (and (= inline$v2.Eval$0$a1@0 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_4 inline$v2.Eval$0$a1@0)) (and (v4.value_is v2.__ctobpl_const_5 e_.1) (v4.value_is v2.__ctobpl_const_6 (|Select__T@[Int]Int_| v4.Mem_T.op1__EXPR (v4.op1__EXPR e_.1))))) (and (=> (= (ControlFlow 0 42) (- 0 46)) true) (and (=> (= (ControlFlow 0 42) (- 0 45)) true) (=> (and (and (= inline$v2.Eval$0$a2@0 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))) (v4.value_is v2.__ctobpl_const_7 inline$v2.Eval$0$a2@0)) (and (v4.value_is v2.__ctobpl_const_8 e_.1) (v4.value_is v2.__ctobpl_const_9 (|Select__T@[Int]Int_| v4.Mem_T.op2__EXPR (v4.op2__EXPR e_.1))))) (and (=> (= (ControlFlow 0 42) (- 0 44)) true) (=> (and (= inline$v2.Eval$0$res@0 (- 0 1)) (v4.value_is v2.__ctobpl_const_10 inline$v2.Eval$0$res@0)) (and (=> (= (ControlFlow 0 42) (- 0 43)) true) (and (and (=> (= (ControlFlow 0 42) 37) |inline$v2.Eval$0$label_11_case_0#2_correct|) (=> (= (ControlFlow 0 42) 38) |inline$v2.Eval$0$label_11_case_1#2_correct|)) (=> (= (ControlFlow 0 42) 40) |inline$v2.Eval$0$label_11_case_2#2_correct|)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 55) 42) AA_INSTR_EQ_BODY_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun _uf_v4.EvalEntry1_v4.Mem_T.result__EXPR (Int Int Int |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| Int) |T@[Int]Int|)
(declare-fun e_.1 () Int)
(declare-fun outval_.1 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.INT4 () |T@[Int]Int|)
(declare-fun v4.isUnsigned () Int)
(declare-fun v4.Mem_T.INT4@0 () |T@[Int]Int|)
(declare-fun _uf_v4.EvalEntry1_v4.Mem_T.INT4 (Int Int Int |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| Int) |T@[Int]Int|)
(declare-fun v4.isUnsigned@0 () Int)
(declare-fun _uf_v4.EvalEntry1_v4.isUnsigned (Int Int Int |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| Int) Int)
(declare-fun v4.Mem_T.result__EXPR@1 () |T@[Int]Int|)
(declare-fun v4.Mem_T.INT4@1 () |T@[Int]Int|)
(declare-fun AA_TEMP80@0 () Bool)
(declare-fun AA_TEMP81@0 () Bool)
(declare-fun AA_TEMP82@0 () Bool)
(set-info :boogie-vc-id EQ_v2.EvalEntry1__v4.EvalEntry1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((AA_INSTR_EQ_BODY_correct  (=> (= v4.Mem_T.result__EXPR@0 (_uf_v4.EvalEntry1_v4.Mem_T.result__EXPR e_.1 outval_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.Mem_T.INT4 v4.isUnsigned)) (=> (and (and (= v4.Mem_T.INT4@0 (_uf_v4.EvalEntry1_v4.Mem_T.INT4 e_.1 outval_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.Mem_T.INT4 v4.isUnsigned)) (= v4.isUnsigned@0 (_uf_v4.EvalEntry1_v4.isUnsigned e_.1 outval_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.Mem_T.INT4 v4.isUnsigned))) (and (= v4.Mem_T.result__EXPR@1 (_uf_v4.EvalEntry1_v4.Mem_T.result__EXPR e_.1 outval_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.Mem_T.INT4 v4.isUnsigned)) (= v4.Mem_T.INT4@1 (_uf_v4.EvalEntry1_v4.Mem_T.INT4 e_.1 outval_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.Mem_T.INT4 v4.isUnsigned)))) (=> (and (and (and (= AA_TEMP80@0  (or (= v4.Mem_T.result__EXPR@0 v4.Mem_T.result__EXPR@1) (forall ((_x0 Int) ) (! (= (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 _x0) (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@1 _x0))
 :qid |EQv2Evalv4Evaloutbpl.2153:86|
 :skolemid |209|
)))) (= AA_TEMP81@0  (or (= v4.Mem_T.INT4@0 v4.Mem_T.INT4@1) (forall ((_x0@@0 Int) ) (! (= (|Select__T@[Int]Int_| v4.Mem_T.INT4@0 _x0@@0) (|Select__T@[Int]Int_| v4.Mem_T.INT4@1 _x0@@0))
 :qid |EQv2Evalv4Evaloutbpl.2153:183|
 :skolemid |210|
))))) (= AA_TEMP82@0 (= v4.isUnsigned v4.isUnsigned@0))) (= (ControlFlow 0 2) (- 0 1))) (and (and AA_TEMP82@0 AA_TEMP81@0) AA_TEMP80@0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) AA_INSTR_EQ_BODY_correct)))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun v4.T.oper__EXPR () T@name)
(declare-fun v4.T.op1__EXPR () T@name)
(declare-fun v4.T.op2__EXPR () T@name)
(declare-fun v4.T.result__EXPR () T@name)
(declare-fun v4.T.INT4 () T@name)
(declare-fun v4.T.PINT4 () T@name)
(declare-fun v4.T.PPINT4 () T@name)
(declare-fun v4.T.PP_EXPR () T@name)
(declare-fun v4.T.P_EXPR () T@name)
(declare-fun v4.T._EXPR () T@name)
(declare-fun v4.__ctobpl_const_9 () Int)
(declare-fun v4.__ctobpl_const_10 () Int)
(declare-fun v4.__ctobpl_const_11 () Int)
(declare-fun v4.__ctobpl_const_12 () Int)
(declare-fun v4.__ctobpl_const_6 () Int)
(declare-fun v4.__ctobpl_const_7 () Int)
(declare-fun v4.__ctobpl_const_8 () Int)
(declare-fun v4.__ctobpl_const_3 () Int)
(declare-fun v4.__ctobpl_const_1 () Int)
(declare-fun v4.__ctobpl_const_2 () Int)
(declare-fun v4.__ctobpl_const_13 () Int)
(declare-fun v4.__ctobpl_const_14 () Int)
(declare-fun v4.__ctobpl_const_15 () Int)
(declare-fun v4.__ctobpl_const_16 () Int)
(declare-fun v4.__ctobpl_const_17 () Int)
(declare-fun v4.__ctobpl_const_18 () Int)
(declare-fun v4.__ctobpl_const_19 () Int)
(declare-fun v4.__ctobpl_const_20 () Int)
(declare-fun v4.__ctobpl_const_21 () Int)
(declare-fun v4.__ctobpl_const_22 () Int)
(declare-fun v4.__ctobpl_const_23 () Int)
(declare-fun v4.__ctobpl_const_24 () Int)
(declare-fun v4.__ctobpl_const_25 () Int)
(declare-fun v4.__ctobpl_const_26 () Int)
(declare-fun v4.__ctobpl_const_27 () Int)
(declare-fun v4.__ctobpl_const_28 () Int)
(declare-fun v4.__ctobpl_const_29 () Int)
(declare-fun v4.__ctobpl_const_30 () Int)
(declare-fun v4.__ctobpl_const_31 () Int)
(declare-fun v4.__ctobpl_const_32 () Int)
(declare-fun v4.__ctobpl_const_33 () Int)
(declare-fun v4.__ctobpl_const_34 () Int)
(declare-fun v4.__ctobpl_const_35 () Int)
(declare-fun v4.__ctobpl_const_4 () Int)
(declare-fun v4.__ctobpl_const_5 () Int)
(declare-fun v4.__ctobpl_const_36 () Int)
(declare-fun v4.__ctobpl_const_37 () Int)
(declare-fun v4.__ctobpl_const_38 () Int)
(declare-fun v4.__ctobpl_const_39 () Int)
(declare-fun v4.__ctobpl_const_40 () Int)
(declare-fun v4.__ctobpl_const_41 () Int)
(declare-fun v4.__ctobpl_const_42 () Int)
(declare-fun v4.__ctobpl_const_43 () Int)
(declare-fun v4.__ctobpl_const_44 () Int)
(declare-fun v2.T.oper__EXPR () T@name)
(declare-fun v2.T.op1__EXPR () T@name)
(declare-fun v2.T.op2__EXPR () T@name)
(declare-fun v2.T.result__EXPR () T@name)
(declare-fun v2.T.INT4 () T@name)
(declare-fun v2.T.PINT4 () T@name)
(declare-fun v2.T.PPINT4 () T@name)
(declare-fun v2.T.PP_EXPR () T@name)
(declare-fun v2.T.P_EXPR () T@name)
(declare-fun v2.T._EXPR () T@name)
(declare-fun v2.__ctobpl_const_7 () Int)
(declare-fun v2.__ctobpl_const_8 () Int)
(declare-fun v2.__ctobpl_const_3 () Int)
(declare-fun v2.__ctobpl_const_4 () Int)
(declare-fun v2.__ctobpl_const_5 () Int)
(declare-fun v2.__ctobpl_const_6 () Int)
(declare-fun v2.__ctobpl_const_9 () Int)
(declare-fun v2.__ctobpl_const_10 () Int)
(declare-fun v2.__ctobpl_const_11 () Int)
(declare-fun v2.__ctobpl_const_12 () Int)
(declare-fun v2.__ctobpl_const_13 () Int)
(declare-fun v2.__ctobpl_const_14 () Int)
(declare-fun v2.__ctobpl_const_15 () Int)
(declare-fun v2.__ctobpl_const_16 () Int)
(declare-fun v2.__ctobpl_const_17 () Int)
(declare-fun v2.__ctobpl_const_18 () Int)
(declare-fun v2.__ctobpl_const_19 () Int)
(declare-fun v2.__ctobpl_const_20 () Int)
(declare-fun v2.__ctobpl_const_21 () Int)
(declare-fun v2.__ctobpl_const_22 () Int)
(declare-fun v2.__ctobpl_const_23 () Int)
(declare-fun v2.__ctobpl_const_24 () Int)
(declare-fun v2.__ctobpl_const_25 () Int)
(declare-fun v2.__ctobpl_const_26 () Int)
(declare-fun v2.__ctobpl_const_27 () Int)
(declare-fun v2.__ctobpl_const_28 () Int)
(declare-fun v2.__ctobpl_const_1 () Int)
(declare-fun v2.__ctobpl_const_2 () Int)
(declare-fun v4.choose (Bool Int Int) Int)
(declare-fun v4.BIT_BAND (Int Int) Int)
(declare-fun v4.POW2 (Int) Bool)
(declare-fun v4.Base (Int) Int)
(declare-fun v4.INT_LEQ (Int Int) Bool)
(declare-fun v4.MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun v4.INT_SUB (Int Int) Int)
(declare-sort |T@[Int]Bool| 0)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun v4.AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun v4.Rep (Int Int) Int)
(declare-fun v4.Singleton (Int) |T@[Int]Bool|)
(declare-fun v4.MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun v4.INT_MULT (Int Int) Int)
(declare-fun v4.PLUS (Int Int Int) Int)
(declare-fun v4.INT_ADD (Int Int) Int)
(declare-fun v4.Array (Int Int Int) |T@[Int]Bool|)
(declare-fun v4.Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4.Empty () |T@[Int]Bool|)
(declare-sort |T@[Int]Int| 0)
(declare-fun v4.Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun v4.LIFT (Bool) Int)
(declare-fun v4.PTR_NOT (Int) Int)
(declare-fun v4.NULL_CHECK (Int) Int)
(declare-fun v4.Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun v4.TwoBytesToInt (T@byte T@byte) Int)
(declare-fun v4.OneByteToInt (T@byte) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun v4.Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun v4.Field (Int) T@name)
(declare-fun v4.Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun v4._S_op1__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPRInv (Int) Int)
(declare-fun v4._S_op1__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op1__EXPR (Int) Int)
(declare-fun v4._S_op2__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPRInv (Int) Int)
(declare-fun v4._S_op2__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.op2__EXPR (Int) Int)
(declare-fun v4._S_oper__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPRInv (Int) Int)
(declare-fun v4._S_oper__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.oper__EXPR (Int) Int)
(declare-fun v4._S_result__EXPR (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPRInv (Int) Int)
(declare-fun v4._S_result__EXPRInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.result__EXPR (Int) Int)
(declare-fun v4.DIV (Int Int) Int)
(declare-fun v4.Match (Int T@name) Bool)
(declare-fun v4.T.Ptr (T@name) T@name)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.INT_LT (Int Int) Bool)
(declare-fun v4.Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_DIV (Int Int) Int)
(declare-fun v4.Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun v4.INT_GT (Int Int) Bool)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun v4.MULT (Int Int) Int)
(declare-fun v4.INT_ULT (Int Int) Bool)
(declare-fun v4.INT_UGT (Int Int) Bool)
(declare-fun v4.MatchBase (Int Int T@name) Bool)
(declare-fun v4.SetTrue () |T@[Int]Bool|)
(declare-fun v4.Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun v4.INT_NEQ (Int Int) Bool)
(declare-fun v4.BV32_NEQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_EQ (Int Int) Bool)
(declare-fun v4.BV32_EQ ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun v4.INT_ULEQ (Int Int) Bool)
(declare-fun v4.INT_GEQ (Int Int) Bool)
(declare-fun v4.INT_UGEQ (Int Int) Bool)
(declare-fun v4.HasType (Int T@name) Bool)
(declare-fun v4.FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct v4.T.oper__EXPR v4.T.op1__EXPR v4.T.op2__EXPR v4.T.result__EXPR v4.T.INT4 v4.T.PINT4 v4.T.PPINT4 v4.T.PP_EXPR v4.T.P_EXPR v4.T._EXPR v2.T.oper__EXPR v2.T.op1__EXPR v2.T.op2__EXPR v2.T.result__EXPR v2.T.INT4 v2.T.PINT4 v2.T.PPINT4 v2.T.PP_EXPR v2.T.P_EXPR v2.T._EXPR)(distinct v4.__ctobpl_const_9 v4.__ctobpl_const_10 v4.__ctobpl_const_11 v4.__ctobpl_const_12 v4.__ctobpl_const_6 v4.__ctobpl_const_7 v4.__ctobpl_const_8 v4.__ctobpl_const_3 v4.__ctobpl_const_1 v4.__ctobpl_const_2 v4.__ctobpl_const_13 v4.__ctobpl_const_14 v4.__ctobpl_const_15 v4.__ctobpl_const_16 v4.__ctobpl_const_17 v4.__ctobpl_const_18 v4.__ctobpl_const_19 v4.__ctobpl_const_20 v4.__ctobpl_const_21 v4.__ctobpl_const_22 v4.__ctobpl_const_23 v4.__ctobpl_const_24 v4.__ctobpl_const_25 v4.__ctobpl_const_26 v4.__ctobpl_const_27 v4.__ctobpl_const_28 v4.__ctobpl_const_29 v4.__ctobpl_const_30 v4.__ctobpl_const_31 v4.__ctobpl_const_32 v4.__ctobpl_const_33 v4.__ctobpl_const_34 v4.__ctobpl_const_35 v4.__ctobpl_const_4 v4.__ctobpl_const_5 v4.__ctobpl_const_36 v4.__ctobpl_const_37 v4.__ctobpl_const_38 v4.__ctobpl_const_39 v4.__ctobpl_const_40 v4.__ctobpl_const_41 v4.__ctobpl_const_42 v4.__ctobpl_const_43 v4.__ctobpl_const_44 v2.__ctobpl_const_7 v2.__ctobpl_const_8 v2.__ctobpl_const_3 v2.__ctobpl_const_4 v2.__ctobpl_const_5 v2.__ctobpl_const_6 v2.__ctobpl_const_9 v2.__ctobpl_const_10 v2.__ctobpl_const_11 v2.__ctobpl_const_12 v2.__ctobpl_const_13 v2.__ctobpl_const_14 v2.__ctobpl_const_15 v2.__ctobpl_const_16 v2.__ctobpl_const_17 v2.__ctobpl_const_18 v2.__ctobpl_const_19 v2.__ctobpl_const_20 v2.__ctobpl_const_21 v2.__ctobpl_const_22 v2.__ctobpl_const_23 v2.__ctobpl_const_24 v2.__ctobpl_const_25 v2.__ctobpl_const_26 v2.__ctobpl_const_27 v2.__ctobpl_const_28 v2.__ctobpl_const_1 v2.__ctobpl_const_2))
)
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (v4.choose a b c) b))
 :qid |EQv2Evalv4Evaloutbpl.485:15|
 :skolemid |63|
 :pattern ( (v4.choose a b c))
)))
(assert (forall ((a@@0 Bool) (b@@0 Int) (c@@0 Int) ) (!  (=> a@@0 (= (v4.choose a@@0 b@@0 c@@0) b@@0))
 :qid |EQv2Evalv4Evaloutbpl.1276:15|
 :skolemid |167|
 :pattern ( (v4.choose a@@0 b@@0 c@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (=> (or (= a@@1 0) (= b@@1 0)) (= (v4.BIT_BAND a@@1 b@@1) 0))
 :qid |EQv2Evalv4Evaloutbpl.483:15|
 :skolemid |62|
 :pattern ( (v4.BIT_BAND a@@1 b@@1))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (or (= a@@2 0) (= b@@2 0)) (= (v4.BIT_BAND a@@2 b@@2) 0))
 :qid |EQv2Evalv4Evaloutbpl.1274:15|
 :skolemid |166|
 :pattern ( (v4.BIT_BAND a@@2 b@@2))
)))
(assert (forall ((a@@3 Int) (b@@3 Int) ) (!  (=> (and (and (v4.POW2 a@@3) (v4.POW2 b@@3)) (not (= a@@3 b@@3))) (= (v4.BIT_BAND a@@3 b@@3) 0))
 :qid |EQv2Evalv4Evaloutbpl.481:15|
 :skolemid |61|
 :pattern ( (v4.BIT_BAND a@@3 b@@3))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (=> (and (and (v4.POW2 a@@4) (v4.POW2 b@@4)) (not (= a@@4 b@@4))) (= (v4.BIT_BAND a@@4 b@@4) 0))
 :qid |EQv2Evalv4Evaloutbpl.1272:15|
 :skolemid |165|
 :pattern ( (v4.BIT_BAND a@@4 b@@4))
)))
(assert (forall ((x Int) ) (! (v4.INT_LEQ (v4.Base x) x)
 :qid |EQv2Evalv4Evaloutbpl.313:15|
 :skolemid |3|
 :pattern ( (v4.Base x))
)))
(assert (forall ((x@@0 Int) ) (! (v4.INT_LEQ (v4.Base x@@0) x@@0)
 :qid |EQv2Evalv4Evaloutbpl.1104:15|
 :skolemid |107|
 :pattern ( (v4.Base x@@0))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) (size Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 1) (v4.INT_SUB a@@5 b@@5))
 :qid |EQv2Evalv4Evaloutbpl.411:15|
 :skolemid |52|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@5 b@@5 size))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) (size@@0 Int) ) (! (= (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 1) (v4.INT_SUB a@@6 b@@6))
 :qid |EQv2Evalv4Evaloutbpl.1202:15|
 :skolemid |156|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@6 b@@6 size@@0))
)))
(assert (forall ((n Int) (x@@1 Int) (y Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y) (and (v4.INT_LEQ x@@1 y) (= (v4.Rep n x@@1) (v4.Rep n y))))
 :qid |EQv2Evalv4Evaloutbpl.499:15|
 :skolemid |70|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n x@@1) y))
)))
(assert (forall ((n@@0 Int) (x@@2 Int) (y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0) (and (v4.INT_LEQ x@@2 y@@0) (= (v4.Rep n@@0 x@@2) (v4.Rep n@@0 y@@0))))
 :qid |EQv2Evalv4Evaloutbpl.1290:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (v4.AtLeast n@@0 x@@2) y@@0))
)))
(assert (forall ((x@@3 Int) (y@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3) (= x@@3 y@@1))
 :qid |EQv2Evalv4Evaloutbpl.517:15|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@1) x@@3))
)))
(assert (forall ((x@@4 Int) (y@@2 Int) ) (! (= (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4) (= x@@4 y@@2))
 :qid |EQv2Evalv4Evaloutbpl.1308:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Singleton y@@2) x@@4))
)))
(assert (forall ((a@@7 Int) (a_size Int) (b@@7 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@7 a_size b@@7) (v4.INT_SUB a@@7 (v4.INT_MULT a_size b@@7)))
 :qid |EQv2Evalv4Evaloutbpl.413:15|
 :skolemid |53|
 :pattern ( (v4.MINUS_LEFT_PTR a@@7 a_size b@@7))
)))
(assert (forall ((a@@8 Int) (a_size@@0 Int) (b@@8 Int) ) (! (= (v4.PLUS a@@8 a_size@@0 b@@8) (v4.INT_ADD a@@8 (v4.INT_MULT a_size@@0 b@@8)))
 :qid |EQv2Evalv4Evaloutbpl.415:15|
 :skolemid |54|
 :pattern ( (v4.PLUS a@@8 a_size@@0 b@@8))
)))
(assert (forall ((a@@9 Int) (a_size@@1 Int) (b@@9 Int) ) (! (= (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9) (v4.INT_SUB a@@9 (v4.INT_MULT a_size@@1 b@@9)))
 :qid |EQv2Evalv4Evaloutbpl.1204:15|
 :skolemid |157|
 :pattern ( (v4.MINUS_LEFT_PTR a@@9 a_size@@1 b@@9))
)))
(assert (forall ((a@@10 Int) (a_size@@2 Int) (b@@10 Int) ) (! (= (v4.PLUS a@@10 a_size@@2 b@@10) (v4.INT_ADD a@@10 (v4.INT_MULT a_size@@2 b@@10)))
 :qid |EQv2Evalv4Evaloutbpl.1206:15|
 :skolemid |158|
 :pattern ( (v4.PLUS a@@10 a_size@@2 b@@10))
)))
(assert (forall ((x@@5 Int) (n@@1 Int) (z Int) ) (!  (=> (v4.INT_LEQ z 0) (v4.Equal (v4.Array x@@5 n@@1 z) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.509:15|
 :skolemid |76|
 :pattern ( (v4.Array x@@5 n@@1 z))
)))
(assert (forall ((x@@6 Int) (n@@2 Int) (z@@0 Int) ) (!  (=> (v4.INT_LEQ z@@0 0) (v4.Equal (v4.Array x@@6 n@@2 z@@0) v4.Empty))
 :qid |EQv2Evalv4Evaloutbpl.1300:15|
 :skolemid |180|
 :pattern ( (v4.Array x@@6 n@@2 z@@0))
)))
(assert (forall ((x@@7 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7) (exists ((y@@3 Int) ) (!  (and (= x@@7 (|Select__T@[Int]Int_| M y@@3)) (|Select__T@[Int]Bool_| S y@@3))
 :qid |EQv2Evalv4Evaloutbpl.545:116|
 :skolemid |96|
)))
 :qid |EQv2Evalv4Evaloutbpl.545:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S M) x@@7))
)))
(assert (forall ((x@@8 Int) (S@@0 |T@[Int]Bool|) (M@@0 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8) (exists ((y@@4 Int) ) (!  (and (= x@@8 (|Select__T@[Int]Int_| M@@0 y@@4)) (|Select__T@[Int]Bool_| S@@0 y@@4))
 :qid |EQv2Evalv4Evaloutbpl.1336:116|
 :skolemid |200|
)))
 :qid |EQv2Evalv4Evaloutbpl.1336:15|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Dereference S@@0 M@@0) x@@8))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (!  (=> (= a@@11 b@@11) (= (v4.BIT_BAND a@@11 b@@11) a@@11))
 :qid |EQv2Evalv4Evaloutbpl.479:15|
 :skolemid |60|
 :pattern ( (v4.BIT_BAND a@@11 b@@11))
)))
(assert (forall ((a@@12 Int) (b@@12 Int) ) (!  (=> (= a@@12 b@@12) (= (v4.BIT_BAND a@@12 b@@12) a@@12))
 :qid |EQv2Evalv4Evaloutbpl.1270:15|
 :skolemid |164|
 :pattern ( (v4.BIT_BAND a@@12 b@@12))
)))
(assert (forall ((a@@13 Bool) ) (! (= a@@13 (not (= (v4.LIFT a@@13) 0)))
 :qid |EQv2Evalv4Evaloutbpl.489:15|
 :skolemid |65|
 :pattern ( (v4.LIFT a@@13))
)))
(assert (forall ((a@@14 Bool) ) (! (= a@@14 (not (= (v4.LIFT a@@14) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1280:15|
 :skolemid |169|
 :pattern ( (v4.LIFT a@@14))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (not (= a@@15 0)) (= (v4.PTR_NOT a@@15) 0))
 :qid |EQv2Evalv4Evaloutbpl.493:15|
 :skolemid |67|
 :pattern ( (v4.PTR_NOT a@@15))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (not (= a@@16 0)) (= (v4.NULL_CHECK a@@16) 0))
 :qid |EQv2Evalv4Evaloutbpl.497:15|
 :skolemid |69|
 :pattern ( (v4.NULL_CHECK a@@16))
)))
(assert (forall ((a@@17 Int) ) (!  (=> (not (= a@@17 0)) (= (v4.PTR_NOT a@@17) 0))
 :qid |EQv2Evalv4Evaloutbpl.1284:15|
 :skolemid |171|
 :pattern ( (v4.PTR_NOT a@@17))
)))
(assert (forall ((a@@18 Int) ) (!  (=> (not (= a@@18 0)) (= (v4.NULL_CHECK a@@18) 0))
 :qid |EQv2Evalv4Evaloutbpl.1288:15|
 :skolemid |173|
 :pattern ( (v4.NULL_CHECK a@@18))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (= a@@19 0) (not (= (v4.PTR_NOT a@@19) 0)))
 :qid |EQv2Evalv4Evaloutbpl.491:15|
 :skolemid |66|
 :pattern ( (v4.PTR_NOT a@@19))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (= a@@20 0) (not (= (v4.NULL_CHECK a@@20) 0)))
 :qid |EQv2Evalv4Evaloutbpl.495:15|
 :skolemid |68|
 :pattern ( (v4.NULL_CHECK a@@20))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (= a@@21 0) (not (= (v4.PTR_NOT a@@21) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1282:15|
 :skolemid |170|
 :pattern ( (v4.PTR_NOT a@@21))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (= a@@22 0) (not (= (v4.NULL_CHECK a@@22) 0)))
 :qid |EQv2Evalv4Evaloutbpl.1286:15|
 :skolemid |172|
 :pattern ( (v4.NULL_CHECK a@@22))
)))
(assert (forall ((x@@9 Int) (S@@1 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T)) (|Select__T@[Int]Bool_| T x@@9))
 :qid |EQv2Evalv4Evaloutbpl.529:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@9) (v4.Subset S@@1 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@9) (v4.Subset S@@1 T))
)))
(assert (forall ((x@@10 Int) (S@@2 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@10))
 :qid |EQv2Evalv4Evaloutbpl.1320:15|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]Bool_| S@@2 x@@10) (v4.Subset S@@2 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@10) (v4.Subset S@@2 T@@0))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |EQv2Evalv4Evaloutbpl.309:15|
 :skolemid |1|
 :pattern ( (v4.TwoBytesToInt b0 b1) (v4.TwoBytesToInt c0 c1))
)))
(assert (forall ((b0@@0 T@byte) (b1@@0 T@byte) (c0@@0 T@byte) (c1@@0 T@byte) ) (!  (=> (= (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0)) (and (= b0@@0 c0@@0) (= b1@@0 c1@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1100:15|
 :skolemid |105|
 :pattern ( (v4.TwoBytesToInt b0@@0 b1@@0) (v4.TwoBytesToInt c0@@0 c1@@0))
)))
(assert (forall ((b0@@1 T@byte) (c0@@1 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1)) (= b0@@1 c0@@1))
 :qid |EQv2Evalv4Evaloutbpl.307:15|
 :skolemid |0|
 :pattern ( (v4.OneByteToInt b0@@1) (v4.OneByteToInt c0@@1))
)))
(assert (forall ((b0@@2 T@byte) (c0@@2 T@byte) ) (!  (=> (= (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2)) (= b0@@2 c0@@2))
 :qid |EQv2Evalv4Evaloutbpl.1098:15|
 :skolemid |104|
 :pattern ( (v4.OneByteToInt b0@@2) (v4.OneByteToInt c0@@2))
)))
(assert (forall ((M@@1 |T@[name][Int]Int|) (x@@11 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@1 (v4.Field x@@11)) x@@11))
 :qid |EQv2Evalv4Evaloutbpl.555:15|
 :skolemid |102|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@1) x@@11))
)))
(assert (forall ((M@@2 |T@[name][Int]Int|) (x@@12 Int) ) (! (= (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@2 (v4.Field x@@12)) x@@12))
 :qid |EQv2Evalv4Evaloutbpl.1346:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Int_| (v4.Unified M@@2) x@@12))
)))
(assert (forall ((x@@13 Int) (S@@3 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1)) (|Select__T@[Int]Bool_| T@@1 x@@13)))
 :qid |EQv2Evalv4Evaloutbpl.533:15|
 :skolemid |89|
 :pattern ( (|Select__T@[Int]Bool_| S@@3 x@@13) (v4.Disjoint S@@3 T@@1))
 :pattern ( (|Select__T@[Int]Bool_| T@@1 x@@13) (v4.Disjoint S@@3 T@@1))
)))
(assert (forall ((x@@14 Int) (S@@4 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2)) (|Select__T@[Int]Bool_| T@@2 x@@14)))
 :qid |EQv2Evalv4Evaloutbpl.1324:15|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]Bool_| S@@4 x@@14) (v4.Disjoint S@@4 T@@2))
 :pattern ( (|Select__T@[Int]Bool_| T@@2 x@@14) (v4.Disjoint S@@4 T@@2))
)))
(assert (forall ((x@@15 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15) (|Select__T@[Int]Bool_| S@@5 (v4.op1__EXPRInv x@@15)))
 :qid |EQv2Evalv4Evaloutbpl.321:15|
 :skolemid |7|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@5) x@@15))
)))
(assert (forall ((x@@16 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16) (|Select__T@[Int]Bool_| S@@6 (v4.op1__EXPR x@@16)))
 :qid |EQv2Evalv4Evaloutbpl.323:15|
 :skolemid |8|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@6) x@@16))
)))
(assert (forall ((x@@17 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17) (|Select__T@[Int]Bool_| S@@7 (v4.op2__EXPRInv x@@17)))
 :qid |EQv2Evalv4Evaloutbpl.335:15|
 :skolemid |14|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@7) x@@17))
)))
(assert (forall ((x@@18 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18) (|Select__T@[Int]Bool_| S@@8 (v4.op2__EXPR x@@18)))
 :qid |EQv2Evalv4Evaloutbpl.337:15|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@8) x@@18))
)))
(assert (forall ((x@@19 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19) (|Select__T@[Int]Bool_| S@@9 (v4.oper__EXPRInv x@@19)))
 :qid |EQv2Evalv4Evaloutbpl.349:15|
 :skolemid |21|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@9) x@@19))
)))
(assert (forall ((x@@20 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20) (|Select__T@[Int]Bool_| S@@10 (v4.oper__EXPR x@@20)))
 :qid |EQv2Evalv4Evaloutbpl.351:15|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@10) x@@20))
)))
(assert (forall ((x@@21 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21) (|Select__T@[Int]Bool_| S@@11 (v4.result__EXPRInv x@@21)))
 :qid |EQv2Evalv4Evaloutbpl.363:15|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@11) x@@21))
)))
(assert (forall ((x@@22 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22) (|Select__T@[Int]Bool_| S@@12 (v4.result__EXPR x@@22)))
 :qid |EQv2Evalv4Evaloutbpl.365:15|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@12) x@@22))
)))
(assert (forall ((x@@23 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23) (|Select__T@[Int]Bool_| S@@13 (v4.op1__EXPRInv x@@23)))
 :qid |EQv2Evalv4Evaloutbpl.1112:15|
 :skolemid |111|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@13) x@@23))
)))
(assert (forall ((x@@24 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24) (|Select__T@[Int]Bool_| S@@14 (v4.op1__EXPR x@@24)))
 :qid |EQv2Evalv4Evaloutbpl.1114:15|
 :skolemid |112|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@14) x@@24))
)))
(assert (forall ((x@@25 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25) (|Select__T@[Int]Bool_| S@@15 (v4.op2__EXPRInv x@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1126:15|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@15) x@@25))
)))
(assert (forall ((x@@26 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26) (|Select__T@[Int]Bool_| S@@16 (v4.op2__EXPR x@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1128:15|
 :skolemid |119|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@16) x@@26))
)))
(assert (forall ((x@@27 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27) (|Select__T@[Int]Bool_| S@@17 (v4.oper__EXPRInv x@@27)))
 :qid |EQv2Evalv4Evaloutbpl.1140:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@17) x@@27))
)))
(assert (forall ((x@@28 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28) (|Select__T@[Int]Bool_| S@@18 (v4.oper__EXPR x@@28)))
 :qid |EQv2Evalv4Evaloutbpl.1142:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@18) x@@28))
)))
(assert (forall ((x@@29 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29) (|Select__T@[Int]Bool_| S@@19 (v4.result__EXPRInv x@@29)))
 :qid |EQv2Evalv4Evaloutbpl.1154:15|
 :skolemid |132|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@19) x@@29))
)))
(assert (forall ((x@@30 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30) (|Select__T@[Int]Bool_| S@@20 (v4.result__EXPR x@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1156:15|
 :skolemid |133|
 :pattern ( (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@20) x@@30))
)))
(assert (forall ((x@@31 Int) (S@@21 |T@[Int]Bool|) (M@@3 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@21 x@@31) (|Select__T@[Int]Bool_| (v4.Dereference S@@21 M@@3) (|Select__T@[Int]Int_| M@@3 x@@31)))
 :qid |EQv2Evalv4Evaloutbpl.547:15|
 :skolemid |98|
 :pattern ( (|Select__T@[Int]Int_| M@@3 x@@31) (|Select__T@[Int]Bool_| S@@21 x@@31) (v4.Dereference S@@21 M@@3))
)))
(assert (forall ((x@@32 Int) (S@@22 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@22 x@@32) (|Select__T@[Int]Bool_| (v4.Dereference S@@22 M@@4) (|Select__T@[Int]Int_| M@@4 x@@32)))
 :qid |EQv2Evalv4Evaloutbpl.1338:15|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]Int_| M@@4 x@@32) (|Select__T@[Int]Bool_| S@@22 x@@32) (v4.Dereference S@@22 M@@4))
)))
(assert (v4.POW2 1))
(assert (v4.POW2 1))
(assert (v4.POW2 2))
(assert (v4.POW2 2))
(assert (v4.POW2 4))
(assert (v4.POW2 4))
(assert (v4.POW2 8))
(assert (v4.POW2 8))
(assert (v4.POW2 16))
(assert (v4.POW2 16))
(assert (v4.POW2 32))
(assert (v4.POW2 32))
(assert (v4.POW2 64))
(assert (v4.POW2 64))
(assert (v4.POW2 128))
(assert (v4.POW2 128))
(assert (v4.POW2 256))
(assert (v4.POW2 256))
(assert (v4.POW2 512))
(assert (v4.POW2 512))
(assert (v4.POW2 1024))
(assert (v4.POW2 1024))
(assert (v4.POW2 2048))
(assert (v4.POW2 2048))
(assert (v4.POW2 4096))
(assert (v4.POW2 4096))
(assert (v4.POW2 8192))
(assert (v4.POW2 8192))
(assert (v4.POW2 16384))
(assert (v4.POW2 16384))
(assert (v4.POW2 32768))
(assert (v4.POW2 32768))
(assert (v4.POW2 65536))
(assert (v4.POW2 65536))
(assert (v4.POW2 131072))
(assert (v4.POW2 131072))
(assert (v4.POW2 262144))
(assert (v4.POW2 262144))
(assert (v4.POW2 524288))
(assert (v4.POW2 524288))
(assert (v4.POW2 1048576))
(assert (v4.POW2 1048576))
(assert (v4.POW2 2097152))
(assert (v4.POW2 2097152))
(assert (v4.POW2 4194304))
(assert (v4.POW2 4194304))
(assert (v4.POW2 8388608))
(assert (v4.POW2 8388608))
(assert (v4.POW2 16777216))
(assert (v4.POW2 16777216))
(assert (v4.POW2 33554432))
(assert (v4.POW2 33554432))
(assert (forall ((a@@23 Int) (b@@13 Int) ) (!  (=> (and (< a@@23 0) (< b@@13 0)) (and (>= (* b@@13 (v4.DIV a@@23 b@@13)) a@@23) (> a@@23 (* b@@13 (+ (v4.DIV a@@23 b@@13) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.425:15|
 :skolemid |59|
 :pattern ( (v4.DIV a@@23 b@@13))
)))
(assert (forall ((a@@24 Int) (b@@14 Int) ) (!  (=> (and (< a@@24 0) (< b@@14 0)) (and (>= (* b@@14 (v4.DIV a@@24 b@@14)) a@@24) (> a@@24 (* b@@14 (+ (v4.DIV a@@24 b@@14) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1216:15|
 :skolemid |163|
 :pattern ( (v4.DIV a@@24 b@@14))
)))
(assert (forall ((a@@25 Int) (b@@15 Int) ) (!  (=> (and (< a@@25 0) (> b@@15 0)) (and (>= (* b@@15 (v4.DIV a@@25 b@@15)) a@@25) (> a@@25 (* b@@15 (- (v4.DIV a@@25 b@@15) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.423:15|
 :skolemid |58|
 :pattern ( (v4.DIV a@@25 b@@15))
)))
(assert (forall ((a@@26 Int) (b@@16 Int) ) (!  (=> (and (< a@@26 0) (> b@@16 0)) (and (>= (* b@@16 (v4.DIV a@@26 b@@16)) a@@26) (> a@@26 (* b@@16 (- (v4.DIV a@@26 b@@16) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1214:15|
 :skolemid |162|
 :pattern ( (v4.DIV a@@26 b@@16))
)))
(assert (forall ((a@@27 Int) (t T@name) ) (! (= (v4.Match a@@27 (v4.T.Ptr t)) (= (v4.Field a@@27) (v4.T.Ptr t)))
 :qid |EQv2Evalv4Evaloutbpl.315:15|
 :skolemid |4|
 :pattern ( (v4.Match a@@27 (v4.T.Ptr t)))
)))
(assert (forall ((a@@28 Int) (t@@0 T@name) ) (! (= (v4.Match a@@28 (v4.T.Ptr t@@0)) (= (v4.Field a@@28) (v4.T.Ptr t@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1106:15|
 :skolemid |108|
 :pattern ( (v4.Match a@@28 (v4.T.Ptr t@@0)))
)))
(assert (forall ((x@@33 Int) (y@@5 Int) (S@@23 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@23 x@@33)) (v4.Equal (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)) (v4.Dereference S@@23 M@@5)))
 :qid |EQv2Evalv4Evaloutbpl.549:15|
 :skolemid |99|
 :pattern ( (v4.Dereference S@@23 (|Store__T@[Int]Int_| M@@5 x@@33 y@@5)))
)))
(assert (forall ((x@@34 Int) (y@@6 Int) (S@@24 |T@[Int]Bool|) (M@@6 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@24 x@@34)) (v4.Equal (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)) (v4.Dereference S@@24 M@@6)))
 :qid |EQv2Evalv4Evaloutbpl.1340:15|
 :skolemid |203|
 :pattern ( (v4.Dereference S@@24 (|Store__T@[Int]Int_| M@@6 x@@34 y@@6)))
)))
(assert (forall ((a@@29 Int) (b@@17 Int) (size@@1 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@1 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1)) (v4.INT_SUB a@@29 b@@17)) (v4.INT_LT (v4.INT_SUB a@@29 b@@17) (v4.INT_MULT size@@1 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1) 1))))
 :qid |EQv2Evalv4Evaloutbpl.409:15|
 :skolemid |51|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@29 b@@17 size@@1))
)))
(assert (forall ((a@@30 Int) (b@@18 Int) (size@@2 Int) ) (!  (and (v4.INT_LEQ (v4.INT_MULT size@@2 (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2)) (v4.INT_SUB a@@30 b@@18)) (v4.INT_LT (v4.INT_SUB a@@30 b@@18) (v4.INT_MULT size@@2 (v4.INT_ADD (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2) 1))))
 :qid |EQv2Evalv4Evaloutbpl.1200:15|
 :skolemid |155|
 :pattern ( (v4.MINUS_BOTH_PTR_OR_BOTH_INT a@@30 b@@18 size@@2))
)))
(assert (forall ((x@@35 Int) (S@@25 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35)  (and (|Select__T@[Int]Bool_| S@@25 x@@35) (|Select__T@[Int]Bool_| T@@3 x@@35)))
 :qid |EQv2Evalv4Evaloutbpl.523:15|
 :skolemid |83|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@25 T@@3) x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| S@@25 x@@35))
 :pattern ( (v4.Intersection S@@25 T@@3) (|Select__T@[Int]Bool_| T@@3 x@@35))
)))
(assert (forall ((x@@36 Int) (S@@26 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36)  (and (|Select__T@[Int]Bool_| S@@26 x@@36) (|Select__T@[Int]Bool_| T@@4 x@@36)))
 :qid |EQv2Evalv4Evaloutbpl.1314:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Intersection S@@26 T@@4) x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| S@@26 x@@36))
 :pattern ( (v4.Intersection S@@26 T@@4) (|Select__T@[Int]Bool_| T@@4 x@@36))
)))
(assert (forall ((x@@37 Int) (S@@27 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37)  (and (|Select__T@[Int]Bool_| S@@27 x@@37) (not (|Select__T@[Int]Bool_| T@@5 x@@37))))
 :qid |EQv2Evalv4Evaloutbpl.525:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@27 T@@5) x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| S@@27 x@@37))
 :pattern ( (v4.Difference S@@27 T@@5) (|Select__T@[Int]Bool_| T@@5 x@@37))
)))
(assert (forall ((x@@38 Int) (S@@28 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38)  (and (|Select__T@[Int]Bool_| S@@28 x@@38) (not (|Select__T@[Int]Bool_| T@@6 x@@38))))
 :qid |EQv2Evalv4Evaloutbpl.1316:15|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Difference S@@28 T@@6) x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| S@@28 x@@38))
 :pattern ( (v4.Difference S@@28 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@38))
)))
(assert (forall ((a@@31 Bool) (b@@19 Int) (c@@1 Int) ) (!  (=> (not a@@31) (= (v4.choose a@@31 b@@19 c@@1) c@@1))
 :qid |EQv2Evalv4Evaloutbpl.487:15|
 :skolemid |64|
 :pattern ( (v4.choose a@@31 b@@19 c@@1))
)))
(assert (forall ((a@@32 Bool) (b@@20 Int) (c@@2 Int) ) (!  (=> (not a@@32) (= (v4.choose a@@32 b@@20 c@@2) c@@2))
 :qid |EQv2Evalv4Evaloutbpl.1278:15|
 :skolemid |168|
 :pattern ( (v4.choose a@@32 b@@20 c@@2))
)))
(assert (forall ((x@@39 Int) (y@@7 Int) ) (! (= (v4.INT_DIV x@@39 y@@7) (div x@@39 y@@7))
 :qid |EQv2Evalv4Evaloutbpl.387:15|
 :skolemid |40|
 :pattern ( (v4.INT_DIV x@@39 y@@7))
)))
(assert (forall ((x@@40 Int) (y@@8 Int) ) (! (= (v4.INT_DIV x@@40 y@@8) (div x@@40 y@@8))
 :qid |EQv2Evalv4Evaloutbpl.1178:15|
 :skolemid |144|
 :pattern ( (v4.INT_DIV x@@40 y@@8))
)))
(assert (forall ((f |T@[Int]Int|) (x@@41 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)) x@@41)
 :qid |EQv2Evalv4Evaloutbpl.537:15|
 :skolemid |92|
 :pattern ( (v4.Inverse f (|Select__T@[Int]Int_| f x@@41)))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@42 Int) ) (! (|Select__T@[Int]Bool_| (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)) x@@42)
 :qid |EQv2Evalv4Evaloutbpl.1328:15|
 :skolemid |196|
 :pattern ( (v4.Inverse f@@0 (|Select__T@[Int]Int_| f@@0 x@@42)))
)))
(assert (forall ((x@@43 Int) (n@@3 Int) (z@@1 Int) ) (!  (=> (v4.INT_GT z@@1 0) (v4.Equal (v4.Array x@@43 n@@3 z@@1) (v4.Difference (v4.AtLeast n@@3 x@@43) (v4.AtLeast n@@3 (v4.PLUS x@@43 n@@3 z@@1)))))
 :qid |EQv2Evalv4Evaloutbpl.511:15|
 :skolemid |77|
 :pattern ( (v4.Array x@@43 n@@3 z@@1))
)))
(assert (forall ((x@@44 Int) (n@@4 Int) (z@@2 Int) ) (!  (=> (v4.INT_GT z@@2 0) (v4.Equal (v4.Array x@@44 n@@4 z@@2) (v4.Difference (v4.AtLeast n@@4 x@@44) (v4.AtLeast n@@4 (v4.PLUS x@@44 n@@4 z@@2)))))
 :qid |EQv2Evalv4Evaloutbpl.1302:15|
 :skolemid |181|
 :pattern ( (v4.Array x@@44 n@@4 z@@2))
)))
(assert (forall ((S@@29 |T@[Int]Bool|) (T@@7 |T@[Int]Bool|) ) (! (= (v4.Equal S@@29 T@@7)  (and (v4.Subset S@@29 T@@7) (v4.Subset T@@7 S@@29)))
 :qid |EQv2Evalv4Evaloutbpl.527:15|
 :skolemid |85|
 :pattern ( (v4.Equal S@@29 T@@7))
)))
(assert (forall ((S@@30 |T@[Int]Bool|) (T@@8 |T@[Int]Bool|) ) (! (= (v4.Equal S@@30 T@@8)  (and (v4.Subset S@@30 T@@8) (v4.Subset T@@8 S@@30)))
 :qid |EQv2Evalv4Evaloutbpl.1318:15|
 :skolemid |189|
 :pattern ( (v4.Equal S@@30 T@@8))
)))
(assert (forall ((M@@7 |T@[name][Int]Int|) (x@@45 Int) (y@@9 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))) (|Store__T@[Int]Int_| (v4.Unified M@@7) x@@45 y@@9))
 :qid |EQv2Evalv4Evaloutbpl.557:15|
 :skolemid |103|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@7 (v4.Field x@@45) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@7 (v4.Field x@@45)) x@@45 y@@9))))
)))
(assert (forall ((M@@8 |T@[name][Int]Int|) (x@@46 Int) (y@@10 Int) ) (! (= (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))) (|Store__T@[Int]Int_| (v4.Unified M@@8) x@@46 y@@10))
 :qid |EQv2Evalv4Evaloutbpl.1348:15|
 :skolemid |207|
 :pattern ( (v4.Unified (|Store__T@[name][Int]Int_| M@@8 (v4.Field x@@46) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@8 (v4.Field x@@46)) x@@46 y@@10))))
)))
(assert (forall ((x@@47 Int) ) (! (= (v4.oper__EXPR x@@47) (v4.PLUS x@@47 1 0))
 :qid |EQv2Evalv4Evaloutbpl.361:15|
 :skolemid |27|
 :pattern ( (v4.oper__EXPR x@@47))
)))
(assert (forall ((x@@48 Int) ) (! (= (v4.oper__EXPR x@@48) (v4.PLUS x@@48 1 0))
 :qid |EQv2Evalv4Evaloutbpl.1152:15|
 :skolemid |131|
 :pattern ( (v4.oper__EXPR x@@48))
)))
(assert (forall ((x@@49 Int) ) (! (= (v4.op1__EXPR x@@49) (v4.PLUS x@@49 1 4))
 :qid |EQv2Evalv4Evaloutbpl.333:15|
 :skolemid |13|
 :pattern ( (v4.op1__EXPR x@@49))
)))
(assert (forall ((x@@50 Int) ) (! (= (v4.op1__EXPR x@@50) (v4.PLUS x@@50 1 4))
 :qid |EQv2Evalv4Evaloutbpl.1124:15|
 :skolemid |117|
 :pattern ( (v4.op1__EXPR x@@50))
)))
(assert (forall ((x@@51 Int) ) (! (= (v4.op2__EXPR x@@51) (v4.PLUS x@@51 1 8))
 :qid |EQv2Evalv4Evaloutbpl.347:15|
 :skolemid |20|
 :pattern ( (v4.op2__EXPR x@@51))
)))
(assert (forall ((x@@52 Int) ) (! (= (v4.op2__EXPR x@@52) (v4.PLUS x@@52 1 8))
 :qid |EQv2Evalv4Evaloutbpl.1138:15|
 :skolemid |124|
 :pattern ( (v4.op2__EXPR x@@52))
)))
(assert (forall ((x@@53 Int) ) (! (= (v4.result__EXPR x@@53) (v4.PLUS x@@53 1 12))
 :qid |EQv2Evalv4Evaloutbpl.375:15|
 :skolemid |34|
 :pattern ( (v4.result__EXPR x@@53))
)))
(assert (forall ((x@@54 Int) ) (! (= (v4.result__EXPR x@@54) (v4.PLUS x@@54 1 12))
 :qid |EQv2Evalv4Evaloutbpl.1166:15|
 :skolemid |138|
 :pattern ( (v4.result__EXPR x@@54))
)))
(assert (forall ((a@@33 Int) (b@@21 Int) ) (! (= (v4.MULT a@@33 b@@21) (v4.INT_MULT a@@33 b@@21))
 :qid |EQv2Evalv4Evaloutbpl.417:15|
 :skolemid |55|
 :pattern ( (v4.MULT a@@33 b@@21))
)))
(assert (forall ((a@@34 Int) (b@@22 Int) ) (! (= (v4.MULT a@@34 b@@22) (v4.INT_MULT a@@34 b@@22))
 :qid |EQv2Evalv4Evaloutbpl.1208:15|
 :skolemid |159|
 :pattern ( (v4.MULT a@@34 b@@22))
)))
(assert (forall ((n@@5 Int) (x@@55 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@5 x@@55) x@@55)
 :qid |EQv2Evalv4Evaloutbpl.503:15|
 :skolemid |72|
 :pattern ( (v4.AtLeast n@@5 x@@55))
)))
(assert (forall ((n@@6 Int) (x@@56 Int) ) (! (|Select__T@[Int]Bool_| (v4.AtLeast n@@6 x@@56) x@@56)
 :qid |EQv2Evalv4Evaloutbpl.1294:15|
 :skolemid |176|
 :pattern ( (v4.AtLeast n@@6 x@@56))
)))
(assert (forall ((a@@35 Int) (b@@23 Int) ) (!  (=> (and (>= a@@35 0) (< b@@23 0)) (and (<= (* b@@23 (v4.DIV a@@35 b@@23)) a@@35) (< a@@35 (* b@@23 (- (v4.DIV a@@35 b@@23) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.421:15|
 :skolemid |57|
 :pattern ( (v4.DIV a@@35 b@@23))
)))
(assert (forall ((a@@36 Int) (b@@24 Int) ) (!  (=> (and (>= a@@36 0) (< b@@24 0)) (and (<= (* b@@24 (v4.DIV a@@36 b@@24)) a@@36) (< a@@36 (* b@@24 (- (v4.DIV a@@36 b@@24) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1212:15|
 :skolemid |161|
 :pattern ( (v4.DIV a@@36 b@@24))
)))
(assert (forall ((a@@37 Int) (b@@25 Int) ) (!  (=> (and (>= a@@37 0) (> b@@25 0)) (and (<= (* b@@25 (v4.DIV a@@37 b@@25)) a@@37) (< a@@37 (* b@@25 (+ (v4.DIV a@@37 b@@25) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.419:15|
 :skolemid |56|
 :pattern ( (v4.DIV a@@37 b@@25))
)))
(assert (forall ((a@@38 Int) (b@@26 Int) ) (!  (=> (and (>= a@@38 0) (> b@@26 0)) (and (<= (* b@@26 (v4.DIV a@@38 b@@26)) a@@38) (< a@@38 (* b@@26 (+ (v4.DIV a@@38 b@@26) 1)))))
 :qid |EQv2Evalv4Evaloutbpl.1210:15|
 :skolemid |160|
 :pattern ( (v4.DIV a@@38 b@@26))
)))
(assert (forall ((x@@57 Int) ) (! (= (v4.oper__EXPR x@@57) (v4.INT_ADD x@@57 0))
 :qid |EQv2Evalv4Evaloutbpl.357:15|
 :skolemid |25|
 :pattern ( (v4.oper__EXPR x@@57))
)))
(assert (forall ((x@@58 Int) ) (! (= (v4.oper__EXPRInv x@@58) (v4.INT_SUB x@@58 0))
 :qid |EQv2Evalv4Evaloutbpl.359:15|
 :skolemid |26|
 :pattern ( (v4.oper__EXPRInv x@@58))
)))
(assert (forall ((x@@59 Int) ) (! (= (v4.oper__EXPR x@@59) (v4.INT_ADD x@@59 0))
 :qid |EQv2Evalv4Evaloutbpl.1148:15|
 :skolemid |129|
 :pattern ( (v4.oper__EXPR x@@59))
)))
(assert (forall ((x@@60 Int) ) (! (= (v4.oper__EXPRInv x@@60) (v4.INT_SUB x@@60 0))
 :qid |EQv2Evalv4Evaloutbpl.1150:15|
 :skolemid |130|
 :pattern ( (v4.oper__EXPRInv x@@60))
)))
(assert (forall ((x@@61 Int) ) (! (= (v4.op1__EXPR x@@61) (v4.INT_ADD x@@61 4))
 :qid |EQv2Evalv4Evaloutbpl.329:15|
 :skolemid |11|
 :pattern ( (v4.op1__EXPR x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (v4.op1__EXPRInv x@@62) (v4.INT_SUB x@@62 4))
 :qid |EQv2Evalv4Evaloutbpl.331:15|
 :skolemid |12|
 :pattern ( (v4.op1__EXPRInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (v4.op1__EXPR x@@63) (v4.INT_ADD x@@63 4))
 :qid |EQv2Evalv4Evaloutbpl.1120:15|
 :skolemid |115|
 :pattern ( (v4.op1__EXPR x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (v4.op1__EXPRInv x@@64) (v4.INT_SUB x@@64 4))
 :qid |EQv2Evalv4Evaloutbpl.1122:15|
 :skolemid |116|
 :pattern ( (v4.op1__EXPRInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (v4.op2__EXPR x@@65) (v4.INT_ADD x@@65 8))
 :qid |EQv2Evalv4Evaloutbpl.343:15|
 :skolemid |18|
 :pattern ( (v4.op2__EXPR x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (v4.op2__EXPRInv x@@66) (v4.INT_SUB x@@66 8))
 :qid |EQv2Evalv4Evaloutbpl.345:15|
 :skolemid |19|
 :pattern ( (v4.op2__EXPRInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (v4.op2__EXPR x@@67) (v4.INT_ADD x@@67 8))
 :qid |EQv2Evalv4Evaloutbpl.1134:15|
 :skolemid |122|
 :pattern ( (v4.op2__EXPR x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (v4.op2__EXPRInv x@@68) (v4.INT_SUB x@@68 8))
 :qid |EQv2Evalv4Evaloutbpl.1136:15|
 :skolemid |123|
 :pattern ( (v4.op2__EXPRInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (v4.result__EXPR x@@69) (v4.INT_ADD x@@69 12))
 :qid |EQv2Evalv4Evaloutbpl.371:15|
 :skolemid |32|
 :pattern ( (v4.result__EXPR x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (v4.result__EXPRInv x@@70) (v4.INT_SUB x@@70 12))
 :qid |EQv2Evalv4Evaloutbpl.373:15|
 :skolemid |33|
 :pattern ( (v4.result__EXPRInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (v4.result__EXPR x@@71) (v4.INT_ADD x@@71 12))
 :qid |EQv2Evalv4Evaloutbpl.1162:15|
 :skolemid |136|
 :pattern ( (v4.result__EXPR x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (v4.result__EXPRInv x@@72) (v4.INT_SUB x@@72 12))
 :qid |EQv2Evalv4Evaloutbpl.1164:15|
 :skolemid |137|
 :pattern ( (v4.result__EXPRInv x@@72))
)))
(assert (forall ((S@@31 |T@[Int]Bool|) (T@@9 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@31 T@@9) (exists ((x@@73 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@31 x@@73) (|Select__T@[Int]Bool_| T@@9 x@@73))
 :qid |EQv2Evalv4Evaloutbpl.535:96|
 :skolemid |90|
)))
 :qid |EQv2Evalv4Evaloutbpl.535:15|
 :skolemid |91|
 :pattern ( (v4.Disjoint S@@31 T@@9))
)))
(assert (forall ((S@@32 |T@[Int]Bool|) (T@@10 |T@[Int]Bool|) ) (!  (or (v4.Disjoint S@@32 T@@10) (exists ((x@@74 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@32 x@@74) (|Select__T@[Int]Bool_| T@@10 x@@74))
 :qid |EQv2Evalv4Evaloutbpl.1326:96|
 :skolemid |194|
)))
 :qid |EQv2Evalv4Evaloutbpl.1326:15|
 :skolemid |195|
 :pattern ( (v4.Disjoint S@@32 T@@10))
)))
(assert (forall ((y@@11 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@11) y@@11)
 :qid |EQv2Evalv4Evaloutbpl.519:15|
 :skolemid |81|
 :pattern ( (v4.Singleton y@@11))
)))
(assert (forall ((y@@12 Int) ) (! (|Select__T@[Int]Bool_| (v4.Singleton y@@12) y@@12)
 :qid |EQv2Evalv4Evaloutbpl.1310:15|
 :skolemid |185|
 :pattern ( (v4.Singleton y@@12))
)))
(assert (forall ((x@@75 Int) (y@@13 Int) ) (! (= (v4.INT_LT x@@75 y@@13) (< x@@75 y@@13))
 :qid |EQv2Evalv4Evaloutbpl.389:15|
 :skolemid |41|
 :pattern ( (v4.INT_LT x@@75 y@@13))
)))
(assert (forall ((x@@76 Int) (y@@14 Int) ) (! (= (v4.INT_ULT x@@76 y@@14) (< x@@76 y@@14))
 :qid |EQv2Evalv4Evaloutbpl.391:15|
 :skolemid |42|
 :pattern ( (v4.INT_ULT x@@76 y@@14))
)))
(assert (forall ((x@@77 Int) (y@@15 Int) ) (! (= (v4.INT_LT x@@77 y@@15) (< x@@77 y@@15))
 :qid |EQv2Evalv4Evaloutbpl.1180:15|
 :skolemid |145|
 :pattern ( (v4.INT_LT x@@77 y@@15))
)))
(assert (forall ((x@@78 Int) (y@@16 Int) ) (! (= (v4.INT_ULT x@@78 y@@16) (< x@@78 y@@16))
 :qid |EQv2Evalv4Evaloutbpl.1182:15|
 :skolemid |146|
 :pattern ( (v4.INT_ULT x@@78 y@@16))
)))
(assert (forall ((x@@79 Int) (y@@17 Int) ) (! (= (v4.INT_GT x@@79 y@@17) (> x@@79 y@@17))
 :qid |EQv2Evalv4Evaloutbpl.397:15|
 :skolemid |45|
 :pattern ( (v4.INT_GT x@@79 y@@17))
)))
(assert (forall ((x@@80 Int) (y@@18 Int) ) (! (= (v4.INT_UGT x@@80 y@@18) (> x@@80 y@@18))
 :qid |EQv2Evalv4Evaloutbpl.399:15|
 :skolemid |46|
 :pattern ( (v4.INT_UGT x@@80 y@@18))
)))
(assert (forall ((x@@81 Int) (y@@19 Int) ) (! (= (v4.INT_GT x@@81 y@@19) (> x@@81 y@@19))
 :qid |EQv2Evalv4Evaloutbpl.1188:15|
 :skolemid |149|
 :pattern ( (v4.INT_GT x@@81 y@@19))
)))
(assert (forall ((x@@82 Int) (y@@20 Int) ) (! (= (v4.INT_UGT x@@82 y@@20) (> x@@82 y@@20))
 :qid |EQv2Evalv4Evaloutbpl.1190:15|
 :skolemid |150|
 :pattern ( (v4.INT_UGT x@@82 y@@20))
)))
(assert (forall ((b@@27 Int) (a@@39 Int) (t@@1 T@name) ) (! (= (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)) (= (v4.Base a@@39) b@@27))
 :qid |EQv2Evalv4Evaloutbpl.317:15|
 :skolemid |5|
 :pattern ( (v4.MatchBase b@@27 a@@39 (v4.T.Ptr t@@1)))
)))
(assert (forall ((b@@28 Int) (a@@40 Int) (t@@2 T@name) ) (! (= (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)) (= (v4.Base a@@40) b@@28))
 :qid |EQv2Evalv4Evaloutbpl.1108:15|
 :skolemid |109|
 :pattern ( (v4.MatchBase b@@28 a@@40 (v4.T.Ptr t@@2)))
)))
(assert (forall ((S@@33 |T@[Int]Bool|) (T@@11 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@33 T@@11) (exists ((x@@83 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@33 x@@83) (not (|Select__T@[Int]Bool_| T@@11 x@@83)))
 :qid |EQv2Evalv4Evaloutbpl.531:92|
 :skolemid |87|
)))
 :qid |EQv2Evalv4Evaloutbpl.531:15|
 :skolemid |88|
 :pattern ( (v4.Subset S@@33 T@@11))
)))
(assert (forall ((S@@34 |T@[Int]Bool|) (T@@12 |T@[Int]Bool|) ) (!  (or (v4.Subset S@@34 T@@12) (exists ((x@@84 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@34 x@@84) (not (|Select__T@[Int]Bool_| T@@12 x@@84)))
 :qid |EQv2Evalv4Evaloutbpl.1322:92|
 :skolemid |191|
)))
 :qid |EQv2Evalv4Evaloutbpl.1322:15|
 :skolemid |192|
 :pattern ( (v4.Subset S@@34 T@@12))
)))
(assert (forall ((n@@7 Int) (x@@85 Int) (z@@3 Int) ) (! (= (v4.Rep n@@7 x@@85) (v4.Rep n@@7 (v4.PLUS x@@85 n@@7 z@@3)))
 :qid |EQv2Evalv4Evaloutbpl.505:15|
 :skolemid |73|
 :pattern ( (v4.PLUS x@@85 n@@7 z@@3))
)))
(assert (forall ((n@@8 Int) (x@@86 Int) (z@@4 Int) ) (! (= (v4.Rep n@@8 x@@86) (v4.Rep n@@8 (v4.PLUS x@@86 n@@8 z@@4)))
 :qid |EQv2Evalv4Evaloutbpl.1296:15|
 :skolemid |177|
 :pattern ( (v4.PLUS x@@86 n@@8 z@@4))
)))
(assert (forall ((x@@87 Int) (S@@35 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@35 x@@87) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@35) (v4.op1__EXPR x@@87)))
 :qid |EQv2Evalv4Evaloutbpl.325:15|
 :skolemid |9|
 :pattern ( (|Select__T@[Int]Bool_| S@@35 x@@87) (v4._S_op1__EXPR S@@35))
)))
(assert (forall ((x@@88 Int) (S@@36 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@36 x@@88) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@36) (v4.op1__EXPRInv x@@88)))
 :qid |EQv2Evalv4Evaloutbpl.327:15|
 :skolemid |10|
 :pattern ( (|Select__T@[Int]Bool_| S@@36 x@@88) (v4._S_op1__EXPRInv S@@36))
)))
(assert (forall ((x@@89 Int) (S@@37 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@37 x@@89) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@37) (v4.op2__EXPR x@@89)))
 :qid |EQv2Evalv4Evaloutbpl.339:15|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| S@@37 x@@89) (v4._S_op2__EXPR S@@37))
)))
(assert (forall ((x@@90 Int) (S@@38 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@38 x@@90) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@38) (v4.op2__EXPRInv x@@90)))
 :qid |EQv2Evalv4Evaloutbpl.341:15|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| S@@38 x@@90) (v4._S_op2__EXPRInv S@@38))
)))
(assert (forall ((x@@91 Int) (S@@39 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@39 x@@91) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@39) (v4.oper__EXPR x@@91)))
 :qid |EQv2Evalv4Evaloutbpl.353:15|
 :skolemid |23|
 :pattern ( (|Select__T@[Int]Bool_| S@@39 x@@91) (v4._S_oper__EXPR S@@39))
)))
(assert (forall ((x@@92 Int) (S@@40 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@40 x@@92) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@40) (v4.oper__EXPRInv x@@92)))
 :qid |EQv2Evalv4Evaloutbpl.355:15|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| S@@40 x@@92) (v4._S_oper__EXPRInv S@@40))
)))
(assert (forall ((x@@93 Int) (S@@41 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@41 x@@93) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@41) (v4.result__EXPR x@@93)))
 :qid |EQv2Evalv4Evaloutbpl.367:15|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| S@@41 x@@93) (v4._S_result__EXPR S@@41))
)))
(assert (forall ((x@@94 Int) (S@@42 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@42 x@@94) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@42) (v4.result__EXPRInv x@@94)))
 :qid |EQv2Evalv4Evaloutbpl.369:15|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| S@@42 x@@94) (v4._S_result__EXPRInv S@@42))
)))
(assert (forall ((x@@95 Int) (S@@43 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@43 x@@95) (|Select__T@[Int]Bool_| (v4._S_op1__EXPR S@@43) (v4.op1__EXPR x@@95)))
 :qid |EQv2Evalv4Evaloutbpl.1116:15|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]Bool_| S@@43 x@@95) (v4._S_op1__EXPR S@@43))
)))
(assert (forall ((x@@96 Int) (S@@44 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@44 x@@96) (|Select__T@[Int]Bool_| (v4._S_op1__EXPRInv S@@44) (v4.op1__EXPRInv x@@96)))
 :qid |EQv2Evalv4Evaloutbpl.1118:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| S@@44 x@@96) (v4._S_op1__EXPRInv S@@44))
)))
(assert (forall ((x@@97 Int) (S@@45 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@45 x@@97) (|Select__T@[Int]Bool_| (v4._S_op2__EXPR S@@45) (v4.op2__EXPR x@@97)))
 :qid |EQv2Evalv4Evaloutbpl.1130:15|
 :skolemid |120|
 :pattern ( (|Select__T@[Int]Bool_| S@@45 x@@97) (v4._S_op2__EXPR S@@45))
)))
(assert (forall ((x@@98 Int) (S@@46 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@46 x@@98) (|Select__T@[Int]Bool_| (v4._S_op2__EXPRInv S@@46) (v4.op2__EXPRInv x@@98)))
 :qid |EQv2Evalv4Evaloutbpl.1132:15|
 :skolemid |121|
 :pattern ( (|Select__T@[Int]Bool_| S@@46 x@@98) (v4._S_op2__EXPRInv S@@46))
)))
(assert (forall ((x@@99 Int) (S@@47 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@47 x@@99) (|Select__T@[Int]Bool_| (v4._S_oper__EXPR S@@47) (v4.oper__EXPR x@@99)))
 :qid |EQv2Evalv4Evaloutbpl.1144:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@47 x@@99) (v4._S_oper__EXPR S@@47))
)))
(assert (forall ((x@@100 Int) (S@@48 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@48 x@@100) (|Select__T@[Int]Bool_| (v4._S_oper__EXPRInv S@@48) (v4.oper__EXPRInv x@@100)))
 :qid |EQv2Evalv4Evaloutbpl.1146:15|
 :skolemid |128|
 :pattern ( (|Select__T@[Int]Bool_| S@@48 x@@100) (v4._S_oper__EXPRInv S@@48))
)))
(assert (forall ((x@@101 Int) (S@@49 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@49 x@@101) (|Select__T@[Int]Bool_| (v4._S_result__EXPR S@@49) (v4.result__EXPR x@@101)))
 :qid |EQv2Evalv4Evaloutbpl.1158:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| S@@49 x@@101) (v4._S_result__EXPR S@@49))
)))
(assert (forall ((x@@102 Int) (S@@50 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@50 x@@102) (|Select__T@[Int]Bool_| (v4._S_result__EXPRInv S@@50) (v4.result__EXPRInv x@@102)))
 :qid |EQv2Evalv4Evaloutbpl.1160:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| S@@50 x@@102) (v4._S_result__EXPRInv S@@50))
)))
(assert (forall ((x@@103 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@103)
 :qid |EQv2Evalv4Evaloutbpl.515:15|
 :skolemid |79|
)))
(assert (forall ((x@@104 Int) ) (! (|Select__T@[Int]Bool_| v4.SetTrue x@@104)
 :qid |EQv2Evalv4Evaloutbpl.1306:15|
 :skolemid |183|
)))
(assert (forall ((n@@9 Int) (x@@105 Int) ) (! (exists ((k Int) ) (! (= (v4.INT_SUB (v4.Rep n@@9 x@@105) x@@105) (v4.INT_MULT n@@9 k))
 :qid |EQv2Evalv4Evaloutbpl.507:58|
 :skolemid |74|
))
 :qid |EQv2Evalv4Evaloutbpl.507:15|
 :skolemid |75|
 :pattern ( (v4.Rep n@@9 x@@105))
)))
(assert (forall ((n@@10 Int) (x@@106 Int) ) (! (exists ((k@@0 Int) ) (! (= (v4.INT_SUB (v4.Rep n@@10 x@@106) x@@106) (v4.INT_MULT n@@10 k@@0))
 :qid |EQv2Evalv4Evaloutbpl.1298:58|
 :skolemid |178|
))
 :qid |EQv2Evalv4Evaloutbpl.1298:15|
 :skolemid |179|
 :pattern ( (v4.Rep n@@10 x@@106))
)))
(assert (forall ((x@@107 Int) (y@@21 Int) (S@@51 |T@[Int]Bool|) (M@@9 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@51 x@@107) (v4.Equal (v4.Intersection (v4.Inverse M@@9 (|Select__T@[Int]Int_| M@@9 x@@107)) S@@51) (v4.Singleton x@@107))) (v4.Equal (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)) (v4.Union (v4.Difference (v4.Dereference S@@51 M@@9) (v4.Singleton (|Select__T@[Int]Int_| M@@9 x@@107))) (v4.Singleton y@@21))))
 :qid |EQv2Evalv4Evaloutbpl.551:15|
 :skolemid |100|
 :pattern ( (v4.Dereference S@@51 (|Store__T@[Int]Int_| M@@9 x@@107 y@@21)))
)))
(assert (forall ((x@@108 Int) (y@@22 Int) (S@@52 |T@[Int]Bool|) (M@@10 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@52 x@@108) (v4.Equal (v4.Intersection (v4.Inverse M@@10 (|Select__T@[Int]Int_| M@@10 x@@108)) S@@52) (v4.Singleton x@@108))) (v4.Equal (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)) (v4.Union (v4.Difference (v4.Dereference S@@52 M@@10) (v4.Singleton (|Select__T@[Int]Int_| M@@10 x@@108))) (v4.Singleton y@@22))))
 :qid |EQv2Evalv4Evaloutbpl.1342:15|
 :skolemid |204|
 :pattern ( (v4.Dereference S@@52 (|Store__T@[Int]Int_| M@@10 x@@108 y@@22)))
)))
(assert (forall ((x@@109 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@109))
 :qid |EQv2Evalv4Evaloutbpl.513:15|
 :skolemid |78|
)))
(assert (forall ((x@@110 Int) ) (!  (not (|Select__T@[Int]Bool_| v4.Empty x@@110))
 :qid |EQv2Evalv4Evaloutbpl.1304:15|
 :skolemid |182|
)))
(assert (forall ((x@@111 Int) (y@@23 Int) ) (! (= (v4.INT_NEQ x@@111 y@@23) (not (= x@@111 y@@23)))
 :qid |EQv2Evalv4Evaloutbpl.379:15|
 :skolemid |36|
 :pattern ( (v4.INT_NEQ x@@111 y@@23))
)))
(assert (forall ((x@@112 (_ BitVec 32)) (y@@24 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@112 y@@24) (not (= x@@112 y@@24)))
 :qid |EQv2Evalv4Evaloutbpl.407:15|
 :skolemid |50|
 :pattern ( (v4.BV32_NEQ x@@112 y@@24))
)))
(assert (forall ((x@@113 Int) (y@@25 Int) ) (! (= (v4.INT_NEQ x@@113 y@@25) (not (= x@@113 y@@25)))
 :qid |EQv2Evalv4Evaloutbpl.1170:15|
 :skolemid |140|
 :pattern ( (v4.INT_NEQ x@@113 y@@25))
)))
(assert (forall ((x@@114 (_ BitVec 32)) (y@@26 (_ BitVec 32)) ) (! (= (v4.BV32_NEQ x@@114 y@@26) (not (= x@@114 y@@26)))
 :qid |EQv2Evalv4Evaloutbpl.1198:15|
 :skolemid |154|
 :pattern ( (v4.BV32_NEQ x@@114 y@@26))
)))
(assert (forall ((x@@115 Int) (y@@27 Int) ) (! (= (v4.INT_EQ x@@115 y@@27) (= x@@115 y@@27))
 :qid |EQv2Evalv4Evaloutbpl.377:15|
 :skolemid |35|
 :pattern ( (v4.INT_EQ x@@115 y@@27))
)))
(assert (forall ((x@@116 (_ BitVec 32)) (y@@28 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@116 y@@28) (= x@@116 y@@28))
 :qid |EQv2Evalv4Evaloutbpl.405:15|
 :skolemid |49|
 :pattern ( (v4.BV32_EQ x@@116 y@@28))
)))
(assert (forall ((x@@117 Int) (y@@29 Int) ) (! (= (v4.INT_EQ x@@117 y@@29) (= x@@117 y@@29))
 :qid |EQv2Evalv4Evaloutbpl.1168:15|
 :skolemid |139|
 :pattern ( (v4.INT_EQ x@@117 y@@29))
)))
(assert (forall ((x@@118 (_ BitVec 32)) (y@@30 (_ BitVec 32)) ) (! (= (v4.BV32_EQ x@@118 y@@30) (= x@@118 y@@30))
 :qid |EQv2Evalv4Evaloutbpl.1196:15|
 :skolemid |153|
 :pattern ( (v4.BV32_EQ x@@118 y@@30))
)))
(assert (forall ((x@@119 Int) (y@@31 Int) ) (! (= (v4.INT_LEQ x@@119 y@@31) (<= x@@119 y@@31))
 :qid |EQv2Evalv4Evaloutbpl.393:15|
 :skolemid |43|
 :pattern ( (v4.INT_LEQ x@@119 y@@31))
)))
(assert (forall ((x@@120 Int) (y@@32 Int) ) (! (= (v4.INT_ULEQ x@@120 y@@32) (<= x@@120 y@@32))
 :qid |EQv2Evalv4Evaloutbpl.395:15|
 :skolemid |44|
 :pattern ( (v4.INT_ULEQ x@@120 y@@32))
)))
(assert (forall ((x@@121 Int) (y@@33 Int) ) (! (= (v4.INT_LEQ x@@121 y@@33) (<= x@@121 y@@33))
 :qid |EQv2Evalv4Evaloutbpl.1184:15|
 :skolemid |147|
 :pattern ( (v4.INT_LEQ x@@121 y@@33))
)))
(assert (forall ((x@@122 Int) (y@@34 Int) ) (! (= (v4.INT_ULEQ x@@122 y@@34) (<= x@@122 y@@34))
 :qid |EQv2Evalv4Evaloutbpl.1186:15|
 :skolemid |148|
 :pattern ( (v4.INT_ULEQ x@@122 y@@34))
)))
(assert (forall ((x@@123 Int) (y@@35 Int) ) (! (= (v4.INT_GEQ x@@123 y@@35) (>= x@@123 y@@35))
 :qid |EQv2Evalv4Evaloutbpl.401:15|
 :skolemid |47|
 :pattern ( (v4.INT_GEQ x@@123 y@@35))
)))
(assert (forall ((x@@124 Int) (y@@36 Int) ) (! (= (v4.INT_UGEQ x@@124 y@@36) (>= x@@124 y@@36))
 :qid |EQv2Evalv4Evaloutbpl.403:15|
 :skolemid |48|
 :pattern ( (v4.INT_UGEQ x@@124 y@@36))
)))
(assert (forall ((x@@125 Int) (y@@37 Int) ) (! (= (v4.INT_GEQ x@@125 y@@37) (>= x@@125 y@@37))
 :qid |EQv2Evalv4Evaloutbpl.1192:15|
 :skolemid |151|
 :pattern ( (v4.INT_GEQ x@@125 y@@37))
)))
(assert (forall ((x@@126 Int) (y@@38 Int) ) (! (= (v4.INT_UGEQ x@@126 y@@38) (>= x@@126 y@@38))
 :qid |EQv2Evalv4Evaloutbpl.1194:15|
 :skolemid |152|
 :pattern ( (v4.INT_UGEQ x@@126 y@@38))
)))
(assert (forall ((n@@11 Int) (x@@127 Int) (y@@39 Int) ) (!  (=> (and (v4.INT_LEQ x@@127 y@@39) (= (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@11 x@@127) y@@39))
 :qid |EQv2Evalv4Evaloutbpl.501:15|
 :skolemid |71|
 :pattern ( (v4.AtLeast n@@11 x@@127) (v4.Rep n@@11 x@@127) (v4.Rep n@@11 y@@39))
)))
(assert (forall ((n@@12 Int) (x@@128 Int) (y@@40 Int) ) (!  (=> (and (v4.INT_LEQ x@@128 y@@40) (= (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))) (|Select__T@[Int]Bool_| (v4.AtLeast n@@12 x@@128) y@@40))
 :qid |EQv2Evalv4Evaloutbpl.1292:15|
 :skolemid |175|
 :pattern ( (v4.AtLeast n@@12 x@@128) (v4.Rep n@@12 x@@128) (v4.Rep n@@12 y@@40))
)))
(assert (forall ((x@@129 Int) (y@@41 Int) ) (! (= (v4.INT_SUB x@@129 y@@41) (- x@@129 y@@41))
 :qid |EQv2Evalv4Evaloutbpl.383:15|
 :skolemid |38|
 :pattern ( (v4.INT_SUB x@@129 y@@41))
)))
(assert (forall ((x@@130 Int) (y@@42 Int) ) (! (= (v4.INT_SUB x@@130 y@@42) (- x@@130 y@@42))
 :qid |EQv2Evalv4Evaloutbpl.1174:15|
 :skolemid |142|
 :pattern ( (v4.INT_SUB x@@130 y@@42))
)))
(assert (forall ((x@@131 Int) (y@@43 Int) ) (! (= (v4.INT_ADD x@@131 y@@43) (+ x@@131 y@@43))
 :qid |EQv2Evalv4Evaloutbpl.381:15|
 :skolemid |37|
 :pattern ( (v4.INT_ADD x@@131 y@@43))
)))
(assert (forall ((x@@132 Int) (y@@44 Int) ) (! (= (v4.INT_ADD x@@132 y@@44) (+ x@@132 y@@44))
 :qid |EQv2Evalv4Evaloutbpl.1172:15|
 :skolemid |141|
 :pattern ( (v4.INT_ADD x@@132 y@@44))
)))
(assert (forall ((x@@133 Int) (y@@45 Int) ) (! (= (v4.INT_MULT x@@133 y@@45) (* x@@133 y@@45))
 :qid |EQv2Evalv4Evaloutbpl.385:15|
 :skolemid |39|
 :pattern ( (v4.INT_MULT x@@133 y@@45))
)))
(assert (forall ((x@@134 Int) (y@@46 Int) ) (! (= (v4.INT_MULT x@@134 y@@46) (* x@@134 y@@46))
 :qid |EQv2Evalv4Evaloutbpl.1176:15|
 :skolemid |143|
 :pattern ( (v4.INT_MULT x@@134 y@@46))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@135 Int) (y@@47 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47) (v4.Union (v4.Inverse f@@1 y@@47) (v4.Singleton x@@135)))
 :qid |EQv2Evalv4Evaloutbpl.541:15|
 :skolemid |94|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@1 x@@135 y@@47) y@@47))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@136 Int) (y@@48 Int) ) (! (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48) (v4.Union (v4.Inverse f@@2 y@@48) (v4.Singleton x@@136)))
 :qid |EQv2Evalv4Evaloutbpl.1332:15|
 :skolemid |198|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@2 x@@136 y@@48) y@@48))
)))
(assert (forall ((v Int) (t@@3 T@name) ) (! (= (v4.HasType v (v4.T.Ptr t@@3))  (or (= v 0) (and (and (v4.INT_GT v 0) (v4.Match v t@@3)) (v4.MatchBase (v4.Base v) v t@@3))))
 :qid |EQv2Evalv4Evaloutbpl.319:15|
 :skolemid |6|
 :pattern ( (v4.HasType v (v4.T.Ptr t@@3)))
)))
(assert (forall ((v@@0 Int) (t@@4 T@name) ) (! (= (v4.HasType v@@0 (v4.T.Ptr t@@4))  (or (= v@@0 0) (and (and (v4.INT_GT v@@0 0) (v4.Match v@@0 t@@4)) (v4.MatchBase (v4.Base v@@0) v@@0 t@@4))))
 :qid |EQv2Evalv4Evaloutbpl.1110:15|
 :skolemid |110|
 :pattern ( (v4.HasType v@@0 (v4.T.Ptr t@@4)))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@137 Int) (y@@49 Int) (z@@5 Int) ) (!  (or (= y@@49 z@@5) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5) (v4.Difference (v4.Inverse f@@3 z@@5) (v4.Singleton x@@137))))
 :qid |EQv2Evalv4Evaloutbpl.543:15|
 :skolemid |95|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@3 x@@137 y@@49) z@@5))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@138 Int) (y@@50 Int) (z@@6 Int) ) (!  (or (= y@@50 z@@6) (v4.Equal (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6) (v4.Difference (v4.Inverse f@@4 z@@6) (v4.Singleton x@@138))))
 :qid |EQv2Evalv4Evaloutbpl.1334:15|
 :skolemid |199|
 :pattern ( (v4.Inverse (|Store__T@[Int]Int_| f@@4 x@@138 y@@50) z@@6))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@139 Int) (y@@51 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@5 y@@51) x@@139) (= (|Select__T@[Int]Int_| f@@5 x@@139) y@@51))
 :qid |EQv2Evalv4Evaloutbpl.539:15|
 :skolemid |93|
 :pattern ( (v4.Inverse f@@5 y@@51) (|Select__T@[Int]Int_| f@@5 x@@139))
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@140 Int) (y@@52 Int) ) (!  (=> (|Select__T@[Int]Bool_| (v4.Inverse f@@6 y@@52) x@@140) (= (|Select__T@[Int]Int_| f@@6 x@@140) y@@52))
 :qid |EQv2Evalv4Evaloutbpl.1330:15|
 :skolemid |197|
 :pattern ( (v4.Inverse f@@6 y@@52) (|Select__T@[Int]Int_| f@@6 x@@140))
)))
(assert (forall ((b0@@3 T@byte) (b1@@1 T@byte) (b2 T@byte) (b3 T@byte) (c0@@3 T@byte) (c1@@1 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3)) (and (and (and (= b0@@3 c0@@3) (= b1@@1 c1@@1)) (= b2 c2)) (= b3 c3)))
 :qid |EQv2Evalv4Evaloutbpl.311:15|
 :skolemid |2|
 :pattern ( (v4.FourBytesToInt b0@@3 b1@@1 b2 b3) (v4.FourBytesToInt c0@@3 c1@@1 c2 c3))
)))
(assert (forall ((b0@@4 T@byte) (b1@@2 T@byte) (b2@@0 T@byte) (b3@@0 T@byte) (c0@@4 T@byte) (c1@@2 T@byte) (c2@@0 T@byte) (c3@@0 T@byte) ) (!  (=> (= (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0)) (and (and (and (= b0@@4 c0@@4) (= b1@@2 c1@@2)) (= b2@@0 c2@@0)) (= b3@@0 c3@@0)))
 :qid |EQv2Evalv4Evaloutbpl.1102:15|
 :skolemid |106|
 :pattern ( (v4.FourBytesToInt b0@@4 b1@@2 b2@@0 b3@@0) (v4.FourBytesToInt c0@@4 c1@@2 c2@@0 c3@@0))
)))
(assert (forall ((x@@141 Int) (y@@53 Int) (S@@53 |T@[Int]Bool|) (M@@11 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@53 x@@141) (not (v4.Equal (v4.Intersection (v4.Inverse M@@11 (|Select__T@[Int]Int_| M@@11 x@@141)) S@@53) (v4.Singleton x@@141)))) (v4.Equal (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)) (v4.Union (v4.Dereference S@@53 M@@11) (v4.Singleton y@@53))))
 :qid |EQv2Evalv4Evaloutbpl.553:15|
 :skolemid |101|
 :pattern ( (v4.Dereference S@@53 (|Store__T@[Int]Int_| M@@11 x@@141 y@@53)))
)))
(assert (forall ((x@@142 Int) (y@@54 Int) (S@@54 |T@[Int]Bool|) (M@@12 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@54 x@@142) (not (v4.Equal (v4.Intersection (v4.Inverse M@@12 (|Select__T@[Int]Int_| M@@12 x@@142)) S@@54) (v4.Singleton x@@142)))) (v4.Equal (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)) (v4.Union (v4.Dereference S@@54 M@@12) (v4.Singleton y@@54))))
 :qid |EQv2Evalv4Evaloutbpl.1344:15|
 :skolemid |205|
 :pattern ( (v4.Dereference S@@54 (|Store__T@[Int]Int_| M@@12 x@@142 y@@54)))
)))
(assert (forall ((x@@143 Int) (S@@55 |T@[Int]Bool|) (T@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143)  (or (|Select__T@[Int]Bool_| S@@55 x@@143) (|Select__T@[Int]Bool_| T@@13 x@@143)))
 :qid |EQv2Evalv4Evaloutbpl.521:15|
 :skolemid |82|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@55 T@@13) x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| S@@55 x@@143))
 :pattern ( (v4.Union S@@55 T@@13) (|Select__T@[Int]Bool_| T@@13 x@@143))
)))
(assert (forall ((x@@144 Int) (S@@56 |T@[Int]Bool|) (T@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144)  (or (|Select__T@[Int]Bool_| S@@56 x@@144) (|Select__T@[Int]Bool_| T@@14 x@@144)))
 :qid |EQv2Evalv4Evaloutbpl.1312:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| (v4.Union S@@56 T@@14) x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| S@@56 x@@144))
 :pattern ( (v4.Union S@@56 T@@14) (|Select__T@[Int]Bool_| T@@14 x@@144))
)))
; Invalid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v4.Mem_T.result__EXPR@0 () |T@[Int]Int|)
(declare-fun _uf_v4.EvalEntry2_v4.Mem_T.result__EXPR (Int Int |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| Int) |T@[Int]Int|)
(declare-fun e_.1 () Int)
(declare-fun v4.alloc () Int)
(declare-fun v4.Mem_T.oper__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op1__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.op2__EXPR () |T@[Int]Int|)
(declare-fun v4.Mem_T.result__EXPR () |T@[Int]Int|)
(declare-fun v4.isUnsigned () Int)
(declare-fun v4.isUnsigned@0 () Int)
(declare-fun _uf_v4.EvalEntry2_v4.isUnsigned (Int Int |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| |T@[Int]Int| Int) Int)
(declare-fun v4.Mem_T.result__EXPR@1 () |T@[Int]Int|)
(declare-fun AA_TEMP130@0 () Bool)
(declare-fun AA_TEMP131@0 () Bool)
(set-info :boogie-vc-id EQ_v2.EvalEntry2__v4.EvalEntry2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((AA_INSTR_EQ_BODY_correct  (=> (= v4.Mem_T.result__EXPR@0 (_uf_v4.EvalEntry2_v4.Mem_T.result__EXPR e_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.isUnsigned)) (=> (and (= v4.isUnsigned@0 (_uf_v4.EvalEntry2_v4.isUnsigned e_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.isUnsigned)) (= v4.Mem_T.result__EXPR@1 (_uf_v4.EvalEntry2_v4.Mem_T.result__EXPR e_.1 v4.alloc v4.Mem_T.oper__EXPR v4.Mem_T.op1__EXPR v4.Mem_T.op2__EXPR v4.Mem_T.result__EXPR v4.isUnsigned))) (=> (and (and (= AA_TEMP130@0  (or (= v4.Mem_T.result__EXPR@0 v4.Mem_T.result__EXPR@1) (forall ((_x0 Int) ) (! (= (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@0 _x0) (|Select__T@[Int]Int_| v4.Mem_T.result__EXPR@1 _x0))
 :qid |EQv2Evalv4Evaloutbpl.2193:78|
 :skolemid |211|
)))) (= AA_TEMP131@0 (= v4.isUnsigned v4.isUnsigned@0))) (= (ControlFlow 0 2) (- 0 1))) (and AA_TEMP131@0 AA_TEMP130@0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) AA_INSTR_EQ_BODY_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
