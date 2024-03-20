(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun Identity () (Array Int Int))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |0|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-sort T@SeqInvoc 0)
(declare-fun lin@1 () T@SeqInvoc)
(declare-fun lin@0 () T@SeqInvoc)
(declare-sort T@Invoc 0)
(declare-sort T@SetInvoc 0)
(declare-fun vis@1 () (Array T@Invoc T@SetInvoc))
(declare-fun vis@0 () (Array T@Invoc T@SetInvoc))
(declare-fun Set_ofSeq (T@SeqInvoc) T@SetInvoc)
(declare-fun Seq_append (T@SeqInvoc T@Invoc) T@SeqInvoc)
(declare-fun this () T@Invoc)
(declare-sort T@Key 0)
(declare-fun k () T@Key)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun inline$intro_readLin$0$s@1 () T@SetInvoc)
(set-info :boogie-vc-id Civl_pop_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12) (let ((Civl_NoninterferenceChecker$1_correct true))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= lin@1 lin@0) (= vis@1 vis@0)) (exists ((|Civl_my_vis#0| T@SetInvoc) ) (!  (and (and (= |Civl_my_vis#0| (Set_ofSeq lin@1)) (= lin@1 (Seq_append lin@0 this))) (= vis@1 (store vis@0 this |Civl_my_vis#0|)))
 :qid |unknown.0:0|
 :skolemid |3|
))))) (=> (or false (or (and (= lin@1 lin@0) (= vis@1 vis@0)) (exists ((|Civl_my_vis#0@@0| T@SetInvoc) ) (!  (and (and (= |Civl_my_vis#0@@0| (Set_ofSeq lin@1)) (= lin@1 (Seq_append lin@0 this))) (= vis@1 (store vis@0 this |Civl_my_vis#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |3|
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= lin@1 lin@0) (= vis@1 vis@0)) (= k k)))) (=> (=> false (and (and (= lin@1 lin@0) (= vis@1 vis@0)) (= k k))) (=> (and (and (= Civl_pc@0  (=> (and (= lin@1 lin@0) (= vis@1 vis@0)) false)) (= Civl_ok@0  (or (exists ((|Civl_my_vis#0@@1| T@SetInvoc) ) (!  (and (and (= |Civl_my_vis#0@@1| (Set_ofSeq lin@1)) (= lin@1 (Seq_append lin@0 this))) (= vis@1 (store vis@0 this |Civl_my_vis#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |3|
)) (and (= k k) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((anon0$3_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (= inline$intro_readLin$0$s@1 (Set_ofSeq lin@1))) (=> (= inline$intro_readLin$0$s@1 (Set_ofSeq lin@1)) (and (=> (= (ControlFlow 0 6) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 6) 5) Civl_NoninterferenceChecker$1_correct))))))
(let ((inline$intro_write_vis$0$anon0_correct  (=> (and (= vis@1 (store vis@0 this inline$intro_readLin$0$s@1)) (= (ControlFlow 0 8) 6)) anon0$3_correct)))
(let ((inline$intro_readLin$0$anon0_correct  (=> (and (= inline$intro_readLin$0$s@1 (Set_ofSeq lin@1)) (= (ControlFlow 0 9) 8)) inline$intro_write_vis$0$anon0_correct)))
(let ((inline$intro_writeLin$0$anon0_correct  (=> (and (= lin@1 (Seq_append lin@0 this)) (= (ControlFlow 0 10) 9)) inline$intro_readLin$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 11) 10) inline$intro_writeLin$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
