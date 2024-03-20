(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun H@4 () Int)
(declare-fun T@5 () Int)
(declare-fun status@6 () (Array Int Bool))
(declare-fun items@5 () (Array Int Int))
(declare-fun tid () T@Tid)
(declare-fun take_in_cs@4 () Bool)
(declare-fun put_in_cs@4 () Bool)
(declare-fun h_ss@4 () (Array T@Tid Int))
(declare-fun t_ss@4 () (Array T@Tid Int))
(declare-fun steal_in_cs@4 () (Array T@Tid Bool))
(declare-fun t_ss@2 () (Array T@Tid Int))
(declare-fun h_ss@2 () (Array T@Tid Int))
(declare-fun steal_in_cs@2 () (Array T@Tid Bool))
(declare-fun take_in_cs@2 () Bool)
(declare-fun status@3 () (Array Int Bool))
(declare-fun items@3 () (Array Int Int))
(declare-fun T@3 () Int)
(declare-fun H@2 () Int)
(declare-fun Civl_pc@1 () Bool)
(declare-fun Civl_pc@3 () Bool)
(declare-fun Civl_ok@2 () Bool)
(declare-fun Civl_ok@1 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 () T@Tid)
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun Civl_global_old_H@0 () Int)
(declare-fun Civl_global_old_T@0 () Int)
(declare-fun Civl_global_old_status@1 () (Array Int Bool))
(declare-fun Civl_global_old_items@0 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 () Int)
(declare-fun Civl_global_old_take_in_cs@0 () Bool)
(declare-fun Civl_global_old_put_in_cs@0 () Bool)
(declare-fun Civl_global_old_h_ss@0 () (Array T@Tid Int))
(declare-fun Civl_global_old_t_ss@0 () (Array T@Tid Int))
(declare-fun Civl_global_old_steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 () Int)
(declare-fun H@3 () Int)
(declare-fun T@4 () Int)
(declare-fun status@5 () (Array Int Bool))
(declare-fun items@4 () (Array Int Int))
(declare-fun take_in_cs@3 () Bool)
(declare-fun put_in_cs@3 () Bool)
(declare-fun h_ss@3 () (Array T@Tid Int))
(declare-fun t_ss@3 () (Array T@Tid Int))
(declare-fun steal_in_cs@3 () (Array T@Tid Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 () Bool)
(declare-fun T@2 () Int)
(declare-fun put_in_cs@2 () Bool)
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun inline$atomic_writeT_put$0$val@0 () Int)
(declare-fun T@0 () Int)
(declare-fun status@2 () (Array Int Bool))
(declare-fun status@1 () (Array Int Bool))
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun H@1 () Int)
(declare-fun T@1 () Int)
(declare-fun items@2 () (Array Int Int))
(declare-fun take_in_cs@1 () Bool)
(declare-fun put_in_cs@1 () Bool)
(declare-fun h_ss@1 () (Array T@Tid Int))
(declare-fun t_ss@1 () (Array T@Tid Int))
(declare-fun steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun task () Int)
(declare-fun items@1 () (Array Int Int))
(declare-fun Civl_linear_tid_available@1 () (Array T@Tid Bool))
(declare-fun H@0 () Int)
(declare-fun items@0 () (Array Int Int))
(declare-fun status@0 () (Array Int Bool))
(declare-fun take_in_cs@0 () Bool)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun put_in_cs@0 () Bool)
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun Civl_pc@2 () Bool)
(declare-fun status@4 () (Array Int Bool))
(declare-fun Civl_global_old_status@0 () (Array Int Bool))
(declare-fun inline$GhostReadStatus$0$oldStatus@1 () Bool)
(declare-fun H () Int)
(declare-fun T () Int)
(declare-fun status () (Array Int Bool))
(declare-fun items () (Array Int Int))
(declare-fun take_in_cs () Bool)
(declare-fun put_in_cs () Bool)
(declare-fun h_ss () (Array T@Tid Int))
(declare-fun t_ss () (Array T@Tid Int))
(declare-fun steal_in_cs () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_put_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 240) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 166) (- 0 185)) (or (and (and (and (forall ((i Int) ) (!  (=> (and (<= H@4 i) (<= i (- T@5 1))) (and (= (select status@6 i) IN_Q) (not (= (select items@5 i) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= H@4 i@@0) (<= i@@0 (- T@5 1))) (= (select status@6 i@@0) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |58|
)))) (and (=> (= (ControlFlow 0 166) (- 0 184)) (or (and (and (and (forall ((i@@1 Int) ) (!  (=> (and (<= H@4 i@@1) (<= i@@1 (- T@5 1))) (and (= (select status@6 i@@1) IN_Q) (not (= (select items@5 i@@1) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= H@4 i@@2) (<= i@@2 (- T@5 1))) (not (= (select items@5 i@@2) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |59|
)))) (and (=> (= (ControlFlow 0 166) (- 0 183)) (or (and (and (and (forall ((i@@3 Int) ) (!  (=> (and (<= H@4 i@@3) (<= i@@3 (- T@5 1))) (and (= (select status@6 i@@3) IN_Q) (not (= (select items@5 i@@3) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (= tid ptTid))) (and (=> (= (ControlFlow 0 166) (- 0 182)) (or (and (and (and (forall ((i@@4 Int) ) (!  (=> (and (<= H@4 i@@4) (<= i@@4 (- T@5 1))) (and (= (select status@6 i@@4) IN_Q) (not (= (select items@5 i@@4) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (not take_in_cs@4))) (and (=> (= (ControlFlow 0 166) (- 0 181)) (or (and (and (and (forall ((i@@5 Int) ) (!  (=> (and (<= H@4 i@@5) (<= i@@5 (- T@5 1))) (and (= (select status@6 i@@5) IN_Q) (not (= (select items@5 i@@5) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (not put_in_cs@4))) (and (=> (= (ControlFlow 0 166) (- 0 180)) (and (and (and (forall ((i@@6 Int) ) (!  (=> (and (<= H@4 i@@6) (<= i@@6 (- T@5 1))) (and (= (select status@6 i@@6) IN_Q) (not (= (select items@5 i@@6) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4))) (=> (and (and (and (forall ((i@@7 Int) ) (!  (=> (and (<= H@4 i@@7) (<= i@@7 (- T@5 1))) (and (= (select status@6 i@@7) IN_Q) (not (= (select items@5 i@@7) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (and (=> (= (ControlFlow 0 166) (- 0 179)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (and (not (= td NIL)) (not (= td ptTid))) (select steal_in_cs@4 td)) (= H@4 (select h_ss@4 td))) (< H@4 (select t_ss@4 td))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (and (not (= td@@0 NIL)) (not (= td@@0 ptTid))) (select steal_in_cs@4 td@@0)) (not (= H@4 (select h_ss@4 td@@0)))) (> H@4 (select h_ss@4 td@@0)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= (select t_ss@4 ptTid) T@5)))) (and (=> (= (ControlFlow 0 166) (- 0 178)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@1 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@1 NIL)) (not (= td@@1 ptTid))) (select steal_in_cs@4 td@@1)) (= H@4 (select h_ss@4 td@@1))) (< H@4 (select t_ss@4 td@@1))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@2 T@Tid) ) (!  (=> (and (and (and (not (= td@@2 NIL)) (not (= td@@2 ptTid))) (select steal_in_cs@4 td@@2)) (not (= H@4 (select h_ss@4 td@@2)))) (> H@4 (select h_ss@4 td@@2)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (<= H@4 T@5)))) (and (=> (= (ControlFlow 0 166) (- 0 177)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@3 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@3 NIL)) (not (= td@@3 ptTid))) (select steal_in_cs@4 td@@3)) (= H@4 (select h_ss@4 td@@3))) (< H@4 (select t_ss@4 td@@3))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@4 T@Tid) ) (!  (=> (and (and (and (not (= td@@4 NIL)) (not (= td@@4 ptTid))) (select steal_in_cs@4 td@@4)) (not (= H@4 (select h_ss@4 td@@4)))) (> H@4 (select h_ss@4 td@@4)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (not (= (select items@5 T@5) EMPTY))))) (and (=> (= (ControlFlow 0 166) (- 0 176)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@5 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@5 NIL)) (not (= td@@5 ptTid))) (select steal_in_cs@4 td@@5)) (= H@4 (select h_ss@4 td@@5))) (< H@4 (select t_ss@4 td@@5))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@6 T@Tid) ) (!  (=> (and (and (and (not (= td@@6 NIL)) (not (= td@@6 ptTid))) (select steal_in_cs@4 td@@6)) (not (= H@4 (select h_ss@4 td@@6)))) (> H@4 (select h_ss@4 td@@6)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= (select status@6 T@5) IN_Q)))) (and (=> (= (ControlFlow 0 166) (- 0 175)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@7 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@7 NIL)) (not (= td@@7 ptTid))) (select steal_in_cs@4 td@@7)) (= H@4 (select h_ss@4 td@@7))) (< H@4 (select t_ss@4 td@@7))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@8 T@Tid) ) (!  (=> (and (and (and (not (= td@@8 NIL)) (not (= td@@8 ptTid))) (select steal_in_cs@4 td@@8)) (not (= H@4 (select h_ss@4 td@@8)))) (> H@4 (select h_ss@4 td@@8)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@4 (not take_in_cs@4)))) (and (=> (= (ControlFlow 0 166) (- 0 174)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@9 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@9 NIL)) (not (= td@@9 ptTid))) (select steal_in_cs@4 td@@9)) (= H@4 (select h_ss@4 td@@9))) (< H@4 (select t_ss@4 td@@9))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@10 T@Tid) ) (!  (=> (and (and (and (not (= td@@10 NIL)) (not (= td@@10 ptTid))) (select steal_in_cs@4 td@@10)) (not (= H@4 (select h_ss@4 td@@10)))) (> H@4 (select h_ss@4 td@@10)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@4 (not put_in_cs@4)))) (and (=> (= (ControlFlow 0 166) (- 0 173)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@11 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@11 NIL)) (not (= td@@11 ptTid))) (select steal_in_cs@4 td@@11)) (= H@4 (select h_ss@4 td@@11))) (< H@4 (select t_ss@4 td@@11))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@12 T@Tid) ) (!  (=> (and (and (and (not (= td@@12 NIL)) (not (= td@@12 ptTid))) (select steal_in_cs@4 td@@12)) (not (= H@4 (select h_ss@4 td@@12)))) (> H@4 (select h_ss@4 td@@12)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid))))) (and (=> (= (ControlFlow 0 166) (- 0 172)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@13 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@13 NIL)) (not (= td@@13 ptTid))) (select steal_in_cs@4 td@@13)) (= H@4 (select h_ss@4 td@@13))) (< H@4 (select t_ss@4 td@@13))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@14 T@Tid) ) (!  (=> (and (and (and (not (= td@@14 NIL)) (not (= td@@14 ptTid))) (select steal_in_cs@4 td@@14)) (not (= H@4 (select h_ss@4 td@@14)))) (> H@4 (select h_ss@4 td@@14)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@15 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@15 NIL)) (not (= td@@15 ptTid))) (select steal_in_cs@4 td@@15)) (= H@4 (select h_ss@4 td@@15))) (< H@4 (select t_ss@4 td@@15))) (not (= (select items@5 H@4) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |60|
)))) (and (=> (= (ControlFlow 0 166) (- 0 171)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@16 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@16 NIL)) (not (= td@@16 ptTid))) (select steal_in_cs@4 td@@16)) (= H@4 (select h_ss@4 td@@16))) (< H@4 (select t_ss@4 td@@16))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@17 T@Tid) ) (!  (=> (and (and (and (not (= td@@17 NIL)) (not (= td@@17 ptTid))) (select steal_in_cs@4 td@@17)) (not (= H@4 (select h_ss@4 td@@17)))) (> H@4 (select h_ss@4 td@@17)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@18 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@18 NIL)) (not (= td@@18 ptTid))) (select steal_in_cs@4 td@@18)) (= H@4 (select h_ss@4 td@@18))) (< H@4 (select t_ss@4 td@@18))) (= (select status@6 H@4) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |61|
)))) (and (=> (= (ControlFlow 0 166) (- 0 170)) (or (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@19 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@19 NIL)) (not (= td@@19 ptTid))) (select steal_in_cs@4 td@@19)) (= H@4 (select h_ss@4 td@@19))) (< H@4 (select t_ss@4 td@@19))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@20 T@Tid) ) (!  (=> (and (and (and (not (= td@@20 NIL)) (not (= td@@20 ptTid))) (select steal_in_cs@4 td@@20)) (not (= H@4 (select h_ss@4 td@@20)))) (> H@4 (select h_ss@4 td@@20)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@21 T@Tid) ) (!  (=> (and (and (and (not (= td@@21 NIL)) (not (= td@@21 ptTid))) (select steal_in_cs@4 td@@21)) (not (= H@4 (select h_ss@4 td@@21)))) (> H@4 (select h_ss@4 td@@21)))
 :qid |wsqbpl.44:14|
 :skolemid |62|
)))) (and (=> (= (ControlFlow 0 166) (- 0 169)) (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@22 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@22 NIL)) (not (= td@@22 ptTid))) (select steal_in_cs@4 td@@22)) (= H@4 (select h_ss@4 td@@22))) (< H@4 (select t_ss@4 td@@22))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@23 T@Tid) ) (!  (=> (and (and (and (not (= td@@23 NIL)) (not (= td@@23 ptTid))) (select steal_in_cs@4 td@@23)) (not (= H@4 (select h_ss@4 td@@23)))) (> H@4 (select h_ss@4 td@@23)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@5) (<= H@4 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@6 T@5) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@4 ptTid)))) (> H@4 (select h_ss@4 ptTid)))) (forall ((td@@24 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@24 NIL)) (not (= td@@24 ptTid))) (select steal_in_cs@4 td@@24)) (= H@4 (select h_ss@4 td@@24))) (< H@4 (select t_ss@4 td@@24))) (and (not (= (select items@5 H@4) EMPTY)) (= (select status@6 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@25 T@Tid) ) (!  (=> (and (and (and (not (= td@@25 NIL)) (not (= td@@25 ptTid))) (select steal_in_cs@4 td@@25)) (not (= H@4 (select h_ss@4 td@@25)))) (> H@4 (select h_ss@4 td@@25)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 166) (- 0 168)) (or (forall ((i@@8 Int) ) (!  (=> (and (and (>= i@@8 T@5) (not put_in_cs@4)) (not take_in_cs@4)) (and (= (select status@6 i@@8) NOT_IN_Q) (= (select items@5 i@@8) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
)) (forall ((i@@9 Int) ) (!  (=> (and (and (>= i@@9 T@5) (not put_in_cs@4)) (not take_in_cs@4)) (= (select status@6 i@@9) NOT_IN_Q))
 :qid |wsqbpl.58:12|
 :skolemid |63|
)))) (and (=> (= (ControlFlow 0 166) (- 0 167)) (or (forall ((i@@10 Int) ) (!  (=> (and (and (>= i@@10 T@5) (not put_in_cs@4)) (not take_in_cs@4)) (and (= (select status@6 i@@10) NOT_IN_Q) (= (select items@5 i@@10) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
)) (forall ((i@@11 Int) ) (!  (=> (and (and (>= i@@11 T@5) (not put_in_cs@4)) (not take_in_cs@4)) (= (select items@5 i@@11) EMPTY))
 :qid |wsqbpl.58:12|
 :skolemid |64|
)))) (=> (= (ControlFlow 0 166) (- 0 165)) (forall ((i@@12 Int) ) (!  (=> (and (and (>= i@@12 T@5) (not put_in_cs@4)) (not take_in_cs@4)) (and (= (select status@6 i@@12) NOT_IN_Q) (= (select items@5 i@@12) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))))))))))))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= t_ss@4 t_ss@2) (= h_ss@4 h_ss@2)) (=> (and (and (and (= steal_in_cs@4 steal_in_cs@2) (= put_in_cs@4 false)) (and (= take_in_cs@4 take_in_cs@2) (= status@6 status@3))) (and (and (= items@5 items@3) (= T@5 T@3)) (and (= H@4 H@2) (= (ControlFlow 0 186) 166)))) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 161) (- 0 163)) (or Civl_pc@1 (or (= status@3 status@3) (exists ((|Civl_i#0| Int) ) (!  (and (= (select status@3 |Civl_i#0|) NOT_IN_Q) (= status@3 (store status@3 |Civl_i#0| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
))))) (=> (or Civl_pc@1 (or (= status@3 status@3) (exists ((|Civl_i#0@@0| Int) ) (!  (and (= (select status@3 |Civl_i#0@@0|) NOT_IN_Q) (= status@3 (store status@3 |Civl_i#0@@0| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)))) (and (=> (= (ControlFlow 0 161) (- 0 162)) (=> Civl_pc@1 (= status@3 status@3))) (=> (=> Civl_pc@1 (= status@3 status@3)) (=> (and (and (= Civl_pc@3  (=> (= status@3 status@3) Civl_pc@1)) (= Civl_ok@2  (or (exists ((|Civl_i#0@@1| Int) ) (!  (and (= (select status@3 |Civl_i#0@@1|) NOT_IN_Q) (= status@3 (store status@3 |Civl_i#0@@1| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)) Civl_ok@1))) (= (ControlFlow 0 161) (- 0 160))) Civl_ok@2)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (and (and (forall ((i@@13 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@13) (<= i@@13 Civl_global_old_T@0)) (and (= (select Civl_global_old_status@1 i@@13) IN_Q) (not (= (select Civl_global_old_items@0 i@@13) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@0)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) Civl_global_old_put_in_cs@0) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@26 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@26 NIL)) (not (= td@@26 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@26)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@26))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@26))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@27 T@Tid) ) (!  (=> (and (and (and (not (= td@@27 NIL)) (not (= td@@27 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@27)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@27)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@27)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@0)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i Civl_global_old_T@0) (and (= (select Civl_global_old_status@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) NOT_IN_Q) (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 136) (- 0 156)) (or (and (and (and (and (forall ((i@@14 Int) ) (!  (=> (and (<= H@3 i@@14) (<= i@@14 T@4)) (and (= (select status@5 i@@14) IN_Q) (not (= (select items@4 i@@14) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (forall ((i@@15 Int) ) (!  (=> (and (<= H@3 i@@15) (<= i@@15 T@4)) (= (select status@5 i@@15) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |32|
)))) (and (=> (= (ControlFlow 0 136) (- 0 155)) (or (and (and (and (and (forall ((i@@16 Int) ) (!  (=> (and (<= H@3 i@@16) (<= i@@16 T@4)) (and (= (select status@5 i@@16) IN_Q) (not (= (select items@4 i@@16) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (forall ((i@@17 Int) ) (!  (=> (and (<= H@3 i@@17) (<= i@@17 T@4)) (not (= (select items@4 i@@17) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |33|
)))) (and (=> (= (ControlFlow 0 136) (- 0 154)) (or (and (and (and (and (forall ((i@@18 Int) ) (!  (=> (and (<= H@3 i@@18) (<= i@@18 T@4)) (and (= (select status@5 i@@18) IN_Q) (not (= (select items@4 i@@18) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4))) (and (=> (= (ControlFlow 0 136) (- 0 153)) (or (and (and (and (and (forall ((i@@19 Int) ) (!  (=> (and (<= H@3 i@@19) (<= i@@19 T@4)) (and (= (select status@5 i@@19) IN_Q) (not (= (select items@4 i@@19) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 136) (- 0 152)) (or (and (and (and (and (forall ((i@@20 Int) ) (!  (=> (and (<= H@3 i@@20) (<= i@@20 T@4)) (and (= (select status@5 i@@20) IN_Q) (not (= (select items@4 i@@20) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (not take_in_cs@3))) (and (=> (= (ControlFlow 0 136) (- 0 151)) (or (and (and (and (and (forall ((i@@21 Int) ) (!  (=> (and (<= H@3 i@@21) (<= i@@21 T@4)) (and (= (select status@5 i@@21) IN_Q) (not (= (select items@4 i@@21) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) put_in_cs@3)) (and (=> (= (ControlFlow 0 136) (- 0 150)) (and (and (and (and (forall ((i@@22 Int) ) (!  (=> (and (<= H@3 i@@22) (<= i@@22 T@4)) (and (= (select status@5 i@@22) IN_Q) (not (= (select items@4 i@@22) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3)) (=> (and (and (and (and (forall ((i@@23 Int) ) (!  (=> (and (<= H@3 i@@23) (<= i@@23 T@4)) (and (= (select status@5 i@@23) IN_Q) (not (= (select items@4 i@@23) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (and (=> (= (ControlFlow 0 136) (- 0 149)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@28 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@28 NIL)) (not (= td@@28 ptTid))) (select steal_in_cs@3 td@@28)) (= H@3 (select h_ss@3 td@@28))) (< H@3 (select t_ss@3 td@@28))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@29 T@Tid) ) (!  (=> (and (and (and (not (= td@@29 NIL)) (not (= td@@29 ptTid))) (select steal_in_cs@3 td@@29)) (not (= H@3 (select h_ss@3 td@@29)))) (> H@3 (select h_ss@3 td@@29)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select t_ss@3 ptTid) T@4)))) (and (=> (= (ControlFlow 0 136) (- 0 148)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@30 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@30 NIL)) (not (= td@@30 ptTid))) (select steal_in_cs@3 td@@30)) (= H@3 (select h_ss@3 td@@30))) (< H@3 (select t_ss@3 td@@30))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@31 T@Tid) ) (!  (=> (and (and (and (not (= td@@31 NIL)) (not (= td@@31 ptTid))) (select steal_in_cs@3 td@@31)) (not (= H@3 (select h_ss@3 td@@31)))) (> H@3 (select h_ss@3 td@@31)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (<= H@3 T@4)))) (and (=> (= (ControlFlow 0 136) (- 0 147)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@32 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@32 NIL)) (not (= td@@32 ptTid))) (select steal_in_cs@3 td@@32)) (= H@3 (select h_ss@3 td@@32))) (< H@3 (select t_ss@3 td@@32))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@33 T@Tid) ) (!  (=> (and (and (and (not (= td@@33 NIL)) (not (= td@@33 ptTid))) (select steal_in_cs@3 td@@33)) (not (= H@3 (select h_ss@3 td@@33)))) (> H@3 (select h_ss@3 td@@33)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (not (= (select items@4 T@4) EMPTY))))) (and (=> (= (ControlFlow 0 136) (- 0 146)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@34 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@34 NIL)) (not (= td@@34 ptTid))) (select steal_in_cs@3 td@@34)) (= H@3 (select h_ss@3 td@@34))) (< H@3 (select t_ss@3 td@@34))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@35 T@Tid) ) (!  (=> (and (and (and (not (= td@@35 NIL)) (not (= td@@35 ptTid))) (select steal_in_cs@3 td@@35)) (not (= H@3 (select h_ss@3 td@@35)))) (> H@3 (select h_ss@3 td@@35)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select status@5 T@4) IN_Q)))) (and (=> (= (ControlFlow 0 136) (- 0 145)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@36 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@36 NIL)) (not (= td@@36 ptTid))) (select steal_in_cs@3 td@@36)) (= H@3 (select h_ss@3 td@@36))) (< H@3 (select t_ss@3 td@@36))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@37 T@Tid) ) (!  (=> (and (and (and (not (= td@@37 NIL)) (not (= td@@37 ptTid))) (select steal_in_cs@3 td@@37)) (not (= H@3 (select h_ss@3 td@@37)))) (> H@3 (select h_ss@3 td@@37)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@3 (not take_in_cs@3)))) (and (=> (= (ControlFlow 0 136) (- 0 144)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@38 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@38 NIL)) (not (= td@@38 ptTid))) (select steal_in_cs@3 td@@38)) (= H@3 (select h_ss@3 td@@38))) (< H@3 (select t_ss@3 td@@38))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@39 T@Tid) ) (!  (=> (and (and (and (not (= td@@39 NIL)) (not (= td@@39 ptTid))) (select steal_in_cs@3 td@@39)) (not (= H@3 (select h_ss@3 td@@39)))) (> H@3 (select h_ss@3 td@@39)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@3 (not put_in_cs@3)))) (and (=> (= (ControlFlow 0 136) (- 0 143)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@40 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@40 NIL)) (not (= td@@40 ptTid))) (select steal_in_cs@3 td@@40)) (= H@3 (select h_ss@3 td@@40))) (< H@3 (select t_ss@3 td@@40))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@41 T@Tid) ) (!  (=> (and (and (and (not (= td@@41 NIL)) (not (= td@@41 ptTid))) (select steal_in_cs@3 td@@41)) (not (= H@3 (select h_ss@3 td@@41)))) (> H@3 (select h_ss@3 td@@41)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid))))) (and (=> (= (ControlFlow 0 136) (- 0 142)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@42 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@42 NIL)) (not (= td@@42 ptTid))) (select steal_in_cs@3 td@@42)) (= H@3 (select h_ss@3 td@@42))) (< H@3 (select t_ss@3 td@@42))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@43 T@Tid) ) (!  (=> (and (and (and (not (= td@@43 NIL)) (not (= td@@43 ptTid))) (select steal_in_cs@3 td@@43)) (not (= H@3 (select h_ss@3 td@@43)))) (> H@3 (select h_ss@3 td@@43)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@44 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@44 NIL)) (not (= td@@44 ptTid))) (select steal_in_cs@3 td@@44)) (= H@3 (select h_ss@3 td@@44))) (< H@3 (select t_ss@3 td@@44))) (not (= (select items@4 H@3) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |34|
)))) (and (=> (= (ControlFlow 0 136) (- 0 141)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@45 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@45 NIL)) (not (= td@@45 ptTid))) (select steal_in_cs@3 td@@45)) (= H@3 (select h_ss@3 td@@45))) (< H@3 (select t_ss@3 td@@45))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@46 T@Tid) ) (!  (=> (and (and (and (not (= td@@46 NIL)) (not (= td@@46 ptTid))) (select steal_in_cs@3 td@@46)) (not (= H@3 (select h_ss@3 td@@46)))) (> H@3 (select h_ss@3 td@@46)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@47 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@47 NIL)) (not (= td@@47 ptTid))) (select steal_in_cs@3 td@@47)) (= H@3 (select h_ss@3 td@@47))) (< H@3 (select t_ss@3 td@@47))) (= (select status@5 H@3) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |35|
)))) (and (=> (= (ControlFlow 0 136) (- 0 140)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@48 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@48 NIL)) (not (= td@@48 ptTid))) (select steal_in_cs@3 td@@48)) (= H@3 (select h_ss@3 td@@48))) (< H@3 (select t_ss@3 td@@48))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@49 T@Tid) ) (!  (=> (and (and (and (not (= td@@49 NIL)) (not (= td@@49 ptTid))) (select steal_in_cs@3 td@@49)) (not (= H@3 (select h_ss@3 td@@49)))) (> H@3 (select h_ss@3 td@@49)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@50 T@Tid) ) (!  (=> (and (and (and (not (= td@@50 NIL)) (not (= td@@50 ptTid))) (select steal_in_cs@3 td@@50)) (not (= H@3 (select h_ss@3 td@@50)))) (> H@3 (select h_ss@3 td@@50)))
 :qid |wsqbpl.44:14|
 :skolemid |36|
)))) (and (=> (= (ControlFlow 0 136) (- 0 139)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@51 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@51 NIL)) (not (= td@@51 ptTid))) (select steal_in_cs@3 td@@51)) (= H@3 (select h_ss@3 td@@51))) (< H@3 (select t_ss@3 td@@51))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@52 T@Tid) ) (!  (=> (and (and (and (not (= td@@52 NIL)) (not (= td@@52 ptTid))) (select steal_in_cs@3 td@@52)) (not (= H@3 (select h_ss@3 td@@52)))) (> H@3 (select h_ss@3 td@@52)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@53 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@53 NIL)) (not (= td@@53 ptTid))) (select steal_in_cs@3 td@@53)) (= H@3 (select h_ss@3 td@@53))) (< H@3 (select t_ss@3 td@@53))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@54 T@Tid) ) (!  (=> (and (and (and (not (= td@@54 NIL)) (not (= td@@54 ptTid))) (select steal_in_cs@3 td@@54)) (not (= H@3 (select h_ss@3 td@@54)))) (> H@3 (select h_ss@3 td@@54)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 136) (- 0 138)) (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0) (and (=> (= (ControlFlow 0 136) (- 0 137)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4)) (=> (= (ControlFlow 0 136) (- 0 135)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 T@4) (and (= (select status@5 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) NOT_IN_Q) (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
))))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (and (forall ((i@@24 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@24) (<= i@@24 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@24) IN_Q) (not (= (select Civl_global_old_items@0 i@@24) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) Civl_global_old_put_in_cs@0) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@55 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@55 NIL)) (not (= td@@55 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@55)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@55))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@55))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@56 T@Tid) ) (!  (=> (and (and (and (not (= td@@56 NIL)) (not (= td@@56 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@56)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@56)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@56)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@0)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Civl_global_old_T@0) (and (= (select Civl_global_old_status@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) NOT_IN_Q) (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 115) (- 0 134)) (or (and (and (and (forall ((i@@25 Int) ) (!  (=> (and (<= H@3 i@@25) (<= i@@25 (- T@4 1))) (and (= (select status@5 i@@25) IN_Q) (not (= (select items@4 i@@25) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (forall ((i@@26 Int) ) (!  (=> (and (<= H@3 i@@26) (<= i@@26 (- T@4 1))) (= (select status@5 i@@26) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |37|
)))) (and (=> (= (ControlFlow 0 115) (- 0 133)) (or (and (and (and (forall ((i@@27 Int) ) (!  (=> (and (<= H@3 i@@27) (<= i@@27 (- T@4 1))) (and (= (select status@5 i@@27) IN_Q) (not (= (select items@4 i@@27) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (forall ((i@@28 Int) ) (!  (=> (and (<= H@3 i@@28) (<= i@@28 (- T@4 1))) (not (= (select items@4 i@@28) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |38|
)))) (and (=> (= (ControlFlow 0 115) (- 0 132)) (or (and (and (and (forall ((i@@29 Int) ) (!  (=> (and (<= H@3 i@@29) (<= i@@29 (- T@4 1))) (and (= (select status@5 i@@29) IN_Q) (not (= (select items@4 i@@29) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 115) (- 0 131)) (or (and (and (and (forall ((i@@30 Int) ) (!  (=> (and (<= H@3 i@@30) (<= i@@30 (- T@4 1))) (and (= (select status@5 i@@30) IN_Q) (not (= (select items@4 i@@30) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (not take_in_cs@3))) (and (=> (= (ControlFlow 0 115) (- 0 130)) (or (and (and (and (forall ((i@@31 Int) ) (!  (=> (and (<= H@3 i@@31) (<= i@@31 (- T@4 1))) (and (= (select status@5 i@@31) IN_Q) (not (= (select items@4 i@@31) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) put_in_cs@3)) (and (=> (= (ControlFlow 0 115) (- 0 129)) (and (and (and (forall ((i@@32 Int) ) (!  (=> (and (<= H@3 i@@32) (<= i@@32 (- T@4 1))) (and (= (select status@5 i@@32) IN_Q) (not (= (select items@4 i@@32) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3)) (=> (and (and (and (forall ((i@@33 Int) ) (!  (=> (and (<= H@3 i@@33) (<= i@@33 (- T@4 1))) (and (= (select status@5 i@@33) IN_Q) (not (= (select items@4 i@@33) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (and (=> (= (ControlFlow 0 115) (- 0 128)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@57 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@57 NIL)) (not (= td@@57 ptTid))) (select steal_in_cs@3 td@@57)) (= H@3 (select h_ss@3 td@@57))) (< H@3 (select t_ss@3 td@@57))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@58 T@Tid) ) (!  (=> (and (and (and (not (= td@@58 NIL)) (not (= td@@58 ptTid))) (select steal_in_cs@3 td@@58)) (not (= H@3 (select h_ss@3 td@@58)))) (> H@3 (select h_ss@3 td@@58)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select t_ss@3 ptTid) T@4)))) (and (=> (= (ControlFlow 0 115) (- 0 127)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@59 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@59 NIL)) (not (= td@@59 ptTid))) (select steal_in_cs@3 td@@59)) (= H@3 (select h_ss@3 td@@59))) (< H@3 (select t_ss@3 td@@59))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@60 T@Tid) ) (!  (=> (and (and (and (not (= td@@60 NIL)) (not (= td@@60 ptTid))) (select steal_in_cs@3 td@@60)) (not (= H@3 (select h_ss@3 td@@60)))) (> H@3 (select h_ss@3 td@@60)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (<= H@3 T@4)))) (and (=> (= (ControlFlow 0 115) (- 0 126)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@61 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@61 NIL)) (not (= td@@61 ptTid))) (select steal_in_cs@3 td@@61)) (= H@3 (select h_ss@3 td@@61))) (< H@3 (select t_ss@3 td@@61))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@62 T@Tid) ) (!  (=> (and (and (and (not (= td@@62 NIL)) (not (= td@@62 ptTid))) (select steal_in_cs@3 td@@62)) (not (= H@3 (select h_ss@3 td@@62)))) (> H@3 (select h_ss@3 td@@62)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (not (= (select items@4 T@4) EMPTY))))) (and (=> (= (ControlFlow 0 115) (- 0 125)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@63 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@63 NIL)) (not (= td@@63 ptTid))) (select steal_in_cs@3 td@@63)) (= H@3 (select h_ss@3 td@@63))) (< H@3 (select t_ss@3 td@@63))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@64 T@Tid) ) (!  (=> (and (and (and (not (= td@@64 NIL)) (not (= td@@64 ptTid))) (select steal_in_cs@3 td@@64)) (not (= H@3 (select h_ss@3 td@@64)))) (> H@3 (select h_ss@3 td@@64)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select status@5 T@4) IN_Q)))) (and (=> (= (ControlFlow 0 115) (- 0 124)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@65 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@65 NIL)) (not (= td@@65 ptTid))) (select steal_in_cs@3 td@@65)) (= H@3 (select h_ss@3 td@@65))) (< H@3 (select t_ss@3 td@@65))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@66 T@Tid) ) (!  (=> (and (and (and (not (= td@@66 NIL)) (not (= td@@66 ptTid))) (select steal_in_cs@3 td@@66)) (not (= H@3 (select h_ss@3 td@@66)))) (> H@3 (select h_ss@3 td@@66)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@3 (not take_in_cs@3)))) (and (=> (= (ControlFlow 0 115) (- 0 123)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@67 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@67 NIL)) (not (= td@@67 ptTid))) (select steal_in_cs@3 td@@67)) (= H@3 (select h_ss@3 td@@67))) (< H@3 (select t_ss@3 td@@67))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@68 T@Tid) ) (!  (=> (and (and (and (not (= td@@68 NIL)) (not (= td@@68 ptTid))) (select steal_in_cs@3 td@@68)) (not (= H@3 (select h_ss@3 td@@68)))) (> H@3 (select h_ss@3 td@@68)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@3 (not put_in_cs@3)))) (and (=> (= (ControlFlow 0 115) (- 0 122)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@69 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@69 NIL)) (not (= td@@69 ptTid))) (select steal_in_cs@3 td@@69)) (= H@3 (select h_ss@3 td@@69))) (< H@3 (select t_ss@3 td@@69))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@70 T@Tid) ) (!  (=> (and (and (and (not (= td@@70 NIL)) (not (= td@@70 ptTid))) (select steal_in_cs@3 td@@70)) (not (= H@3 (select h_ss@3 td@@70)))) (> H@3 (select h_ss@3 td@@70)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid))))) (and (=> (= (ControlFlow 0 115) (- 0 121)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@71 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@71 NIL)) (not (= td@@71 ptTid))) (select steal_in_cs@3 td@@71)) (= H@3 (select h_ss@3 td@@71))) (< H@3 (select t_ss@3 td@@71))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@72 T@Tid) ) (!  (=> (and (and (and (not (= td@@72 NIL)) (not (= td@@72 ptTid))) (select steal_in_cs@3 td@@72)) (not (= H@3 (select h_ss@3 td@@72)))) (> H@3 (select h_ss@3 td@@72)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@73 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@73 NIL)) (not (= td@@73 ptTid))) (select steal_in_cs@3 td@@73)) (= H@3 (select h_ss@3 td@@73))) (< H@3 (select t_ss@3 td@@73))) (not (= (select items@4 H@3) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |39|
)))) (and (=> (= (ControlFlow 0 115) (- 0 120)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@74 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@74 NIL)) (not (= td@@74 ptTid))) (select steal_in_cs@3 td@@74)) (= H@3 (select h_ss@3 td@@74))) (< H@3 (select t_ss@3 td@@74))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@75 T@Tid) ) (!  (=> (and (and (and (not (= td@@75 NIL)) (not (= td@@75 ptTid))) (select steal_in_cs@3 td@@75)) (not (= H@3 (select h_ss@3 td@@75)))) (> H@3 (select h_ss@3 td@@75)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@76 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@76 NIL)) (not (= td@@76 ptTid))) (select steal_in_cs@3 td@@76)) (= H@3 (select h_ss@3 td@@76))) (< H@3 (select t_ss@3 td@@76))) (= (select status@5 H@3) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |40|
)))) (and (=> (= (ControlFlow 0 115) (- 0 119)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@77 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@77 NIL)) (not (= td@@77 ptTid))) (select steal_in_cs@3 td@@77)) (= H@3 (select h_ss@3 td@@77))) (< H@3 (select t_ss@3 td@@77))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@78 T@Tid) ) (!  (=> (and (and (and (not (= td@@78 NIL)) (not (= td@@78 ptTid))) (select steal_in_cs@3 td@@78)) (not (= H@3 (select h_ss@3 td@@78)))) (> H@3 (select h_ss@3 td@@78)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@79 T@Tid) ) (!  (=> (and (and (and (not (= td@@79 NIL)) (not (= td@@79 ptTid))) (select steal_in_cs@3 td@@79)) (not (= H@3 (select h_ss@3 td@@79)))) (> H@3 (select h_ss@3 td@@79)))
 :qid |wsqbpl.44:14|
 :skolemid |41|
)))) (and (=> (= (ControlFlow 0 115) (- 0 118)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@80 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@80 NIL)) (not (= td@@80 ptTid))) (select steal_in_cs@3 td@@80)) (= H@3 (select h_ss@3 td@@80))) (< H@3 (select t_ss@3 td@@80))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@81 T@Tid) ) (!  (=> (and (and (and (not (= td@@81 NIL)) (not (= td@@81 ptTid))) (select steal_in_cs@3 td@@81)) (not (= H@3 (select h_ss@3 td@@81)))) (> H@3 (select h_ss@3 td@@81)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@82 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@82 NIL)) (not (= td@@82 ptTid))) (select steal_in_cs@3 td@@82)) (= H@3 (select h_ss@3 td@@82))) (< H@3 (select t_ss@3 td@@82))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@83 T@Tid) ) (!  (=> (and (and (and (not (= td@@83 NIL)) (not (= td@@83 ptTid))) (select steal_in_cs@3 td@@83)) (not (= H@3 (select h_ss@3 td@@83)))) (> H@3 (select h_ss@3 td@@83)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 115) (- 0 117)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4)) (=> (= (ControlFlow 0 115) (- 0 114)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 T@4) (and (= (select status@5 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) NOT_IN_Q) (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (forall ((i@@34 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@34) (<= i@@34 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@34) IN_Q) (not (= (select Civl_global_old_items@0 i@@34) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@84 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@84 NIL)) (not (= td@@84 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@84)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@84))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@84))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@85 T@Tid) ) (!  (=> (and (and (and (not (= td@@85 NIL)) (not (= td@@85 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@85)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@85)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@85)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= Civl_global_old_T@0 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (not Civl_global_old_put_in_cs@0)))) (and (=> (= (ControlFlow 0 107) (- 0 113)) (and (and (and (forall ((i@@35 Int) ) (!  (=> (and (<= H@3 i@@35) (<= i@@35 (- T@4 1))) (and (= (select status@5 i@@35) IN_Q) (not (= (select items@4 i@@35) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (forall ((i@@36 Int) ) (!  (=> (and (<= H@3 i@@36) (<= i@@36 (- T@4 1))) (and (= (select status@5 i@@36) IN_Q) (not (= (select items@4 i@@36) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 107) (- 0 112)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@86 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@86 NIL)) (not (= td@@86 ptTid))) (select steal_in_cs@3 td@@86)) (= H@3 (select h_ss@3 td@@86))) (< H@3 (select t_ss@3 td@@86))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@87 T@Tid) ) (!  (=> (and (and (and (not (= td@@87 NIL)) (not (= td@@87 ptTid))) (select steal_in_cs@3 td@@87)) (not (= H@3 (select h_ss@3 td@@87)))) (> H@3 (select h_ss@3 td@@87)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@88 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@88 NIL)) (not (= td@@88 ptTid))) (select steal_in_cs@3 td@@88)) (= H@3 (select h_ss@3 td@@88))) (< H@3 (select t_ss@3 td@@88))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@89 T@Tid) ) (!  (=> (and (and (and (not (= td@@89 NIL)) (not (= td@@89 ptTid))) (select steal_in_cs@3 td@@89)) (not (= H@3 (select h_ss@3 td@@89)))) (> H@3 (select h_ss@3 td@@89)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 107) (- 0 111)) (= T@4 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (=> (= T@4 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)) (and (=> (= (ControlFlow 0 107) (- 0 110)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (and (=> (= (ControlFlow 0 107) (- 0 109)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4) (and (=> (= (ControlFlow 0 107) (- 0 108)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 107) (- 0 106)) (not put_in_cs@3)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (and (and (and (and (forall ((i@@37 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@37) (<= i@@37 Civl_global_old_T@0)) (and (= (select Civl_global_old_status@1 i@@37) IN_Q) (not (= (select Civl_global_old_items@0 i@@37) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@0) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@90 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@90 NIL)) (not (= td@@90 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@90)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@90))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@90))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@91 T@Tid) ) (!  (=> (and (and (and (not (= td@@91 NIL)) (not (= td@@91 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@91)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@91)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@91)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@0 Civl_global_old_T@0))) (=> (> Civl_global_old_T@0 Civl_global_old_H@0) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))))) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)) (not Civl_global_old_put_in_cs@0)) Civl_global_old_take_in_cs@0)) (and (=> (= (ControlFlow 0 100) (- 0 105)) (>= H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (>= H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0) (and (=> (= (ControlFlow 0 100) (- 0 104)) (and (and (and (and (forall ((i@@38 Int) ) (!  (=> (and (<= H@3 i@@38) (<= i@@38 T@4)) (and (= (select status@5 i@@38) IN_Q) (not (= (select items@4 i@@38) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (forall ((i@@39 Int) ) (!  (=> (and (<= H@3 i@@39) (<= i@@39 T@4)) (and (= (select status@5 i@@39) IN_Q) (not (= (select items@4 i@@39) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 100) (- 0 103)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@92 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@92 NIL)) (not (= td@@92 ptTid))) (select steal_in_cs@3 td@@92)) (= H@3 (select h_ss@3 td@@92))) (< H@3 (select t_ss@3 td@@92))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@93 T@Tid) ) (!  (=> (and (and (and (not (= td@@93 NIL)) (not (= td@@93 ptTid))) (select steal_in_cs@3 td@@93)) (not (= H@3 (select h_ss@3 td@@93)))) (> H@3 (select h_ss@3 td@@93)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@94 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@94 NIL)) (not (= td@@94 ptTid))) (select steal_in_cs@3 td@@94)) (= H@3 (select h_ss@3 td@@94))) (< H@3 (select t_ss@3 td@@94))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@95 T@Tid) ) (!  (=> (and (and (and (not (= td@@95 NIL)) (not (= td@@95 ptTid))) (select steal_in_cs@3 td@@95)) (not (= H@3 (select h_ss@3 td@@95)))) (> H@3 (select h_ss@3 td@@95)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 100) (- 0 102)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 T@4)))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 T@4))) (and (=> (= (ControlFlow 0 100) (- 0 101)) (=> (> T@4 H@3) (not (= (select items@4 T@4) EMPTY)))) (=> (=> (> T@4 H@3) (not (= (select items@4 T@4) EMPTY))) (=> (= (ControlFlow 0 100) (- 0 99)) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)) (not put_in_cs@3)) take_in_cs@3)))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (and (and (forall ((i@@40 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@40) (<= i@@40 Civl_global_old_T@0)) (and (= (select Civl_global_old_status@1 i@@40) IN_Q) (not (= (select Civl_global_old_items@0 i@@40) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@0) (not Civl_global_old_put_in_cs@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@96 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@96 NIL)) (not (= td@@96 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@96)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@96))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@96))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@97 T@Tid) ) (!  (=> (and (and (and (not (= td@@97 NIL)) (not (= td@@97 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@97)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@97)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@97)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@0) (=> (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))) (and (=> (= (ControlFlow 0 80) (- 0 98)) (and (and (and (and (and (forall ((i@@41 Int) ) (!  (=> (and (<= H@3 i@@41) (<= i@@41 T@4)) (and (= (select status@5 i@@41) IN_Q) (not (= (select items@4 i@@41) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (not put_in_cs@3)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (and (forall ((i@@42 Int) ) (!  (=> (and (<= H@3 i@@42) (<= i@@42 T@4)) (and (= (select status@5 i@@42) IN_Q) (not (= (select items@4 i@@42) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (not put_in_cs@3)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 80) (- 0 97)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@98 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@98 NIL)) (not (= td@@98 ptTid))) (select steal_in_cs@3 td@@98)) (= H@3 (select h_ss@3 td@@98))) (< H@3 (select t_ss@3 td@@98))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@99 T@Tid) ) (!  (=> (and (and (and (not (= td@@99 NIL)) (not (= td@@99 ptTid))) (select steal_in_cs@3 td@@99)) (not (= H@3 (select h_ss@3 td@@99)))) (> H@3 (select h_ss@3 td@@99)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select t_ss@3 ptTid) T@4)))) (and (=> (= (ControlFlow 0 80) (- 0 96)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@100 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@100 NIL)) (not (= td@@100 ptTid))) (select steal_in_cs@3 td@@100)) (= H@3 (select h_ss@3 td@@100))) (< H@3 (select t_ss@3 td@@100))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@101 T@Tid) ) (!  (=> (and (and (and (not (= td@@101 NIL)) (not (= td@@101 ptTid))) (select steal_in_cs@3 td@@101)) (not (= H@3 (select h_ss@3 td@@101)))) (> H@3 (select h_ss@3 td@@101)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (<= H@3 T@4)))) (and (=> (= (ControlFlow 0 80) (- 0 95)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@102 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@102 NIL)) (not (= td@@102 ptTid))) (select steal_in_cs@3 td@@102)) (= H@3 (select h_ss@3 td@@102))) (< H@3 (select t_ss@3 td@@102))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@103 T@Tid) ) (!  (=> (and (and (and (not (= td@@103 NIL)) (not (= td@@103 ptTid))) (select steal_in_cs@3 td@@103)) (not (= H@3 (select h_ss@3 td@@103)))) (> H@3 (select h_ss@3 td@@103)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (not (= (select items@4 T@4) EMPTY))))) (and (=> (= (ControlFlow 0 80) (- 0 94)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@104 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@104 NIL)) (not (= td@@104 ptTid))) (select steal_in_cs@3 td@@104)) (= H@3 (select h_ss@3 td@@104))) (< H@3 (select t_ss@3 td@@104))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@105 T@Tid) ) (!  (=> (and (and (and (not (= td@@105 NIL)) (not (= td@@105 ptTid))) (select steal_in_cs@3 td@@105)) (not (= H@3 (select h_ss@3 td@@105)))) (> H@3 (select h_ss@3 td@@105)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select status@5 T@4) IN_Q)))) (and (=> (= (ControlFlow 0 80) (- 0 93)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@106 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@106 NIL)) (not (= td@@106 ptTid))) (select steal_in_cs@3 td@@106)) (= H@3 (select h_ss@3 td@@106))) (< H@3 (select t_ss@3 td@@106))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@107 T@Tid) ) (!  (=> (and (and (and (not (= td@@107 NIL)) (not (= td@@107 ptTid))) (select steal_in_cs@3 td@@107)) (not (= H@3 (select h_ss@3 td@@107)))) (> H@3 (select h_ss@3 td@@107)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@3 (not take_in_cs@3)))) (and (=> (= (ControlFlow 0 80) (- 0 92)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@108 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@108 NIL)) (not (= td@@108 ptTid))) (select steal_in_cs@3 td@@108)) (= H@3 (select h_ss@3 td@@108))) (< H@3 (select t_ss@3 td@@108))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@109 T@Tid) ) (!  (=> (and (and (and (not (= td@@109 NIL)) (not (= td@@109 ptTid))) (select steal_in_cs@3 td@@109)) (not (= H@3 (select h_ss@3 td@@109)))) (> H@3 (select h_ss@3 td@@109)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@3 (not put_in_cs@3)))) (and (=> (= (ControlFlow 0 80) (- 0 91)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@110 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@110 NIL)) (not (= td@@110 ptTid))) (select steal_in_cs@3 td@@110)) (= H@3 (select h_ss@3 td@@110))) (< H@3 (select t_ss@3 td@@110))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@111 T@Tid) ) (!  (=> (and (and (and (not (= td@@111 NIL)) (not (= td@@111 ptTid))) (select steal_in_cs@3 td@@111)) (not (= H@3 (select h_ss@3 td@@111)))) (> H@3 (select h_ss@3 td@@111)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid))))) (and (=> (= (ControlFlow 0 80) (- 0 90)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@112 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@112 NIL)) (not (= td@@112 ptTid))) (select steal_in_cs@3 td@@112)) (= H@3 (select h_ss@3 td@@112))) (< H@3 (select t_ss@3 td@@112))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@113 T@Tid) ) (!  (=> (and (and (and (not (= td@@113 NIL)) (not (= td@@113 ptTid))) (select steal_in_cs@3 td@@113)) (not (= H@3 (select h_ss@3 td@@113)))) (> H@3 (select h_ss@3 td@@113)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@114 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@114 NIL)) (not (= td@@114 ptTid))) (select steal_in_cs@3 td@@114)) (= H@3 (select h_ss@3 td@@114))) (< H@3 (select t_ss@3 td@@114))) (not (= (select items@4 H@3) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |42|
)))) (and (=> (= (ControlFlow 0 80) (- 0 89)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@115 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@115 NIL)) (not (= td@@115 ptTid))) (select steal_in_cs@3 td@@115)) (= H@3 (select h_ss@3 td@@115))) (< H@3 (select t_ss@3 td@@115))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@116 T@Tid) ) (!  (=> (and (and (and (not (= td@@116 NIL)) (not (= td@@116 ptTid))) (select steal_in_cs@3 td@@116)) (not (= H@3 (select h_ss@3 td@@116)))) (> H@3 (select h_ss@3 td@@116)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@117 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@117 NIL)) (not (= td@@117 ptTid))) (select steal_in_cs@3 td@@117)) (= H@3 (select h_ss@3 td@@117))) (< H@3 (select t_ss@3 td@@117))) (= (select status@5 H@3) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |43|
)))) (and (=> (= (ControlFlow 0 80) (- 0 88)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@118 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@118 NIL)) (not (= td@@118 ptTid))) (select steal_in_cs@3 td@@118)) (= H@3 (select h_ss@3 td@@118))) (< H@3 (select t_ss@3 td@@118))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@119 T@Tid) ) (!  (=> (and (and (and (not (= td@@119 NIL)) (not (= td@@119 ptTid))) (select steal_in_cs@3 td@@119)) (not (= H@3 (select h_ss@3 td@@119)))) (> H@3 (select h_ss@3 td@@119)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@120 T@Tid) ) (!  (=> (and (and (and (not (= td@@120 NIL)) (not (= td@@120 ptTid))) (select steal_in_cs@3 td@@120)) (not (= H@3 (select h_ss@3 td@@120)))) (> H@3 (select h_ss@3 td@@120)))
 :qid |wsqbpl.44:14|
 :skolemid |44|
)))) (and (=> (= (ControlFlow 0 80) (- 0 87)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@121 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@121 NIL)) (not (= td@@121 ptTid))) (select steal_in_cs@3 td@@121)) (= H@3 (select h_ss@3 td@@121))) (< H@3 (select t_ss@3 td@@121))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@122 T@Tid) ) (!  (=> (and (and (and (not (= td@@122 NIL)) (not (= td@@122 ptTid))) (select steal_in_cs@3 td@@122)) (not (= H@3 (select h_ss@3 td@@122)))) (> H@3 (select h_ss@3 td@@122)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@123 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@123 NIL)) (not (= td@@123 ptTid))) (select steal_in_cs@3 td@@123)) (= H@3 (select h_ss@3 td@@123))) (< H@3 (select t_ss@3 td@@123))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@124 T@Tid) ) (!  (=> (and (and (and (not (= td@@124 NIL)) (not (= td@@124 ptTid))) (select steal_in_cs@3 td@@124)) (not (= H@3 (select h_ss@3 td@@124)))) (> H@3 (select h_ss@3 td@@124)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 80) (- 0 86)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (and (=> (= (ControlFlow 0 80) (- 0 85)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3) (and (=> (= (ControlFlow 0 80) (- 0 84)) (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 80) (- 0 83)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (and (=> (= (ControlFlow 0 80) (- 0 82)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4) (and (=> (= (ControlFlow 0 80) (- 0 81)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3) (=> (= (ControlFlow 0 80) (- 0 79)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (forall ((i@@43 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@43) (<= i@@43 Civl_global_old_T@0)) (and (= (select Civl_global_old_status@1 i@@43) IN_Q) (not (= (select Civl_global_old_items@0 i@@43) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@125 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@125 NIL)) (not (= td@@125 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@125)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@125))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@125))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@126 T@Tid) ) (!  (=> (and (and (and (not (= td@@126 NIL)) (not (= td@@126 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@126)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@126)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@126)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0) (=> (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)))) (and (=> (= (ControlFlow 0 74) (- 0 78)) (and (and (and (and (forall ((i@@44 Int) ) (!  (=> (and (<= H@3 i@@44) (<= i@@44 T@4)) (and (= (select status@5 i@@44) IN_Q) (not (= (select items@4 i@@44) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (forall ((i@@45 Int) ) (!  (=> (and (<= H@3 i@@45) (<= i@@45 T@4)) (and (= (select status@5 i@@45) IN_Q) (not (= (select items@4 i@@45) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 74) (- 0 77)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@127 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@127 NIL)) (not (= td@@127 ptTid))) (select steal_in_cs@3 td@@127)) (= H@3 (select h_ss@3 td@@127))) (< H@3 (select t_ss@3 td@@127))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@128 T@Tid) ) (!  (=> (and (and (and (not (= td@@128 NIL)) (not (= td@@128 ptTid))) (select steal_in_cs@3 td@@128)) (not (= H@3 (select h_ss@3 td@@128)))) (> H@3 (select h_ss@3 td@@128)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@129 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@129 NIL)) (not (= td@@129 ptTid))) (select steal_in_cs@3 td@@129)) (= H@3 (select h_ss@3 td@@129))) (< H@3 (select t_ss@3 td@@129))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@130 T@Tid) ) (!  (=> (and (and (and (not (= td@@130 NIL)) (not (= td@@130 ptTid))) (select steal_in_cs@3 td@@130)) (not (= H@3 (select h_ss@3 td@@130)))) (> H@3 (select h_ss@3 td@@130)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 74) (- 0 76)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (and (=> (= (ControlFlow 0 74) (- 0 75)) (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 74) (- 0 73)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (forall ((i@@46 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@46) (<= i@@46 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@46) IN_Q) (not (= (select Civl_global_old_items@0 i@@46) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@131 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@131 NIL)) (not (= td@@131 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@131)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@131))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@131))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@132 T@Tid) ) (!  (=> (and (and (and (not (= td@@132 NIL)) (not (= td@@132 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@132)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@132)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@132)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0) (=> (= (select Civl_global_old_items@0 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> Civl_global_old_H@0 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)))) (and (=> (= (ControlFlow 0 68) (- 0 72)) (and (and (and (forall ((i@@47 Int) ) (!  (=> (and (<= H@3 i@@47) (<= i@@47 (- T@4 1))) (and (= (select status@5 i@@47) IN_Q) (not (= (select items@4 i@@47) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (forall ((i@@48 Int) ) (!  (=> (and (<= H@3 i@@48) (<= i@@48 (- T@4 1))) (and (= (select status@5 i@@48) IN_Q) (not (= (select items@4 i@@48) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (and (=> (= (ControlFlow 0 68) (- 0 71)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@133 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@133 NIL)) (not (= td@@133 ptTid))) (select steal_in_cs@3 td@@133)) (= H@3 (select h_ss@3 td@@133))) (< H@3 (select t_ss@3 td@@133))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@134 T@Tid) ) (!  (=> (and (and (and (not (= td@@134 NIL)) (not (= td@@134 ptTid))) (select steal_in_cs@3 td@@134)) (not (= H@3 (select h_ss@3 td@@134)))) (> H@3 (select h_ss@3 td@@134)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@135 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@135 NIL)) (not (= td@@135 ptTid))) (select steal_in_cs@3 td@@135)) (= H@3 (select h_ss@3 td@@135))) (< H@3 (select t_ss@3 td@@135))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@136 T@Tid) ) (!  (=> (and (and (and (not (= td@@136 NIL)) (not (= td@@136 ptTid))) (select steal_in_cs@3 td@@136)) (not (= H@3 (select h_ss@3 td@@136)))) (> H@3 (select h_ss@3 td@@136)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 68) (- 0 70)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (and (=> (= (ControlFlow 0 68) (- 0 69)) (=> (= (select items@4 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@3 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (=> (=> (= (select items@4 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@3 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1))) (=> (= (ControlFlow 0 68) (- 0 67)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (and (forall ((i@@49 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@49) (<= i@@49 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@49) IN_Q) (not (= (select Civl_global_old_items@0 i@@49) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@137 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@137 NIL)) (not (= td@@137 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@137)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@137))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@137))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@138 T@Tid) ) (!  (=> (and (and (and (not (= td@@138 NIL)) (not (= td@@138 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@138)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@138)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@138)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (and (and (and (forall ((i@@50 Int) ) (!  (=> (and (<= H@3 i@@50) (<= i@@50 (- T@4 1))) (and (= (select status@5 i@@50) IN_Q) (not (= (select items@4 i@@50) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (forall ((i@@51 Int) ) (!  (=> (and (<= H@3 i@@51) (<= i@@51 (- T@4 1))) (and (= (select status@5 i@@51) IN_Q) (not (= (select items@4 i@@51) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (= (ControlFlow 0 65) (- 0 64)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@139 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@139 NIL)) (not (= td@@139 ptTid))) (select steal_in_cs@3 td@@139)) (= H@3 (select h_ss@3 td@@139))) (< H@3 (select t_ss@3 td@@139))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@140 T@Tid) ) (!  (=> (and (and (and (not (= td@@140 NIL)) (not (= td@@140 ptTid))) (select steal_in_cs@3 td@@140)) (not (= H@3 (select h_ss@3 td@@140)))) (> H@3 (select h_ss@3 td@@140)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (forall ((i@@52 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@52) (<= i@@52 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@52) IN_Q) (not (= (select Civl_global_old_items@0 i@@52) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@141 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@141 NIL)) (not (= td@@141 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@141)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@141))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@141))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@142 T@Tid) ) (!  (=> (and (and (and (not (= td@@142 NIL)) (not (= td@@142 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@142)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@142)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@142)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0) (= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (and (=> (and (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@0)) (< Civl_global_old_H@0 Civl_global_old_T@0)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@0) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q))))) (and (=> (= (ControlFlow 0 57) (- 0 63)) (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 57) (- 0 62)) (forall ((i@@53 Int) ) (!  (=> (and (<= H@3 i@@53) (<= i@@53 (- T@4 1))) (and (= (select status@5 i@@53) IN_Q) (not (= (select items@4 i@@53) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@54 Int) ) (!  (=> (and (<= H@3 i@@54) (<= i@@54 (- T@4 1))) (and (= (select status@5 i@@54) IN_Q) (not (= (select items@4 i@@54) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 57) (- 0 61)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@143 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@143 NIL)) (not (= td@@143 ptTid))) (select steal_in_cs@3 td@@143)) (= H@3 (select h_ss@3 td@@143))) (< H@3 (select t_ss@3 td@@143))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@144 T@Tid) ) (!  (=> (and (and (and (not (= td@@144 NIL)) (not (= td@@144 ptTid))) (select steal_in_cs@3 td@@144)) (not (= H@3 (select h_ss@3 td@@144)))) (> H@3 (select h_ss@3 td@@144)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@145 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@145 NIL)) (not (= td@@145 ptTid))) (select steal_in_cs@3 td@@145)) (= H@3 (select h_ss@3 td@@145))) (< H@3 (select t_ss@3 td@@145))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@146 T@Tid) ) (!  (=> (and (and (and (not (= td@@146 NIL)) (not (= td@@146 ptTid))) (select steal_in_cs@3 td@@146)) (not (= H@3 (select h_ss@3 td@@146)))) (> H@3 (select h_ss@3 td@@146)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 57) (- 0 60)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (and (=> (= (ControlFlow 0 57) (- 0 59)) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (=> (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (=> (and (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4))) (=> (=> (and (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4)) (=> (= (ControlFlow 0 57) (- 0 56)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3) (= (select status@5 H@3) IN_Q))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (and (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (forall ((i@@55 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@55) (<= i@@55 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@55) IN_Q) (not (= (select Civl_global_old_items@0 i@@55) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@147 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@147 NIL)) (not (= td@@147 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@147)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@147))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@147))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@148 T@Tid) ) (!  (=> (and (and (and (not (= td@@148 NIL)) (not (= td@@148 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@148)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@148)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@148)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) Civl_global_old_take_in_cs@0) (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@0)) (< Civl_global_old_H@0 Civl_global_old_T@0)) (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))) (and (=> (= (ControlFlow 0 49) (- 0 55)) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 49) (- 0 54)) (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 49) (- 0 53)) (forall ((i@@56 Int) ) (!  (=> (and (<= H@3 i@@56) (<= i@@56 (- T@4 1))) (and (= (select status@5 i@@56) IN_Q) (not (= (select items@4 i@@56) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@57 Int) ) (!  (=> (and (<= H@3 i@@57) (<= i@@57 (- T@4 1))) (and (= (select status@5 i@@57) IN_Q) (not (= (select items@4 i@@57) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 49) (- 0 52)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@149 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@149 NIL)) (not (= td@@149 ptTid))) (select steal_in_cs@3 td@@149)) (= H@3 (select h_ss@3 td@@149))) (< H@3 (select t_ss@3 td@@149))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@150 T@Tid) ) (!  (=> (and (and (and (not (= td@@150 NIL)) (not (= td@@150 ptTid))) (select steal_in_cs@3 td@@150)) (not (= H@3 (select h_ss@3 td@@150)))) (> H@3 (select h_ss@3 td@@150)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@151 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@151 NIL)) (not (= td@@151 ptTid))) (select steal_in_cs@3 td@@151)) (= H@3 (select h_ss@3 td@@151))) (< H@3 (select t_ss@3 td@@151))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@152 T@Tid) ) (!  (=> (and (and (and (not (= td@@152 NIL)) (not (= td@@152 ptTid))) (select steal_in_cs@3 td@@152)) (not (= H@3 (select h_ss@3 td@@152)))) (> H@3 (select h_ss@3 td@@152)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 49) (- 0 51)) (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@3) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4))) (=> (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@3) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4)) (=> (= (ControlFlow 0 49) (- 0 48)) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (and (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (forall ((i@@58 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@58) (<= i@@58 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@58) IN_Q) (not (= (select Civl_global_old_items@0 i@@58) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@153 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@153 NIL)) (not (= td@@153 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@153)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@153))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@153))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@154 T@Tid) ) (!  (=> (and (and (and (not (= td@@154 NIL)) (not (= td@@154 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@154)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@154)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@154)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0)) (and (=> (= (ControlFlow 0 32) (- 0 47)) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 32) (- 0 46)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (and (=> (= (ControlFlow 0 32) (- 0 45)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 32) (- 0 44)) (forall ((i@@59 Int) ) (!  (=> (and (<= H@3 i@@59) (<= i@@59 (- T@4 1))) (and (= (select status@5 i@@59) IN_Q) (not (= (select items@4 i@@59) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@60 Int) ) (!  (=> (and (<= H@3 i@@60) (<= i@@60 (- T@4 1))) (and (= (select status@5 i@@60) IN_Q) (not (= (select items@4 i@@60) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 32) (- 0 43)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@155 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@155 NIL)) (not (= td@@155 ptTid))) (select steal_in_cs@3 td@@155)) (= H@3 (select h_ss@3 td@@155))) (< H@3 (select t_ss@3 td@@155))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@156 T@Tid) ) (!  (=> (and (and (and (not (= td@@156 NIL)) (not (= td@@156 ptTid))) (select steal_in_cs@3 td@@156)) (not (= H@3 (select h_ss@3 td@@156)))) (> H@3 (select h_ss@3 td@@156)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select t_ss@3 ptTid) T@4)))) (and (=> (= (ControlFlow 0 32) (- 0 42)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@157 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@157 NIL)) (not (= td@@157 ptTid))) (select steal_in_cs@3 td@@157)) (= H@3 (select h_ss@3 td@@157))) (< H@3 (select t_ss@3 td@@157))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@158 T@Tid) ) (!  (=> (and (and (and (not (= td@@158 NIL)) (not (= td@@158 ptTid))) (select steal_in_cs@3 td@@158)) (not (= H@3 (select h_ss@3 td@@158)))) (> H@3 (select h_ss@3 td@@158)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (<= H@3 T@4)))) (and (=> (= (ControlFlow 0 32) (- 0 41)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@159 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@159 NIL)) (not (= td@@159 ptTid))) (select steal_in_cs@3 td@@159)) (= H@3 (select h_ss@3 td@@159))) (< H@3 (select t_ss@3 td@@159))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@160 T@Tid) ) (!  (=> (and (and (and (not (= td@@160 NIL)) (not (= td@@160 ptTid))) (select steal_in_cs@3 td@@160)) (not (= H@3 (select h_ss@3 td@@160)))) (> H@3 (select h_ss@3 td@@160)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (not (= (select items@4 T@4) EMPTY))))) (and (=> (= (ControlFlow 0 32) (- 0 40)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@161 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@161 NIL)) (not (= td@@161 ptTid))) (select steal_in_cs@3 td@@161)) (= H@3 (select h_ss@3 td@@161))) (< H@3 (select t_ss@3 td@@161))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@162 T@Tid) ) (!  (=> (and (and (and (not (= td@@162 NIL)) (not (= td@@162 ptTid))) (select steal_in_cs@3 td@@162)) (not (= H@3 (select h_ss@3 td@@162)))) (> H@3 (select h_ss@3 td@@162)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= (select status@5 T@4) IN_Q)))) (and (=> (= (ControlFlow 0 32) (- 0 39)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@163 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@163 NIL)) (not (= td@@163 ptTid))) (select steal_in_cs@3 td@@163)) (= H@3 (select h_ss@3 td@@163))) (< H@3 (select t_ss@3 td@@163))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@164 T@Tid) ) (!  (=> (and (and (and (not (= td@@164 NIL)) (not (= td@@164 ptTid))) (select steal_in_cs@3 td@@164)) (not (= H@3 (select h_ss@3 td@@164)))) (> H@3 (select h_ss@3 td@@164)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@3 (not take_in_cs@3)))) (and (=> (= (ControlFlow 0 32) (- 0 38)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@165 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@165 NIL)) (not (= td@@165 ptTid))) (select steal_in_cs@3 td@@165)) (= H@3 (select h_ss@3 td@@165))) (< H@3 (select t_ss@3 td@@165))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@166 T@Tid) ) (!  (=> (and (and (and (not (= td@@166 NIL)) (not (= td@@166 ptTid))) (select steal_in_cs@3 td@@166)) (not (= H@3 (select h_ss@3 td@@166)))) (> H@3 (select h_ss@3 td@@166)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@3 (not put_in_cs@3)))) (and (=> (= (ControlFlow 0 32) (- 0 37)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@167 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@167 NIL)) (not (= td@@167 ptTid))) (select steal_in_cs@3 td@@167)) (= H@3 (select h_ss@3 td@@167))) (< H@3 (select t_ss@3 td@@167))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@168 T@Tid) ) (!  (=> (and (and (and (not (= td@@168 NIL)) (not (= td@@168 ptTid))) (select steal_in_cs@3 td@@168)) (not (= H@3 (select h_ss@3 td@@168)))) (> H@3 (select h_ss@3 td@@168)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid))))) (and (=> (= (ControlFlow 0 32) (- 0 36)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@169 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@169 NIL)) (not (= td@@169 ptTid))) (select steal_in_cs@3 td@@169)) (= H@3 (select h_ss@3 td@@169))) (< H@3 (select t_ss@3 td@@169))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@170 T@Tid) ) (!  (=> (and (and (and (not (= td@@170 NIL)) (not (= td@@170 ptTid))) (select steal_in_cs@3 td@@170)) (not (= H@3 (select h_ss@3 td@@170)))) (> H@3 (select h_ss@3 td@@170)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@171 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@171 NIL)) (not (= td@@171 ptTid))) (select steal_in_cs@3 td@@171)) (= H@3 (select h_ss@3 td@@171))) (< H@3 (select t_ss@3 td@@171))) (not (= (select items@4 H@3) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |45|
)))) (and (=> (= (ControlFlow 0 32) (- 0 35)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@172 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@172 NIL)) (not (= td@@172 ptTid))) (select steal_in_cs@3 td@@172)) (= H@3 (select h_ss@3 td@@172))) (< H@3 (select t_ss@3 td@@172))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@173 T@Tid) ) (!  (=> (and (and (and (not (= td@@173 NIL)) (not (= td@@173 ptTid))) (select steal_in_cs@3 td@@173)) (not (= H@3 (select h_ss@3 td@@173)))) (> H@3 (select h_ss@3 td@@173)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@174 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@174 NIL)) (not (= td@@174 ptTid))) (select steal_in_cs@3 td@@174)) (= H@3 (select h_ss@3 td@@174))) (< H@3 (select t_ss@3 td@@174))) (= (select status@5 H@3) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |46|
)))) (and (=> (= (ControlFlow 0 32) (- 0 34)) (or (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@175 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@175 NIL)) (not (= td@@175 ptTid))) (select steal_in_cs@3 td@@175)) (= H@3 (select h_ss@3 td@@175))) (< H@3 (select t_ss@3 td@@175))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@176 T@Tid) ) (!  (=> (and (and (and (not (= td@@176 NIL)) (not (= td@@176 ptTid))) (select steal_in_cs@3 td@@176)) (not (= H@3 (select h_ss@3 td@@176)))) (> H@3 (select h_ss@3 td@@176)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@177 T@Tid) ) (!  (=> (and (and (and (not (= td@@177 NIL)) (not (= td@@177 ptTid))) (select steal_in_cs@3 td@@177)) (not (= H@3 (select h_ss@3 td@@177)))) (> H@3 (select h_ss@3 td@@177)))
 :qid |wsqbpl.44:14|
 :skolemid |47|
)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@178 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@178 NIL)) (not (= td@@178 ptTid))) (select steal_in_cs@3 td@@178)) (= H@3 (select h_ss@3 td@@178))) (< H@3 (select t_ss@3 td@@178))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@179 T@Tid) ) (!  (=> (and (and (and (not (= td@@179 NIL)) (not (= td@@179 ptTid))) (select steal_in_cs@3 td@@179)) (not (= H@3 (select h_ss@3 td@@179)))) (> H@3 (select h_ss@3 td@@179)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@180 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@180 NIL)) (not (= td@@180 ptTid))) (select steal_in_cs@3 td@@180)) (= H@3 (select h_ss@3 td@@180))) (< H@3 (select t_ss@3 td@@180))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@181 T@Tid) ) (!  (=> (and (and (and (not (= td@@181 NIL)) (not (= td@@181 ptTid))) (select steal_in_cs@3 td@@181)) (not (= H@3 (select h_ss@3 td@@181)))) (> H@3 (select h_ss@3 td@@181)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 32) (- 0 31)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3)))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (forall ((i@@61 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@61) (<= i@@61 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@61) IN_Q) (not (= (select Civl_global_old_items@0 i@@61) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@182 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@182 NIL)) (not (= td@@182 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@182)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@182))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@182))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@183 T@Tid) ) (!  (=> (and (and (and (not (= td@@183 NIL)) (not (= td@@183 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@183)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@183)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@183)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid)))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (forall ((i@@62 Int) ) (!  (=> (and (<= H@3 i@@62) (<= i@@62 (- T@4 1))) (and (= (select status@5 i@@62) IN_Q) (not (= (select items@4 i@@62) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@63 Int) ) (!  (=> (and (<= H@3 i@@63) (<= i@@63 (- T@4 1))) (and (= (select status@5 i@@63) IN_Q) (not (= (select items@4 i@@63) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@184 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@184 NIL)) (not (= td@@184 ptTid))) (select steal_in_cs@3 td@@184)) (= H@3 (select h_ss@3 td@@184))) (< H@3 (select t_ss@3 td@@184))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@185 T@Tid) ) (!  (=> (and (and (and (not (= td@@185 NIL)) (not (= td@@185 ptTid))) (select steal_in_cs@3 td@@185)) (not (= H@3 (select h_ss@3 td@@185)))) (> H@3 (select h_ss@3 td@@185)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@186 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@186 NIL)) (not (= td@@186 ptTid))) (select steal_in_cs@3 td@@186)) (= H@3 (select h_ss@3 td@@186))) (< H@3 (select t_ss@3 td@@186))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@187 T@Tid) ) (!  (=> (and (and (and (not (= td@@187 NIL)) (not (= td@@187 ptTid))) (select steal_in_cs@3 td@@187)) (not (= H@3 (select h_ss@3 td@@187)))) (> H@3 (select h_ss@3 td@@187)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 27) (- 0 26)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (and (forall ((i@@64 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@64) (<= i@@64 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@64) IN_Q) (not (= (select Civl_global_old_items@0 i@@64) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@188 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@188 NIL)) (not (= td@@188 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@188)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@188))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@188))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@189 T@Tid) ) (!  (=> (and (and (and (not (= td@@189 NIL)) (not (= td@@189 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@189)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@189)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@189)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((i@@65 Int) ) (!  (=> (and (and (>= i@@65 Civl_global_old_T@0) (not Civl_global_old_put_in_cs@0)) (not Civl_global_old_take_in_cs@0)) (and (= (select Civl_global_old_status@1 i@@65) NOT_IN_Q) (= (select Civl_global_old_items@0 i@@65) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (and (and (and (forall ((i@@66 Int) ) (!  (=> (and (<= H@3 i@@66) (<= i@@66 (- T@4 1))) (and (= (select status@5 i@@66) IN_Q) (not (= (select items@4 i@@66) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (forall ((i@@67 Int) ) (!  (=> (and (<= H@3 i@@67) (<= i@@67 (- T@4 1))) (and (= (select status@5 i@@67) IN_Q) (not (= (select items@4 i@@67) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@190 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@190 NIL)) (not (= td@@190 ptTid))) (select steal_in_cs@3 td@@190)) (= H@3 (select h_ss@3 td@@190))) (< H@3 (select t_ss@3 td@@190))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@191 T@Tid) ) (!  (=> (and (and (and (not (= td@@191 NIL)) (not (= td@@191 ptTid))) (select steal_in_cs@3 td@@191)) (not (= H@3 (select h_ss@3 td@@191)))) (> H@3 (select h_ss@3 td@@191)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@192 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@192 NIL)) (not (= td@@192 ptTid))) (select steal_in_cs@3 td@@192)) (= H@3 (select h_ss@3 td@@192))) (< H@3 (select t_ss@3 td@@192))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@193 T@Tid) ) (!  (=> (and (and (and (not (= td@@193 NIL)) (not (= td@@193 ptTid))) (select steal_in_cs@3 td@@193)) (not (= H@3 (select h_ss@3 td@@193)))) (> H@3 (select h_ss@3 td@@193)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 23) (- 0 22)) (forall ((i@@68 Int) ) (!  (=> (and (and (>= i@@68 T@4) (not put_in_cs@3)) (not take_in_cs@3)) (and (= (select status@5 i@@68) NOT_IN_Q) (= (select items@4 i@@68) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (forall ((i@@69 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@69) (<= i@@69 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@69) IN_Q) (not (= (select Civl_global_old_items@0 i@@69) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@194 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@194 NIL)) (not (= td@@194 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@194)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@194))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@194))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@195 T@Tid) ) (!  (=> (and (and (and (not (= td@@195 NIL)) (not (= td@@195 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@195)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@195)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@195)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((i@@70 Int) ) (!  (=> (and (and (>= i@@70 Civl_global_old_T@0) (not Civl_global_old_put_in_cs@0)) (not Civl_global_old_take_in_cs@0)) (and (= (select Civl_global_old_status@1 i@@70) NOT_IN_Q) (= (select Civl_global_old_items@0 i@@70) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (and (and (and (and (forall ((i@@71 Int) ) (!  (=> (and (<= H@3 i@@71) (<= i@@71 (- T@4 1))) (and (= (select status@5 i@@71) IN_Q) (not (= (select items@4 i@@71) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (and (forall ((i@@72 Int) ) (!  (=> (and (<= H@3 i@@72) (<= i@@72 (- T@4 1))) (and (= (select status@5 i@@72) IN_Q) (not (= (select items@4 i@@72) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@3)) (not put_in_cs@3)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@196 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@196 NIL)) (not (= td@@196 ptTid))) (select steal_in_cs@3 td@@196)) (= H@3 (select h_ss@3 td@@196))) (< H@3 (select t_ss@3 td@@196))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@197 T@Tid) ) (!  (=> (and (and (and (not (= td@@197 NIL)) (not (= td@@197 ptTid))) (select steal_in_cs@3 td@@197)) (not (= H@3 (select h_ss@3 td@@197)))) (> H@3 (select h_ss@3 td@@197)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@198 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@198 NIL)) (not (= td@@198 ptTid))) (select steal_in_cs@3 td@@198)) (= H@3 (select h_ss@3 td@@198))) (< H@3 (select t_ss@3 td@@198))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@199 T@Tid) ) (!  (=> (and (and (and (not (= td@@199 NIL)) (not (= td@@199 ptTid))) (select steal_in_cs@3 td@@199)) (not (= H@3 (select h_ss@3 td@@199)))) (> H@3 (select h_ss@3 td@@199)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 19) (- 0 18)) (forall ((i@@73 Int) ) (!  (=> (and (and (>= i@@73 T@4) (not put_in_cs@3)) (not take_in_cs@3)) (and (= (select status@5 i@@73) NOT_IN_Q) (= (select items@4 i@@73) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (and (forall ((i@@74 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@74) (<= i@@74 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@74) IN_Q) (not (= (select Civl_global_old_items@0 i@@74) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@200 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@200 NIL)) (not (= td@@200 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@200)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@200))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@200))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@201 T@Tid) ) (!  (=> (and (and (and (not (= td@@201 NIL)) (not (= td@@201 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@201)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@201)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@201)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (and (and (and (forall ((i@@75 Int) ) (!  (=> (and (<= H@3 i@@75) (<= i@@75 (- T@4 1))) (and (= (select status@5 i@@75) IN_Q) (not (= (select items@4 i@@75) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q)))) (=> (and (and (and (and (forall ((i@@76 Int) ) (!  (=> (and (<= H@3 i@@76) (<= i@@76 (- T@4 1))) (and (= (select status@5 i@@76) IN_Q) (not (= (select items@4 i@@76) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 16) (- 0 15)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@202 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@202 NIL)) (not (= td@@202 ptTid))) (select steal_in_cs@3 td@@202)) (= H@3 (select h_ss@3 td@@202))) (< H@3 (select t_ss@3 td@@202))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@203 T@Tid) ) (!  (=> (and (and (and (not (= td@@203 NIL)) (not (= td@@203 ptTid))) (select steal_in_cs@3 td@@203)) (not (= H@3 (select h_ss@3 td@@203)))) (> H@3 (select h_ss@3 td@@203)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (forall ((i@@77 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@77) (<= i@@77 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@77) IN_Q) (not (= (select Civl_global_old_items@0 i@@77) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@204 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@204 NIL)) (not (= td@@204 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@204)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@204))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@204))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@205 T@Tid) ) (!  (=> (and (and (and (not (= td@@205 NIL)) (not (= td@@205 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@205)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@205)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@205)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (and (and (and (forall ((i@@78 Int) ) (!  (=> (and (<= H@3 i@@78) (<= i@@78 (- T@4 1))) (and (= (select status@5 i@@78) IN_Q) (not (= (select items@4 i@@78) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (forall ((i@@79 Int) ) (!  (=> (and (<= H@3 i@@79) (<= i@@79 (- T@4 1))) (and (= (select status@5 i@@79) IN_Q) (not (= (select items@4 i@@79) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (= (ControlFlow 0 13) (- 0 12)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@206 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@206 NIL)) (not (= td@@206 ptTid))) (select steal_in_cs@3 td@@206)) (= H@3 (select h_ss@3 td@@206))) (< H@3 (select t_ss@3 td@@206))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@207 T@Tid) ) (!  (=> (and (and (and (not (= td@@207 NIL)) (not (= td@@207 ptTid))) (select steal_in_cs@3 td@@207)) (not (= H@3 (select h_ss@3 td@@207)))) (> H@3 (select h_ss@3 td@@207)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (forall ((i@@80 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@80) (<= i@@80 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@80) IN_Q) (not (= (select Civl_global_old_items@0 i@@80) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@208 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@208 NIL)) (not (= td@@208 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@208)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@208))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@208))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@209 T@Tid) ) (!  (=> (and (and (and (not (= td@@209 NIL)) (not (= td@@209 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@209)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@209)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@209)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (and (forall ((i@@81 Int) ) (!  (=> (and (<= H@3 i@@81) (<= i@@81 (- T@4 1))) (and (= (select status@5 i@@81) IN_Q) (not (= (select items@4 i@@81) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q)))) (=> (and (and (forall ((i@@82 Int) ) (!  (=> (and (<= H@3 i@@82) (<= i@@82 (- T@4 1))) (and (= (select status@5 i@@82) IN_Q) (not (= (select items@4 i@@82) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 9) (- 0 8)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@210 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@210 NIL)) (not (= td@@210 ptTid))) (select steal_in_cs@3 td@@210)) (= H@3 (select h_ss@3 td@@210))) (< H@3 (select t_ss@3 td@@210))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@211 T@Tid) ) (!  (=> (and (and (and (not (= td@@211 NIL)) (not (= td@@211 ptTid))) (select steal_in_cs@3 td@@211)) (not (= H@3 (select h_ss@3 td@@211)))) (> H@3 (select h_ss@3 td@@211)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (and (forall ((i@@83 Int) ) (!  (=> (and (<= Civl_global_old_H@0 i@@83) (<= i@@83 (- Civl_global_old_T@0 1))) (and (= (select Civl_global_old_status@1 i@@83) IN_Q) (not (= (select Civl_global_old_items@0 i@@83) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@0 ptTid) Civl_global_old_T@0) (<= Civl_global_old_H@0 Civl_global_old_T@0)) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))) (= (select Civl_global_old_status@1 Civl_global_old_T@0) IN_Q))) (=> Civl_global_old_put_in_cs@0 (not Civl_global_old_take_in_cs@0))) (=> Civl_global_old_take_in_cs@0 (not Civl_global_old_put_in_cs@0))) (=> (and Civl_global_old_take_in_cs@0 (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 ptTid)))) (forall ((td@@212 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@212 NIL)) (not (= td@@212 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@212)) (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@212))) (< Civl_global_old_H@0 (select Civl_global_old_t_ss@0 td@@212))) (and (not (= (select Civl_global_old_items@0 Civl_global_old_H@0) EMPTY)) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@213 T@Tid) ) (!  (=> (and (and (and (not (= td@@213 NIL)) (not (= td@@213 ptTid))) (select Civl_global_old_steal_in_cs@0 td@@213)) (not (= Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@213)))) (> Civl_global_old_H@0 (select Civl_global_old_h_ss@0 td@@213)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (and (forall ((i@@84 Int) ) (!  (=> (and (<= H@3 i@@84) (<= i@@84 (- T@4 1))) (and (= (select status@5 i@@84) IN_Q) (not (= (select items@4 i@@84) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)))) (=> (and (and (forall ((i@@85 Int) ) (!  (=> (and (<= H@3 i@@85) (<= i@@85 (- T@4 1))) (and (= (select status@5 i@@85) IN_Q) (not (= (select items@4 i@@85) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (= (ControlFlow 0 6) (- 0 5)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@4) (<= H@3 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@5 T@4) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@214 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@214 NIL)) (not (= td@@214 ptTid))) (select steal_in_cs@3 td@@214)) (= H@3 (select h_ss@3 td@@214))) (< H@3 (select t_ss@3 td@@214))) (and (not (= (select items@4 H@3) EMPTY)) (= (select status@5 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@215 T@Tid) ) (!  (=> (and (and (and (not (= td@@215 NIL)) (not (= td@@215 ptTid))) (select steal_in_cs@3 td@@215)) (not (= H@3 (select h_ss@3 td@@215)))) (> H@3 (select h_ss@3 td@@215)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((anon0_0$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@3 H@2) (=> (and (= T@4 T@3) (= items@4 items@3)) (=> (and (and (and (and (= status@5 status@3) (= take_in_cs@3 take_in_cs@2)) (and (= put_in_cs@3 false) (= steal_in_cs@3 steal_in_cs@2))) (and (and (= h_ss@3 h_ss@2) (= t_ss@3 t_ss@2)) (and (= Civl_global_old_H@0 H@2) (= Civl_global_old_T@0 T@2)))) (and (and (and (= Civl_global_old_items@0 items@3) (= Civl_global_old_status@1 status@3)) (and (= Civl_global_old_take_in_cs@0 take_in_cs@2) (= Civl_global_old_put_in_cs@0 put_in_cs@2))) (and (and (= Civl_global_old_steal_in_cs@0 steal_in_cs@2) (= Civl_global_old_h_ss@0 h_ss@2)) (and (= Civl_global_old_t_ss@0 t_ss@2) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 164) 6) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 164) 9) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 164) 13) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 16) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 19) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 23) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 27) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 32) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 49) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 57) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 65) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 68) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 74) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 80) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 100) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 164) 107) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 164) 115) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 136) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_writeT_put$0$anon0_correct  (=> (= T@3 (+ T@2 1)) (and (and (=> (= (ControlFlow 0 187) 161) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 187) 186) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 187) 164) anon0_0$2_@2_Civl_NoninterferenceChecker_correct)))))
(let ((inline$atomic_writeT_put$0$Entry_correct  (=> (and (= inline$atomic_writeT_put$0$val@0 (+ T@0 1)) (= (ControlFlow 0 188) 187)) inline$atomic_writeT_put$0$anon0_correct)))
(let ((anon0_0_correct  (=> (and (= Civl_pc@1  (=> (= status@2 status@1) Civl_pc@0)) (= Civl_ok@1  (or (exists ((|Civl_i#0@@2| Int) ) (!  (and (= (select status@1 |Civl_i#0@@2|) NOT_IN_Q) (= status@2 (store status@1 |Civl_i#0@@2| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)) Civl_ok@0))) (and (=> (= (ControlFlow 0 189) (- 0 211)) (or (and (and (and (and (forall ((i@@86 Int) ) (!  (=> (and (<= H@1 i@@86) (<= i@@86 T@1)) (and (= (select status@2 i@@86) IN_Q) (not (= (select items@2 i@@86) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (forall ((i@@87 Int) ) (!  (=> (and (<= H@1 i@@87) (<= i@@87 T@1)) (= (select status@2 i@@87) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |53|
)))) (and (=> (= (ControlFlow 0 189) (- 0 210)) (or (and (and (and (and (forall ((i@@88 Int) ) (!  (=> (and (<= H@1 i@@88) (<= i@@88 T@1)) (and (= (select status@2 i@@88) IN_Q) (not (= (select items@2 i@@88) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (forall ((i@@89 Int) ) (!  (=> (and (<= H@1 i@@89) (<= i@@89 T@1)) (not (= (select items@2 i@@89) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |54|
)))) (and (=> (= (ControlFlow 0 189) (- 0 209)) (or (and (and (and (and (forall ((i@@90 Int) ) (!  (=> (and (<= H@1 i@@90) (<= i@@90 T@1)) (and (= (select status@2 i@@90) IN_Q) (not (= (select items@2 i@@90) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (= T@0 T@1))) (and (=> (= (ControlFlow 0 189) (- 0 208)) (or (and (and (and (and (forall ((i@@91 Int) ) (!  (=> (and (<= H@1 i@@91) (<= i@@91 T@1)) (and (= (select status@2 i@@91) IN_Q) (not (= (select items@2 i@@91) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (= tid ptTid))) (and (=> (= (ControlFlow 0 189) (- 0 207)) (or (and (and (and (and (forall ((i@@92 Int) ) (!  (=> (and (<= H@1 i@@92) (<= i@@92 T@1)) (and (= (select status@2 i@@92) IN_Q) (not (= (select items@2 i@@92) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (not take_in_cs@1))) (and (=> (= (ControlFlow 0 189) (- 0 206)) (or (and (and (and (and (forall ((i@@93 Int) ) (!  (=> (and (<= H@1 i@@93) (<= i@@93 T@1)) (and (= (select status@2 i@@93) IN_Q) (not (= (select items@2 i@@93) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) put_in_cs@1)) (and (=> (= (ControlFlow 0 189) (- 0 205)) (and (and (and (and (forall ((i@@94 Int) ) (!  (=> (and (<= H@1 i@@94) (<= i@@94 T@1)) (and (= (select status@2 i@@94) IN_Q) (not (= (select items@2 i@@94) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1)) (=> (and (and (and (and (forall ((i@@95 Int) ) (!  (=> (and (<= H@1 i@@95) (<= i@@95 T@1)) (and (= (select status@2 i@@95) IN_Q) (not (= (select items@2 i@@95) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@1)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (and (=> (= (ControlFlow 0 189) (- 0 204)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@216 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@216 NIL)) (not (= td@@216 ptTid))) (select steal_in_cs@1 td@@216)) (= H@1 (select h_ss@1 td@@216))) (< H@1 (select t_ss@1 td@@216))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@217 T@Tid) ) (!  (=> (and (and (and (not (= td@@217 NIL)) (not (= td@@217 ptTid))) (select steal_in_cs@1 td@@217)) (not (= H@1 (select h_ss@1 td@@217)))) (> H@1 (select h_ss@1 td@@217)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (= (select t_ss@1 ptTid) T@1)))) (and (=> (= (ControlFlow 0 189) (- 0 203)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@218 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@218 NIL)) (not (= td@@218 ptTid))) (select steal_in_cs@1 td@@218)) (= H@1 (select h_ss@1 td@@218))) (< H@1 (select t_ss@1 td@@218))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@219 T@Tid) ) (!  (=> (and (and (and (not (= td@@219 NIL)) (not (= td@@219 ptTid))) (select steal_in_cs@1 td@@219)) (not (= H@1 (select h_ss@1 td@@219)))) (> H@1 (select h_ss@1 td@@219)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (<= H@1 T@1)))) (and (=> (= (ControlFlow 0 189) (- 0 202)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@220 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@220 NIL)) (not (= td@@220 ptTid))) (select steal_in_cs@1 td@@220)) (= H@1 (select h_ss@1 td@@220))) (< H@1 (select t_ss@1 td@@220))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@221 T@Tid) ) (!  (=> (and (and (and (not (= td@@221 NIL)) (not (= td@@221 ptTid))) (select steal_in_cs@1 td@@221)) (not (= H@1 (select h_ss@1 td@@221)))) (> H@1 (select h_ss@1 td@@221)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (not (= (select items@2 T@1) EMPTY))))) (and (=> (= (ControlFlow 0 189) (- 0 201)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@222 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@222 NIL)) (not (= td@@222 ptTid))) (select steal_in_cs@1 td@@222)) (= H@1 (select h_ss@1 td@@222))) (< H@1 (select t_ss@1 td@@222))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@223 T@Tid) ) (!  (=> (and (and (and (not (= td@@223 NIL)) (not (= td@@223 ptTid))) (select steal_in_cs@1 td@@223)) (not (= H@1 (select h_ss@1 td@@223)))) (> H@1 (select h_ss@1 td@@223)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (= (select status@2 T@1) IN_Q)))) (and (=> (= (ControlFlow 0 189) (- 0 200)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@224 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@224 NIL)) (not (= td@@224 ptTid))) (select steal_in_cs@1 td@@224)) (= H@1 (select h_ss@1 td@@224))) (< H@1 (select t_ss@1 td@@224))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@225 T@Tid) ) (!  (=> (and (and (and (not (= td@@225 NIL)) (not (= td@@225 ptTid))) (select steal_in_cs@1 td@@225)) (not (= H@1 (select h_ss@1 td@@225)))) (> H@1 (select h_ss@1 td@@225)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@1 (not take_in_cs@1)))) (and (=> (= (ControlFlow 0 189) (- 0 199)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@226 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@226 NIL)) (not (= td@@226 ptTid))) (select steal_in_cs@1 td@@226)) (= H@1 (select h_ss@1 td@@226))) (< H@1 (select t_ss@1 td@@226))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@227 T@Tid) ) (!  (=> (and (and (and (not (= td@@227 NIL)) (not (= td@@227 ptTid))) (select steal_in_cs@1 td@@227)) (not (= H@1 (select h_ss@1 td@@227)))) (> H@1 (select h_ss@1 td@@227)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@1 (not put_in_cs@1)))) (and (=> (= (ControlFlow 0 189) (- 0 198)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@228 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@228 NIL)) (not (= td@@228 ptTid))) (select steal_in_cs@1 td@@228)) (= H@1 (select h_ss@1 td@@228))) (< H@1 (select t_ss@1 td@@228))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@229 T@Tid) ) (!  (=> (and (and (and (not (= td@@229 NIL)) (not (= td@@229 ptTid))) (select steal_in_cs@1 td@@229)) (not (= H@1 (select h_ss@1 td@@229)))) (> H@1 (select h_ss@1 td@@229)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid))))) (and (=> (= (ControlFlow 0 189) (- 0 197)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@230 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@230 NIL)) (not (= td@@230 ptTid))) (select steal_in_cs@1 td@@230)) (= H@1 (select h_ss@1 td@@230))) (< H@1 (select t_ss@1 td@@230))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@231 T@Tid) ) (!  (=> (and (and (and (not (= td@@231 NIL)) (not (= td@@231 ptTid))) (select steal_in_cs@1 td@@231)) (not (= H@1 (select h_ss@1 td@@231)))) (> H@1 (select h_ss@1 td@@231)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@232 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@232 NIL)) (not (= td@@232 ptTid))) (select steal_in_cs@1 td@@232)) (= H@1 (select h_ss@1 td@@232))) (< H@1 (select t_ss@1 td@@232))) (not (= (select items@2 H@1) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |55|
)))) (and (=> (= (ControlFlow 0 189) (- 0 196)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@233 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@233 NIL)) (not (= td@@233 ptTid))) (select steal_in_cs@1 td@@233)) (= H@1 (select h_ss@1 td@@233))) (< H@1 (select t_ss@1 td@@233))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@234 T@Tid) ) (!  (=> (and (and (and (not (= td@@234 NIL)) (not (= td@@234 ptTid))) (select steal_in_cs@1 td@@234)) (not (= H@1 (select h_ss@1 td@@234)))) (> H@1 (select h_ss@1 td@@234)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@235 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@235 NIL)) (not (= td@@235 ptTid))) (select steal_in_cs@1 td@@235)) (= H@1 (select h_ss@1 td@@235))) (< H@1 (select t_ss@1 td@@235))) (= (select status@2 H@1) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |56|
)))) (and (=> (= (ControlFlow 0 189) (- 0 195)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@236 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@236 NIL)) (not (= td@@236 ptTid))) (select steal_in_cs@1 td@@236)) (= H@1 (select h_ss@1 td@@236))) (< H@1 (select t_ss@1 td@@236))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@237 T@Tid) ) (!  (=> (and (and (and (not (= td@@237 NIL)) (not (= td@@237 ptTid))) (select steal_in_cs@1 td@@237)) (not (= H@1 (select h_ss@1 td@@237)))) (> H@1 (select h_ss@1 td@@237)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@238 T@Tid) ) (!  (=> (and (and (and (not (= td@@238 NIL)) (not (= td@@238 ptTid))) (select steal_in_cs@1 td@@238)) (not (= H@1 (select h_ss@1 td@@238)))) (> H@1 (select h_ss@1 td@@238)))
 :qid |wsqbpl.44:14|
 :skolemid |57|
)))) (and (=> (= (ControlFlow 0 189) (- 0 194)) (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@239 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@239 NIL)) (not (= td@@239 ptTid))) (select steal_in_cs@1 td@@239)) (= H@1 (select h_ss@1 td@@239))) (< H@1 (select t_ss@1 td@@239))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@240 T@Tid) ) (!  (=> (and (and (and (not (= td@@240 NIL)) (not (= td@@240 ptTid))) (select steal_in_cs@1 td@@240)) (not (= H@1 (select h_ss@1 td@@240)))) (> H@1 (select h_ss@1 td@@240)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@2 T@1) EMPTY))) (= (select status@2 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@241 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@241 NIL)) (not (= td@@241 ptTid))) (select steal_in_cs@1 td@@241)) (= H@1 (select h_ss@1 td@@241))) (< H@1 (select t_ss@1 td@@241))) (and (not (= (select items@2 H@1) EMPTY)) (= (select status@2 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@242 T@Tid) ) (!  (=> (and (and (and (not (= td@@242 NIL)) (not (= td@@242 ptTid))) (select steal_in_cs@1 td@@242)) (not (= H@1 (select h_ss@1 td@@242)))) (> H@1 (select h_ss@1 td@@242)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 189) (- 0 193)) (= (select items@2 T@0) task)) (=> (= (select items@2 T@0) task) (and (=> (= (ControlFlow 0 189) (- 0 192)) (and (<= H@1 H@1) (= T@1 T@1))) (=> (and (<= H@1 H@1) (= T@1 T@1)) (and (=> (= (ControlFlow 0 189) (- 0 191)) (forall ((i@@96 Int) ) (!  (=> (> i@@96 T@1) (and (= (select status@2 i@@96) NOT_IN_Q) (= (select items@2 i@@96) EMPTY)))
 :qid |wsqbpl.114:29|
 :skolemid |7|
))) (=> (forall ((i@@97 Int) ) (!  (=> (> i@@97 T@1) (and (= (select status@2 i@@97) NOT_IN_Q) (= (select items@2 i@@97) EMPTY)))
 :qid |wsqbpl.114:29|
 :skolemid |7|
)) (=> (and (or Civl_pc@1 true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (forall ((i@@98 Int) ) (!  (=> (and (<= H@2 i@@98) (<= i@@98 T@2)) (and (= (select status@3 i@@98) IN_Q) (not (= (select items@3 i@@98) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= T@0 T@2)) (= tid ptTid)) (not take_in_cs@2)) put_in_cs@2) (=> (and (and (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@2 ptTid) (select t_ss@2 ptTid))) (and (and (and (= (select t_ss@2 ptTid) T@2) (<= H@2 T@2)) (not (= (select items@3 T@2) EMPTY))) (= (select status@3 T@2) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@2 ptTid)))) (> H@2 (select h_ss@2 ptTid)))) (forall ((td@@243 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@243 NIL)) (not (= td@@243 ptTid))) (select steal_in_cs@2 td@@243)) (= H@2 (select h_ss@2 td@@243))) (< H@2 (select t_ss@2 td@@243))) (and (not (= (select items@3 H@2) EMPTY)) (= (select status@3 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@244 T@Tid) ) (!  (=> (and (and (and (not (= td@@244 NIL)) (not (= td@@244 ptTid))) (select steal_in_cs@2 td@@244)) (not (= H@2 (select h_ss@2 td@@244)))) (> H@2 (select h_ss@2 td@@244)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= (select items@3 T@0) task)) (and (and (<= H@1 H@2) (= T@1 T@2)) (forall ((i@@99 Int) ) (!  (=> (> i@@99 T@2) (and (= (select status@3 i@@99) NOT_IN_Q) (= (select items@3 i@@99) EMPTY)))
 :qid |wsqbpl.114:29|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 189) (- 0 190)) (= tid ptTid)) (=> (= tid ptTid) (=> (= (ControlFlow 0 189) 188) inline$atomic_writeT_put$0$Entry_correct)))))))))))))))))))))))))))))))))))
(let ((anon0_1$3_@2_Civl_NoninterferenceChecker_correct  (=> (= H@3 H@1) (=> (and (= T@4 T@1) (= items@4 items@2)) (=> (and (and (and (and (= status@5 status@2) (= take_in_cs@3 take_in_cs@1)) (and (= put_in_cs@3 put_in_cs@1) (= steal_in_cs@3 steal_in_cs@1))) (and (and (= h_ss@3 h_ss@1) (= t_ss@3 t_ss@1)) (and (= Civl_global_old_H@0 H@1) (= Civl_global_old_T@0 T@1)))) (and (and (and (= Civl_global_old_items@0 items@1) (= Civl_global_old_status@1 status@1)) (and (= Civl_global_old_take_in_cs@0 take_in_cs@1) (= Civl_global_old_put_in_cs@0 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@0 steal_in_cs@1) (= Civl_global_old_h_ss@0 h_ss@1)) (and (= Civl_global_old_t_ss@0 t_ss@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@1))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 158) 6) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 158) 9) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 158) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 158) 13) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 158) 16) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 158) 19) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 158) 23) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 158) 27) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 158) 32) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 158) 49) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 158) 57) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 158) 65) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 158) 68) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 158) 74) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 158) 80) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 158) 100) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 158) 107) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 158) 115) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 158) 136) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon0$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@3 H@0) (=> (and (= T@4 T@0) (= items@4 items@0)) (=> (and (and (and (and (= status@5 status@0) (= take_in_cs@3 take_in_cs@0)) (and (= put_in_cs@3 true) (= steal_in_cs@3 steal_in_cs@0))) (and (and (= h_ss@3 h_ss@0) (= t_ss@3 t_ss@0)) (and (= Civl_global_old_H@0 H@0) (= Civl_global_old_T@0 T@0)))) (and (and (and (= Civl_global_old_items@0 items@0) (= Civl_global_old_status@1 status@0)) (and (= Civl_global_old_take_in_cs@0 take_in_cs@0) (= Civl_global_old_put_in_cs@0 put_in_cs@0))) (and (and (= Civl_global_old_steal_in_cs@0 steal_in_cs@0) (= Civl_global_old_h_ss@0 h_ss@0)) (and (= Civl_global_old_t_ss@0 t_ss@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 157) 6) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 157) 9) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 157) 13) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 16) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 19) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 23) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 27) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 32) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 49) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 157) 57) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 157) 65) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 68) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 74) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 157) 80) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 157) 100) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 157) 107) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 157) 115) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 136) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@2 (or (= status@4 Civl_global_old_status@0) (exists ((|Civl_i#0@@3| Int) ) (!  (and (= (select Civl_global_old_status@0 |Civl_i#0@@3|) NOT_IN_Q) (= status@4 (store Civl_global_old_status@0 |Civl_i#0@@3| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
))))) (=> (or Civl_pc@2 (or (= status@4 Civl_global_old_status@0) (exists ((|Civl_i#0@@4| Int) ) (!  (and (= (select Civl_global_old_status@0 |Civl_i#0@@4|) NOT_IN_Q) (= status@4 (store Civl_global_old_status@0 |Civl_i#0@@4| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@2 (= status@4 Civl_global_old_status@0)))))))
(let ((anon0_1$3_@2_Civl_RefinementChecker_correct  (=> (and (and (= status@4 status@2) (= Civl_global_old_status@0 status@1)) (and (= Civl_pc@2 Civl_pc@0) (= (ControlFlow 0 159) 2))) Civl_RefinementChecker_correct)))
(let ((inline$GhostReadStatus$0$anon0_correct  (=> (= inline$GhostReadStatus$0$oldStatus@1 (select status@2 T@1)) (and (and (=> (= (ControlFlow 0 212) 189) anon0_0_correct) (=> (= (ControlFlow 0 212) 158) anon0_1$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 212) 159) anon0_1$3_@2_Civl_RefinementChecker_correct)))))
(let ((inline$atomic_writeItems_put$0$anon0_correct  (=> (= items@2 (store items@1 T@0 task)) (=> (and (= status@2 (store status@1 T@0 IN_Q)) (= (ControlFlow 0 213) 212)) inline$GhostReadStatus$0$anon0_correct))))
(let ((anon0_1_correct  (=> (and (= Civl_pc@0  (=> (= status@0 status@0) false)) (= Civl_ok@0  (or (exists ((|Civl_i#0@@5| Int) ) (!  (and (= (select status@0 |Civl_i#0@@5|) NOT_IN_Q) (= status@0 (store status@0 |Civl_i#0@@5| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)) false))) (and (=> (= (ControlFlow 0 214) (- 0 236)) (or (and (and (and (forall ((i@@100 Int) ) (!  (=> (and (<= H@0 i@@100) (<= i@@100 (- T@0 1))) (and (= (select status@0 i@@100) IN_Q) (not (= (select items@0 i@@100) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true) (forall ((i@@101 Int) ) (!  (=> (and (<= H@0 i@@101) (<= i@@101 (- T@0 1))) (= (select status@0 i@@101) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |48|
)))) (and (=> (= (ControlFlow 0 214) (- 0 235)) (or (and (and (and (forall ((i@@102 Int) ) (!  (=> (and (<= H@0 i@@102) (<= i@@102 (- T@0 1))) (and (= (select status@0 i@@102) IN_Q) (not (= (select items@0 i@@102) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true) (forall ((i@@103 Int) ) (!  (=> (and (<= H@0 i@@103) (<= i@@103 (- T@0 1))) (not (= (select items@0 i@@103) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |49|
)))) (and (=> (= (ControlFlow 0 214) (- 0 234)) (or (and (and (and (forall ((i@@104 Int) ) (!  (=> (and (<= H@0 i@@104) (<= i@@104 (- T@0 1))) (and (= (select status@0 i@@104) IN_Q) (not (= (select items@0 i@@104) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true) (= tid ptTid))) (and (=> (= (ControlFlow 0 214) (- 0 233)) (or (and (and (and (forall ((i@@105 Int) ) (!  (=> (and (<= H@0 i@@105) (<= i@@105 (- T@0 1))) (and (= (select status@0 i@@105) IN_Q) (not (= (select items@0 i@@105) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true) (not take_in_cs@0))) (and (=> (= (ControlFlow 0 214) (- 0 232)) (or (and (and (and (forall ((i@@106 Int) ) (!  (=> (and (<= H@0 i@@106) (<= i@@106 (- T@0 1))) (and (= (select status@0 i@@106) IN_Q) (not (= (select items@0 i@@106) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true) true)) (and (=> (= (ControlFlow 0 214) (- 0 231)) (and (and (and (forall ((i@@107 Int) ) (!  (=> (and (<= H@0 i@@107) (<= i@@107 (- T@0 1))) (and (= (select status@0 i@@107) IN_Q) (not (= (select items@0 i@@107) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true)) (=> (and (and (and (forall ((i@@108 Int) ) (!  (=> (and (<= H@0 i@@108) (<= i@@108 (- T@0 1))) (and (= (select status@0 i@@108) IN_Q) (not (= (select items@0 i@@108) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) true) (and (=> (= (ControlFlow 0 214) (- 0 230)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@245 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@245 NIL)) (not (= td@@245 ptTid))) (select steal_in_cs@0 td@@245)) (= H@0 (select h_ss@0 td@@245))) (< H@0 (select t_ss@0 td@@245))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@246 T@Tid) ) (!  (=> (and (and (and (not (= td@@246 NIL)) (not (= td@@246 ptTid))) (select steal_in_cs@0 td@@246)) (not (= H@0 (select h_ss@0 td@@246)))) (> H@0 (select h_ss@0 td@@246)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (= (select t_ss@0 ptTid) T@0)))) (and (=> (= (ControlFlow 0 214) (- 0 229)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@247 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@247 NIL)) (not (= td@@247 ptTid))) (select steal_in_cs@0 td@@247)) (= H@0 (select h_ss@0 td@@247))) (< H@0 (select t_ss@0 td@@247))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@248 T@Tid) ) (!  (=> (and (and (and (not (= td@@248 NIL)) (not (= td@@248 ptTid))) (select steal_in_cs@0 td@@248)) (not (= H@0 (select h_ss@0 td@@248)))) (> H@0 (select h_ss@0 td@@248)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (<= H@0 T@0)))) (and (=> (= (ControlFlow 0 214) (- 0 228)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@249 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@249 NIL)) (not (= td@@249 ptTid))) (select steal_in_cs@0 td@@249)) (= H@0 (select h_ss@0 td@@249))) (< H@0 (select t_ss@0 td@@249))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@250 T@Tid) ) (!  (=> (and (and (and (not (= td@@250 NIL)) (not (= td@@250 ptTid))) (select steal_in_cs@0 td@@250)) (not (= H@0 (select h_ss@0 td@@250)))) (> H@0 (select h_ss@0 td@@250)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (not (= (select items@0 T@0) EMPTY))))) (and (=> (= (ControlFlow 0 214) (- 0 227)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@251 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@251 NIL)) (not (= td@@251 ptTid))) (select steal_in_cs@0 td@@251)) (= H@0 (select h_ss@0 td@@251))) (< H@0 (select t_ss@0 td@@251))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@252 T@Tid) ) (!  (=> (and (and (and (not (= td@@252 NIL)) (not (= td@@252 ptTid))) (select steal_in_cs@0 td@@252)) (not (= H@0 (select h_ss@0 td@@252)))) (> H@0 (select h_ss@0 td@@252)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (= (select status@0 T@0) IN_Q)))) (and (=> (= (ControlFlow 0 214) (- 0 226)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@253 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@253 NIL)) (not (= td@@253 ptTid))) (select steal_in_cs@0 td@@253)) (= H@0 (select h_ss@0 td@@253))) (< H@0 (select t_ss@0 td@@253))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@254 T@Tid) ) (!  (=> (and (and (and (not (= td@@254 NIL)) (not (= td@@254 ptTid))) (select steal_in_cs@0 td@@254)) (not (= H@0 (select h_ss@0 td@@254)))) (> H@0 (select h_ss@0 td@@254)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> true (not take_in_cs@0)))) (and (=> (= (ControlFlow 0 214) (- 0 225)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@255 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@255 NIL)) (not (= td@@255 ptTid))) (select steal_in_cs@0 td@@255)) (= H@0 (select h_ss@0 td@@255))) (< H@0 (select t_ss@0 td@@255))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@256 T@Tid) ) (!  (=> (and (and (and (not (= td@@256 NIL)) (not (= td@@256 ptTid))) (select steal_in_cs@0 td@@256)) (not (= H@0 (select h_ss@0 td@@256)))) (> H@0 (select h_ss@0 td@@256)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@0 (not true)))) (and (=> (= (ControlFlow 0 214) (- 0 224)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@257 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@257 NIL)) (not (= td@@257 ptTid))) (select steal_in_cs@0 td@@257)) (= H@0 (select h_ss@0 td@@257))) (< H@0 (select t_ss@0 td@@257))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@258 T@Tid) ) (!  (=> (and (and (and (not (= td@@258 NIL)) (not (= td@@258 ptTid))) (select steal_in_cs@0 td@@258)) (not (= H@0 (select h_ss@0 td@@258)))) (> H@0 (select h_ss@0 td@@258)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid))))) (and (=> (= (ControlFlow 0 214) (- 0 223)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@259 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@259 NIL)) (not (= td@@259 ptTid))) (select steal_in_cs@0 td@@259)) (= H@0 (select h_ss@0 td@@259))) (< H@0 (select t_ss@0 td@@259))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@260 T@Tid) ) (!  (=> (and (and (and (not (= td@@260 NIL)) (not (= td@@260 ptTid))) (select steal_in_cs@0 td@@260)) (not (= H@0 (select h_ss@0 td@@260)))) (> H@0 (select h_ss@0 td@@260)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@261 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@261 NIL)) (not (= td@@261 ptTid))) (select steal_in_cs@0 td@@261)) (= H@0 (select h_ss@0 td@@261))) (< H@0 (select t_ss@0 td@@261))) (not (= (select items@0 H@0) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |50|
)))) (and (=> (= (ControlFlow 0 214) (- 0 222)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@262 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@262 NIL)) (not (= td@@262 ptTid))) (select steal_in_cs@0 td@@262)) (= H@0 (select h_ss@0 td@@262))) (< H@0 (select t_ss@0 td@@262))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@263 T@Tid) ) (!  (=> (and (and (and (not (= td@@263 NIL)) (not (= td@@263 ptTid))) (select steal_in_cs@0 td@@263)) (not (= H@0 (select h_ss@0 td@@263)))) (> H@0 (select h_ss@0 td@@263)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@264 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@264 NIL)) (not (= td@@264 ptTid))) (select steal_in_cs@0 td@@264)) (= H@0 (select h_ss@0 td@@264))) (< H@0 (select t_ss@0 td@@264))) (= (select status@0 H@0) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |51|
)))) (and (=> (= (ControlFlow 0 214) (- 0 221)) (or (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@265 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@265 NIL)) (not (= td@@265 ptTid))) (select steal_in_cs@0 td@@265)) (= H@0 (select h_ss@0 td@@265))) (< H@0 (select t_ss@0 td@@265))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@266 T@Tid) ) (!  (=> (and (and (and (not (= td@@266 NIL)) (not (= td@@266 ptTid))) (select steal_in_cs@0 td@@266)) (not (= H@0 (select h_ss@0 td@@266)))) (> H@0 (select h_ss@0 td@@266)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@267 T@Tid) ) (!  (=> (and (and (and (not (= td@@267 NIL)) (not (= td@@267 ptTid))) (select steal_in_cs@0 td@@267)) (not (= H@0 (select h_ss@0 td@@267)))) (> H@0 (select h_ss@0 td@@267)))
 :qid |wsqbpl.44:14|
 :skolemid |52|
)))) (and (=> (= (ControlFlow 0 214) (- 0 220)) (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@268 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@268 NIL)) (not (= td@@268 ptTid))) (select steal_in_cs@0 td@@268)) (= H@0 (select h_ss@0 td@@268))) (< H@0 (select t_ss@0 td@@268))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@269 T@Tid) ) (!  (=> (and (and (and (not (= td@@269 NIL)) (not (= td@@269 ptTid))) (select steal_in_cs@0 td@@269)) (not (= H@0 (select h_ss@0 td@@269)))) (> H@0 (select h_ss@0 td@@269)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> true (not take_in_cs@0))) (=> take_in_cs@0 (not true))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@270 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@270 NIL)) (not (= td@@270 ptTid))) (select steal_in_cs@0 td@@270)) (= H@0 (select h_ss@0 td@@270))) (< H@0 (select t_ss@0 td@@270))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@271 T@Tid) ) (!  (=> (and (and (and (not (= td@@271 NIL)) (not (= td@@271 ptTid))) (select steal_in_cs@0 td@@271)) (not (= H@0 (select h_ss@0 td@@271)))) (> H@0 (select h_ss@0 td@@271)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 214) (- 0 219)) (and (= tid ptTid) (= T@0 T@0))) (=> (and (= tid ptTid) (= T@0 T@0)) (and (=> (= (ControlFlow 0 214) (- 0 218)) (and (<= H@0 H@0) (= T@0 T@0))) (=> (and (<= H@0 H@0) (= T@0 T@0)) (and (=> (= (ControlFlow 0 214) (- 0 217)) (forall ((i@@109 Int) ) (!  (=> (>= i@@109 T@0) (and (= (select status@0 i@@109) NOT_IN_Q) (= (select items@0 i@@109) EMPTY)))
 :qid |wsqbpl.103:29|
 :skolemid |6|
))) (=> (forall ((i@@110 Int) ) (!  (=> (>= i@@110 T@0) (and (= (select status@0 i@@110) NOT_IN_Q) (= (select items@0 i@@110) EMPTY)))
 :qid |wsqbpl.103:29|
 :skolemid |6|
)) (=> (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (forall ((i@@111 Int) ) (!  (=> (and (<= H@1 i@@111) (<= i@@111 (- T@1 1))) (and (= (select status@1 i@@111) IN_Q) (not (= (select items@1 i@@111) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@1)) put_in_cs@1) (=> (and (and (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@272 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@272 NIL)) (not (= td@@272 ptTid))) (select steal_in_cs@1 td@@272)) (= H@1 (select h_ss@1 td@@272))) (< H@1 (select t_ss@1 td@@272))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@273 T@Tid) ) (!  (=> (and (and (and (not (= td@@273 NIL)) (not (= td@@273 ptTid))) (select steal_in_cs@1 td@@273)) (not (= H@1 (select h_ss@1 td@@273)))) (> H@1 (select h_ss@1 td@@273)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (= tid ptTid) (= T@0 T@1))) (and (and (<= H@0 H@1) (= T@0 T@1)) (forall ((i@@112 Int) ) (!  (=> (>= i@@112 T@1) (and (= (select status@1 i@@112) NOT_IN_Q) (= (select items@1 i@@112) EMPTY)))
 :qid |wsqbpl.103:29|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 214) (- 0 216)) (not (= task EMPTY))) (=> (not (= task EMPTY)) (and (=> (= (ControlFlow 0 214) (- 0 215)) (= tid ptTid)) (=> (= tid ptTid) (=> (= (ControlFlow 0 214) 213) inline$atomic_writeItems_put$0$anon0_correct))))))))))))))))))))))))))))))))))))
(let ((anon0$2_@2_Civl_RefinementChecker_correct  (=> (and (and (= status@4 status@0) (= Civl_global_old_status@0 status@0)) (and (= Civl_pc@2 false) (= (ControlFlow 0 4) 2))) Civl_RefinementChecker_correct)))
(let ((anon0_correct  (=> (and (and (and (and (forall ((i@@113 Int) ) (!  (=> (and (<= H@0 i@@113) (<= i@@113 (- T@0 1))) (and (= (select status@0 i@@113) IN_Q) (not (= (select items@0 i@@113) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not (= task EMPTY))) (not take_in_cs@0)) (not put_in_cs@0)) (=> (and (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@274 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@274 NIL)) (not (= td@@274 ptTid))) (select steal_in_cs@0 td@@274)) (= H@0 (select h_ss@0 td@@274))) (< H@0 (select t_ss@0 td@@274))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@275 T@Tid) ) (!  (=> (and (and (and (not (= td@@275 NIL)) (not (= td@@275 ptTid))) (select steal_in_cs@0 td@@275)) (not (= H@0 (select h_ss@0 td@@275)))) (> H@0 (select h_ss@0 td@@275)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (forall ((i@@114 Int) ) (!  (=> (and (and (>= i@@114 T@0) (not put_in_cs@0)) (not take_in_cs@0)) (and (= (select status@0 i@@114) NOT_IN_Q) (= (select items@0 i@@114) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
)) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 237) (- 0 239)) (= tid ptTid)) (=> (= tid ptTid) (and (=> (= (ControlFlow 0 237) (- 0 238)) (not (= tid NIL))) (=> (not (= tid NIL)) (and (and (=> (= (ControlFlow 0 237) 214) anon0_1_correct) (=> (= (ControlFlow 0 237) 157) anon0$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 237) 4) anon0$2_@2_Civl_RefinementChecker_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (forall ((i@@115 Int) ) (!  (=> (and (<= H i@@115) (<= i@@115 (- T 1))) (and (= (select status i@@115) IN_Q) (not (= (select items i@@115) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not (= task EMPTY))) (not take_in_cs)) (not put_in_cs)) (=> (and (and (and (and (and (and (=> (and take_in_cs (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T) (<= H T)) (not (= (select items T) EMPTY))) (= (select status T) IN_Q))) (=> put_in_cs (not take_in_cs))) (=> take_in_cs (not put_in_cs))) (=> (and take_in_cs (not (= H (select h_ss ptTid)))) (> H (select h_ss ptTid)))) (forall ((td@@276 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@276 NIL)) (not (= td@@276 ptTid))) (select steal_in_cs td@@276)) (= H (select h_ss td@@276))) (< H (select t_ss td@@276))) (and (not (= (select items H) EMPTY)) (= (select status H) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@277 T@Tid) ) (!  (=> (and (and (and (not (= td@@277 NIL)) (not (= td@@277 ptTid))) (select steal_in_cs td@@277)) (not (= H (select h_ss td@@277)))) (> H (select h_ss td@@277)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (forall ((i@@116 Int) ) (!  (=> (and (and (>= i@@116 T) (not put_in_cs)) (not take_in_cs)) (and (= (select status i@@116) NOT_IN_Q) (= (select items i@@116) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
)) (= (ControlFlow 0 240) 237))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun status@10 () (Array Int Bool))
(declare-fun Civl_global_old_status@2 () (Array Int Bool))
(declare-fun task@2 () Int)
(declare-fun Civl_old_task@2 () Int)
(declare-fun taskstatus@2 () Bool)
(declare-fun Civl_old_taskstatus@2 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun status@1 () (Array Int Bool))
(declare-fun task@0 () Int)
(declare-fun taskstatus@0 () Bool)
(declare-fun status@4 () (Array Int Bool))
(declare-fun status@5 () (Array Int Bool))
(declare-fun inline$atomic_readItems$0$y@2 () Int)
(declare-fun inline$atomic_readItems$0$b@2 () Bool)
(declare-fun status@8 () (Array Int Bool))
(declare-fun status@6 () (Array Int Bool))
(declare-fun H@11 () Int)
(declare-fun T@9 () Int)
(declare-fun status@13 () (Array Int Bool))
(declare-fun items@9 () (Array Int Int))
(declare-fun tid () T@Tid)
(declare-fun take_in_cs@10 () Bool)
(declare-fun put_in_cs@9 () Bool)
(declare-fun task@4 () Int)
(declare-fun taskstatus@4 () Bool)
(declare-fun h_ss@10 () (Array T@Tid Int))
(declare-fun t_ss@10 () (Array T@Tid Int))
(declare-fun steal_in_cs@9 () (Array T@Tid Bool))
(declare-fun t_ss@8 () (Array T@Tid Int))
(declare-fun h_ss@8 () (Array T@Tid Int))
(declare-fun steal_in_cs@7 () (Array T@Tid Bool))
(declare-fun put_in_cs@7 () Bool)
(declare-fun take_in_cs@8 () Bool)
(declare-fun status@11 () (Array Int Bool))
(declare-fun items@7 () (Array Int Int))
(declare-fun T@7 () Int)
(declare-fun H@9 () Int)
(declare-fun taskstatus@3 () Bool)
(declare-fun task@3 () Int)
(declare-fun H@1 () Int)
(declare-fun T@1 () Int)
(declare-fun items@1 () (Array Int Int))
(declare-fun take_in_cs@1 () Bool)
(declare-fun put_in_cs@1 () Bool)
(declare-fun steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun h_ss@1 () (Array T@Tid Int))
(declare-fun t_ss@1 () (Array T@Tid Int))
(declare-fun H@4 () Int)
(declare-fun H@3 () Int)
(declare-fun items@4 () (Array Int Int))
(declare-fun put_in_cs@4 () Bool)
(declare-fun steal_in_cs@4 () (Array T@Tid Bool))
(declare-fun h_ss@5 () (Array T@Tid Int))
(declare-fun t_ss@5 () (Array T@Tid Int))
(declare-fun H@5 () Int)
(declare-fun T@5 () Int)
(declare-fun items@5 () (Array Int Int))
(declare-fun put_in_cs@5 () Bool)
(declare-fun steal_in_cs@5 () (Array T@Tid Bool))
(declare-fun h_ss@6 () (Array T@Tid Int))
(declare-fun t_ss@6 () (Array T@Tid Int))
(declare-fun H@8 () Int)
(declare-fun T@6 () Int)
(declare-fun items@6 () (Array Int Int))
(declare-fun take_in_cs@7 () Bool)
(declare-fun put_in_cs@6 () Bool)
(declare-fun steal_in_cs@6 () (Array T@Tid Bool))
(declare-fun h_ss@7 () (Array T@Tid Int))
(declare-fun t_ss@7 () (Array T@Tid Int))
(declare-fun status@9 () (Array Int Bool))
(declare-fun Civl_global_old_status@1 () (Array Int Bool))
(declare-fun task@1 () Int)
(declare-fun Civl_old_task@1 () Int)
(declare-fun taskstatus@1 () Bool)
(declare-fun Civl_old_taskstatus@1 () Bool)
(declare-fun status@3 () (Array Int Bool))
(declare-fun status@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 () T@Tid)
(declare-fun Civl_linear_tid_available@8 () (Array T@Tid Bool))
(declare-fun Civl_global_old_H@1 () Int)
(declare-fun Civl_global_old_T@1 () Int)
(declare-fun Civl_global_old_status@3 () (Array Int Bool))
(declare-fun Civl_global_old_items@1 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 () Int)
(declare-fun Civl_global_old_take_in_cs@1 () Bool)
(declare-fun Civl_global_old_put_in_cs@1 () Bool)
(declare-fun Civl_global_old_h_ss@1 () (Array T@Tid Int))
(declare-fun Civl_global_old_t_ss@1 () (Array T@Tid Int))
(declare-fun Civl_global_old_steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 () Int)
(declare-fun H@10 () Int)
(declare-fun T@8 () Int)
(declare-fun status@12 () (Array Int Bool))
(declare-fun items@8 () (Array Int Int))
(declare-fun take_in_cs@9 () Bool)
(declare-fun put_in_cs@8 () Bool)
(declare-fun h_ss@9 () (Array T@Tid Int))
(declare-fun t_ss@9 () (Array T@Tid Int))
(declare-fun steal_in_cs@8 () (Array T@Tid Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 () Bool)
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun T@4 () Int)
(declare-fun take_in_cs@4 () Bool)
(declare-fun Civl_linear_tid_available@5 () (Array T@Tid Bool))
(declare-fun t@1 () Int)
(declare-fun take_in_cs@5 () Bool)
(declare-fun Civl_linear_tid_available@6 () (Array T@Tid Bool))
(declare-fun H@6 () Int)
(declare-fun take_in_cs@6 () Bool)
(declare-fun Civl_linear_tid_available@7 () (Array T@Tid Bool))
(declare-fun inline$atomic_CAS_H_take$0$result@2 () Bool)
(declare-fun status@7 () (Array Int Bool))
(declare-fun H@7 () Int)
(declare-fun inline$atomic_CAS_H_take$0$val@1 () Int)
(declare-fun inline$atomic_writeT_take_eq$0$val@1 () Int)
(declare-fun T@3 () Int)
(declare-fun items@3 () (Array Int Int))
(declare-fun put_in_cs@3 () Bool)
(declare-fun h_ss@4 () (Array T@Tid Int))
(declare-fun t_ss@4 () (Array T@Tid Int))
(declare-fun steal_in_cs@3 () (Array T@Tid Bool))
(declare-fun take_in_cs@3 () Bool)
(declare-fun h_ss@3 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@4 () (Array T@Tid Bool))
(declare-fun H@2 () Int)
(declare-fun items@2 () (Array Int Int))
(declare-fun take_in_cs@2 () Bool)
(declare-fun put_in_cs@2 () Bool)
(declare-fun t_ss@3 () (Array T@Tid Int))
(declare-fun h_ss@2 () (Array T@Tid Int))
(declare-fun steal_in_cs@2 () (Array T@Tid Bool))
(declare-fun T@2 () Int)
(declare-fun t_ss@2 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun H@0 () Int)
(declare-fun T@0 () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun items@0 () (Array Int Int))
(declare-fun take_in_cs@0 () Bool)
(declare-fun put_in_cs@0 () Bool)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun task () Int)
(declare-fun taskstatus () Bool)
(declare-fun H () Int)
(declare-fun T () Int)
(declare-fun status () (Array Int Bool))
(declare-fun items () (Array Int Int))
(declare-fun take_in_cs () Bool)
(declare-fun put_in_cs () Bool)
(declare-fun h_ss () (Array T@Tid Int))
(declare-fun t_ss () (Array T@Tid Int))
(declare-fun steal_in_cs () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_take_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 271) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 183) (- 0 185)) (or false (or (= status@10 Civl_global_old_status@2) (or (exists ((|Civl_i#0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0|) IN_Q) (= status@10 (store Civl_global_old_status@2 |Civl_i#0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@10 Civl_global_old_status@2))))) (=> (or false (or (= status@10 Civl_global_old_status@2) (or (exists ((|Civl_i#0@@0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@0|) IN_Q) (= status@10 (store Civl_global_old_status@2 |Civl_i#0@@0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@10 Civl_global_old_status@2)))) (and (=> (= (ControlFlow 0 183) (- 0 184)) (=> false (and (= status@10 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2))))) (=> (=> false (and (= status@10 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)))) (=> (and (and (= Civl_pc@0  (=> (= status@10 Civl_global_old_status@2) false)) (= Civl_ok@0  (or (or (exists ((|Civl_i#0@@1| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@1|) IN_Q) (= status@10 (store Civl_global_old_status@2 |Civl_i#0@@1| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@10 Civl_global_old_status@2)) (and (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)) false)))) (= (ControlFlow 0 183) (- 0 182))) Civl_ok@0)))))))
(let ((anon7_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@1) (=> (and (= Civl_global_old_status@2 status@1) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 task@0)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 262) 183))) Civl_ReturnChecker_correct)))))
(let ((anon8_Then$1_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@4) (=> (and (= Civl_global_old_status@2 status@4) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 EMPTY)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 217) 183))) Civl_ReturnChecker_correct)))))
(let ((anon9_Then$1_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@5) (=> (and (= Civl_global_old_status@2 status@5) (= Civl_old_task@2 inline$atomic_readItems$0$y@2)) (=> (and (and (= Civl_old_taskstatus@2 inline$atomic_readItems$0$b@2) (= task@2 inline$atomic_readItems$0$y@2)) (and (= taskstatus@2 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 203) 183))) Civl_ReturnChecker_correct)))))
(let ((anon10_Then_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@8) (=> (and (= Civl_global_old_status@2 status@6) (= Civl_old_task@2 inline$atomic_readItems$0$y@2)) (=> (and (and (= Civl_old_taskstatus@2 inline$atomic_readItems$0$b@2) (= task@2 inline$atomic_readItems$0$y@2)) (and (= taskstatus@2 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 186) 183))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 178) (- 0 179)) (and (and (and (and (forall ((i Int) ) (!  (=> (and (<= H@11 i) (<= i (- T@9 1))) (and (= (select status@13 i) IN_Q) (not (= (select items@9 i) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@10)) (not put_in_cs@9)) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q)))) (=> (and (and (and (and (forall ((i@@0 Int) ) (!  (=> (and (<= H@11 i@@0) (<= i@@0 (- T@9 1))) (and (= (select status@13 i@@0) IN_Q) (not (= (select items@9 i@@0) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@10)) (not put_in_cs@9)) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q))) (=> (= (ControlFlow 0 178) (- 0 177)) (and (and (and (and (and (=> (and take_in_cs@10 (< (select h_ss@10 ptTid) (select t_ss@10 ptTid))) (and (and (and (= (select t_ss@10 ptTid) T@9) (<= H@11 T@9)) (not (= (select items@9 T@9) EMPTY))) (= (select status@13 T@9) IN_Q))) (=> put_in_cs@9 (not take_in_cs@10))) (=> take_in_cs@10 (not put_in_cs@9))) (=> (and take_in_cs@10 (not (= H@11 (select h_ss@10 ptTid)))) (> H@11 (select h_ss@10 ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (and (not (= td NIL)) (not (= td ptTid))) (select steal_in_cs@9 td)) (= H@11 (select h_ss@10 td))) (< H@11 (select t_ss@10 td))) (and (not (= (select items@9 H@11) EMPTY)) (= (select status@13 H@11) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (and (not (= td@@0 NIL)) (not (= td@@0 ptTid))) (select steal_in_cs@9 td@@0)) (not (= H@11 (select h_ss@10 td@@0)))) (> H@11 (select h_ss@10 td@@0)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= t_ss@10 t_ss@8) (= h_ss@10 h_ss@8)) (and (= steal_in_cs@9 steal_in_cs@7) (= put_in_cs@9 put_in_cs@7))) (=> (and (and (and (= take_in_cs@10 take_in_cs@8) (= status@13 status@11)) (and (= items@9 items@7) (= T@9 T@7))) (and (and (= H@11 H@9) (= taskstatus@4 taskstatus@3)) (and (= task@4 task@3) (= (ControlFlow 0 180) 178)))) GeneratedUnifiedExit_correct))))
(let ((anon7_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@1) (= T@7 T@1)) (and (= items@7 items@1) (= status@11 status@1))) (=> (and (and (and (= take_in_cs@8 take_in_cs@1) (= put_in_cs@7 put_in_cs@1)) (and (= steal_in_cs@7 steal_in_cs@1) (= h_ss@8 h_ss@1))) (and (and (= t_ss@8 t_ss@1) (= task@3 task@0)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 263) 180)))) Civl_UnifiedReturn_correct))))
(let ((anon8_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@4) (= T@7 H@3)) (and (= items@7 items@4) (= status@11 status@4))) (=> (and (and (and (= take_in_cs@8 false) (= put_in_cs@7 put_in_cs@4)) (and (= steal_in_cs@7 steal_in_cs@4) (= h_ss@8 h_ss@5))) (and (and (= t_ss@8 t_ss@5) (= task@3 EMPTY)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 218) 180)))) Civl_UnifiedReturn_correct))))
(let ((anon9_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@5) (= T@7 T@5)) (and (= items@7 items@5) (= status@11 status@5))) (=> (and (and (and (= take_in_cs@8 false) (= put_in_cs@7 put_in_cs@5)) (and (= steal_in_cs@7 steal_in_cs@5) (= h_ss@8 h_ss@6))) (and (and (= t_ss@8 t_ss@6) (= task@3 inline$atomic_readItems$0$y@2)) (and (= taskstatus@3 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 204) 180)))) Civl_UnifiedReturn_correct))))
(let ((anon10_Then_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@8) (= T@7 T@6)) (and (= items@7 items@6) (= status@11 status@8))) (=> (and (and (and (= take_in_cs@8 take_in_cs@7) (= put_in_cs@7 put_in_cs@6)) (and (= steal_in_cs@7 steal_in_cs@6) (= h_ss@8 h_ss@7))) (and (and (= t_ss@8 t_ss@7) (= task@3 inline$atomic_readItems$0$y@2)) (and (= taskstatus@3 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 181) 180)))) Civl_UnifiedReturn_correct))))
(let ((anon10_Else_@2_anon7_LoopHead_correct  (and (=> (= (ControlFlow 0 171) (- 0 172)) (and (and (and (forall ((i@@1 Int) ) (!  (=> (and (<= H@8 i@@1) (<= i@@1 (- T@6 1))) (and (= (select status@8 i@@1) IN_Q) (not (= (select items@6 i@@1) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@7)) (not put_in_cs@6))) (=> (and (and (and (forall ((i@@2 Int) ) (!  (=> (and (<= H@8 i@@2) (<= i@@2 (- T@6 1))) (and (= (select status@8 i@@2) IN_Q) (not (= (select items@6 i@@2) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@7)) (not put_in_cs@6)) (=> (= (ControlFlow 0 171) (- 0 170)) (and (and (and (and (and (=> (and take_in_cs@7 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@8 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@7))) (=> take_in_cs@7 (not put_in_cs@6))) (=> (and take_in_cs@7 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@1 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@1 NIL)) (not (= td@@1 ptTid))) (select steal_in_cs@6 td@@1)) (= H@8 (select h_ss@7 td@@1))) (< H@8 (select t_ss@7 td@@1))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@8 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@2 T@Tid) ) (!  (=> (and (and (and (not (= td@@2 NIL)) (not (= td@@2 ptTid))) (select steal_in_cs@6 td@@2)) (not (= H@8 (select h_ss@7 td@@2)))) (> H@8 (select h_ss@7 td@@2)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 159) (- 0 160)) (= status@9 Civl_global_old_status@1)) (=> (= status@9 Civl_global_old_status@1) (=> (= (ControlFlow 0 159) (- 0 158)) (=> false (and (= task@1 Civl_old_task@1) (= taskstatus@1 Civl_old_taskstatus@1))))))))
(let ((anon10_Else_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@8) (=> (and (= Civl_global_old_status@1 status@6) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 inline$atomic_readItems$0$y@2)) (and (= Civl_old_taskstatus@1 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 174) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon9_Else$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@5) (=> (and (= Civl_global_old_status@1 status@5) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 inline$atomic_readItems$0$y@2)) (and (= Civl_old_taskstatus@1 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 169) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon8_Else$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@4) (=> (and (= Civl_global_old_status@1 status@4) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 167) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_1$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@3) (=> (and (= Civl_global_old_status@1 status@3) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 165) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_2$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@2) (=> (and (= Civl_global_old_status@1 status@2) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 163) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@1) (=> (and (= Civl_global_old_status@1 status@1) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 161) 159))) Civl_UnchangedChecker_correct)))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (and (and (forall ((i@@3 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@3) (<= i@@3 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@3) IN_Q) (not (= (select Civl_global_old_items@1 i@@3) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@3 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@3 NIL)) (not (= td@@3 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@3)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@3))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@3))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@4 T@Tid) ) (!  (=> (and (and (and (not (= td@@4 NIL)) (not (= td@@4 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@4)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@4)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@4)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 135) (- 0 155)) (or (and (and (and (and (forall ((i@@4 Int) ) (!  (=> (and (<= H@10 i@@4) (<= i@@4 T@8)) (and (= (select status@12 i@@4) IN_Q) (not (= (select items@8 i@@4) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (forall ((i@@5 Int) ) (!  (=> (and (<= H@10 i@@5) (<= i@@5 T@8)) (= (select status@12 i@@5) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |65|
)))) (and (=> (= (ControlFlow 0 135) (- 0 154)) (or (and (and (and (and (forall ((i@@6 Int) ) (!  (=> (and (<= H@10 i@@6) (<= i@@6 T@8)) (and (= (select status@12 i@@6) IN_Q) (not (= (select items@8 i@@6) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (forall ((i@@7 Int) ) (!  (=> (and (<= H@10 i@@7) (<= i@@7 T@8)) (not (= (select items@8 i@@7) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |66|
)))) (and (=> (= (ControlFlow 0 135) (- 0 153)) (or (and (and (and (and (forall ((i@@8 Int) ) (!  (=> (and (<= H@10 i@@8) (<= i@@8 T@8)) (and (= (select status@12 i@@8) IN_Q) (not (= (select items@8 i@@8) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8))) (and (=> (= (ControlFlow 0 135) (- 0 152)) (or (and (and (and (and (forall ((i@@9 Int) ) (!  (=> (and (<= H@10 i@@9) (<= i@@9 T@8)) (and (= (select status@12 i@@9) IN_Q) (not (= (select items@8 i@@9) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 135) (- 0 151)) (or (and (and (and (and (forall ((i@@10 Int) ) (!  (=> (and (<= H@10 i@@10) (<= i@@10 T@8)) (and (= (select status@12 i@@10) IN_Q) (not (= (select items@8 i@@10) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (not take_in_cs@9))) (and (=> (= (ControlFlow 0 135) (- 0 150)) (or (and (and (and (and (forall ((i@@11 Int) ) (!  (=> (and (<= H@10 i@@11) (<= i@@11 T@8)) (and (= (select status@12 i@@11) IN_Q) (not (= (select items@8 i@@11) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) put_in_cs@8)) (and (=> (= (ControlFlow 0 135) (- 0 149)) (and (and (and (and (forall ((i@@12 Int) ) (!  (=> (and (<= H@10 i@@12) (<= i@@12 T@8)) (and (= (select status@12 i@@12) IN_Q) (not (= (select items@8 i@@12) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8)) (=> (and (and (and (and (forall ((i@@13 Int) ) (!  (=> (and (<= H@10 i@@13) (<= i@@13 T@8)) (and (= (select status@12 i@@13) IN_Q) (not (= (select items@8 i@@13) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (and (=> (= (ControlFlow 0 135) (- 0 148)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@5 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@5 NIL)) (not (= td@@5 ptTid))) (select steal_in_cs@8 td@@5)) (= H@10 (select h_ss@9 td@@5))) (< H@10 (select t_ss@9 td@@5))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@6 T@Tid) ) (!  (=> (and (and (and (not (= td@@6 NIL)) (not (= td@@6 ptTid))) (select steal_in_cs@8 td@@6)) (not (= H@10 (select h_ss@9 td@@6)))) (> H@10 (select h_ss@9 td@@6)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select t_ss@9 ptTid) T@8)))) (and (=> (= (ControlFlow 0 135) (- 0 147)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@7 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@7 NIL)) (not (= td@@7 ptTid))) (select steal_in_cs@8 td@@7)) (= H@10 (select h_ss@9 td@@7))) (< H@10 (select t_ss@9 td@@7))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@8 T@Tid) ) (!  (=> (and (and (and (not (= td@@8 NIL)) (not (= td@@8 ptTid))) (select steal_in_cs@8 td@@8)) (not (= H@10 (select h_ss@9 td@@8)))) (> H@10 (select h_ss@9 td@@8)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (<= H@10 T@8)))) (and (=> (= (ControlFlow 0 135) (- 0 146)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@9 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@9 NIL)) (not (= td@@9 ptTid))) (select steal_in_cs@8 td@@9)) (= H@10 (select h_ss@9 td@@9))) (< H@10 (select t_ss@9 td@@9))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@10 T@Tid) ) (!  (=> (and (and (and (not (= td@@10 NIL)) (not (= td@@10 ptTid))) (select steal_in_cs@8 td@@10)) (not (= H@10 (select h_ss@9 td@@10)))) (> H@10 (select h_ss@9 td@@10)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (not (= (select items@8 T@8) EMPTY))))) (and (=> (= (ControlFlow 0 135) (- 0 145)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@11 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@11 NIL)) (not (= td@@11 ptTid))) (select steal_in_cs@8 td@@11)) (= H@10 (select h_ss@9 td@@11))) (< H@10 (select t_ss@9 td@@11))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@12 T@Tid) ) (!  (=> (and (and (and (not (= td@@12 NIL)) (not (= td@@12 ptTid))) (select steal_in_cs@8 td@@12)) (not (= H@10 (select h_ss@9 td@@12)))) (> H@10 (select h_ss@9 td@@12)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select status@12 T@8) IN_Q)))) (and (=> (= (ControlFlow 0 135) (- 0 144)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@13 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@13 NIL)) (not (= td@@13 ptTid))) (select steal_in_cs@8 td@@13)) (= H@10 (select h_ss@9 td@@13))) (< H@10 (select t_ss@9 td@@13))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@14 T@Tid) ) (!  (=> (and (and (and (not (= td@@14 NIL)) (not (= td@@14 ptTid))) (select steal_in_cs@8 td@@14)) (not (= H@10 (select h_ss@9 td@@14)))) (> H@10 (select h_ss@9 td@@14)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@8 (not take_in_cs@9)))) (and (=> (= (ControlFlow 0 135) (- 0 143)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@15 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@15 NIL)) (not (= td@@15 ptTid))) (select steal_in_cs@8 td@@15)) (= H@10 (select h_ss@9 td@@15))) (< H@10 (select t_ss@9 td@@15))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@16 T@Tid) ) (!  (=> (and (and (and (not (= td@@16 NIL)) (not (= td@@16 ptTid))) (select steal_in_cs@8 td@@16)) (not (= H@10 (select h_ss@9 td@@16)))) (> H@10 (select h_ss@9 td@@16)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@9 (not put_in_cs@8)))) (and (=> (= (ControlFlow 0 135) (- 0 142)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@17 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@17 NIL)) (not (= td@@17 ptTid))) (select steal_in_cs@8 td@@17)) (= H@10 (select h_ss@9 td@@17))) (< H@10 (select t_ss@9 td@@17))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@18 T@Tid) ) (!  (=> (and (and (and (not (= td@@18 NIL)) (not (= td@@18 ptTid))) (select steal_in_cs@8 td@@18)) (not (= H@10 (select h_ss@9 td@@18)))) (> H@10 (select h_ss@9 td@@18)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid))))) (and (=> (= (ControlFlow 0 135) (- 0 141)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@19 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@19 NIL)) (not (= td@@19 ptTid))) (select steal_in_cs@8 td@@19)) (= H@10 (select h_ss@9 td@@19))) (< H@10 (select t_ss@9 td@@19))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@20 T@Tid) ) (!  (=> (and (and (and (not (= td@@20 NIL)) (not (= td@@20 ptTid))) (select steal_in_cs@8 td@@20)) (not (= H@10 (select h_ss@9 td@@20)))) (> H@10 (select h_ss@9 td@@20)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@21 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@21 NIL)) (not (= td@@21 ptTid))) (select steal_in_cs@8 td@@21)) (= H@10 (select h_ss@9 td@@21))) (< H@10 (select t_ss@9 td@@21))) (not (= (select items@8 H@10) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |67|
)))) (and (=> (= (ControlFlow 0 135) (- 0 140)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@22 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@22 NIL)) (not (= td@@22 ptTid))) (select steal_in_cs@8 td@@22)) (= H@10 (select h_ss@9 td@@22))) (< H@10 (select t_ss@9 td@@22))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@23 T@Tid) ) (!  (=> (and (and (and (not (= td@@23 NIL)) (not (= td@@23 ptTid))) (select steal_in_cs@8 td@@23)) (not (= H@10 (select h_ss@9 td@@23)))) (> H@10 (select h_ss@9 td@@23)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@24 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@24 NIL)) (not (= td@@24 ptTid))) (select steal_in_cs@8 td@@24)) (= H@10 (select h_ss@9 td@@24))) (< H@10 (select t_ss@9 td@@24))) (= (select status@12 H@10) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |68|
)))) (and (=> (= (ControlFlow 0 135) (- 0 139)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@25 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@25 NIL)) (not (= td@@25 ptTid))) (select steal_in_cs@8 td@@25)) (= H@10 (select h_ss@9 td@@25))) (< H@10 (select t_ss@9 td@@25))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@26 T@Tid) ) (!  (=> (and (and (and (not (= td@@26 NIL)) (not (= td@@26 ptTid))) (select steal_in_cs@8 td@@26)) (not (= H@10 (select h_ss@9 td@@26)))) (> H@10 (select h_ss@9 td@@26)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@27 T@Tid) ) (!  (=> (and (and (and (not (= td@@27 NIL)) (not (= td@@27 ptTid))) (select steal_in_cs@8 td@@27)) (not (= H@10 (select h_ss@9 td@@27)))) (> H@10 (select h_ss@9 td@@27)))
 :qid |wsqbpl.44:14|
 :skolemid |69|
)))) (and (=> (= (ControlFlow 0 135) (- 0 138)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@28 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@28 NIL)) (not (= td@@28 ptTid))) (select steal_in_cs@8 td@@28)) (= H@10 (select h_ss@9 td@@28))) (< H@10 (select t_ss@9 td@@28))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@29 T@Tid) ) (!  (=> (and (and (and (not (= td@@29 NIL)) (not (= td@@29 ptTid))) (select steal_in_cs@8 td@@29)) (not (= H@10 (select h_ss@9 td@@29)))) (> H@10 (select h_ss@9 td@@29)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@30 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@30 NIL)) (not (= td@@30 ptTid))) (select steal_in_cs@8 td@@30)) (= H@10 (select h_ss@9 td@@30))) (< H@10 (select t_ss@9 td@@30))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@31 T@Tid) ) (!  (=> (and (and (and (not (= td@@31 NIL)) (not (= td@@31 ptTid))) (select steal_in_cs@8 td@@31)) (not (= H@10 (select h_ss@9 td@@31)))) (> H@10 (select h_ss@9 td@@31)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 135) (- 0 137)) (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0) (and (=> (= (ControlFlow 0 135) (- 0 136)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8)) (=> (= (ControlFlow 0 135) (- 0 134)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 T@8) (and (= (select status@12 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) NOT_IN_Q) (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
))))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (and (forall ((i@@14 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@14) (<= i@@14 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@14) IN_Q) (not (= (select Civl_global_old_items@1 i@@14) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@32 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@32 NIL)) (not (= td@@32 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@32)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@32))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@32))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@33 T@Tid) ) (!  (=> (and (and (and (not (= td@@33 NIL)) (not (= td@@33 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@33)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@33)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@33)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 114) (- 0 133)) (or (and (and (and (forall ((i@@15 Int) ) (!  (=> (and (<= H@10 i@@15) (<= i@@15 (- T@8 1))) (and (= (select status@12 i@@15) IN_Q) (not (= (select items@8 i@@15) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (forall ((i@@16 Int) ) (!  (=> (and (<= H@10 i@@16) (<= i@@16 (- T@8 1))) (= (select status@12 i@@16) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |70|
)))) (and (=> (= (ControlFlow 0 114) (- 0 132)) (or (and (and (and (forall ((i@@17 Int) ) (!  (=> (and (<= H@10 i@@17) (<= i@@17 (- T@8 1))) (and (= (select status@12 i@@17) IN_Q) (not (= (select items@8 i@@17) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (forall ((i@@18 Int) ) (!  (=> (and (<= H@10 i@@18) (<= i@@18 (- T@8 1))) (not (= (select items@8 i@@18) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |71|
)))) (and (=> (= (ControlFlow 0 114) (- 0 131)) (or (and (and (and (forall ((i@@19 Int) ) (!  (=> (and (<= H@10 i@@19) (<= i@@19 (- T@8 1))) (and (= (select status@12 i@@19) IN_Q) (not (= (select items@8 i@@19) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 114) (- 0 130)) (or (and (and (and (forall ((i@@20 Int) ) (!  (=> (and (<= H@10 i@@20) (<= i@@20 (- T@8 1))) (and (= (select status@12 i@@20) IN_Q) (not (= (select items@8 i@@20) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (not take_in_cs@9))) (and (=> (= (ControlFlow 0 114) (- 0 129)) (or (and (and (and (forall ((i@@21 Int) ) (!  (=> (and (<= H@10 i@@21) (<= i@@21 (- T@8 1))) (and (= (select status@12 i@@21) IN_Q) (not (= (select items@8 i@@21) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) put_in_cs@8)) (and (=> (= (ControlFlow 0 114) (- 0 128)) (and (and (and (forall ((i@@22 Int) ) (!  (=> (and (<= H@10 i@@22) (<= i@@22 (- T@8 1))) (and (= (select status@12 i@@22) IN_Q) (not (= (select items@8 i@@22) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8)) (=> (and (and (and (forall ((i@@23 Int) ) (!  (=> (and (<= H@10 i@@23) (<= i@@23 (- T@8 1))) (and (= (select status@12 i@@23) IN_Q) (not (= (select items@8 i@@23) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (and (=> (= (ControlFlow 0 114) (- 0 127)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@34 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@34 NIL)) (not (= td@@34 ptTid))) (select steal_in_cs@8 td@@34)) (= H@10 (select h_ss@9 td@@34))) (< H@10 (select t_ss@9 td@@34))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@35 T@Tid) ) (!  (=> (and (and (and (not (= td@@35 NIL)) (not (= td@@35 ptTid))) (select steal_in_cs@8 td@@35)) (not (= H@10 (select h_ss@9 td@@35)))) (> H@10 (select h_ss@9 td@@35)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select t_ss@9 ptTid) T@8)))) (and (=> (= (ControlFlow 0 114) (- 0 126)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@36 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@36 NIL)) (not (= td@@36 ptTid))) (select steal_in_cs@8 td@@36)) (= H@10 (select h_ss@9 td@@36))) (< H@10 (select t_ss@9 td@@36))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@37 T@Tid) ) (!  (=> (and (and (and (not (= td@@37 NIL)) (not (= td@@37 ptTid))) (select steal_in_cs@8 td@@37)) (not (= H@10 (select h_ss@9 td@@37)))) (> H@10 (select h_ss@9 td@@37)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (<= H@10 T@8)))) (and (=> (= (ControlFlow 0 114) (- 0 125)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@38 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@38 NIL)) (not (= td@@38 ptTid))) (select steal_in_cs@8 td@@38)) (= H@10 (select h_ss@9 td@@38))) (< H@10 (select t_ss@9 td@@38))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@39 T@Tid) ) (!  (=> (and (and (and (not (= td@@39 NIL)) (not (= td@@39 ptTid))) (select steal_in_cs@8 td@@39)) (not (= H@10 (select h_ss@9 td@@39)))) (> H@10 (select h_ss@9 td@@39)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (not (= (select items@8 T@8) EMPTY))))) (and (=> (= (ControlFlow 0 114) (- 0 124)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@40 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@40 NIL)) (not (= td@@40 ptTid))) (select steal_in_cs@8 td@@40)) (= H@10 (select h_ss@9 td@@40))) (< H@10 (select t_ss@9 td@@40))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@41 T@Tid) ) (!  (=> (and (and (and (not (= td@@41 NIL)) (not (= td@@41 ptTid))) (select steal_in_cs@8 td@@41)) (not (= H@10 (select h_ss@9 td@@41)))) (> H@10 (select h_ss@9 td@@41)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select status@12 T@8) IN_Q)))) (and (=> (= (ControlFlow 0 114) (- 0 123)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@42 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@42 NIL)) (not (= td@@42 ptTid))) (select steal_in_cs@8 td@@42)) (= H@10 (select h_ss@9 td@@42))) (< H@10 (select t_ss@9 td@@42))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@43 T@Tid) ) (!  (=> (and (and (and (not (= td@@43 NIL)) (not (= td@@43 ptTid))) (select steal_in_cs@8 td@@43)) (not (= H@10 (select h_ss@9 td@@43)))) (> H@10 (select h_ss@9 td@@43)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@8 (not take_in_cs@9)))) (and (=> (= (ControlFlow 0 114) (- 0 122)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@44 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@44 NIL)) (not (= td@@44 ptTid))) (select steal_in_cs@8 td@@44)) (= H@10 (select h_ss@9 td@@44))) (< H@10 (select t_ss@9 td@@44))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@45 T@Tid) ) (!  (=> (and (and (and (not (= td@@45 NIL)) (not (= td@@45 ptTid))) (select steal_in_cs@8 td@@45)) (not (= H@10 (select h_ss@9 td@@45)))) (> H@10 (select h_ss@9 td@@45)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@9 (not put_in_cs@8)))) (and (=> (= (ControlFlow 0 114) (- 0 121)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@46 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@46 NIL)) (not (= td@@46 ptTid))) (select steal_in_cs@8 td@@46)) (= H@10 (select h_ss@9 td@@46))) (< H@10 (select t_ss@9 td@@46))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@47 T@Tid) ) (!  (=> (and (and (and (not (= td@@47 NIL)) (not (= td@@47 ptTid))) (select steal_in_cs@8 td@@47)) (not (= H@10 (select h_ss@9 td@@47)))) (> H@10 (select h_ss@9 td@@47)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid))))) (and (=> (= (ControlFlow 0 114) (- 0 120)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@48 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@48 NIL)) (not (= td@@48 ptTid))) (select steal_in_cs@8 td@@48)) (= H@10 (select h_ss@9 td@@48))) (< H@10 (select t_ss@9 td@@48))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@49 T@Tid) ) (!  (=> (and (and (and (not (= td@@49 NIL)) (not (= td@@49 ptTid))) (select steal_in_cs@8 td@@49)) (not (= H@10 (select h_ss@9 td@@49)))) (> H@10 (select h_ss@9 td@@49)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@50 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@50 NIL)) (not (= td@@50 ptTid))) (select steal_in_cs@8 td@@50)) (= H@10 (select h_ss@9 td@@50))) (< H@10 (select t_ss@9 td@@50))) (not (= (select items@8 H@10) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |72|
)))) (and (=> (= (ControlFlow 0 114) (- 0 119)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@51 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@51 NIL)) (not (= td@@51 ptTid))) (select steal_in_cs@8 td@@51)) (= H@10 (select h_ss@9 td@@51))) (< H@10 (select t_ss@9 td@@51))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@52 T@Tid) ) (!  (=> (and (and (and (not (= td@@52 NIL)) (not (= td@@52 ptTid))) (select steal_in_cs@8 td@@52)) (not (= H@10 (select h_ss@9 td@@52)))) (> H@10 (select h_ss@9 td@@52)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@53 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@53 NIL)) (not (= td@@53 ptTid))) (select steal_in_cs@8 td@@53)) (= H@10 (select h_ss@9 td@@53))) (< H@10 (select t_ss@9 td@@53))) (= (select status@12 H@10) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |73|
)))) (and (=> (= (ControlFlow 0 114) (- 0 118)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@54 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@54 NIL)) (not (= td@@54 ptTid))) (select steal_in_cs@8 td@@54)) (= H@10 (select h_ss@9 td@@54))) (< H@10 (select t_ss@9 td@@54))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@55 T@Tid) ) (!  (=> (and (and (and (not (= td@@55 NIL)) (not (= td@@55 ptTid))) (select steal_in_cs@8 td@@55)) (not (= H@10 (select h_ss@9 td@@55)))) (> H@10 (select h_ss@9 td@@55)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@56 T@Tid) ) (!  (=> (and (and (and (not (= td@@56 NIL)) (not (= td@@56 ptTid))) (select steal_in_cs@8 td@@56)) (not (= H@10 (select h_ss@9 td@@56)))) (> H@10 (select h_ss@9 td@@56)))
 :qid |wsqbpl.44:14|
 :skolemid |74|
)))) (and (=> (= (ControlFlow 0 114) (- 0 117)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@57 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@57 NIL)) (not (= td@@57 ptTid))) (select steal_in_cs@8 td@@57)) (= H@10 (select h_ss@9 td@@57))) (< H@10 (select t_ss@9 td@@57))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@58 T@Tid) ) (!  (=> (and (and (and (not (= td@@58 NIL)) (not (= td@@58 ptTid))) (select steal_in_cs@8 td@@58)) (not (= H@10 (select h_ss@9 td@@58)))) (> H@10 (select h_ss@9 td@@58)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@59 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@59 NIL)) (not (= td@@59 ptTid))) (select steal_in_cs@8 td@@59)) (= H@10 (select h_ss@9 td@@59))) (< H@10 (select t_ss@9 td@@59))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@60 T@Tid) ) (!  (=> (and (and (and (not (= td@@60 NIL)) (not (= td@@60 ptTid))) (select steal_in_cs@8 td@@60)) (not (= H@10 (select h_ss@9 td@@60)))) (> H@10 (select h_ss@9 td@@60)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 114) (- 0 116)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (and (=> (= (ControlFlow 0 114) (- 0 115)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8)) (=> (= (ControlFlow 0 114) (- 0 113)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 T@8) (and (= (select status@12 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) NOT_IN_Q) (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (forall ((i@@24 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@24) (<= i@@24 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@24) IN_Q) (not (= (select Civl_global_old_items@1 i@@24) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@61 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@61 NIL)) (not (= td@@61 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@61)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@61))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@61))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@62 T@Tid) ) (!  (=> (and (and (and (not (= td@@62 NIL)) (not (= td@@62 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@62)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@62)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@62)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= Civl_global_old_T@1 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (not Civl_global_old_put_in_cs@1)))) (and (=> (= (ControlFlow 0 106) (- 0 112)) (and (and (and (forall ((i@@25 Int) ) (!  (=> (and (<= H@10 i@@25) (<= i@@25 (- T@8 1))) (and (= (select status@12 i@@25) IN_Q) (not (= (select items@8 i@@25) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (forall ((i@@26 Int) ) (!  (=> (and (<= H@10 i@@26) (<= i@@26 (- T@8 1))) (and (= (select status@12 i@@26) IN_Q) (not (= (select items@8 i@@26) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 106) (- 0 111)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@63 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@63 NIL)) (not (= td@@63 ptTid))) (select steal_in_cs@8 td@@63)) (= H@10 (select h_ss@9 td@@63))) (< H@10 (select t_ss@9 td@@63))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@64 T@Tid) ) (!  (=> (and (and (and (not (= td@@64 NIL)) (not (= td@@64 ptTid))) (select steal_in_cs@8 td@@64)) (not (= H@10 (select h_ss@9 td@@64)))) (> H@10 (select h_ss@9 td@@64)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@65 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@65 NIL)) (not (= td@@65 ptTid))) (select steal_in_cs@8 td@@65)) (= H@10 (select h_ss@9 td@@65))) (< H@10 (select t_ss@9 td@@65))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@66 T@Tid) ) (!  (=> (and (and (and (not (= td@@66 NIL)) (not (= td@@66 ptTid))) (select steal_in_cs@8 td@@66)) (not (= H@10 (select h_ss@9 td@@66)))) (> H@10 (select h_ss@9 td@@66)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 106) (- 0 110)) (= T@8 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (=> (= T@8 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)) (and (=> (= (ControlFlow 0 106) (- 0 109)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (and (=> (= (ControlFlow 0 106) (- 0 108)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8) (and (=> (= (ControlFlow 0 106) (- 0 107)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 106) (- 0 105)) (not put_in_cs@8)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (and (and (and (and (forall ((i@@27 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@27) (<= i@@27 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@27) IN_Q) (not (= (select Civl_global_old_items@1 i@@27) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@67 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@67 NIL)) (not (= td@@67 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@67)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@67))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@67))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@68 T@Tid) ) (!  (=> (and (and (and (not (= td@@68 NIL)) (not (= td@@68 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@68)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@68)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@68)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 Civl_global_old_T@1))) (=> (> Civl_global_old_T@1 Civl_global_old_H@1) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))))) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (not Civl_global_old_put_in_cs@1)) Civl_global_old_take_in_cs@1)) (and (=> (= (ControlFlow 0 99) (- 0 104)) (>= H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (>= H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0) (and (=> (= (ControlFlow 0 99) (- 0 103)) (and (and (and (and (forall ((i@@28 Int) ) (!  (=> (and (<= H@10 i@@28) (<= i@@28 T@8)) (and (= (select status@12 i@@28) IN_Q) (not (= (select items@8 i@@28) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (forall ((i@@29 Int) ) (!  (=> (and (<= H@10 i@@29) (<= i@@29 T@8)) (and (= (select status@12 i@@29) IN_Q) (not (= (select items@8 i@@29) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 99) (- 0 102)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@69 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@69 NIL)) (not (= td@@69 ptTid))) (select steal_in_cs@8 td@@69)) (= H@10 (select h_ss@9 td@@69))) (< H@10 (select t_ss@9 td@@69))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@70 T@Tid) ) (!  (=> (and (and (and (not (= td@@70 NIL)) (not (= td@@70 ptTid))) (select steal_in_cs@8 td@@70)) (not (= H@10 (select h_ss@9 td@@70)))) (> H@10 (select h_ss@9 td@@70)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@71 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@71 NIL)) (not (= td@@71 ptTid))) (select steal_in_cs@8 td@@71)) (= H@10 (select h_ss@9 td@@71))) (< H@10 (select t_ss@9 td@@71))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@72 T@Tid) ) (!  (=> (and (and (and (not (= td@@72 NIL)) (not (= td@@72 ptTid))) (select steal_in_cs@8 td@@72)) (not (= H@10 (select h_ss@9 td@@72)))) (> H@10 (select h_ss@9 td@@72)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 99) (- 0 101)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 T@8)))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 T@8))) (and (=> (= (ControlFlow 0 99) (- 0 100)) (=> (> T@8 H@10) (not (= (select items@8 T@8) EMPTY)))) (=> (=> (> T@8 H@10) (not (= (select items@8 T@8) EMPTY))) (=> (= (ControlFlow 0 99) (- 0 98)) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)) (not put_in_cs@8)) take_in_cs@9)))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (and (and (forall ((i@@30 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@30) (<= i@@30 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@30) IN_Q) (not (= (select Civl_global_old_items@1 i@@30) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@73 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@73 NIL)) (not (= td@@73 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@73)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@73))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@73))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@74 T@Tid) ) (!  (=> (and (and (and (not (= td@@74 NIL)) (not (= td@@74 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@74)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@74)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@74)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))) (and (=> (= (ControlFlow 0 79) (- 0 97)) (and (and (and (and (and (forall ((i@@31 Int) ) (!  (=> (and (<= H@10 i@@31) (<= i@@31 T@8)) (and (= (select status@12 i@@31) IN_Q) (not (= (select items@8 i@@31) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (not put_in_cs@8)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (and (forall ((i@@32 Int) ) (!  (=> (and (<= H@10 i@@32) (<= i@@32 T@8)) (and (= (select status@12 i@@32) IN_Q) (not (= (select items@8 i@@32) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (not put_in_cs@8)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 79) (- 0 96)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@75 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@75 NIL)) (not (= td@@75 ptTid))) (select steal_in_cs@8 td@@75)) (= H@10 (select h_ss@9 td@@75))) (< H@10 (select t_ss@9 td@@75))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@76 T@Tid) ) (!  (=> (and (and (and (not (= td@@76 NIL)) (not (= td@@76 ptTid))) (select steal_in_cs@8 td@@76)) (not (= H@10 (select h_ss@9 td@@76)))) (> H@10 (select h_ss@9 td@@76)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select t_ss@9 ptTid) T@8)))) (and (=> (= (ControlFlow 0 79) (- 0 95)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@77 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@77 NIL)) (not (= td@@77 ptTid))) (select steal_in_cs@8 td@@77)) (= H@10 (select h_ss@9 td@@77))) (< H@10 (select t_ss@9 td@@77))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@78 T@Tid) ) (!  (=> (and (and (and (not (= td@@78 NIL)) (not (= td@@78 ptTid))) (select steal_in_cs@8 td@@78)) (not (= H@10 (select h_ss@9 td@@78)))) (> H@10 (select h_ss@9 td@@78)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (<= H@10 T@8)))) (and (=> (= (ControlFlow 0 79) (- 0 94)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@79 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@79 NIL)) (not (= td@@79 ptTid))) (select steal_in_cs@8 td@@79)) (= H@10 (select h_ss@9 td@@79))) (< H@10 (select t_ss@9 td@@79))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@80 T@Tid) ) (!  (=> (and (and (and (not (= td@@80 NIL)) (not (= td@@80 ptTid))) (select steal_in_cs@8 td@@80)) (not (= H@10 (select h_ss@9 td@@80)))) (> H@10 (select h_ss@9 td@@80)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (not (= (select items@8 T@8) EMPTY))))) (and (=> (= (ControlFlow 0 79) (- 0 93)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@81 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@81 NIL)) (not (= td@@81 ptTid))) (select steal_in_cs@8 td@@81)) (= H@10 (select h_ss@9 td@@81))) (< H@10 (select t_ss@9 td@@81))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@82 T@Tid) ) (!  (=> (and (and (and (not (= td@@82 NIL)) (not (= td@@82 ptTid))) (select steal_in_cs@8 td@@82)) (not (= H@10 (select h_ss@9 td@@82)))) (> H@10 (select h_ss@9 td@@82)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select status@12 T@8) IN_Q)))) (and (=> (= (ControlFlow 0 79) (- 0 92)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@83 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@83 NIL)) (not (= td@@83 ptTid))) (select steal_in_cs@8 td@@83)) (= H@10 (select h_ss@9 td@@83))) (< H@10 (select t_ss@9 td@@83))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@84 T@Tid) ) (!  (=> (and (and (and (not (= td@@84 NIL)) (not (= td@@84 ptTid))) (select steal_in_cs@8 td@@84)) (not (= H@10 (select h_ss@9 td@@84)))) (> H@10 (select h_ss@9 td@@84)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@8 (not take_in_cs@9)))) (and (=> (= (ControlFlow 0 79) (- 0 91)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@85 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@85 NIL)) (not (= td@@85 ptTid))) (select steal_in_cs@8 td@@85)) (= H@10 (select h_ss@9 td@@85))) (< H@10 (select t_ss@9 td@@85))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@86 T@Tid) ) (!  (=> (and (and (and (not (= td@@86 NIL)) (not (= td@@86 ptTid))) (select steal_in_cs@8 td@@86)) (not (= H@10 (select h_ss@9 td@@86)))) (> H@10 (select h_ss@9 td@@86)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@9 (not put_in_cs@8)))) (and (=> (= (ControlFlow 0 79) (- 0 90)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@87 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@87 NIL)) (not (= td@@87 ptTid))) (select steal_in_cs@8 td@@87)) (= H@10 (select h_ss@9 td@@87))) (< H@10 (select t_ss@9 td@@87))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@88 T@Tid) ) (!  (=> (and (and (and (not (= td@@88 NIL)) (not (= td@@88 ptTid))) (select steal_in_cs@8 td@@88)) (not (= H@10 (select h_ss@9 td@@88)))) (> H@10 (select h_ss@9 td@@88)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid))))) (and (=> (= (ControlFlow 0 79) (- 0 89)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@89 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@89 NIL)) (not (= td@@89 ptTid))) (select steal_in_cs@8 td@@89)) (= H@10 (select h_ss@9 td@@89))) (< H@10 (select t_ss@9 td@@89))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@90 T@Tid) ) (!  (=> (and (and (and (not (= td@@90 NIL)) (not (= td@@90 ptTid))) (select steal_in_cs@8 td@@90)) (not (= H@10 (select h_ss@9 td@@90)))) (> H@10 (select h_ss@9 td@@90)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@91 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@91 NIL)) (not (= td@@91 ptTid))) (select steal_in_cs@8 td@@91)) (= H@10 (select h_ss@9 td@@91))) (< H@10 (select t_ss@9 td@@91))) (not (= (select items@8 H@10) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |75|
)))) (and (=> (= (ControlFlow 0 79) (- 0 88)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@92 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@92 NIL)) (not (= td@@92 ptTid))) (select steal_in_cs@8 td@@92)) (= H@10 (select h_ss@9 td@@92))) (< H@10 (select t_ss@9 td@@92))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@93 T@Tid) ) (!  (=> (and (and (and (not (= td@@93 NIL)) (not (= td@@93 ptTid))) (select steal_in_cs@8 td@@93)) (not (= H@10 (select h_ss@9 td@@93)))) (> H@10 (select h_ss@9 td@@93)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@94 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@94 NIL)) (not (= td@@94 ptTid))) (select steal_in_cs@8 td@@94)) (= H@10 (select h_ss@9 td@@94))) (< H@10 (select t_ss@9 td@@94))) (= (select status@12 H@10) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |76|
)))) (and (=> (= (ControlFlow 0 79) (- 0 87)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@95 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@95 NIL)) (not (= td@@95 ptTid))) (select steal_in_cs@8 td@@95)) (= H@10 (select h_ss@9 td@@95))) (< H@10 (select t_ss@9 td@@95))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@96 T@Tid) ) (!  (=> (and (and (and (not (= td@@96 NIL)) (not (= td@@96 ptTid))) (select steal_in_cs@8 td@@96)) (not (= H@10 (select h_ss@9 td@@96)))) (> H@10 (select h_ss@9 td@@96)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@97 T@Tid) ) (!  (=> (and (and (and (not (= td@@97 NIL)) (not (= td@@97 ptTid))) (select steal_in_cs@8 td@@97)) (not (= H@10 (select h_ss@9 td@@97)))) (> H@10 (select h_ss@9 td@@97)))
 :qid |wsqbpl.44:14|
 :skolemid |77|
)))) (and (=> (= (ControlFlow 0 79) (- 0 86)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@98 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@98 NIL)) (not (= td@@98 ptTid))) (select steal_in_cs@8 td@@98)) (= H@10 (select h_ss@9 td@@98))) (< H@10 (select t_ss@9 td@@98))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@99 T@Tid) ) (!  (=> (and (and (and (not (= td@@99 NIL)) (not (= td@@99 ptTid))) (select steal_in_cs@8 td@@99)) (not (= H@10 (select h_ss@9 td@@99)))) (> H@10 (select h_ss@9 td@@99)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@100 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@100 NIL)) (not (= td@@100 ptTid))) (select steal_in_cs@8 td@@100)) (= H@10 (select h_ss@9 td@@100))) (< H@10 (select t_ss@9 td@@100))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@101 T@Tid) ) (!  (=> (and (and (and (not (= td@@101 NIL)) (not (= td@@101 ptTid))) (select steal_in_cs@8 td@@101)) (not (= H@10 (select h_ss@9 td@@101)))) (> H@10 (select h_ss@9 td@@101)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 79) (- 0 85)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (and (=> (= (ControlFlow 0 79) (- 0 84)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10) (and (=> (= (ControlFlow 0 79) (- 0 83)) (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 79) (- 0 82)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (and (=> (= (ControlFlow 0 79) (- 0 81)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8) (and (=> (= (ControlFlow 0 79) (- 0 80)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10) (=> (= (ControlFlow 0 79) (- 0 78)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (forall ((i@@33 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@33) (<= i@@33 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@33) IN_Q) (not (= (select Civl_global_old_items@1 i@@33) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@102 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@102 NIL)) (not (= td@@102 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@102)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@102))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@102))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@103 T@Tid) ) (!  (=> (and (and (and (not (= td@@103 NIL)) (not (= td@@103 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@103)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@103)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@103)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 73) (- 0 77)) (and (and (and (and (forall ((i@@34 Int) ) (!  (=> (and (<= H@10 i@@34) (<= i@@34 T@8)) (and (= (select status@12 i@@34) IN_Q) (not (= (select items@8 i@@34) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (forall ((i@@35 Int) ) (!  (=> (and (<= H@10 i@@35) (<= i@@35 T@8)) (and (= (select status@12 i@@35) IN_Q) (not (= (select items@8 i@@35) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 73) (- 0 76)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@104 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@104 NIL)) (not (= td@@104 ptTid))) (select steal_in_cs@8 td@@104)) (= H@10 (select h_ss@9 td@@104))) (< H@10 (select t_ss@9 td@@104))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@105 T@Tid) ) (!  (=> (and (and (and (not (= td@@105 NIL)) (not (= td@@105 ptTid))) (select steal_in_cs@8 td@@105)) (not (= H@10 (select h_ss@9 td@@105)))) (> H@10 (select h_ss@9 td@@105)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@106 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@106 NIL)) (not (= td@@106 ptTid))) (select steal_in_cs@8 td@@106)) (= H@10 (select h_ss@9 td@@106))) (< H@10 (select t_ss@9 td@@106))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@107 T@Tid) ) (!  (=> (and (and (and (not (= td@@107 NIL)) (not (= td@@107 ptTid))) (select steal_in_cs@8 td@@107)) (not (= H@10 (select h_ss@9 td@@107)))) (> H@10 (select h_ss@9 td@@107)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (and (=> (= (ControlFlow 0 73) (- 0 74)) (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 73) (- 0 72)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (forall ((i@@36 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@36) (<= i@@36 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@36) IN_Q) (not (= (select Civl_global_old_items@1 i@@36) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@108 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@108 NIL)) (not (= td@@108 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@108)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@108))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@108))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@109 T@Tid) ) (!  (=> (and (and (and (not (= td@@109 NIL)) (not (= td@@109 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@109)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@109)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@109)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> Civl_global_old_H@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 67) (- 0 71)) (and (and (and (forall ((i@@37 Int) ) (!  (=> (and (<= H@10 i@@37) (<= i@@37 (- T@8 1))) (and (= (select status@12 i@@37) IN_Q) (not (= (select items@8 i@@37) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (forall ((i@@38 Int) ) (!  (=> (and (<= H@10 i@@38) (<= i@@38 (- T@8 1))) (and (= (select status@12 i@@38) IN_Q) (not (= (select items@8 i@@38) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (and (=> (= (ControlFlow 0 67) (- 0 70)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@110 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@110 NIL)) (not (= td@@110 ptTid))) (select steal_in_cs@8 td@@110)) (= H@10 (select h_ss@9 td@@110))) (< H@10 (select t_ss@9 td@@110))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@111 T@Tid) ) (!  (=> (and (and (and (not (= td@@111 NIL)) (not (= td@@111 ptTid))) (select steal_in_cs@8 td@@111)) (not (= H@10 (select h_ss@9 td@@111)))) (> H@10 (select h_ss@9 td@@111)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@112 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@112 NIL)) (not (= td@@112 ptTid))) (select steal_in_cs@8 td@@112)) (= H@10 (select h_ss@9 td@@112))) (< H@10 (select t_ss@9 td@@112))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@113 T@Tid) ) (!  (=> (and (and (and (not (= td@@113 NIL)) (not (= td@@113 ptTid))) (select steal_in_cs@8 td@@113)) (not (= H@10 (select h_ss@9 td@@113)))) (> H@10 (select h_ss@9 td@@113)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 67) (- 0 69)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (and (=> (= (ControlFlow 0 67) (- 0 68)) (=> (= (select items@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@10 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (=> (=> (= (select items@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@10 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1))) (=> (= (ControlFlow 0 67) (- 0 66)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (and (forall ((i@@39 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@39) (<= i@@39 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@39) IN_Q) (not (= (select Civl_global_old_items@1 i@@39) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@114 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@114 NIL)) (not (= td@@114 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@114)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@114))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@114))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@115 T@Tid) ) (!  (=> (and (and (and (not (= td@@115 NIL)) (not (= td@@115 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@115)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@115)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@115)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (and (and (and (forall ((i@@40 Int) ) (!  (=> (and (<= H@10 i@@40) (<= i@@40 (- T@8 1))) (and (= (select status@12 i@@40) IN_Q) (not (= (select items@8 i@@40) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (forall ((i@@41 Int) ) (!  (=> (and (<= H@10 i@@41) (<= i@@41 (- T@8 1))) (and (= (select status@12 i@@41) IN_Q) (not (= (select items@8 i@@41) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (= (ControlFlow 0 64) (- 0 63)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@116 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@116 NIL)) (not (= td@@116 ptTid))) (select steal_in_cs@8 td@@116)) (= H@10 (select h_ss@9 td@@116))) (< H@10 (select t_ss@9 td@@116))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@117 T@Tid) ) (!  (=> (and (and (and (not (= td@@117 NIL)) (not (= td@@117 ptTid))) (select steal_in_cs@8 td@@117)) (not (= H@10 (select h_ss@9 td@@117)))) (> H@10 (select h_ss@9 td@@117)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (forall ((i@@42 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@42) (<= i@@42 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@42) IN_Q) (not (= (select Civl_global_old_items@1 i@@42) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@118 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@118 NIL)) (not (= td@@118 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@118)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@118))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@118))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@119 T@Tid) ) (!  (=> (and (and (and (not (= td@@119 NIL)) (not (= td@@119 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@119)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@119)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@119)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (and (=> (and (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q))))) (and (=> (= (ControlFlow 0 56) (- 0 62)) (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 56) (- 0 61)) (forall ((i@@43 Int) ) (!  (=> (and (<= H@10 i@@43) (<= i@@43 (- T@8 1))) (and (= (select status@12 i@@43) IN_Q) (not (= (select items@8 i@@43) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@44 Int) ) (!  (=> (and (<= H@10 i@@44) (<= i@@44 (- T@8 1))) (and (= (select status@12 i@@44) IN_Q) (not (= (select items@8 i@@44) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 56) (- 0 60)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@120 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@120 NIL)) (not (= td@@120 ptTid))) (select steal_in_cs@8 td@@120)) (= H@10 (select h_ss@9 td@@120))) (< H@10 (select t_ss@9 td@@120))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@121 T@Tid) ) (!  (=> (and (and (and (not (= td@@121 NIL)) (not (= td@@121 ptTid))) (select steal_in_cs@8 td@@121)) (not (= H@10 (select h_ss@9 td@@121)))) (> H@10 (select h_ss@9 td@@121)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@122 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@122 NIL)) (not (= td@@122 ptTid))) (select steal_in_cs@8 td@@122)) (= H@10 (select h_ss@9 td@@122))) (< H@10 (select t_ss@9 td@@122))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@123 T@Tid) ) (!  (=> (and (and (and (not (= td@@123 NIL)) (not (= td@@123 ptTid))) (select steal_in_cs@8 td@@123)) (not (= H@10 (select h_ss@9 td@@123)))) (> H@10 (select h_ss@9 td@@123)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 56) (- 0 59)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (and (=> (= (ControlFlow 0 56) (- 0 58)) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (=> (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (=> (and (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8))) (=> (=> (and (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8)) (=> (= (ControlFlow 0 56) (- 0 55)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10) (= (select status@12 H@10) IN_Q))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (and (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (forall ((i@@45 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@45) (<= i@@45 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@45) IN_Q) (not (= (select Civl_global_old_items@1 i@@45) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@124 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@124 NIL)) (not (= td@@124 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@124)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@124))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@124))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@125 T@Tid) ) (!  (=> (and (and (and (not (= td@@125 NIL)) (not (= td@@125 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@125)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@125)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@125)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) Civl_global_old_take_in_cs@1) (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))) (and (=> (= (ControlFlow 0 48) (- 0 54)) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 48) (- 0 53)) (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 48) (- 0 52)) (forall ((i@@46 Int) ) (!  (=> (and (<= H@10 i@@46) (<= i@@46 (- T@8 1))) (and (= (select status@12 i@@46) IN_Q) (not (= (select items@8 i@@46) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@47 Int) ) (!  (=> (and (<= H@10 i@@47) (<= i@@47 (- T@8 1))) (and (= (select status@12 i@@47) IN_Q) (not (= (select items@8 i@@47) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@126 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@126 NIL)) (not (= td@@126 ptTid))) (select steal_in_cs@8 td@@126)) (= H@10 (select h_ss@9 td@@126))) (< H@10 (select t_ss@9 td@@126))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@127 T@Tid) ) (!  (=> (and (and (and (not (= td@@127 NIL)) (not (= td@@127 ptTid))) (select steal_in_cs@8 td@@127)) (not (= H@10 (select h_ss@9 td@@127)))) (> H@10 (select h_ss@9 td@@127)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@128 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@128 NIL)) (not (= td@@128 ptTid))) (select steal_in_cs@8 td@@128)) (= H@10 (select h_ss@9 td@@128))) (< H@10 (select t_ss@9 td@@128))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@129 T@Tid) ) (!  (=> (and (and (and (not (= td@@129 NIL)) (not (= td@@129 ptTid))) (select steal_in_cs@8 td@@129)) (not (= H@10 (select h_ss@9 td@@129)))) (> H@10 (select h_ss@9 td@@129)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 48) (- 0 50)) (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@9) (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8))) (=> (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@9) (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8)) (=> (= (ControlFlow 0 48) (- 0 47)) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (and (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (forall ((i@@48 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@48) (<= i@@48 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@48) IN_Q) (not (= (select Civl_global_old_items@1 i@@48) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@130 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@130 NIL)) (not (= td@@130 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@130)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@130))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@130))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@131 T@Tid) ) (!  (=> (and (and (and (not (= td@@131 NIL)) (not (= td@@131 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@131)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@131)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@131)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1)) (and (=> (= (ControlFlow 0 31) (- 0 46)) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 45)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (and (=> (= (ControlFlow 0 31) (- 0 44)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 43)) (forall ((i@@49 Int) ) (!  (=> (and (<= H@10 i@@49) (<= i@@49 (- T@8 1))) (and (= (select status@12 i@@49) IN_Q) (not (= (select items@8 i@@49) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@50 Int) ) (!  (=> (and (<= H@10 i@@50) (<= i@@50 (- T@8 1))) (and (= (select status@12 i@@50) IN_Q) (not (= (select items@8 i@@50) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 31) (- 0 42)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@132 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@132 NIL)) (not (= td@@132 ptTid))) (select steal_in_cs@8 td@@132)) (= H@10 (select h_ss@9 td@@132))) (< H@10 (select t_ss@9 td@@132))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@133 T@Tid) ) (!  (=> (and (and (and (not (= td@@133 NIL)) (not (= td@@133 ptTid))) (select steal_in_cs@8 td@@133)) (not (= H@10 (select h_ss@9 td@@133)))) (> H@10 (select h_ss@9 td@@133)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select t_ss@9 ptTid) T@8)))) (and (=> (= (ControlFlow 0 31) (- 0 41)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@134 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@134 NIL)) (not (= td@@134 ptTid))) (select steal_in_cs@8 td@@134)) (= H@10 (select h_ss@9 td@@134))) (< H@10 (select t_ss@9 td@@134))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@135 T@Tid) ) (!  (=> (and (and (and (not (= td@@135 NIL)) (not (= td@@135 ptTid))) (select steal_in_cs@8 td@@135)) (not (= H@10 (select h_ss@9 td@@135)))) (> H@10 (select h_ss@9 td@@135)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (<= H@10 T@8)))) (and (=> (= (ControlFlow 0 31) (- 0 40)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@136 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@136 NIL)) (not (= td@@136 ptTid))) (select steal_in_cs@8 td@@136)) (= H@10 (select h_ss@9 td@@136))) (< H@10 (select t_ss@9 td@@136))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@137 T@Tid) ) (!  (=> (and (and (and (not (= td@@137 NIL)) (not (= td@@137 ptTid))) (select steal_in_cs@8 td@@137)) (not (= H@10 (select h_ss@9 td@@137)))) (> H@10 (select h_ss@9 td@@137)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (not (= (select items@8 T@8) EMPTY))))) (and (=> (= (ControlFlow 0 31) (- 0 39)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@138 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@138 NIL)) (not (= td@@138 ptTid))) (select steal_in_cs@8 td@@138)) (= H@10 (select h_ss@9 td@@138))) (< H@10 (select t_ss@9 td@@138))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@139 T@Tid) ) (!  (=> (and (and (and (not (= td@@139 NIL)) (not (= td@@139 ptTid))) (select steal_in_cs@8 td@@139)) (not (= H@10 (select h_ss@9 td@@139)))) (> H@10 (select h_ss@9 td@@139)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= (select status@12 T@8) IN_Q)))) (and (=> (= (ControlFlow 0 31) (- 0 38)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@140 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@140 NIL)) (not (= td@@140 ptTid))) (select steal_in_cs@8 td@@140)) (= H@10 (select h_ss@9 td@@140))) (< H@10 (select t_ss@9 td@@140))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@141 T@Tid) ) (!  (=> (and (and (and (not (= td@@141 NIL)) (not (= td@@141 ptTid))) (select steal_in_cs@8 td@@141)) (not (= H@10 (select h_ss@9 td@@141)))) (> H@10 (select h_ss@9 td@@141)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@8 (not take_in_cs@9)))) (and (=> (= (ControlFlow 0 31) (- 0 37)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@142 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@142 NIL)) (not (= td@@142 ptTid))) (select steal_in_cs@8 td@@142)) (= H@10 (select h_ss@9 td@@142))) (< H@10 (select t_ss@9 td@@142))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@143 T@Tid) ) (!  (=> (and (and (and (not (= td@@143 NIL)) (not (= td@@143 ptTid))) (select steal_in_cs@8 td@@143)) (not (= H@10 (select h_ss@9 td@@143)))) (> H@10 (select h_ss@9 td@@143)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@9 (not put_in_cs@8)))) (and (=> (= (ControlFlow 0 31) (- 0 36)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@144 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@144 NIL)) (not (= td@@144 ptTid))) (select steal_in_cs@8 td@@144)) (= H@10 (select h_ss@9 td@@144))) (< H@10 (select t_ss@9 td@@144))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@145 T@Tid) ) (!  (=> (and (and (and (not (= td@@145 NIL)) (not (= td@@145 ptTid))) (select steal_in_cs@8 td@@145)) (not (= H@10 (select h_ss@9 td@@145)))) (> H@10 (select h_ss@9 td@@145)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid))))) (and (=> (= (ControlFlow 0 31) (- 0 35)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@146 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@146 NIL)) (not (= td@@146 ptTid))) (select steal_in_cs@8 td@@146)) (= H@10 (select h_ss@9 td@@146))) (< H@10 (select t_ss@9 td@@146))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@147 T@Tid) ) (!  (=> (and (and (and (not (= td@@147 NIL)) (not (= td@@147 ptTid))) (select steal_in_cs@8 td@@147)) (not (= H@10 (select h_ss@9 td@@147)))) (> H@10 (select h_ss@9 td@@147)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@148 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@148 NIL)) (not (= td@@148 ptTid))) (select steal_in_cs@8 td@@148)) (= H@10 (select h_ss@9 td@@148))) (< H@10 (select t_ss@9 td@@148))) (not (= (select items@8 H@10) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |78|
)))) (and (=> (= (ControlFlow 0 31) (- 0 34)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@149 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@149 NIL)) (not (= td@@149 ptTid))) (select steal_in_cs@8 td@@149)) (= H@10 (select h_ss@9 td@@149))) (< H@10 (select t_ss@9 td@@149))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@150 T@Tid) ) (!  (=> (and (and (and (not (= td@@150 NIL)) (not (= td@@150 ptTid))) (select steal_in_cs@8 td@@150)) (not (= H@10 (select h_ss@9 td@@150)))) (> H@10 (select h_ss@9 td@@150)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@151 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@151 NIL)) (not (= td@@151 ptTid))) (select steal_in_cs@8 td@@151)) (= H@10 (select h_ss@9 td@@151))) (< H@10 (select t_ss@9 td@@151))) (= (select status@12 H@10) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |79|
)))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (or (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@152 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@152 NIL)) (not (= td@@152 ptTid))) (select steal_in_cs@8 td@@152)) (= H@10 (select h_ss@9 td@@152))) (< H@10 (select t_ss@9 td@@152))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@153 T@Tid) ) (!  (=> (and (and (and (not (= td@@153 NIL)) (not (= td@@153 ptTid))) (select steal_in_cs@8 td@@153)) (not (= H@10 (select h_ss@9 td@@153)))) (> H@10 (select h_ss@9 td@@153)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@154 T@Tid) ) (!  (=> (and (and (and (not (= td@@154 NIL)) (not (= td@@154 ptTid))) (select steal_in_cs@8 td@@154)) (not (= H@10 (select h_ss@9 td@@154)))) (> H@10 (select h_ss@9 td@@154)))
 :qid |wsqbpl.44:14|
 :skolemid |80|
)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@155 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@155 NIL)) (not (= td@@155 ptTid))) (select steal_in_cs@8 td@@155)) (= H@10 (select h_ss@9 td@@155))) (< H@10 (select t_ss@9 td@@155))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@156 T@Tid) ) (!  (=> (and (and (and (not (= td@@156 NIL)) (not (= td@@156 ptTid))) (select steal_in_cs@8 td@@156)) (not (= H@10 (select h_ss@9 td@@156)))) (> H@10 (select h_ss@9 td@@156)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@157 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@157 NIL)) (not (= td@@157 ptTid))) (select steal_in_cs@8 td@@157)) (= H@10 (select h_ss@9 td@@157))) (< H@10 (select t_ss@9 td@@157))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@158 T@Tid) ) (!  (=> (and (and (and (not (= td@@158 NIL)) (not (= td@@158 ptTid))) (select steal_in_cs@8 td@@158)) (not (= H@10 (select h_ss@9 td@@158)))) (> H@10 (select h_ss@9 td@@158)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 31) (- 0 30)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10)))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (forall ((i@@51 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@51) (<= i@@51 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@51) IN_Q) (not (= (select Civl_global_old_items@1 i@@51) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@159 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@159 NIL)) (not (= td@@159 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@159)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@159))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@159))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@160 T@Tid) ) (!  (=> (and (and (and (not (= td@@160 NIL)) (not (= td@@160 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@160)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@160)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@160)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid)))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((i@@52 Int) ) (!  (=> (and (<= H@10 i@@52) (<= i@@52 (- T@8 1))) (and (= (select status@12 i@@52) IN_Q) (not (= (select items@8 i@@52) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@53 Int) ) (!  (=> (and (<= H@10 i@@53) (<= i@@53 (- T@8 1))) (and (= (select status@12 i@@53) IN_Q) (not (= (select items@8 i@@53) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@161 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@161 NIL)) (not (= td@@161 ptTid))) (select steal_in_cs@8 td@@161)) (= H@10 (select h_ss@9 td@@161))) (< H@10 (select t_ss@9 td@@161))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@162 T@Tid) ) (!  (=> (and (and (and (not (= td@@162 NIL)) (not (= td@@162 ptTid))) (select steal_in_cs@8 td@@162)) (not (= H@10 (select h_ss@9 td@@162)))) (> H@10 (select h_ss@9 td@@162)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@163 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@163 NIL)) (not (= td@@163 ptTid))) (select steal_in_cs@8 td@@163)) (= H@10 (select h_ss@9 td@@163))) (< H@10 (select t_ss@9 td@@163))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@164 T@Tid) ) (!  (=> (and (and (and (not (= td@@164 NIL)) (not (= td@@164 ptTid))) (select steal_in_cs@8 td@@164)) (not (= H@10 (select h_ss@9 td@@164)))) (> H@10 (select h_ss@9 td@@164)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 26) (- 0 25)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (and (forall ((i@@54 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@54) (<= i@@54 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@54) IN_Q) (not (= (select Civl_global_old_items@1 i@@54) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@165 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@165 NIL)) (not (= td@@165 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@165)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@165))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@165))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@166 T@Tid) ) (!  (=> (and (and (and (not (= td@@166 NIL)) (not (= td@@166 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@166)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@166)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@166)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((i@@55 Int) ) (!  (=> (and (and (>= i@@55 Civl_global_old_T@1) (not Civl_global_old_put_in_cs@1)) (not Civl_global_old_take_in_cs@1)) (and (= (select Civl_global_old_status@3 i@@55) NOT_IN_Q) (= (select Civl_global_old_items@1 i@@55) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (and (and (forall ((i@@56 Int) ) (!  (=> (and (<= H@10 i@@56) (<= i@@56 (- T@8 1))) (and (= (select status@12 i@@56) IN_Q) (not (= (select items@8 i@@56) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (forall ((i@@57 Int) ) (!  (=> (and (<= H@10 i@@57) (<= i@@57 (- T@8 1))) (and (= (select status@12 i@@57) IN_Q) (not (= (select items@8 i@@57) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@167 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@167 NIL)) (not (= td@@167 ptTid))) (select steal_in_cs@8 td@@167)) (= H@10 (select h_ss@9 td@@167))) (< H@10 (select t_ss@9 td@@167))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@168 T@Tid) ) (!  (=> (and (and (and (not (= td@@168 NIL)) (not (= td@@168 ptTid))) (select steal_in_cs@8 td@@168)) (not (= H@10 (select h_ss@9 td@@168)))) (> H@10 (select h_ss@9 td@@168)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@169 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@169 NIL)) (not (= td@@169 ptTid))) (select steal_in_cs@8 td@@169)) (= H@10 (select h_ss@9 td@@169))) (< H@10 (select t_ss@9 td@@169))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@170 T@Tid) ) (!  (=> (and (and (and (not (= td@@170 NIL)) (not (= td@@170 ptTid))) (select steal_in_cs@8 td@@170)) (not (= H@10 (select h_ss@9 td@@170)))) (> H@10 (select h_ss@9 td@@170)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 22) (- 0 21)) (forall ((i@@58 Int) ) (!  (=> (and (and (>= i@@58 T@8) (not put_in_cs@8)) (not take_in_cs@9)) (and (= (select status@12 i@@58) NOT_IN_Q) (= (select items@8 i@@58) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (forall ((i@@59 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@59) (<= i@@59 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@59) IN_Q) (not (= (select Civl_global_old_items@1 i@@59) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@171 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@171 NIL)) (not (= td@@171 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@171)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@171))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@171))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@172 T@Tid) ) (!  (=> (and (and (and (not (= td@@172 NIL)) (not (= td@@172 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@172)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@172)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@172)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((i@@60 Int) ) (!  (=> (and (and (>= i@@60 Civl_global_old_T@1) (not Civl_global_old_put_in_cs@1)) (not Civl_global_old_take_in_cs@1)) (and (= (select Civl_global_old_status@3 i@@60) NOT_IN_Q) (= (select Civl_global_old_items@1 i@@60) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (and (and (and (forall ((i@@61 Int) ) (!  (=> (and (<= H@10 i@@61) (<= i@@61 (- T@8 1))) (and (= (select status@12 i@@61) IN_Q) (not (= (select items@8 i@@61) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (and (forall ((i@@62 Int) ) (!  (=> (and (<= H@10 i@@62) (<= i@@62 (- T@8 1))) (and (= (select status@12 i@@62) IN_Q) (not (= (select items@8 i@@62) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@9)) (not put_in_cs@8)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@173 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@173 NIL)) (not (= td@@173 ptTid))) (select steal_in_cs@8 td@@173)) (= H@10 (select h_ss@9 td@@173))) (< H@10 (select t_ss@9 td@@173))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@174 T@Tid) ) (!  (=> (and (and (and (not (= td@@174 NIL)) (not (= td@@174 ptTid))) (select steal_in_cs@8 td@@174)) (not (= H@10 (select h_ss@9 td@@174)))) (> H@10 (select h_ss@9 td@@174)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@175 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@175 NIL)) (not (= td@@175 ptTid))) (select steal_in_cs@8 td@@175)) (= H@10 (select h_ss@9 td@@175))) (< H@10 (select t_ss@9 td@@175))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@176 T@Tid) ) (!  (=> (and (and (and (not (= td@@176 NIL)) (not (= td@@176 ptTid))) (select steal_in_cs@8 td@@176)) (not (= H@10 (select h_ss@9 td@@176)))) (> H@10 (select h_ss@9 td@@176)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((i@@63 Int) ) (!  (=> (and (and (>= i@@63 T@8) (not put_in_cs@8)) (not take_in_cs@9)) (and (= (select status@12 i@@63) NOT_IN_Q) (= (select items@8 i@@63) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (and (forall ((i@@64 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@64) (<= i@@64 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@64) IN_Q) (not (= (select Civl_global_old_items@1 i@@64) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@177 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@177 NIL)) (not (= td@@177 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@177)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@177))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@177))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@178 T@Tid) ) (!  (=> (and (and (and (not (= td@@178 NIL)) (not (= td@@178 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@178)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@178)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@178)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (and (and (and (forall ((i@@65 Int) ) (!  (=> (and (<= H@10 i@@65) (<= i@@65 (- T@8 1))) (and (= (select status@12 i@@65) IN_Q) (not (= (select items@8 i@@65) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q)))) (=> (and (and (and (and (forall ((i@@66 Int) ) (!  (=> (and (<= H@10 i@@66) (<= i@@66 (- T@8 1))) (and (= (select status@12 i@@66) IN_Q) (not (= (select items@8 i@@66) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 15) (- 0 14)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@179 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@179 NIL)) (not (= td@@179 ptTid))) (select steal_in_cs@8 td@@179)) (= H@10 (select h_ss@9 td@@179))) (< H@10 (select t_ss@9 td@@179))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@180 T@Tid) ) (!  (=> (and (and (and (not (= td@@180 NIL)) (not (= td@@180 ptTid))) (select steal_in_cs@8 td@@180)) (not (= H@10 (select h_ss@9 td@@180)))) (> H@10 (select h_ss@9 td@@180)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (forall ((i@@67 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@67) (<= i@@67 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@67) IN_Q) (not (= (select Civl_global_old_items@1 i@@67) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@181 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@181 NIL)) (not (= td@@181 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@181)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@181))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@181))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@182 T@Tid) ) (!  (=> (and (and (and (not (= td@@182 NIL)) (not (= td@@182 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@182)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@182)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@182)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (and (and (forall ((i@@68 Int) ) (!  (=> (and (<= H@10 i@@68) (<= i@@68 (- T@8 1))) (and (= (select status@12 i@@68) IN_Q) (not (= (select items@8 i@@68) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (forall ((i@@69 Int) ) (!  (=> (and (<= H@10 i@@69) (<= i@@69 (- T@8 1))) (and (= (select status@12 i@@69) IN_Q) (not (= (select items@8 i@@69) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (= (ControlFlow 0 12) (- 0 11)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@183 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@183 NIL)) (not (= td@@183 ptTid))) (select steal_in_cs@8 td@@183)) (= H@10 (select h_ss@9 td@@183))) (< H@10 (select t_ss@9 td@@183))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@184 T@Tid) ) (!  (=> (and (and (and (not (= td@@184 NIL)) (not (= td@@184 ptTid))) (select steal_in_cs@8 td@@184)) (not (= H@10 (select h_ss@9 td@@184)))) (> H@10 (select h_ss@9 td@@184)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (forall ((i@@70 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@70) (<= i@@70 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@70) IN_Q) (not (= (select Civl_global_old_items@1 i@@70) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@185 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@185 NIL)) (not (= td@@185 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@185)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@185))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@185))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@186 T@Tid) ) (!  (=> (and (and (and (not (= td@@186 NIL)) (not (= td@@186 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@186)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@186)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@186)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (and (forall ((i@@71 Int) ) (!  (=> (and (<= H@10 i@@71) (<= i@@71 (- T@8 1))) (and (= (select status@12 i@@71) IN_Q) (not (= (select items@8 i@@71) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q)))) (=> (and (and (forall ((i@@72 Int) ) (!  (=> (and (<= H@10 i@@72) (<= i@@72 (- T@8 1))) (and (= (select status@12 i@@72) IN_Q) (not (= (select items@8 i@@72) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 8) (- 0 7)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@187 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@187 NIL)) (not (= td@@187 ptTid))) (select steal_in_cs@8 td@@187)) (= H@10 (select h_ss@9 td@@187))) (< H@10 (select t_ss@9 td@@187))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@188 T@Tid) ) (!  (=> (and (and (and (not (= td@@188 NIL)) (not (= td@@188 ptTid))) (select steal_in_cs@8 td@@188)) (not (= H@10 (select h_ss@9 td@@188)))) (> H@10 (select h_ss@9 td@@188)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (and (forall ((i@@73 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@73) (<= i@@73 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@73) IN_Q) (not (= (select Civl_global_old_items@1 i@@73) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@189 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@189 NIL)) (not (= td@@189 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@189)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@189))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@189))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@190 T@Tid) ) (!  (=> (and (and (and (not (= td@@190 NIL)) (not (= td@@190 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@190)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@190)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@190)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (and (forall ((i@@74 Int) ) (!  (=> (and (<= H@10 i@@74) (<= i@@74 (- T@8 1))) (and (= (select status@12 i@@74) IN_Q) (not (= (select items@8 i@@74) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)))) (=> (and (and (forall ((i@@75 Int) ) (!  (=> (and (<= H@10 i@@75) (<= i@@75 (- T@8 1))) (and (= (select status@12 i@@75) IN_Q) (not (= (select items@8 i@@75) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (= (ControlFlow 0 5) (- 0 4)) (and (and (and (and (and (=> (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (and (and (and (= (select t_ss@9 ptTid) T@8) (<= H@10 T@8)) (not (= (select items@8 T@8) EMPTY))) (= (select status@12 T@8) IN_Q))) (=> put_in_cs@8 (not take_in_cs@9))) (=> take_in_cs@9 (not put_in_cs@8))) (=> (and take_in_cs@9 (not (= H@10 (select h_ss@9 ptTid)))) (> H@10 (select h_ss@9 ptTid)))) (forall ((td@@191 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@191 NIL)) (not (= td@@191 ptTid))) (select steal_in_cs@8 td@@191)) (= H@10 (select h_ss@9 td@@191))) (< H@10 (select t_ss@9 td@@191))) (and (not (= (select items@8 H@10) EMPTY)) (= (select status@12 H@10) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@192 T@Tid) ) (!  (=> (and (and (and (not (= td@@192 NIL)) (not (= td@@192 ptTid))) (select steal_in_cs@8 td@@192)) (not (= H@10 (select h_ss@9 td@@192)))) (> H@10 (select h_ss@9 td@@192)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((anon7_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@1) (=> (and (= T@8 T@1) (= items@8 items@1)) (=> (and (and (and (and (= status@12 status@1) (= take_in_cs@9 take_in_cs@1)) (and (= put_in_cs@8 put_in_cs@1) (= steal_in_cs@8 steal_in_cs@1))) (and (and (= h_ss@9 h_ss@1) (= t_ss@9 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@8 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 264) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 264) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 264) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 264) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 264) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 264) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 264) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 264) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 264) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 264) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 264) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 264) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 264) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 264) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 264) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 264) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 264) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 264) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 264) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 265) 262) anon7_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 265) 263) anon7_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 265) 264) anon7_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon8_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@4) (=> (and (= T@8 H@3) (= items@8 items@4)) (=> (and (and (and (and (= status@12 status@4) (= take_in_cs@9 false)) (and (= put_in_cs@8 put_in_cs@4) (= steal_in_cs@8 steal_in_cs@4))) (and (and (= h_ss@9 h_ss@5) (= t_ss@9 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@8 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 219) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 219) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 219) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 219) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 219) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 219) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 219) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 219) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 219) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 219) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 219) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 219) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 219) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 219) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 219) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 219) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 219) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 219) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 219) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon8_Then_correct  (=> (< t@1 H@3) (and (=> (= (ControlFlow 0 220) (- 0 222)) take_in_cs@4) (=> take_in_cs@4 (and (=> (= (ControlFlow 0 220) (- 0 221)) (= tid ptTid)) (=> (= tid ptTid) (and (and (=> (= (ControlFlow 0 220) 217) anon8_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 220) 218) anon8_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 220) 219) anon8_Then$1_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon9_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@5) (=> (and (= T@8 T@5) (= items@8 items@5)) (=> (and (and (and (and (= status@12 status@5) (= take_in_cs@9 false)) (and (= put_in_cs@8 put_in_cs@5) (= steal_in_cs@8 steal_in_cs@5))) (and (and (= h_ss@9 h_ss@6) (= t_ss@9 t_ss@6)) (and (= Civl_global_old_H@1 H@5) (= Civl_global_old_T@1 T@5)))) (and (and (and (= Civl_global_old_items@1 items@5) (= Civl_global_old_status@3 status@5)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@5) (= Civl_global_old_put_in_cs@1 put_in_cs@5))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@6)) (and (= Civl_global_old_t_ss@1 t_ss@6) (= Civl_linear_tid_available@8 Civl_linear_tid_available@6))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 205) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 205) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 205) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 205) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 205) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 205) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 205) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 205) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 205) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 205) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 205) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 205) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 205) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 205) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 205) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 205) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 205) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 205) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 205) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon9_Then_correct  (=> (> t@1 H@3) (and (=> (= (ControlFlow 0 206) (- 0 207)) (= tid ptTid)) (=> (= tid ptTid) (and (and (=> (= (ControlFlow 0 206) 203) anon9_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 206) 204) anon9_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 206) 205) anon9_Then$1_@2_Civl_NoninterferenceChecker_correct)))))))
(let ((anon10_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@8) (=> (and (= T@8 T@6) (= items@8 items@6)) (=> (and (and (and (and (= status@12 status@8) (= take_in_cs@9 take_in_cs@7)) (and (= put_in_cs@8 put_in_cs@6) (= steal_in_cs@8 steal_in_cs@6))) (and (and (= h_ss@9 h_ss@7) (= t_ss@9 t_ss@7)) (and (= Civl_global_old_H@1 H@6) (= Civl_global_old_T@1 T@6)))) (and (and (and (= Civl_global_old_items@1 items@6) (= Civl_global_old_status@3 status@6)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@6) (= Civl_global_old_put_in_cs@1 put_in_cs@6))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@6) (= Civl_global_old_h_ss@1 h_ss@7)) (and (= Civl_global_old_t_ss@1 t_ss@7) (= Civl_linear_tid_available@8 Civl_linear_tid_available@7))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 176) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 176) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 176) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 176) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 176) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 176) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 176) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 176) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 176) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 176) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 176) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 176) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 176) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 176) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 176) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 176) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 176) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 176) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 176) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon10_Then_correct  (=> inline$atomic_CAS_H_take$0$result@2 (and (and (=> (= (ControlFlow 0 187) 186) anon10_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 187) 181) anon10_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 187) 176) anon10_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon10_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@8) (=> (and (= T@8 T@6) (= items@8 items@6)) (=> (and (and (and (and (= status@12 status@8) (= take_in_cs@9 take_in_cs@7)) (and (= put_in_cs@8 put_in_cs@6) (= steal_in_cs@8 steal_in_cs@6))) (and (and (= h_ss@9 h_ss@7) (= t_ss@9 t_ss@7)) (and (= Civl_global_old_H@1 H@6) (= Civl_global_old_T@1 T@6)))) (and (and (and (= Civl_global_old_items@1 items@6) (= Civl_global_old_status@3 status@6)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@6) (= Civl_global_old_put_in_cs@1 put_in_cs@6))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@6) (= Civl_global_old_h_ss@1 h_ss@7)) (and (= Civl_global_old_t_ss@1 t_ss@7) (= Civl_linear_tid_available@8 Civl_linear_tid_available@7))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 173) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 173) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 173) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 173) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 173) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 173) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 173) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 173) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 173) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 173) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 173) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 173) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 173) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 173) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 173) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 173) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 173) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 173) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 173) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon10_Else_correct  (=> (not inline$atomic_CAS_H_take$0$result@2) (and (and (=> (= (ControlFlow 0 175) 171) anon10_Else_@2_anon7_LoopHead_correct) (=> (= (ControlFlow 0 175) 173) anon10_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 175) 174) anon10_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$atomic_CAS_H_take$0$anon3_Else_correct  (=> (not (= H@6 H@3)) (=> (and (and (= H@8 H@6) (= status@8 status@6)) (and (= take_in_cs@7 false) (= inline$atomic_CAS_H_take$0$result@2 false))) (and (=> (= (ControlFlow 0 189) 187) anon10_Then_correct) (=> (= (ControlFlow 0 189) 175) anon10_Else_correct))))))
(let ((inline$atomic_CAS_H_take$0$anon3_Then_correct  (=> (= H@6 H@3) (=> (and (= status@7 (store status@6 H@6 NOT_IN_Q)) (= H@7 (+ H@6 1))) (=> (and (and (= H@8 H@7) (= status@8 status@7)) (and (= take_in_cs@7 false) (= inline$atomic_CAS_H_take$0$result@2 true))) (and (=> (= (ControlFlow 0 188) 187) anon10_Then_correct) (=> (= (ControlFlow 0 188) 175) anon10_Else_correct)))))))
(let ((inline$atomic_CAS_H_take$0$Entry_correct  (=> (= inline$atomic_CAS_H_take$0$val@1 (+ H@3 1)) (and (=> (= (ControlFlow 0 190) 188) inline$atomic_CAS_H_take$0$anon3_Then_correct) (=> (= (ControlFlow 0 190) 189) inline$atomic_CAS_H_take$0$anon3_Else_correct)))))
(let ((anon5_0_correct  (and (=> (= (ControlFlow 0 191) (- 0 199)) (and (and (and (forall ((i@@76 Int) ) (!  (=> (and (<= H@5 i@@76) (<= i@@76 (- inline$atomic_writeT_take_eq$0$val@1 1))) (and (= (select status@5 i@@76) IN_Q) (not (= (select items@5 i@@76) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (= (select h_ss@6 tid) H@3)) (= (select t_ss@6 tid) t@1))) (=> (and (and (and (forall ((i@@77 Int) ) (!  (=> (and (<= H@5 i@@77) (<= i@@77 (- inline$atomic_writeT_take_eq$0$val@1 1))) (and (= (select status@5 i@@77) IN_Q) (not (= (select items@5 i@@77) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (= (select h_ss@6 tid) H@3)) (= (select t_ss@6 tid) t@1)) (and (=> (= (ControlFlow 0 191) (- 0 198)) (and (and (and (and (and (=> (and take_in_cs@5 (< (select h_ss@6 ptTid) (select t_ss@6 ptTid))) (and (and (and (= (select t_ss@6 ptTid) inline$atomic_writeT_take_eq$0$val@1) (<= H@5 inline$atomic_writeT_take_eq$0$val@1)) (not (= (select items@5 inline$atomic_writeT_take_eq$0$val@1) EMPTY))) (= (select status@5 inline$atomic_writeT_take_eq$0$val@1) IN_Q))) (=> put_in_cs@5 (not take_in_cs@5))) (=> take_in_cs@5 (not put_in_cs@5))) (=> (and take_in_cs@5 (not (= H@5 (select h_ss@6 ptTid)))) (> H@5 (select h_ss@6 ptTid)))) (forall ((td@@193 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@193 NIL)) (not (= td@@193 ptTid))) (select steal_in_cs@5 td@@193)) (= H@5 (select h_ss@6 td@@193))) (< H@5 (select t_ss@6 td@@193))) (and (not (= (select items@5 H@5) EMPTY)) (= (select status@5 H@5) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@194 T@Tid) ) (!  (=> (and (and (and (not (= td@@194 NIL)) (not (= td@@194 ptTid))) (select steal_in_cs@5 td@@194)) (not (= H@5 (select h_ss@6 td@@194)))) (> H@5 (select h_ss@6 td@@194)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@5 (< (select h_ss@6 ptTid) (select t_ss@6 ptTid))) (and (and (and (= (select t_ss@6 ptTid) inline$atomic_writeT_take_eq$0$val@1) (<= H@5 inline$atomic_writeT_take_eq$0$val@1)) (not (= (select items@5 inline$atomic_writeT_take_eq$0$val@1) EMPTY))) (= (select status@5 inline$atomic_writeT_take_eq$0$val@1) IN_Q))) (=> put_in_cs@5 (not take_in_cs@5))) (=> take_in_cs@5 (not put_in_cs@5))) (=> (and take_in_cs@5 (not (= H@5 (select h_ss@6 ptTid)))) (> H@5 (select h_ss@6 ptTid)))) (forall ((td@@195 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@195 NIL)) (not (= td@@195 ptTid))) (select steal_in_cs@5 td@@195)) (= H@5 (select h_ss@6 td@@195))) (< H@5 (select t_ss@6 td@@195))) (and (not (= (select items@5 H@5) EMPTY)) (= (select status@5 H@5) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@196 T@Tid) ) (!  (=> (and (and (and (not (= td@@196 NIL)) (not (= td@@196 ptTid))) (select steal_in_cs@5 td@@196)) (not (= H@5 (select h_ss@6 td@@196)))) (> H@5 (select h_ss@6 td@@196)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 191) (- 0 197)) (= inline$atomic_writeT_take_eq$0$val@1 (+ H@3 1))) (=> (= inline$atomic_writeT_take_eq$0$val@1 (+ H@3 1)) (and (=> (= (ControlFlow 0 191) (- 0 196)) (<= H@5 H@5)) (=> (<= H@5 H@5) (and (=> (= (ControlFlow 0 191) (- 0 195)) (= inline$atomic_writeT_take_eq$0$val@1 inline$atomic_writeT_take_eq$0$val@1)) (=> (= inline$atomic_writeT_take_eq$0$val@1 inline$atomic_writeT_take_eq$0$val@1) (and (=> (= (ControlFlow 0 191) (- 0 194)) (= inline$atomic_readItems$0$y@2 (select items@5 t@1))) (=> (= inline$atomic_readItems$0$y@2 (select items@5 t@1)) (and (=> (= (ControlFlow 0 191) (- 0 193)) (not put_in_cs@5)) (=> (not put_in_cs@5) (=> (and (or false true) (= Civl_linear_tid_available@7 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (forall ((i@@78 Int) ) (!  (=> (and (<= H@6 i@@78) (<= i@@78 (- T@6 1))) (and (= (select status@6 i@@78) IN_Q) (not (= (select items@6 i@@78) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (= (select h_ss@7 tid) H@3)) (= (select t_ss@7 tid) t@1)) (=> (and (and (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@6 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@6 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@6 (select h_ss@7 ptTid)))) (> H@6 (select h_ss@7 ptTid)))) (forall ((td@@197 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@197 NIL)) (not (= td@@197 ptTid))) (select steal_in_cs@6 td@@197)) (= H@6 (select h_ss@7 td@@197))) (< H@6 (select t_ss@7 td@@197))) (and (not (= (select items@6 H@6) EMPTY)) (= (select status@6 H@6) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@198 T@Tid) ) (!  (=> (and (and (and (not (= td@@198 NIL)) (not (= td@@198 ptTid))) (select steal_in_cs@6 td@@198)) (not (= H@6 (select h_ss@7 td@@198)))) (> H@6 (select h_ss@7 td@@198)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= T@6 (+ H@3 1))) (and (and (<= H@5 H@6) (= inline$atomic_writeT_take_eq$0$val@1 T@6)) (and (= inline$atomic_readItems$0$y@2 (select items@6 t@1)) (not put_in_cs@6)))) (and (=> (= (ControlFlow 0 191) (- 0 192)) (= tid ptTid)) (=> (= tid ptTid) (=> (= (ControlFlow 0 191) 190) inline$atomic_CAS_H_take$0$Entry_correct))))))))))))))))))))))
(let ((anon9_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@5) (=> (and (= T@8 inline$atomic_writeT_take_eq$0$val@1) (= items@8 items@5)) (=> (and (and (and (and (= status@12 status@5) (= take_in_cs@9 take_in_cs@5)) (and (= put_in_cs@8 put_in_cs@5) (= steal_in_cs@8 steal_in_cs@5))) (and (and (= h_ss@9 h_ss@6) (= t_ss@9 t_ss@6)) (and (= Civl_global_old_H@1 H@5) (= Civl_global_old_T@1 T@5)))) (and (and (and (= Civl_global_old_items@1 items@5) (= Civl_global_old_status@3 status@5)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@5) (= Civl_global_old_put_in_cs@1 put_in_cs@5))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@6)) (and (= Civl_global_old_t_ss@1 t_ss@6) (= Civl_linear_tid_available@8 Civl_linear_tid_available@6))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 168) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 168) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 168) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 168) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 168) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 168) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 168) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 168) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 168) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 168) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 168) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 168) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 168) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 168) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 168) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 168) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 168) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 168) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 168) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_writeT_take_eq$0$Entry_correct  (=> (= inline$atomic_writeT_take_eq$0$val@1 (+ H@3 1)) (and (and (=> (= (ControlFlow 0 200) 191) anon5_0_correct) (=> (= (ControlFlow 0 200) 168) anon9_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 200) 169) anon9_Else$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon9_Else_correct  (=> (>= H@3 t@1) (and (=> (= (ControlFlow 0 201) (- 0 202)) (= tid ptTid)) (=> (= tid ptTid) (=> (= (ControlFlow 0 201) 200) inline$atomic_writeT_take_eq$0$Entry_correct))))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 208) (- 0 214)) (>= H@4 H@3)) (=> (>= H@4 H@3) (and (=> (= (ControlFlow 0 208) (- 0 213)) (and (and (and (and (forall ((i@@79 Int) ) (!  (=> (and (<= H@4 i@@79) (<= i@@79 T@4)) (and (= (select status@4 i@@79) IN_Q) (not (= (select items@4 i@@79) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) take_in_cs@4) (= (select h_ss@5 tid) H@3)) (= (select t_ss@5 tid) t@1))) (=> (and (and (and (and (forall ((i@@80 Int) ) (!  (=> (and (<= H@4 i@@80) (<= i@@80 T@4)) (and (= (select status@4 i@@80) IN_Q) (not (= (select items@4 i@@80) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) take_in_cs@4) (= (select h_ss@5 tid) H@3)) (= (select t_ss@5 tid) t@1)) (and (=> (= (ControlFlow 0 208) (- 0 212)) (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (and (and (and (= (select t_ss@5 ptTid) T@4) (<= H@4 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@4 T@4) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@5 ptTid)))) (> H@4 (select h_ss@5 ptTid)))) (forall ((td@@199 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@199 NIL)) (not (= td@@199 ptTid))) (select steal_in_cs@4 td@@199)) (= H@4 (select h_ss@5 td@@199))) (< H@4 (select t_ss@5 td@@199))) (and (not (= (select items@4 H@4) EMPTY)) (= (select status@4 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@200 T@Tid) ) (!  (=> (and (and (and (not (= td@@200 NIL)) (not (= td@@200 ptTid))) (select steal_in_cs@4 td@@200)) (not (= H@4 (select h_ss@5 td@@200)))) (> H@4 (select h_ss@5 td@@200)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (and (and (and (= (select t_ss@5 ptTid) T@4) (<= H@4 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@4 T@4) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@5 ptTid)))) (> H@4 (select h_ss@5 ptTid)))) (forall ((td@@201 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@201 NIL)) (not (= td@@201 ptTid))) (select steal_in_cs@4 td@@201)) (= H@4 (select h_ss@5 td@@201))) (< H@4 (select t_ss@5 td@@201))) (and (not (= (select items@4 H@4) EMPTY)) (= (select status@4 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@202 T@Tid) ) (!  (=> (and (and (and (not (= td@@202 NIL)) (not (= td@@202 ptTid))) (select steal_in_cs@4 td@@202)) (not (= H@4 (select h_ss@5 td@@202)))) (> H@4 (select h_ss@5 td@@202)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 208) (- 0 211)) (and (= t@1 T@4) (= inline$atomic_readItems$0$y@2 (select items@4 T@4)))) (=> (and (= t@1 T@4) (= inline$atomic_readItems$0$y@2 (select items@4 T@4))) (and (=> (= (ControlFlow 0 208) (- 0 210)) (=> (> T@4 H@4) (not (= (select items@4 T@4) EMPTY)))) (=> (=> (> T@4 H@4) (not (= (select items@4 T@4) EMPTY))) (and (=> (= (ControlFlow 0 208) (- 0 209)) (and (and (and (<= H@4 H@4) (= T@4 T@4)) (not put_in_cs@4)) take_in_cs@4)) (=> (and (and (and (<= H@4 H@4) (= T@4 T@4)) (not put_in_cs@4)) take_in_cs@4) (=> (or false true) (=> (and (= Civl_linear_tid_available@6 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (>= H@5 H@3)) (=> (and (and (and (and (forall ((i@@81 Int) ) (!  (=> (and (<= H@5 i@@81) (<= i@@81 T@5)) (and (= (select status@5 i@@81) IN_Q) (not (= (select items@5 i@@81) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) take_in_cs@5) (= (select h_ss@6 tid) H@3)) (= (select t_ss@6 tid) t@1)) (=> (and (and (and (and (and (and (and (=> (and take_in_cs@5 (< (select h_ss@6 ptTid) (select t_ss@6 ptTid))) (and (and (and (= (select t_ss@6 ptTid) T@5) (<= H@5 T@5)) (not (= (select items@5 T@5) EMPTY))) (= (select status@5 T@5) IN_Q))) (=> put_in_cs@5 (not take_in_cs@5))) (=> take_in_cs@5 (not put_in_cs@5))) (=> (and take_in_cs@5 (not (= H@5 (select h_ss@6 ptTid)))) (> H@5 (select h_ss@6 ptTid)))) (forall ((td@@203 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@203 NIL)) (not (= td@@203 ptTid))) (select steal_in_cs@5 td@@203)) (= H@5 (select h_ss@6 td@@203))) (< H@5 (select t_ss@6 td@@203))) (and (not (= (select items@5 H@5) EMPTY)) (= (select status@5 H@5) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@204 T@Tid) ) (!  (=> (and (and (and (not (= td@@204 NIL)) (not (= td@@204 ptTid))) (select steal_in_cs@5 td@@204)) (not (= H@5 (select h_ss@6 td@@204)))) (> H@5 (select h_ss@6 td@@204)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= t@1 T@5) (= inline$atomic_readItems$0$y@2 (select items@5 T@5))) (=> (> T@5 H@5) (not (= (select items@5 T@5) EMPTY))))) (and (and (and (<= H@4 H@5) (= T@4 T@5)) (not put_in_cs@5)) take_in_cs@5)) (and (=> (= (ControlFlow 0 208) 206) anon9_Then_correct) (=> (= (ControlFlow 0 208) 201) anon9_Else_correct))))))))))))))))))))
(let ((anon8_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@4) (=> (and (= T@8 T@4) (= items@8 items@4)) (=> (and (and (and (and (= status@12 status@4) (= take_in_cs@9 take_in_cs@4)) (and (= put_in_cs@8 put_in_cs@4) (= steal_in_cs@8 steal_in_cs@4))) (and (and (= h_ss@9 h_ss@5) (= t_ss@9 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@8 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 166) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 166) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 166) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 166) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 166) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 166) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 166) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 166) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 166) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 166) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 166) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 166) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 166) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 166) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 166) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 166) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 166) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 166) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 166) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readItems$0$anon0_correct  (=> (and (= inline$atomic_readItems$0$y@2 (select items@4 t@1)) (= inline$atomic_readItems$0$b@2 (select status@4 t@1))) (and (and (=> (= (ControlFlow 0 215) 208) anon3_0_correct) (=> (= (ControlFlow 0 215) 166) anon8_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 215) 167) anon8_Else$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon8_Else_correct  (=> (and (<= H@3 t@1) (= (ControlFlow 0 216) 215)) inline$atomic_readItems$0$anon0_correct)))
(let ((anon7_LoopBody_0_correct  (and (=> (= (ControlFlow 0 223) (- 0 242)) (and (and (and (and (and (forall ((i@@82 Int) ) (!  (=> (and (<= H@3 i@@82) (<= i@@82 T@3)) (and (= (select status@3 i@@82) IN_Q) (not (= (select items@3 i@@82) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) true) (not put_in_cs@3)) (= (select h_ss@4 tid) H@3)) (= (select t_ss@4 tid) t@1))) (=> (and (and (and (and (and (forall ((i@@83 Int) ) (!  (=> (and (<= H@3 i@@83) (<= i@@83 T@3)) (and (= (select status@3 i@@83) IN_Q) (not (= (select items@3 i@@83) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) true) (not put_in_cs@3)) (= (select h_ss@4 tid) H@3)) (= (select t_ss@4 tid) t@1)) (and (=> (= (ControlFlow 0 223) (- 0 241)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@205 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@205 NIL)) (not (= td@@205 ptTid))) (select steal_in_cs@3 td@@205)) (= H@3 (select h_ss@4 td@@205))) (< H@3 (select t_ss@4 td@@205))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@206 T@Tid) ) (!  (=> (and (and (and (not (= td@@206 NIL)) (not (= td@@206 ptTid))) (select steal_in_cs@3 td@@206)) (not (= H@3 (select h_ss@4 td@@206)))) (> H@3 (select h_ss@4 td@@206)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= (select t_ss@4 ptTid) T@3)))) (and (=> (= (ControlFlow 0 223) (- 0 240)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@207 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@207 NIL)) (not (= td@@207 ptTid))) (select steal_in_cs@3 td@@207)) (= H@3 (select h_ss@4 td@@207))) (< H@3 (select t_ss@4 td@@207))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@208 T@Tid) ) (!  (=> (and (and (and (not (= td@@208 NIL)) (not (= td@@208 ptTid))) (select steal_in_cs@3 td@@208)) (not (= H@3 (select h_ss@4 td@@208)))) (> H@3 (select h_ss@4 td@@208)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (<= H@3 T@3)))) (and (=> (= (ControlFlow 0 223) (- 0 239)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@209 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@209 NIL)) (not (= td@@209 ptTid))) (select steal_in_cs@3 td@@209)) (= H@3 (select h_ss@4 td@@209))) (< H@3 (select t_ss@4 td@@209))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@210 T@Tid) ) (!  (=> (and (and (and (not (= td@@210 NIL)) (not (= td@@210 ptTid))) (select steal_in_cs@3 td@@210)) (not (= H@3 (select h_ss@4 td@@210)))) (> H@3 (select h_ss@4 td@@210)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (not (= (select items@3 T@3) EMPTY))))) (and (=> (= (ControlFlow 0 223) (- 0 238)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@211 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@211 NIL)) (not (= td@@211 ptTid))) (select steal_in_cs@3 td@@211)) (= H@3 (select h_ss@4 td@@211))) (< H@3 (select t_ss@4 td@@211))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@212 T@Tid) ) (!  (=> (and (and (and (not (= td@@212 NIL)) (not (= td@@212 ptTid))) (select steal_in_cs@3 td@@212)) (not (= H@3 (select h_ss@4 td@@212)))) (> H@3 (select h_ss@4 td@@212)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= (select status@3 T@3) IN_Q)))) (and (=> (= (ControlFlow 0 223) (- 0 237)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@213 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@213 NIL)) (not (= td@@213 ptTid))) (select steal_in_cs@3 td@@213)) (= H@3 (select h_ss@4 td@@213))) (< H@3 (select t_ss@4 td@@213))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@214 T@Tid) ) (!  (=> (and (and (and (not (= td@@214 NIL)) (not (= td@@214 ptTid))) (select steal_in_cs@3 td@@214)) (not (= H@3 (select h_ss@4 td@@214)))) (> H@3 (select h_ss@4 td@@214)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@3 (not true)))) (and (=> (= (ControlFlow 0 223) (- 0 236)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@215 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@215 NIL)) (not (= td@@215 ptTid))) (select steal_in_cs@3 td@@215)) (= H@3 (select h_ss@4 td@@215))) (< H@3 (select t_ss@4 td@@215))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@216 T@Tid) ) (!  (=> (and (and (and (not (= td@@216 NIL)) (not (= td@@216 ptTid))) (select steal_in_cs@3 td@@216)) (not (= H@3 (select h_ss@4 td@@216)))) (> H@3 (select h_ss@4 td@@216)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> true (not put_in_cs@3)))) (and (=> (= (ControlFlow 0 223) (- 0 235)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@217 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@217 NIL)) (not (= td@@217 ptTid))) (select steal_in_cs@3 td@@217)) (= H@3 (select h_ss@4 td@@217))) (< H@3 (select t_ss@4 td@@217))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@218 T@Tid) ) (!  (=> (and (and (and (not (= td@@218 NIL)) (not (= td@@218 ptTid))) (select steal_in_cs@3 td@@218)) (not (= H@3 (select h_ss@4 td@@218)))) (> H@3 (select h_ss@4 td@@218)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid))))) (and (=> (= (ControlFlow 0 223) (- 0 234)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@219 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@219 NIL)) (not (= td@@219 ptTid))) (select steal_in_cs@3 td@@219)) (= H@3 (select h_ss@4 td@@219))) (< H@3 (select t_ss@4 td@@219))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@220 T@Tid) ) (!  (=> (and (and (and (not (= td@@220 NIL)) (not (= td@@220 ptTid))) (select steal_in_cs@3 td@@220)) (not (= H@3 (select h_ss@4 td@@220)))) (> H@3 (select h_ss@4 td@@220)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@221 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@221 NIL)) (not (= td@@221 ptTid))) (select steal_in_cs@3 td@@221)) (= H@3 (select h_ss@4 td@@221))) (< H@3 (select t_ss@4 td@@221))) (not (= (select items@3 H@3) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |81|
)))) (and (=> (= (ControlFlow 0 223) (- 0 233)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@222 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@222 NIL)) (not (= td@@222 ptTid))) (select steal_in_cs@3 td@@222)) (= H@3 (select h_ss@4 td@@222))) (< H@3 (select t_ss@4 td@@222))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@223 T@Tid) ) (!  (=> (and (and (and (not (= td@@223 NIL)) (not (= td@@223 ptTid))) (select steal_in_cs@3 td@@223)) (not (= H@3 (select h_ss@4 td@@223)))) (> H@3 (select h_ss@4 td@@223)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@224 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@224 NIL)) (not (= td@@224 ptTid))) (select steal_in_cs@3 td@@224)) (= H@3 (select h_ss@4 td@@224))) (< H@3 (select t_ss@4 td@@224))) (= (select status@3 H@3) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |82|
)))) (and (=> (= (ControlFlow 0 223) (- 0 232)) (or (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@225 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@225 NIL)) (not (= td@@225 ptTid))) (select steal_in_cs@3 td@@225)) (= H@3 (select h_ss@4 td@@225))) (< H@3 (select t_ss@4 td@@225))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@226 T@Tid) ) (!  (=> (and (and (and (not (= td@@226 NIL)) (not (= td@@226 ptTid))) (select steal_in_cs@3 td@@226)) (not (= H@3 (select h_ss@4 td@@226)))) (> H@3 (select h_ss@4 td@@226)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@227 T@Tid) ) (!  (=> (and (and (and (not (= td@@227 NIL)) (not (= td@@227 ptTid))) (select steal_in_cs@3 td@@227)) (not (= H@3 (select h_ss@4 td@@227)))) (> H@3 (select h_ss@4 td@@227)))
 :qid |wsqbpl.44:14|
 :skolemid |83|
)))) (and (=> (= (ControlFlow 0 223) (- 0 231)) (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@228 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@228 NIL)) (not (= td@@228 ptTid))) (select steal_in_cs@3 td@@228)) (= H@3 (select h_ss@4 td@@228))) (< H@3 (select t_ss@4 td@@228))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@229 T@Tid) ) (!  (=> (and (and (and (not (= td@@229 NIL)) (not (= td@@229 ptTid))) (select steal_in_cs@3 td@@229)) (not (= H@3 (select h_ss@4 td@@229)))) (> H@3 (select h_ss@4 td@@229)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and true (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not true))) (=> true (not put_in_cs@3))) (=> (and true (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@230 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@230 NIL)) (not (= td@@230 ptTid))) (select steal_in_cs@3 td@@230)) (= H@3 (select h_ss@4 td@@230))) (< H@3 (select t_ss@4 td@@230))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@231 T@Tid) ) (!  (=> (and (and (and (not (= td@@231 NIL)) (not (= td@@231 ptTid))) (select steal_in_cs@3 td@@231)) (not (= H@3 (select h_ss@4 td@@231)))) (> H@3 (select h_ss@4 td@@231)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 223) (- 0 230)) (= t@1 T@3)) (=> (= t@1 T@3) (and (=> (= (ControlFlow 0 223) (- 0 229)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 223) (- 0 228)) (=> (= (select items@3 t@1) EMPTY) (> H@3 t@1))) (=> (=> (= (select items@3 t@1) EMPTY) (> H@3 t@1)) (and (=> (= (ControlFlow 0 223) (- 0 227)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 223) (- 0 226)) (= T@3 T@3)) (=> (= T@3 T@3) (and (=> (= (ControlFlow 0 223) (- 0 225)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 223) (- 0 224)) (= H@3 H@3)) (=> (= H@3 H@3) (=> (and (or false true) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (forall ((i@@84 Int) ) (!  (=> (and (<= H@4 i@@84) (<= i@@84 T@4)) (and (= (select status@4 i@@84) IN_Q) (not (= (select items@4 i@@84) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) take_in_cs@4) (not put_in_cs@4)) (= (select h_ss@5 tid) H@3)) (= (select t_ss@5 tid) t@1)) (=> (and (and (and (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (and (and (and (= (select t_ss@5 ptTid) T@4) (<= H@4 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@4 T@4) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@5 ptTid)))) (> H@4 (select h_ss@5 ptTid)))) (forall ((td@@232 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@232 NIL)) (not (= td@@232 ptTid))) (select steal_in_cs@4 td@@232)) (= H@4 (select h_ss@5 td@@232))) (< H@4 (select t_ss@5 td@@232))) (and (not (= (select items@4 H@4) EMPTY)) (= (select status@4 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@233 T@Tid) ) (!  (=> (and (and (and (not (= td@@233 NIL)) (not (= td@@233 ptTid))) (select steal_in_cs@4 td@@233)) (not (= H@4 (select h_ss@5 td@@233)))) (> H@4 (select h_ss@5 td@@233)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= t@1 T@4)) (and (<= H@3 H@4) (=> (= (select items@4 t@1) EMPTY) (> H@4 t@1)))) (and (and (<= H@3 H@4) (= T@3 T@4)) (and (<= H@3 H@4) (= H@3 H@3)))) (and (=> (= (ControlFlow 0 223) 220) anon8_Then_correct) (=> (= (ControlFlow 0 223) 216) anon8_Else_correct)))))))))))))))))))))))))))))))))))
(let ((anon7_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@3) (=> (and (= T@8 T@3) (= items@8 items@3)) (=> (and (and (and (and (= status@12 status@3) (= take_in_cs@9 true)) (and (= put_in_cs@8 put_in_cs@3) (= steal_in_cs@8 steal_in_cs@3))) (and (and (= h_ss@9 h_ss@4) (= t_ss@9 t_ss@4)) (and (= Civl_global_old_H@1 H@3) (= Civl_global_old_T@1 T@3)))) (and (and (and (= Civl_global_old_items@1 items@3) (= Civl_global_old_status@3 status@3)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@3) (= Civl_global_old_put_in_cs@1 put_in_cs@3))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@3) (= Civl_global_old_h_ss@1 h_ss@3)) (and (= Civl_global_old_t_ss@1 t_ss@4) (= Civl_linear_tid_available@8 Civl_linear_tid_available@4))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 164) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 164) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 164) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 164) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 164) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readH_take$0$anon0_correct  (=> (= h_ss@4 (store h_ss@3 tid H@3)) (and (and (=> (= (ControlFlow 0 243) 223) anon7_LoopBody_0_correct) (=> (= (ControlFlow 0 243) 164) anon7_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 243) 165) anon7_LoopBody_1$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_1_correct  (and (=> (= (ControlFlow 0 244) (- 0 250)) (and (and (and (and (forall ((i@@85 Int) ) (!  (=> (and (<= H@2 i@@85) (<= i@@85 t@1)) (and (= (select status@2 i@@85) IN_Q) (not (= (select items@2 i@@85) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@2)) (not put_in_cs@2)) (= (select t_ss@3 tid) t@1))) (=> (and (and (and (and (forall ((i@@86 Int) ) (!  (=> (and (<= H@2 i@@86) (<= i@@86 t@1)) (and (= (select status@2 i@@86) IN_Q) (not (= (select items@2 i@@86) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@2)) (not put_in_cs@2)) (= (select t_ss@3 tid) t@1)) (and (=> (= (ControlFlow 0 244) (- 0 249)) (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@2 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) t@1) (<= H@2 t@1)) (not (= (select items@2 t@1) EMPTY))) (= (select status@2 t@1) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@2 ptTid)))) (> H@2 (select h_ss@2 ptTid)))) (forall ((td@@234 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@234 NIL)) (not (= td@@234 ptTid))) (select steal_in_cs@2 td@@234)) (= H@2 (select h_ss@2 td@@234))) (< H@2 (select t_ss@3 td@@234))) (and (not (= (select items@2 H@2) EMPTY)) (= (select status@2 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@235 T@Tid) ) (!  (=> (and (and (and (not (= td@@235 NIL)) (not (= td@@235 ptTid))) (select steal_in_cs@2 td@@235)) (not (= H@2 (select h_ss@2 td@@235)))) (> H@2 (select h_ss@2 td@@235)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@2 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) t@1) (<= H@2 t@1)) (not (= (select items@2 t@1) EMPTY))) (= (select status@2 t@1) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@2 ptTid)))) (> H@2 (select h_ss@2 ptTid)))) (forall ((td@@236 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@236 NIL)) (not (= td@@236 ptTid))) (select steal_in_cs@2 td@@236)) (= H@2 (select h_ss@2 td@@236))) (< H@2 (select t_ss@3 td@@236))) (and (not (= (select items@2 H@2) EMPTY)) (= (select status@2 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@237 T@Tid) ) (!  (=> (and (and (and (not (= td@@237 NIL)) (not (= td@@237 ptTid))) (select steal_in_cs@2 td@@237)) (not (= H@2 (select h_ss@2 td@@237)))) (> H@2 (select h_ss@2 td@@237)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 244) (- 0 248)) (= t@1 t@1)) (=> (= t@1 t@1) (and (=> (= (ControlFlow 0 244) (- 0 247)) (=> (= (select items@2 t@1) EMPTY) (> H@2 t@1))) (=> (=> (= (select items@2 t@1) EMPTY) (> H@2 t@1)) (and (=> (= (ControlFlow 0 244) (- 0 246)) (and (<= H@2 H@2) (= t@1 t@1))) (=> (and (<= H@2 H@2) (= t@1 t@1)) (=> (and (or false true) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (forall ((i@@87 Int) ) (!  (=> (and (<= H@3 i@@87) (<= i@@87 T@3)) (and (= (select status@3 i@@87) IN_Q) (not (= (select items@3 i@@87) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (= (select t_ss@4 tid) t@1)) (=> (and (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@3 ptTid)))) (> H@3 (select h_ss@3 ptTid)))) (forall ((td@@238 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@238 NIL)) (not (= td@@238 ptTid))) (select steal_in_cs@3 td@@238)) (= H@3 (select h_ss@3 td@@238))) (< H@3 (select t_ss@4 td@@238))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@239 T@Tid) ) (!  (=> (and (and (and (not (= td@@239 NIL)) (not (= td@@239 ptTid))) (select steal_in_cs@3 td@@239)) (not (= H@3 (select h_ss@3 td@@239)))) (> H@3 (select h_ss@3 td@@239)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= t@1 T@3) (=> (= (select items@3 t@1) EMPTY) (> H@3 t@1))) (and (<= H@2 H@3) (= t@1 T@3)))) (and (=> (= (ControlFlow 0 244) (- 0 245)) (= tid ptTid)) (=> (= tid ptTid) (=> (= (ControlFlow 0 244) 243) inline$atomic_readH_take$0$anon0_correct))))))))))))))))))
(let ((anon7_LoopBody_2$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@2) (=> (and (= T@8 t@1) (= items@8 items@2)) (=> (and (and (and (and (= status@12 status@2) (= take_in_cs@9 take_in_cs@2)) (and (= put_in_cs@8 put_in_cs@2) (= steal_in_cs@8 steal_in_cs@2))) (and (and (= h_ss@9 h_ss@2) (= t_ss@9 t_ss@3)) (and (= Civl_global_old_H@1 H@2) (= Civl_global_old_T@1 T@2)))) (and (and (and (= Civl_global_old_items@1 items@2) (= Civl_global_old_status@3 status@2)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@2) (= Civl_global_old_put_in_cs@1 put_in_cs@2))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@2) (= Civl_global_old_h_ss@1 h_ss@2)) (and (= Civl_global_old_t_ss@1 t_ss@2) (= Civl_linear_tid_available@8 Civl_linear_tid_available@3))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 162) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 162) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 162) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 162) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 162) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 162) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 162) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 162) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 162) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_writeT_take$0$anon0_correct  (=> (= t_ss@3 (store t_ss@2 tid t@1)) (and (and (=> (= (ControlFlow 0 251) 244) anon7_LoopBody_1_correct) (=> (= (ControlFlow 0 251) 162) anon7_LoopBody_2$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 251) 163) anon7_LoopBody_2$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_2_correct  (and (=> (= (ControlFlow 0 252) (- 0 258)) (and (and (and (forall ((i@@88 Int) ) (!  (=> (and (<= H@1 i@@88) (<= i@@88 (- T@1 1))) (and (= (select status@1 i@@88) IN_Q) (not (= (select items@1 i@@88) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@1)) (not put_in_cs@1))) (=> (and (and (and (forall ((i@@89 Int) ) (!  (=> (and (<= H@1 i@@89) (<= i@@89 (- T@1 1))) (and (= (select status@1 i@@89) IN_Q) (not (= (select items@1 i@@89) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@1)) (not put_in_cs@1)) (and (=> (= (ControlFlow 0 252) (- 0 257)) (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@240 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@240 NIL)) (not (= td@@240 ptTid))) (select steal_in_cs@1 td@@240)) (= H@1 (select h_ss@1 td@@240))) (< H@1 (select t_ss@1 td@@240))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@241 T@Tid) ) (!  (=> (and (and (and (not (= td@@241 NIL)) (not (= td@@241 ptTid))) (select steal_in_cs@1 td@@241)) (not (= H@1 (select h_ss@1 td@@241)))) (> H@1 (select h_ss@1 td@@241)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@242 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@242 NIL)) (not (= td@@242 ptTid))) (select steal_in_cs@1 td@@242)) (= H@1 (select h_ss@1 td@@242))) (< H@1 (select t_ss@1 td@@242))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@243 T@Tid) ) (!  (=> (and (and (and (not (= td@@243 NIL)) (not (= td@@243 ptTid))) (select steal_in_cs@1 td@@243)) (not (= H@1 (select h_ss@1 td@@243)))) (> H@1 (select h_ss@1 td@@243)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 252) (- 0 256)) (= T@1 T@1)) (=> (= T@1 T@1) (and (=> (= (ControlFlow 0 252) (- 0 255)) (=> (= (select items@1 (- T@1 1)) EMPTY) (> H@1 (- T@1 1)))) (=> (=> (= (select items@1 (- T@1 1)) EMPTY) (> H@1 (- T@1 1))) (and (=> (= (ControlFlow 0 252) (- 0 254)) (and (<= H@1 H@1) (= T@1 T@1))) (=> (and (<= H@1 H@1) (= T@1 T@1)) (=> (and (or false true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (forall ((i@@90 Int) ) (!  (=> (and (<= H@2 i@@90) (<= i@@90 (- T@2 1))) (and (= (select status@2 i@@90) IN_Q) (not (= (select items@2 i@@90) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@2)) (not put_in_cs@2)) (=> (and (and (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@2 ptTid) (select t_ss@2 ptTid))) (and (and (and (= (select t_ss@2 ptTid) T@2) (<= H@2 T@2)) (not (= (select items@2 T@2) EMPTY))) (= (select status@2 T@2) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@2 ptTid)))) (> H@2 (select h_ss@2 ptTid)))) (forall ((td@@244 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@244 NIL)) (not (= td@@244 ptTid))) (select steal_in_cs@2 td@@244)) (= H@2 (select h_ss@2 td@@244))) (< H@2 (select t_ss@2 td@@244))) (and (not (= (select items@2 H@2) EMPTY)) (= (select status@2 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@245 T@Tid) ) (!  (=> (and (and (and (not (= td@@245 NIL)) (not (= td@@245 ptTid))) (select steal_in_cs@2 td@@245)) (not (= H@2 (select h_ss@2 td@@245)))) (> H@2 (select h_ss@2 td@@245)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (= T@1 T@2) (=> (= (select items@2 (- T@1 1)) EMPTY) (> H@2 (- T@1 1))))) (and (and (<= H@1 H@2) (= T@1 T@2)) (= t@1 (- T@1 1)))) (and (=> (= (ControlFlow 0 252) (- 0 253)) (= tid ptTid)) (=> (= tid ptTid) (=> (= (ControlFlow 0 252) 251) inline$atomic_writeT_take$0$anon0_correct))))))))))))))))))
(let ((anon7_LoopBody$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@1) (=> (and (= T@8 T@1) (= items@8 items@1)) (=> (and (and (and (and (= status@12 status@1) (= take_in_cs@9 take_in_cs@1)) (and (= put_in_cs@8 put_in_cs@1) (= steal_in_cs@8 steal_in_cs@1))) (and (and (= h_ss@9 h_ss@1) (= t_ss@9 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@8 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 157) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 157) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 157) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 157) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 157) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 157) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 157) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 157) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 157) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 259) (- 0 261)) (= tid ptTid)) (=> (= tid ptTid) (and (=> (= (ControlFlow 0 259) (- 0 260)) (not (= tid NIL))) (=> (not (= tid NIL)) (and (and (=> (= (ControlFlow 0 259) 252) anon7_LoopBody_2_correct) (=> (= (ControlFlow 0 259) 157) anon7_LoopBody$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 259) 161) anon7_LoopBody$2_@2_Civl_UnchangedChecker_correct))))))))
(let ((anon7_LoopHead_correct  (=> (and (and (and (forall ((i@@91 Int) ) (!  (=> (and (<= H@1 i@@91) (<= i@@91 (- T@1 1))) (and (= (select status@1 i@@91) IN_Q) (not (= (select items@1 i@@91) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@1)) (not put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@246 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@246 NIL)) (not (= td@@246 ptTid))) (select steal_in_cs@1 td@@246)) (= H@1 (select h_ss@1 td@@246))) (< H@1 (select t_ss@1 td@@246))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@247 T@Tid) ) (!  (=> (and (and (and (not (= td@@247 NIL)) (not (= td@@247 ptTid))) (select steal_in_cs@1 td@@247)) (not (= H@1 (select h_ss@1 td@@247)))) (> H@1 (select h_ss@1 td@@247)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 266) 265) anon7_LoopDone_correct) (=> (= (ControlFlow 0 266) 259) anon7_LoopBody_correct))))))
(let ((anon0_@2_anon7_LoopHead_correct  (and (=> (= (ControlFlow 0 267) (- 0 269)) (and (and (and (forall ((i@@92 Int) ) (!  (=> (and (<= H@0 i@@92) (<= i@@92 (- T@0 1))) (and (= (select status@0 i@@92) IN_Q) (not (= (select items@0 i@@92) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) (not put_in_cs@0))) (=> (and (and (and (forall ((i@@93 Int) ) (!  (=> (and (<= H@0 i@@93) (<= i@@93 (- T@0 1))) (and (= (select status@0 i@@93) IN_Q) (not (= (select items@0 i@@93) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) (not put_in_cs@0)) (and (=> (= (ControlFlow 0 267) (- 0 268)) (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@248 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@248 NIL)) (not (= td@@248 ptTid))) (select steal_in_cs@0 td@@248)) (= H@0 (select h_ss@0 td@@248))) (< H@0 (select t_ss@0 td@@248))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@249 T@Tid) ) (!  (=> (and (and (and (not (= td@@249 NIL)) (not (= td@@249 ptTid))) (select steal_in_cs@0 td@@249)) (not (= H@0 (select h_ss@0 td@@249)))) (> H@0 (select h_ss@0 td@@249)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@250 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@250 NIL)) (not (= td@@250 ptTid))) (select steal_in_cs@0 td@@250)) (= H@0 (select h_ss@0 td@@250))) (< H@0 (select t_ss@0 td@@250))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@251 T@Tid) ) (!  (=> (and (and (and (not (= td@@251 NIL)) (not (= td@@251 ptTid))) (select steal_in_cs@0 td@@251)) (not (= H@0 (select h_ss@0 td@@251)))) (> H@0 (select h_ss@0 td@@251)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 267) 266) anon7_LoopHead_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@0) (=> (and (= T@8 T@0) (= items@8 items@0)) (=> (and (and (and (and (= status@12 status@0) (= take_in_cs@9 take_in_cs@0)) (and (= put_in_cs@8 put_in_cs@0) (= steal_in_cs@8 steal_in_cs@0))) (and (and (= h_ss@9 h_ss@0) (= t_ss@9 t_ss@0)) (and (= Civl_global_old_H@1 H@0) (= Civl_global_old_T@1 T@0)))) (and (and (and (= Civl_global_old_items@1 items@0) (= Civl_global_old_status@3 status@0)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@0) (= Civl_global_old_put_in_cs@1 put_in_cs@0))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@0) (= Civl_global_old_h_ss@1 h_ss@0)) (and (= Civl_global_old_t_ss@1 t_ss@0) (= Civl_linear_tid_available@8 Civl_linear_tid_available@0))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 156) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 156) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 156) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 156) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 156) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 156) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 156) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 156) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 156) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@2| Int) ) (!  (and (= (select status@0 |Civl_i#0@@2|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@2| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@0 status@0))))) (=> (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@3| Int) ) (!  (and (= (select status@0 |Civl_i#0@@3|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@3| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@0 status@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= status@0 status@0) (and (= task task) (= taskstatus taskstatus)))))))))
(let ((anon0_correct  (=> (and (and (and (forall ((i@@94 Int) ) (!  (=> (and (<= H@0 i@@94) (<= i@@94 (- T@0 1))) (and (= (select status@0 i@@94) IN_Q) (not (= (select items@0 i@@94) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs@0)) (not put_in_cs@0)) (=> (and (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@252 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@252 NIL)) (not (= td@@252 ptTid))) (select steal_in_cs@0 td@@252)) (= H@0 (select h_ss@0 td@@252))) (< H@0 (select t_ss@0 td@@252))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@253 T@Tid) ) (!  (=> (and (and (and (not (= td@@253 NIL)) (not (= td@@253 ptTid))) (select steal_in_cs@0 td@@253)) (not (= H@0 (select h_ss@0 td@@253)))) (> H@0 (select h_ss@0 td@@253)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 270) 267) anon0_@2_anon7_LoopHead_correct) (=> (= (ControlFlow 0 270) 156) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 270) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (forall ((i@@95 Int) ) (!  (=> (and (<= H i@@95) (<= i@@95 (- T 1))) (and (= (select status i@@95) IN_Q) (not (= (select items i@@95) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= tid ptTid)) (not take_in_cs)) (not put_in_cs)) (=> (and (and (and (and (and (and (=> (and take_in_cs (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T) (<= H T)) (not (= (select items T) EMPTY))) (= (select status T) IN_Q))) (=> put_in_cs (not take_in_cs))) (=> take_in_cs (not put_in_cs))) (=> (and take_in_cs (not (= H (select h_ss ptTid)))) (> H (select h_ss ptTid)))) (forall ((td@@254 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@254 NIL)) (not (= td@@254 ptTid))) (select steal_in_cs td@@254)) (= H (select h_ss td@@254))) (< H (select t_ss td@@254))) (and (not (= (select items H) EMPTY)) (= (select status H) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@255 T@Tid) ) (!  (=> (and (and (and (not (= td@@255 NIL)) (not (= td@@255 ptTid))) (select steal_in_cs td@@255)) (not (= H (select h_ss td@@255)))) (> H (select h_ss td@@255)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= (ControlFlow 0 271) 270)) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun status@8 () (Array Int Bool))
(declare-fun Civl_global_old_status@2 () (Array Int Bool))
(declare-fun task@2 () Int)
(declare-fun Civl_old_task@2 () Int)
(declare-fun taskstatus@2 () Bool)
(declare-fun Civl_old_taskstatus@2 () Bool)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun status@1 () (Array Int Bool))
(declare-fun task@0 () Int)
(declare-fun taskstatus@0 () Bool)
(declare-fun status@3 () (Array Int Bool))
(declare-fun status@6 () (Array Int Bool))
(declare-fun status@4 () (Array Int Bool))
(declare-fun inline$atomic_readItems$0$y@2 () Int)
(declare-fun inline$atomic_readItems$0$b@2 () Bool)
(declare-fun H@9 () Int)
(declare-fun T@7 () Int)
(declare-fun status@11 () (Array Int Bool))
(declare-fun items@7 () (Array Int Int))
(declare-fun steal_in_cs@12 () (Array T@Tid Bool))
(declare-fun tid () T@Tid)
(declare-fun task@4 () Int)
(declare-fun taskstatus@4 () Bool)
(declare-fun take_in_cs@7 () Bool)
(declare-fun h_ss@8 () (Array T@Tid Int))
(declare-fun t_ss@8 () (Array T@Tid Int))
(declare-fun put_in_cs@7 () Bool)
(declare-fun t_ss@6 () (Array T@Tid Int))
(declare-fun h_ss@6 () (Array T@Tid Int))
(declare-fun steal_in_cs@10 () (Array T@Tid Bool))
(declare-fun put_in_cs@5 () Bool)
(declare-fun take_in_cs@5 () Bool)
(declare-fun status@9 () (Array Int Bool))
(declare-fun items@5 () (Array Int Int))
(declare-fun T@5 () Int)
(declare-fun H@7 () Int)
(declare-fun taskstatus@3 () Bool)
(declare-fun task@3 () Int)
(declare-fun H@1 () Int)
(declare-fun T@1 () Int)
(declare-fun items@1 () (Array Int Int))
(declare-fun take_in_cs@1 () Bool)
(declare-fun put_in_cs@1 () Bool)
(declare-fun steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun h_ss@1 () (Array T@Tid Int))
(declare-fun t_ss@1 () (Array T@Tid Int))
(declare-fun H@3 () Int)
(declare-fun T@3 () Int)
(declare-fun items@3 () (Array Int Int))
(declare-fun take_in_cs@3 () Bool)
(declare-fun put_in_cs@3 () Bool)
(declare-fun steal_in_cs@9 () (Array T@Tid Bool))
(declare-fun h_ss@4 () (Array T@Tid Int))
(declare-fun t_ss@4 () (Array T@Tid Int))
(declare-fun H@6 () Int)
(declare-fun T@4 () Int)
(declare-fun items@4 () (Array Int Int))
(declare-fun take_in_cs@4 () Bool)
(declare-fun put_in_cs@4 () Bool)
(declare-fun steal_in_cs@8 () (Array T@Tid Bool))
(declare-fun h_ss@5 () (Array T@Tid Int))
(declare-fun t_ss@5 () (Array T@Tid Int))
(declare-fun status@7 () (Array Int Bool))
(declare-fun Civl_global_old_status@1 () (Array Int Bool))
(declare-fun task@1 () Int)
(declare-fun Civl_old_task@1 () Int)
(declare-fun taskstatus@1 () Bool)
(declare-fun Civl_old_taskstatus@1 () Bool)
(declare-fun status@2 () (Array Int Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 () T@Tid)
(declare-fun Civl_linear_tid_available@6 () (Array T@Tid Bool))
(declare-fun Civl_global_old_H@1 () Int)
(declare-fun Civl_global_old_T@1 () Int)
(declare-fun Civl_global_old_status@3 () (Array Int Bool))
(declare-fun Civl_global_old_items@1 () (Array Int Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 () Int)
(declare-fun Civl_global_old_take_in_cs@1 () Bool)
(declare-fun Civl_global_old_put_in_cs@1 () Bool)
(declare-fun Civl_global_old_h_ss@1 () (Array T@Tid Int))
(declare-fun Civl_global_old_t_ss@1 () (Array T@Tid Int))
(declare-fun Civl_global_old_steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 () Int)
(declare-fun H@8 () Int)
(declare-fun T@6 () Int)
(declare-fun status@10 () (Array Int Bool))
(declare-fun items@6 () (Array Int Int))
(declare-fun take_in_cs@6 () Bool)
(declare-fun put_in_cs@6 () Bool)
(declare-fun h_ss@7 () (Array T@Tid Int))
(declare-fun t_ss@7 () (Array T@Tid Int))
(declare-fun steal_in_cs@11 () (Array T@Tid Bool))
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 () Bool)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 () T@Tid)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 () Bool)
(declare-fun Civl_linear_tid_available@2 () (Array T@Tid Bool))
(declare-fun steal_in_cs@4 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@4 () (Array T@Tid Bool))
(declare-fun T@2 () Int)
(declare-fun H@4 () Int)
(declare-fun steal_in_cs@5 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@5 () (Array T@Tid Bool))
(declare-fun inline$atomic_CAS_H_steal$0$result@2 () Bool)
(declare-fun steal_in_cs@7 () (Array T@Tid Bool))
(declare-fun status@5 () (Array Int Bool))
(declare-fun H@5 () Int)
(declare-fun steal_in_cs@6 () (Array T@Tid Bool))
(declare-fun inline$atomic_CAS_H_steal$0$val@1 () Int)
(declare-fun steal_in_cs@3 () (Array T@Tid Bool))
(declare-fun H@2 () Int)
(declare-fun h_ss@3 () (Array T@Tid Int))
(declare-fun items@2 () (Array Int Int))
(declare-fun take_in_cs@2 () Bool)
(declare-fun t_ss@3 () (Array T@Tid Int))
(declare-fun put_in_cs@2 () Bool)
(declare-fun steal_in_cs@2 () (Array T@Tid Bool))
(declare-fun t_ss@2 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun h_ss@2 () (Array T@Tid Int))
(declare-fun H@0 () Int)
(declare-fun T@0 () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun items@0 () (Array Int Int))
(declare-fun take_in_cs@0 () Bool)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun put_in_cs@0 () Bool)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun task () Int)
(declare-fun taskstatus () Bool)
(declare-fun H () Int)
(declare-fun T () Int)
(declare-fun status () (Array Int Bool))
(declare-fun items () (Array Int Int))
(declare-fun steal_in_cs () (Array T@Tid Bool))
(declare-fun take_in_cs () Bool)
(declare-fun h_ss () (Array T@Tid Int))
(declare-fun t_ss () (Array T@Tid Int))
(declare-fun put_in_cs () Bool)
(set-info :boogie-vc-id Civl_steal_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 251) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 181) (- 0 183)) (or false (or (= status@8 Civl_global_old_status@2) (or (exists ((|Civl_i#0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0|) IN_Q) (= status@8 (store Civl_global_old_status@2 |Civl_i#0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@8 Civl_global_old_status@2))))) (=> (or false (or (= status@8 Civl_global_old_status@2) (or (exists ((|Civl_i#0@@0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@0|) IN_Q) (= status@8 (store Civl_global_old_status@2 |Civl_i#0@@0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@8 Civl_global_old_status@2)))) (and (=> (= (ControlFlow 0 181) (- 0 182)) (=> false (and (= status@8 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2))))) (=> (=> false (and (= status@8 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)))) (=> (and (and (= Civl_pc@0  (=> (= status@8 Civl_global_old_status@2) false)) (= Civl_ok@0  (or (or (exists ((|Civl_i#0@@1| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@1|) IN_Q) (= status@8 (store Civl_global_old_status@2 |Civl_i#0@@1| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@8 Civl_global_old_status@2)) (and (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)) false)))) (= (ControlFlow 0 181) (- 0 180))) Civl_ok@0)))))))
(let ((anon5_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= status@8 status@1) (=> (and (= Civl_global_old_status@2 status@1) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 task@0)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 240) 181))) Civl_ReturnChecker_correct)))))
(let ((anon6_Then$1_@2_Civl_ReturnChecker_correct  (=> (= status@8 status@3) (=> (and (= Civl_global_old_status@2 status@3) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 EMPTY)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 200) 181))) Civl_ReturnChecker_correct)))))
(let ((anon7_Then_@2_Civl_ReturnChecker_correct  (=> (= status@8 status@6) (=> (and (= Civl_global_old_status@2 status@4) (= Civl_old_task@2 inline$atomic_readItems$0$y@2)) (=> (and (and (= Civl_old_taskstatus@2 inline$atomic_readItems$0$b@2) (= task@2 inline$atomic_readItems$0$y@2)) (and (= taskstatus@2 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 184) 181))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 176) (- 0 177)) (and (and (forall ((i Int) ) (!  (=> (and (<= H@9 i) (<= i (- T@7 1))) (and (= (select status@11 i) IN_Q) (not (= (select items@7 i) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@12 tid))) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q)))) (=> (and (and (forall ((i@@0 Int) ) (!  (=> (and (<= H@9 i@@0) (<= i@@0 (- T@7 1))) (and (= (select status@11 i@@0) IN_Q) (not (= (select items@7 i@@0) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@12 tid))) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q))) (=> (= (ControlFlow 0 176) (- 0 175)) (and (and (and (and (and (=> (and take_in_cs@7 (< (select h_ss@8 ptTid) (select t_ss@8 ptTid))) (and (and (and (= (select t_ss@8 ptTid) T@7) (<= H@9 T@7)) (not (= (select items@7 T@7) EMPTY))) (= (select status@11 T@7) IN_Q))) (=> put_in_cs@7 (not take_in_cs@7))) (=> take_in_cs@7 (not put_in_cs@7))) (=> (and take_in_cs@7 (not (= H@9 (select h_ss@8 ptTid)))) (> H@9 (select h_ss@8 ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (and (not (= td NIL)) (not (= td ptTid))) (select steal_in_cs@12 td)) (= H@9 (select h_ss@8 td))) (< H@9 (select t_ss@8 td))) (and (not (= (select items@7 H@9) EMPTY)) (= (select status@11 H@9) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (and (not (= td@@0 NIL)) (not (= td@@0 ptTid))) (select steal_in_cs@12 td@@0)) (not (= H@9 (select h_ss@8 td@@0)))) (> H@9 (select h_ss@8 td@@0)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= t_ss@8 t_ss@6) (= h_ss@8 h_ss@6)) (and (= steal_in_cs@12 steal_in_cs@10) (= put_in_cs@7 put_in_cs@5))) (=> (and (and (and (= take_in_cs@7 take_in_cs@5) (= status@11 status@9)) (and (= items@7 items@5) (= T@7 T@5))) (and (and (= H@9 H@7) (= taskstatus@4 taskstatus@3)) (and (= task@4 task@3) (= (ControlFlow 0 178) 176)))) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@7 H@1) (= T@5 T@1)) (and (= items@5 items@1) (= status@9 status@1))) (=> (and (and (and (= take_in_cs@5 take_in_cs@1) (= put_in_cs@5 put_in_cs@1)) (and (= steal_in_cs@10 steal_in_cs@1) (= h_ss@6 h_ss@1))) (and (and (= t_ss@6 t_ss@1) (= task@3 task@0)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 241) 178)))) Civl_UnifiedReturn_correct))))
(let ((anon6_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@7 H@3) (= T@5 T@3)) (and (= items@5 items@3) (= status@9 status@3))) (=> (and (and (and (= take_in_cs@5 take_in_cs@3) (= put_in_cs@5 put_in_cs@3)) (and (= steal_in_cs@10 steal_in_cs@9) (= h_ss@6 h_ss@4))) (and (and (= t_ss@6 t_ss@4) (= task@3 EMPTY)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 201) 178)))) Civl_UnifiedReturn_correct))))
(let ((anon7_Then_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@7 H@6) (= T@5 T@4)) (and (= items@5 items@4) (= status@9 status@6))) (=> (and (and (and (= take_in_cs@5 take_in_cs@4) (= put_in_cs@5 put_in_cs@4)) (and (= steal_in_cs@10 steal_in_cs@8) (= h_ss@6 h_ss@5))) (and (and (= t_ss@6 t_ss@5) (= task@3 inline$atomic_readItems$0$y@2)) (and (= taskstatus@3 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 179) 178)))) Civl_UnifiedReturn_correct))))
(let ((anon7_Else_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 167) (- 0 170)) (and (not (= tid NIL)) (not (= tid ptTid)))) (=> (and (not (= tid NIL)) (not (= tid ptTid))) (and (=> (= (ControlFlow 0 167) (- 0 169)) (forall ((i@@1 Int) ) (!  (=> (and (<= H@6 i@@1) (<= i@@1 (- T@4 1))) (and (= (select status@6 i@@1) IN_Q) (not (= (select items@4 i@@1) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@2 Int) ) (!  (=> (and (<= H@6 i@@2) (<= i@@2 (- T@4 1))) (and (= (select status@6 i@@2) IN_Q) (not (= (select items@4 i@@2) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 167) (- 0 168)) (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (and (and (and (= (select t_ss@5 ptTid) T@4) (<= H@6 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@6 T@4) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@6 (select h_ss@5 ptTid)))) (> H@6 (select h_ss@5 ptTid)))) (forall ((td@@1 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@1 NIL)) (not (= td@@1 ptTid))) (select steal_in_cs@8 td@@1)) (= H@6 (select h_ss@5 td@@1))) (< H@6 (select t_ss@5 td@@1))) (and (not (= (select items@4 H@6) EMPTY)) (= (select status@6 H@6) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@2 T@Tid) ) (!  (=> (and (and (and (not (= td@@2 NIL)) (not (= td@@2 ptTid))) (select steal_in_cs@8 td@@2)) (not (= H@6 (select h_ss@5 td@@2)))) (> H@6 (select h_ss@5 td@@2)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (and (and (and (= (select t_ss@5 ptTid) T@4) (<= H@6 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@6 T@4) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@6 (select h_ss@5 ptTid)))) (> H@6 (select h_ss@5 ptTid)))) (forall ((td@@3 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@3 NIL)) (not (= td@@3 ptTid))) (select steal_in_cs@8 td@@3)) (= H@6 (select h_ss@5 td@@3))) (< H@6 (select t_ss@5 td@@3))) (and (not (= (select items@4 H@6) EMPTY)) (= (select status@6 H@6) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@4 T@Tid) ) (!  (=> (and (and (and (not (= td@@4 NIL)) (not (= td@@4 ptTid))) (select steal_in_cs@8 td@@4)) (not (= H@6 (select h_ss@5 td@@4)))) (> H@6 (select h_ss@5 td@@4)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 167) (- 0 166)) (not (select steal_in_cs@8 tid)))))))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 159) (- 0 160)) (= status@7 Civl_global_old_status@1)) (=> (= status@7 Civl_global_old_status@1) (=> (= (ControlFlow 0 159) (- 0 158)) (=> false (and (= task@1 Civl_old_task@1) (= taskstatus@1 Civl_old_taskstatus@1))))))))
(let ((anon7_Else_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@6) (=> (and (= Civl_global_old_status@1 status@4) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 inline$atomic_readItems$0$y@2)) (and (= Civl_old_taskstatus@1 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 172) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon6_Else$2_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@3) (=> (and (= Civl_global_old_status@1 status@3) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 165) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody_1$2_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@2) (=> (and (= Civl_global_old_status@1 status@2) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 163) 159))) Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody$2_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@1) (=> (and (= Civl_global_old_status@1 status@1) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 161) 159))) Civl_UnchangedChecker_correct)))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (and (and (forall ((i@@3 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@3) (<= i@@3 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@3) IN_Q) (not (= (select Civl_global_old_items@1 i@@3) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@5 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@5 NIL)) (not (= td@@5 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@5)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@5))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@5))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@6 T@Tid) ) (!  (=> (and (and (and (not (= td@@6 NIL)) (not (= td@@6 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@6)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@6)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@6)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 135) (- 0 155)) (or (and (and (and (and (forall ((i@@4 Int) ) (!  (=> (and (<= H@8 i@@4) (<= i@@4 T@6)) (and (= (select status@10 i@@4) IN_Q) (not (= (select items@6 i@@4) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (forall ((i@@5 Int) ) (!  (=> (and (<= H@8 i@@5) (<= i@@5 T@6)) (= (select status@10 i@@5) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |84|
)))) (and (=> (= (ControlFlow 0 135) (- 0 154)) (or (and (and (and (and (forall ((i@@6 Int) ) (!  (=> (and (<= H@8 i@@6) (<= i@@6 T@6)) (and (= (select status@10 i@@6) IN_Q) (not (= (select items@6 i@@6) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (forall ((i@@7 Int) ) (!  (=> (and (<= H@8 i@@7) (<= i@@7 T@6)) (not (= (select items@6 i@@7) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |85|
)))) (and (=> (= (ControlFlow 0 135) (- 0 153)) (or (and (and (and (and (forall ((i@@8 Int) ) (!  (=> (and (<= H@8 i@@8) (<= i@@8 T@6)) (and (= (select status@10 i@@8) IN_Q) (not (= (select items@6 i@@8) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6))) (and (=> (= (ControlFlow 0 135) (- 0 152)) (or (and (and (and (and (forall ((i@@9 Int) ) (!  (=> (and (<= H@8 i@@9) (<= i@@9 T@6)) (and (= (select status@10 i@@9) IN_Q) (not (= (select items@6 i@@9) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 135) (- 0 151)) (or (and (and (and (and (forall ((i@@10 Int) ) (!  (=> (and (<= H@8 i@@10) (<= i@@10 T@6)) (and (= (select status@10 i@@10) IN_Q) (not (= (select items@6 i@@10) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (not take_in_cs@6))) (and (=> (= (ControlFlow 0 135) (- 0 150)) (or (and (and (and (and (forall ((i@@11 Int) ) (!  (=> (and (<= H@8 i@@11) (<= i@@11 T@6)) (and (= (select status@10 i@@11) IN_Q) (not (= (select items@6 i@@11) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) put_in_cs@6)) (and (=> (= (ControlFlow 0 135) (- 0 149)) (and (and (and (and (forall ((i@@12 Int) ) (!  (=> (and (<= H@8 i@@12) (<= i@@12 T@6)) (and (= (select status@10 i@@12) IN_Q) (not (= (select items@6 i@@12) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6)) (=> (and (and (and (and (forall ((i@@13 Int) ) (!  (=> (and (<= H@8 i@@13) (<= i@@13 T@6)) (and (= (select status@10 i@@13) IN_Q) (not (= (select items@6 i@@13) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (and (=> (= (ControlFlow 0 135) (- 0 148)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@7 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@7 NIL)) (not (= td@@7 ptTid))) (select steal_in_cs@11 td@@7)) (= H@8 (select h_ss@7 td@@7))) (< H@8 (select t_ss@7 td@@7))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@8 T@Tid) ) (!  (=> (and (and (and (not (= td@@8 NIL)) (not (= td@@8 ptTid))) (select steal_in_cs@11 td@@8)) (not (= H@8 (select h_ss@7 td@@8)))) (> H@8 (select h_ss@7 td@@8)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select t_ss@7 ptTid) T@6)))) (and (=> (= (ControlFlow 0 135) (- 0 147)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@9 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@9 NIL)) (not (= td@@9 ptTid))) (select steal_in_cs@11 td@@9)) (= H@8 (select h_ss@7 td@@9))) (< H@8 (select t_ss@7 td@@9))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@10 T@Tid) ) (!  (=> (and (and (and (not (= td@@10 NIL)) (not (= td@@10 ptTid))) (select steal_in_cs@11 td@@10)) (not (= H@8 (select h_ss@7 td@@10)))) (> H@8 (select h_ss@7 td@@10)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (<= H@8 T@6)))) (and (=> (= (ControlFlow 0 135) (- 0 146)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@11 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@11 NIL)) (not (= td@@11 ptTid))) (select steal_in_cs@11 td@@11)) (= H@8 (select h_ss@7 td@@11))) (< H@8 (select t_ss@7 td@@11))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@12 T@Tid) ) (!  (=> (and (and (and (not (= td@@12 NIL)) (not (= td@@12 ptTid))) (select steal_in_cs@11 td@@12)) (not (= H@8 (select h_ss@7 td@@12)))) (> H@8 (select h_ss@7 td@@12)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (not (= (select items@6 T@6) EMPTY))))) (and (=> (= (ControlFlow 0 135) (- 0 145)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@13 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@13 NIL)) (not (= td@@13 ptTid))) (select steal_in_cs@11 td@@13)) (= H@8 (select h_ss@7 td@@13))) (< H@8 (select t_ss@7 td@@13))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@14 T@Tid) ) (!  (=> (and (and (and (not (= td@@14 NIL)) (not (= td@@14 ptTid))) (select steal_in_cs@11 td@@14)) (not (= H@8 (select h_ss@7 td@@14)))) (> H@8 (select h_ss@7 td@@14)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select status@10 T@6) IN_Q)))) (and (=> (= (ControlFlow 0 135) (- 0 144)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@15 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@15 NIL)) (not (= td@@15 ptTid))) (select steal_in_cs@11 td@@15)) (= H@8 (select h_ss@7 td@@15))) (< H@8 (select t_ss@7 td@@15))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@16 T@Tid) ) (!  (=> (and (and (and (not (= td@@16 NIL)) (not (= td@@16 ptTid))) (select steal_in_cs@11 td@@16)) (not (= H@8 (select h_ss@7 td@@16)))) (> H@8 (select h_ss@7 td@@16)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@6 (not take_in_cs@6)))) (and (=> (= (ControlFlow 0 135) (- 0 143)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@17 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@17 NIL)) (not (= td@@17 ptTid))) (select steal_in_cs@11 td@@17)) (= H@8 (select h_ss@7 td@@17))) (< H@8 (select t_ss@7 td@@17))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@18 T@Tid) ) (!  (=> (and (and (and (not (= td@@18 NIL)) (not (= td@@18 ptTid))) (select steal_in_cs@11 td@@18)) (not (= H@8 (select h_ss@7 td@@18)))) (> H@8 (select h_ss@7 td@@18)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@6 (not put_in_cs@6)))) (and (=> (= (ControlFlow 0 135) (- 0 142)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@19 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@19 NIL)) (not (= td@@19 ptTid))) (select steal_in_cs@11 td@@19)) (= H@8 (select h_ss@7 td@@19))) (< H@8 (select t_ss@7 td@@19))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@20 T@Tid) ) (!  (=> (and (and (and (not (= td@@20 NIL)) (not (= td@@20 ptTid))) (select steal_in_cs@11 td@@20)) (not (= H@8 (select h_ss@7 td@@20)))) (> H@8 (select h_ss@7 td@@20)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid))))) (and (=> (= (ControlFlow 0 135) (- 0 141)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@21 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@21 NIL)) (not (= td@@21 ptTid))) (select steal_in_cs@11 td@@21)) (= H@8 (select h_ss@7 td@@21))) (< H@8 (select t_ss@7 td@@21))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@22 T@Tid) ) (!  (=> (and (and (and (not (= td@@22 NIL)) (not (= td@@22 ptTid))) (select steal_in_cs@11 td@@22)) (not (= H@8 (select h_ss@7 td@@22)))) (> H@8 (select h_ss@7 td@@22)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@23 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@23 NIL)) (not (= td@@23 ptTid))) (select steal_in_cs@11 td@@23)) (= H@8 (select h_ss@7 td@@23))) (< H@8 (select t_ss@7 td@@23))) (not (= (select items@6 H@8) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |86|
)))) (and (=> (= (ControlFlow 0 135) (- 0 140)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@24 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@24 NIL)) (not (= td@@24 ptTid))) (select steal_in_cs@11 td@@24)) (= H@8 (select h_ss@7 td@@24))) (< H@8 (select t_ss@7 td@@24))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@25 T@Tid) ) (!  (=> (and (and (and (not (= td@@25 NIL)) (not (= td@@25 ptTid))) (select steal_in_cs@11 td@@25)) (not (= H@8 (select h_ss@7 td@@25)))) (> H@8 (select h_ss@7 td@@25)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@26 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@26 NIL)) (not (= td@@26 ptTid))) (select steal_in_cs@11 td@@26)) (= H@8 (select h_ss@7 td@@26))) (< H@8 (select t_ss@7 td@@26))) (= (select status@10 H@8) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |87|
)))) (and (=> (= (ControlFlow 0 135) (- 0 139)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@27 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@27 NIL)) (not (= td@@27 ptTid))) (select steal_in_cs@11 td@@27)) (= H@8 (select h_ss@7 td@@27))) (< H@8 (select t_ss@7 td@@27))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@28 T@Tid) ) (!  (=> (and (and (and (not (= td@@28 NIL)) (not (= td@@28 ptTid))) (select steal_in_cs@11 td@@28)) (not (= H@8 (select h_ss@7 td@@28)))) (> H@8 (select h_ss@7 td@@28)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@29 T@Tid) ) (!  (=> (and (and (and (not (= td@@29 NIL)) (not (= td@@29 ptTid))) (select steal_in_cs@11 td@@29)) (not (= H@8 (select h_ss@7 td@@29)))) (> H@8 (select h_ss@7 td@@29)))
 :qid |wsqbpl.44:14|
 :skolemid |88|
)))) (and (=> (= (ControlFlow 0 135) (- 0 138)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@30 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@30 NIL)) (not (= td@@30 ptTid))) (select steal_in_cs@11 td@@30)) (= H@8 (select h_ss@7 td@@30))) (< H@8 (select t_ss@7 td@@30))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@31 T@Tid) ) (!  (=> (and (and (and (not (= td@@31 NIL)) (not (= td@@31 ptTid))) (select steal_in_cs@11 td@@31)) (not (= H@8 (select h_ss@7 td@@31)))) (> H@8 (select h_ss@7 td@@31)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@32 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@32 NIL)) (not (= td@@32 ptTid))) (select steal_in_cs@11 td@@32)) (= H@8 (select h_ss@7 td@@32))) (< H@8 (select t_ss@7 td@@32))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@33 T@Tid) ) (!  (=> (and (and (and (not (= td@@33 NIL)) (not (= td@@33 ptTid))) (select steal_in_cs@11 td@@33)) (not (= H@8 (select h_ss@7 td@@33)))) (> H@8 (select h_ss@7 td@@33)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 135) (- 0 137)) (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0) (and (=> (= (ControlFlow 0 135) (- 0 136)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6)) (=> (= (ControlFlow 0 135) (- 0 134)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 T@6) (and (= (select status@10 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) NOT_IN_Q) (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
))))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (and (forall ((i@@14 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@14) (<= i@@14 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@14) IN_Q) (not (= (select Civl_global_old_items@1 i@@14) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@34 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@34 NIL)) (not (= td@@34 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@34)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@34))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@34))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@35 T@Tid) ) (!  (=> (and (and (and (not (= td@@35 NIL)) (not (= td@@35 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@35)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@35)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@35)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 114) (- 0 133)) (or (and (and (and (forall ((i@@15 Int) ) (!  (=> (and (<= H@8 i@@15) (<= i@@15 (- T@6 1))) (and (= (select status@10 i@@15) IN_Q) (not (= (select items@6 i@@15) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (forall ((i@@16 Int) ) (!  (=> (and (<= H@8 i@@16) (<= i@@16 (- T@6 1))) (= (select status@10 i@@16) IN_Q))
 :qid |wsqbpl.53:14|
 :skolemid |89|
)))) (and (=> (= (ControlFlow 0 114) (- 0 132)) (or (and (and (and (forall ((i@@17 Int) ) (!  (=> (and (<= H@8 i@@17) (<= i@@17 (- T@6 1))) (and (= (select status@10 i@@17) IN_Q) (not (= (select items@6 i@@17) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (forall ((i@@18 Int) ) (!  (=> (and (<= H@8 i@@18) (<= i@@18 (- T@6 1))) (not (= (select items@6 i@@18) EMPTY)))
 :qid |wsqbpl.53:14|
 :skolemid |90|
)))) (and (=> (= (ControlFlow 0 114) (- 0 131)) (or (and (and (and (forall ((i@@19 Int) ) (!  (=> (and (<= H@8 i@@19) (<= i@@19 (- T@6 1))) (and (= (select status@10 i@@19) IN_Q) (not (= (select items@6 i@@19) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 114) (- 0 130)) (or (and (and (and (forall ((i@@20 Int) ) (!  (=> (and (<= H@8 i@@20) (<= i@@20 (- T@6 1))) (and (= (select status@10 i@@20) IN_Q) (not (= (select items@6 i@@20) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (not take_in_cs@6))) (and (=> (= (ControlFlow 0 114) (- 0 129)) (or (and (and (and (forall ((i@@21 Int) ) (!  (=> (and (<= H@8 i@@21) (<= i@@21 (- T@6 1))) (and (= (select status@10 i@@21) IN_Q) (not (= (select items@6 i@@21) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) put_in_cs@6)) (and (=> (= (ControlFlow 0 114) (- 0 128)) (and (and (and (forall ((i@@22 Int) ) (!  (=> (and (<= H@8 i@@22) (<= i@@22 (- T@6 1))) (and (= (select status@10 i@@22) IN_Q) (not (= (select items@6 i@@22) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6)) (=> (and (and (and (forall ((i@@23 Int) ) (!  (=> (and (<= H@8 i@@23) (<= i@@23 (- T@6 1))) (and (= (select status@10 i@@23) IN_Q) (not (= (select items@6 i@@23) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (and (=> (= (ControlFlow 0 114) (- 0 127)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@36 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@36 NIL)) (not (= td@@36 ptTid))) (select steal_in_cs@11 td@@36)) (= H@8 (select h_ss@7 td@@36))) (< H@8 (select t_ss@7 td@@36))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@37 T@Tid) ) (!  (=> (and (and (and (not (= td@@37 NIL)) (not (= td@@37 ptTid))) (select steal_in_cs@11 td@@37)) (not (= H@8 (select h_ss@7 td@@37)))) (> H@8 (select h_ss@7 td@@37)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select t_ss@7 ptTid) T@6)))) (and (=> (= (ControlFlow 0 114) (- 0 126)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@38 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@38 NIL)) (not (= td@@38 ptTid))) (select steal_in_cs@11 td@@38)) (= H@8 (select h_ss@7 td@@38))) (< H@8 (select t_ss@7 td@@38))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@39 T@Tid) ) (!  (=> (and (and (and (not (= td@@39 NIL)) (not (= td@@39 ptTid))) (select steal_in_cs@11 td@@39)) (not (= H@8 (select h_ss@7 td@@39)))) (> H@8 (select h_ss@7 td@@39)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (<= H@8 T@6)))) (and (=> (= (ControlFlow 0 114) (- 0 125)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@40 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@40 NIL)) (not (= td@@40 ptTid))) (select steal_in_cs@11 td@@40)) (= H@8 (select h_ss@7 td@@40))) (< H@8 (select t_ss@7 td@@40))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@41 T@Tid) ) (!  (=> (and (and (and (not (= td@@41 NIL)) (not (= td@@41 ptTid))) (select steal_in_cs@11 td@@41)) (not (= H@8 (select h_ss@7 td@@41)))) (> H@8 (select h_ss@7 td@@41)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (not (= (select items@6 T@6) EMPTY))))) (and (=> (= (ControlFlow 0 114) (- 0 124)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@42 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@42 NIL)) (not (= td@@42 ptTid))) (select steal_in_cs@11 td@@42)) (= H@8 (select h_ss@7 td@@42))) (< H@8 (select t_ss@7 td@@42))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@43 T@Tid) ) (!  (=> (and (and (and (not (= td@@43 NIL)) (not (= td@@43 ptTid))) (select steal_in_cs@11 td@@43)) (not (= H@8 (select h_ss@7 td@@43)))) (> H@8 (select h_ss@7 td@@43)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select status@10 T@6) IN_Q)))) (and (=> (= (ControlFlow 0 114) (- 0 123)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@44 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@44 NIL)) (not (= td@@44 ptTid))) (select steal_in_cs@11 td@@44)) (= H@8 (select h_ss@7 td@@44))) (< H@8 (select t_ss@7 td@@44))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@45 T@Tid) ) (!  (=> (and (and (and (not (= td@@45 NIL)) (not (= td@@45 ptTid))) (select steal_in_cs@11 td@@45)) (not (= H@8 (select h_ss@7 td@@45)))) (> H@8 (select h_ss@7 td@@45)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@6 (not take_in_cs@6)))) (and (=> (= (ControlFlow 0 114) (- 0 122)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@46 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@46 NIL)) (not (= td@@46 ptTid))) (select steal_in_cs@11 td@@46)) (= H@8 (select h_ss@7 td@@46))) (< H@8 (select t_ss@7 td@@46))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@47 T@Tid) ) (!  (=> (and (and (and (not (= td@@47 NIL)) (not (= td@@47 ptTid))) (select steal_in_cs@11 td@@47)) (not (= H@8 (select h_ss@7 td@@47)))) (> H@8 (select h_ss@7 td@@47)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@6 (not put_in_cs@6)))) (and (=> (= (ControlFlow 0 114) (- 0 121)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@48 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@48 NIL)) (not (= td@@48 ptTid))) (select steal_in_cs@11 td@@48)) (= H@8 (select h_ss@7 td@@48))) (< H@8 (select t_ss@7 td@@48))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@49 T@Tid) ) (!  (=> (and (and (and (not (= td@@49 NIL)) (not (= td@@49 ptTid))) (select steal_in_cs@11 td@@49)) (not (= H@8 (select h_ss@7 td@@49)))) (> H@8 (select h_ss@7 td@@49)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid))))) (and (=> (= (ControlFlow 0 114) (- 0 120)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@50 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@50 NIL)) (not (= td@@50 ptTid))) (select steal_in_cs@11 td@@50)) (= H@8 (select h_ss@7 td@@50))) (< H@8 (select t_ss@7 td@@50))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@51 T@Tid) ) (!  (=> (and (and (and (not (= td@@51 NIL)) (not (= td@@51 ptTid))) (select steal_in_cs@11 td@@51)) (not (= H@8 (select h_ss@7 td@@51)))) (> H@8 (select h_ss@7 td@@51)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@52 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@52 NIL)) (not (= td@@52 ptTid))) (select steal_in_cs@11 td@@52)) (= H@8 (select h_ss@7 td@@52))) (< H@8 (select t_ss@7 td@@52))) (not (= (select items@6 H@8) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |91|
)))) (and (=> (= (ControlFlow 0 114) (- 0 119)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@53 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@53 NIL)) (not (= td@@53 ptTid))) (select steal_in_cs@11 td@@53)) (= H@8 (select h_ss@7 td@@53))) (< H@8 (select t_ss@7 td@@53))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@54 T@Tid) ) (!  (=> (and (and (and (not (= td@@54 NIL)) (not (= td@@54 ptTid))) (select steal_in_cs@11 td@@54)) (not (= H@8 (select h_ss@7 td@@54)))) (> H@8 (select h_ss@7 td@@54)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@55 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@55 NIL)) (not (= td@@55 ptTid))) (select steal_in_cs@11 td@@55)) (= H@8 (select h_ss@7 td@@55))) (< H@8 (select t_ss@7 td@@55))) (= (select status@10 H@8) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |92|
)))) (and (=> (= (ControlFlow 0 114) (- 0 118)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@56 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@56 NIL)) (not (= td@@56 ptTid))) (select steal_in_cs@11 td@@56)) (= H@8 (select h_ss@7 td@@56))) (< H@8 (select t_ss@7 td@@56))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@57 T@Tid) ) (!  (=> (and (and (and (not (= td@@57 NIL)) (not (= td@@57 ptTid))) (select steal_in_cs@11 td@@57)) (not (= H@8 (select h_ss@7 td@@57)))) (> H@8 (select h_ss@7 td@@57)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@58 T@Tid) ) (!  (=> (and (and (and (not (= td@@58 NIL)) (not (= td@@58 ptTid))) (select steal_in_cs@11 td@@58)) (not (= H@8 (select h_ss@7 td@@58)))) (> H@8 (select h_ss@7 td@@58)))
 :qid |wsqbpl.44:14|
 :skolemid |93|
)))) (and (=> (= (ControlFlow 0 114) (- 0 117)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@59 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@59 NIL)) (not (= td@@59 ptTid))) (select steal_in_cs@11 td@@59)) (= H@8 (select h_ss@7 td@@59))) (< H@8 (select t_ss@7 td@@59))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@60 T@Tid) ) (!  (=> (and (and (and (not (= td@@60 NIL)) (not (= td@@60 ptTid))) (select steal_in_cs@11 td@@60)) (not (= H@8 (select h_ss@7 td@@60)))) (> H@8 (select h_ss@7 td@@60)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@61 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@61 NIL)) (not (= td@@61 ptTid))) (select steal_in_cs@11 td@@61)) (= H@8 (select h_ss@7 td@@61))) (< H@8 (select t_ss@7 td@@61))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@62 T@Tid) ) (!  (=> (and (and (and (not (= td@@62 NIL)) (not (= td@@62 ptTid))) (select steal_in_cs@11 td@@62)) (not (= H@8 (select h_ss@7 td@@62)))) (> H@8 (select h_ss@7 td@@62)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 114) (- 0 116)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (and (=> (= (ControlFlow 0 114) (- 0 115)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6)) (=> (= (ControlFlow 0 114) (- 0 113)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 T@6) (and (= (select status@10 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) NOT_IN_Q) (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (forall ((i@@24 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@24) (<= i@@24 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@24) IN_Q) (not (= (select Civl_global_old_items@1 i@@24) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@63 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@63 NIL)) (not (= td@@63 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@63)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@63))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@63))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@64 T@Tid) ) (!  (=> (and (and (and (not (= td@@64 NIL)) (not (= td@@64 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@64)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@64)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@64)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= Civl_global_old_T@1 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (not Civl_global_old_put_in_cs@1)))) (and (=> (= (ControlFlow 0 106) (- 0 112)) (and (and (and (forall ((i@@25 Int) ) (!  (=> (and (<= H@8 i@@25) (<= i@@25 (- T@6 1))) (and (= (select status@10 i@@25) IN_Q) (not (= (select items@6 i@@25) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (forall ((i@@26 Int) ) (!  (=> (and (<= H@8 i@@26) (<= i@@26 (- T@6 1))) (and (= (select status@10 i@@26) IN_Q) (not (= (select items@6 i@@26) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 106) (- 0 111)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@65 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@65 NIL)) (not (= td@@65 ptTid))) (select steal_in_cs@11 td@@65)) (= H@8 (select h_ss@7 td@@65))) (< H@8 (select t_ss@7 td@@65))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@66 T@Tid) ) (!  (=> (and (and (and (not (= td@@66 NIL)) (not (= td@@66 ptTid))) (select steal_in_cs@11 td@@66)) (not (= H@8 (select h_ss@7 td@@66)))) (> H@8 (select h_ss@7 td@@66)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@67 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@67 NIL)) (not (= td@@67 ptTid))) (select steal_in_cs@11 td@@67)) (= H@8 (select h_ss@7 td@@67))) (< H@8 (select t_ss@7 td@@67))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@68 T@Tid) ) (!  (=> (and (and (and (not (= td@@68 NIL)) (not (= td@@68 ptTid))) (select steal_in_cs@11 td@@68)) (not (= H@8 (select h_ss@7 td@@68)))) (> H@8 (select h_ss@7 td@@68)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 106) (- 0 110)) (= T@6 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (=> (= T@6 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)) (and (=> (= (ControlFlow 0 106) (- 0 109)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (and (=> (= (ControlFlow 0 106) (- 0 108)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6) (and (=> (= (ControlFlow 0 106) (- 0 107)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 106) (- 0 105)) (not put_in_cs@6)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (and (and (and (and (forall ((i@@27 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@27) (<= i@@27 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@27) IN_Q) (not (= (select Civl_global_old_items@1 i@@27) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@69 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@69 NIL)) (not (= td@@69 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@69)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@69))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@69))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@70 T@Tid) ) (!  (=> (and (and (and (not (= td@@70 NIL)) (not (= td@@70 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@70)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@70)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@70)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 Civl_global_old_T@1))) (=> (> Civl_global_old_T@1 Civl_global_old_H@1) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))))) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (not Civl_global_old_put_in_cs@1)) Civl_global_old_take_in_cs@1)) (and (=> (= (ControlFlow 0 99) (- 0 104)) (>= H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (>= H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0) (and (=> (= (ControlFlow 0 99) (- 0 103)) (and (and (and (and (forall ((i@@28 Int) ) (!  (=> (and (<= H@8 i@@28) (<= i@@28 T@6)) (and (= (select status@10 i@@28) IN_Q) (not (= (select items@6 i@@28) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (forall ((i@@29 Int) ) (!  (=> (and (<= H@8 i@@29) (<= i@@29 T@6)) (and (= (select status@10 i@@29) IN_Q) (not (= (select items@6 i@@29) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 99) (- 0 102)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@71 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@71 NIL)) (not (= td@@71 ptTid))) (select steal_in_cs@11 td@@71)) (= H@8 (select h_ss@7 td@@71))) (< H@8 (select t_ss@7 td@@71))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@72 T@Tid) ) (!  (=> (and (and (and (not (= td@@72 NIL)) (not (= td@@72 ptTid))) (select steal_in_cs@11 td@@72)) (not (= H@8 (select h_ss@7 td@@72)))) (> H@8 (select h_ss@7 td@@72)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@73 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@73 NIL)) (not (= td@@73 ptTid))) (select steal_in_cs@11 td@@73)) (= H@8 (select h_ss@7 td@@73))) (< H@8 (select t_ss@7 td@@73))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@74 T@Tid) ) (!  (=> (and (and (and (not (= td@@74 NIL)) (not (= td@@74 ptTid))) (select steal_in_cs@11 td@@74)) (not (= H@8 (select h_ss@7 td@@74)))) (> H@8 (select h_ss@7 td@@74)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 99) (- 0 101)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 T@6)))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 T@6))) (and (=> (= (ControlFlow 0 99) (- 0 100)) (=> (> T@6 H@8) (not (= (select items@6 T@6) EMPTY)))) (=> (=> (> T@6 H@8) (not (= (select items@6 T@6) EMPTY))) (=> (= (ControlFlow 0 99) (- 0 98)) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)) (not put_in_cs@6)) take_in_cs@6)))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (and (and (forall ((i@@30 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@30) (<= i@@30 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@30) IN_Q) (not (= (select Civl_global_old_items@1 i@@30) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@75 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@75 NIL)) (not (= td@@75 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@75)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@75))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@75))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@76 T@Tid) ) (!  (=> (and (and (and (not (= td@@76 NIL)) (not (= td@@76 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@76)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@76)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@76)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))) (and (=> (= (ControlFlow 0 79) (- 0 97)) (and (and (and (and (and (forall ((i@@31 Int) ) (!  (=> (and (<= H@8 i@@31) (<= i@@31 T@6)) (and (= (select status@10 i@@31) IN_Q) (not (= (select items@6 i@@31) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (not put_in_cs@6)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (and (forall ((i@@32 Int) ) (!  (=> (and (<= H@8 i@@32) (<= i@@32 T@6)) (and (= (select status@10 i@@32) IN_Q) (not (= (select items@6 i@@32) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (not put_in_cs@6)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 79) (- 0 96)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@77 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@77 NIL)) (not (= td@@77 ptTid))) (select steal_in_cs@11 td@@77)) (= H@8 (select h_ss@7 td@@77))) (< H@8 (select t_ss@7 td@@77))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@78 T@Tid) ) (!  (=> (and (and (and (not (= td@@78 NIL)) (not (= td@@78 ptTid))) (select steal_in_cs@11 td@@78)) (not (= H@8 (select h_ss@7 td@@78)))) (> H@8 (select h_ss@7 td@@78)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select t_ss@7 ptTid) T@6)))) (and (=> (= (ControlFlow 0 79) (- 0 95)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@79 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@79 NIL)) (not (= td@@79 ptTid))) (select steal_in_cs@11 td@@79)) (= H@8 (select h_ss@7 td@@79))) (< H@8 (select t_ss@7 td@@79))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@80 T@Tid) ) (!  (=> (and (and (and (not (= td@@80 NIL)) (not (= td@@80 ptTid))) (select steal_in_cs@11 td@@80)) (not (= H@8 (select h_ss@7 td@@80)))) (> H@8 (select h_ss@7 td@@80)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (<= H@8 T@6)))) (and (=> (= (ControlFlow 0 79) (- 0 94)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@81 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@81 NIL)) (not (= td@@81 ptTid))) (select steal_in_cs@11 td@@81)) (= H@8 (select h_ss@7 td@@81))) (< H@8 (select t_ss@7 td@@81))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@82 T@Tid) ) (!  (=> (and (and (and (not (= td@@82 NIL)) (not (= td@@82 ptTid))) (select steal_in_cs@11 td@@82)) (not (= H@8 (select h_ss@7 td@@82)))) (> H@8 (select h_ss@7 td@@82)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (not (= (select items@6 T@6) EMPTY))))) (and (=> (= (ControlFlow 0 79) (- 0 93)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@83 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@83 NIL)) (not (= td@@83 ptTid))) (select steal_in_cs@11 td@@83)) (= H@8 (select h_ss@7 td@@83))) (< H@8 (select t_ss@7 td@@83))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@84 T@Tid) ) (!  (=> (and (and (and (not (= td@@84 NIL)) (not (= td@@84 ptTid))) (select steal_in_cs@11 td@@84)) (not (= H@8 (select h_ss@7 td@@84)))) (> H@8 (select h_ss@7 td@@84)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select status@10 T@6) IN_Q)))) (and (=> (= (ControlFlow 0 79) (- 0 92)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@85 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@85 NIL)) (not (= td@@85 ptTid))) (select steal_in_cs@11 td@@85)) (= H@8 (select h_ss@7 td@@85))) (< H@8 (select t_ss@7 td@@85))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@86 T@Tid) ) (!  (=> (and (and (and (not (= td@@86 NIL)) (not (= td@@86 ptTid))) (select steal_in_cs@11 td@@86)) (not (= H@8 (select h_ss@7 td@@86)))) (> H@8 (select h_ss@7 td@@86)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@6 (not take_in_cs@6)))) (and (=> (= (ControlFlow 0 79) (- 0 91)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@87 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@87 NIL)) (not (= td@@87 ptTid))) (select steal_in_cs@11 td@@87)) (= H@8 (select h_ss@7 td@@87))) (< H@8 (select t_ss@7 td@@87))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@88 T@Tid) ) (!  (=> (and (and (and (not (= td@@88 NIL)) (not (= td@@88 ptTid))) (select steal_in_cs@11 td@@88)) (not (= H@8 (select h_ss@7 td@@88)))) (> H@8 (select h_ss@7 td@@88)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@6 (not put_in_cs@6)))) (and (=> (= (ControlFlow 0 79) (- 0 90)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@89 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@89 NIL)) (not (= td@@89 ptTid))) (select steal_in_cs@11 td@@89)) (= H@8 (select h_ss@7 td@@89))) (< H@8 (select t_ss@7 td@@89))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@90 T@Tid) ) (!  (=> (and (and (and (not (= td@@90 NIL)) (not (= td@@90 ptTid))) (select steal_in_cs@11 td@@90)) (not (= H@8 (select h_ss@7 td@@90)))) (> H@8 (select h_ss@7 td@@90)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid))))) (and (=> (= (ControlFlow 0 79) (- 0 89)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@91 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@91 NIL)) (not (= td@@91 ptTid))) (select steal_in_cs@11 td@@91)) (= H@8 (select h_ss@7 td@@91))) (< H@8 (select t_ss@7 td@@91))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@92 T@Tid) ) (!  (=> (and (and (and (not (= td@@92 NIL)) (not (= td@@92 ptTid))) (select steal_in_cs@11 td@@92)) (not (= H@8 (select h_ss@7 td@@92)))) (> H@8 (select h_ss@7 td@@92)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@93 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@93 NIL)) (not (= td@@93 ptTid))) (select steal_in_cs@11 td@@93)) (= H@8 (select h_ss@7 td@@93))) (< H@8 (select t_ss@7 td@@93))) (not (= (select items@6 H@8) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |94|
)))) (and (=> (= (ControlFlow 0 79) (- 0 88)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@94 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@94 NIL)) (not (= td@@94 ptTid))) (select steal_in_cs@11 td@@94)) (= H@8 (select h_ss@7 td@@94))) (< H@8 (select t_ss@7 td@@94))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@95 T@Tid) ) (!  (=> (and (and (and (not (= td@@95 NIL)) (not (= td@@95 ptTid))) (select steal_in_cs@11 td@@95)) (not (= H@8 (select h_ss@7 td@@95)))) (> H@8 (select h_ss@7 td@@95)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@96 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@96 NIL)) (not (= td@@96 ptTid))) (select steal_in_cs@11 td@@96)) (= H@8 (select h_ss@7 td@@96))) (< H@8 (select t_ss@7 td@@96))) (= (select status@10 H@8) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |95|
)))) (and (=> (= (ControlFlow 0 79) (- 0 87)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@97 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@97 NIL)) (not (= td@@97 ptTid))) (select steal_in_cs@11 td@@97)) (= H@8 (select h_ss@7 td@@97))) (< H@8 (select t_ss@7 td@@97))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@98 T@Tid) ) (!  (=> (and (and (and (not (= td@@98 NIL)) (not (= td@@98 ptTid))) (select steal_in_cs@11 td@@98)) (not (= H@8 (select h_ss@7 td@@98)))) (> H@8 (select h_ss@7 td@@98)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@99 T@Tid) ) (!  (=> (and (and (and (not (= td@@99 NIL)) (not (= td@@99 ptTid))) (select steal_in_cs@11 td@@99)) (not (= H@8 (select h_ss@7 td@@99)))) (> H@8 (select h_ss@7 td@@99)))
 :qid |wsqbpl.44:14|
 :skolemid |96|
)))) (and (=> (= (ControlFlow 0 79) (- 0 86)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@100 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@100 NIL)) (not (= td@@100 ptTid))) (select steal_in_cs@11 td@@100)) (= H@8 (select h_ss@7 td@@100))) (< H@8 (select t_ss@7 td@@100))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@101 T@Tid) ) (!  (=> (and (and (and (not (= td@@101 NIL)) (not (= td@@101 ptTid))) (select steal_in_cs@11 td@@101)) (not (= H@8 (select h_ss@7 td@@101)))) (> H@8 (select h_ss@7 td@@101)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@102 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@102 NIL)) (not (= td@@102 ptTid))) (select steal_in_cs@11 td@@102)) (= H@8 (select h_ss@7 td@@102))) (< H@8 (select t_ss@7 td@@102))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@103 T@Tid) ) (!  (=> (and (and (and (not (= td@@103 NIL)) (not (= td@@103 ptTid))) (select steal_in_cs@11 td@@103)) (not (= H@8 (select h_ss@7 td@@103)))) (> H@8 (select h_ss@7 td@@103)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 79) (- 0 85)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (and (=> (= (ControlFlow 0 79) (- 0 84)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8) (and (=> (= (ControlFlow 0 79) (- 0 83)) (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 79) (- 0 82)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (and (=> (= (ControlFlow 0 79) (- 0 81)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6) (and (=> (= (ControlFlow 0 79) (- 0 80)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8) (=> (= (ControlFlow 0 79) (- 0 78)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))))))))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (forall ((i@@33 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@33) (<= i@@33 Civl_global_old_T@1)) (and (= (select Civl_global_old_status@3 i@@33) IN_Q) (not (= (select Civl_global_old_items@1 i@@33) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@104 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@104 NIL)) (not (= td@@104 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@104)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@104))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@104))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@105 T@Tid) ) (!  (=> (and (and (and (not (= td@@105 NIL)) (not (= td@@105 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@105)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@105)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@105)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 73) (- 0 77)) (and (and (and (and (forall ((i@@34 Int) ) (!  (=> (and (<= H@8 i@@34) (<= i@@34 T@6)) (and (= (select status@10 i@@34) IN_Q) (not (= (select items@6 i@@34) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (forall ((i@@35 Int) ) (!  (=> (and (<= H@8 i@@35) (<= i@@35 T@6)) (and (= (select status@10 i@@35) IN_Q) (not (= (select items@6 i@@35) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 73) (- 0 76)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@106 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@106 NIL)) (not (= td@@106 ptTid))) (select steal_in_cs@11 td@@106)) (= H@8 (select h_ss@7 td@@106))) (< H@8 (select t_ss@7 td@@106))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@107 T@Tid) ) (!  (=> (and (and (and (not (= td@@107 NIL)) (not (= td@@107 ptTid))) (select steal_in_cs@11 td@@107)) (not (= H@8 (select h_ss@7 td@@107)))) (> H@8 (select h_ss@7 td@@107)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@108 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@108 NIL)) (not (= td@@108 ptTid))) (select steal_in_cs@11 td@@108)) (= H@8 (select h_ss@7 td@@108))) (< H@8 (select t_ss@7 td@@108))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@109 T@Tid) ) (!  (=> (and (and (and (not (= td@@109 NIL)) (not (= td@@109 ptTid))) (select steal_in_cs@11 td@@109)) (not (= H@8 (select h_ss@7 td@@109)))) (> H@8 (select h_ss@7 td@@109)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (and (=> (= (ControlFlow 0 73) (- 0 74)) (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 73) (- 0 72)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (forall ((i@@36 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@36) (<= i@@36 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@36) IN_Q) (not (= (select Civl_global_old_items@1 i@@36) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@110 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@110 NIL)) (not (= td@@110 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@110)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@110))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@110))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@111 T@Tid) ) (!  (=> (and (and (and (not (= td@@111 NIL)) (not (= td@@111 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@111)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@111)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@111)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> Civl_global_old_H@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 67) (- 0 71)) (and (and (and (forall ((i@@37 Int) ) (!  (=> (and (<= H@8 i@@37) (<= i@@37 (- T@6 1))) (and (= (select status@10 i@@37) IN_Q) (not (= (select items@6 i@@37) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (forall ((i@@38 Int) ) (!  (=> (and (<= H@8 i@@38) (<= i@@38 (- T@6 1))) (and (= (select status@10 i@@38) IN_Q) (not (= (select items@6 i@@38) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (and (=> (= (ControlFlow 0 67) (- 0 70)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@112 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@112 NIL)) (not (= td@@112 ptTid))) (select steal_in_cs@11 td@@112)) (= H@8 (select h_ss@7 td@@112))) (< H@8 (select t_ss@7 td@@112))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@113 T@Tid) ) (!  (=> (and (and (and (not (= td@@113 NIL)) (not (= td@@113 ptTid))) (select steal_in_cs@11 td@@113)) (not (= H@8 (select h_ss@7 td@@113)))) (> H@8 (select h_ss@7 td@@113)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@114 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@114 NIL)) (not (= td@@114 ptTid))) (select steal_in_cs@11 td@@114)) (= H@8 (select h_ss@7 td@@114))) (< H@8 (select t_ss@7 td@@114))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@115 T@Tid) ) (!  (=> (and (and (and (not (= td@@115 NIL)) (not (= td@@115 ptTid))) (select steal_in_cs@11 td@@115)) (not (= H@8 (select h_ss@7 td@@115)))) (> H@8 (select h_ss@7 td@@115)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 67) (- 0 69)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (and (=> (= (ControlFlow 0 67) (- 0 68)) (=> (= (select items@6 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (=> (=> (= (select items@6 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1))) (=> (= (ControlFlow 0 67) (- 0 66)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (and (forall ((i@@39 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@39) (<= i@@39 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@39) IN_Q) (not (= (select Civl_global_old_items@1 i@@39) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@116 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@116 NIL)) (not (= td@@116 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@116)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@116))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@116))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@117 T@Tid) ) (!  (=> (and (and (and (not (= td@@117 NIL)) (not (= td@@117 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@117)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@117)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@117)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (and (and (and (forall ((i@@40 Int) ) (!  (=> (and (<= H@8 i@@40) (<= i@@40 (- T@6 1))) (and (= (select status@10 i@@40) IN_Q) (not (= (select items@6 i@@40) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (forall ((i@@41 Int) ) (!  (=> (and (<= H@8 i@@41) (<= i@@41 (- T@6 1))) (and (= (select status@10 i@@41) IN_Q) (not (= (select items@6 i@@41) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (= (ControlFlow 0 64) (- 0 63)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@118 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@118 NIL)) (not (= td@@118 ptTid))) (select steal_in_cs@11 td@@118)) (= H@8 (select h_ss@7 td@@118))) (< H@8 (select t_ss@7 td@@118))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@119 T@Tid) ) (!  (=> (and (and (and (not (= td@@119 NIL)) (not (= td@@119 ptTid))) (select steal_in_cs@11 td@@119)) (not (= H@8 (select h_ss@7 td@@119)))) (> H@8 (select h_ss@7 td@@119)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (forall ((i@@42 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@42) (<= i@@42 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@42) IN_Q) (not (= (select Civl_global_old_items@1 i@@42) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@120 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@120 NIL)) (not (= td@@120 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@120)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@120))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@120))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@121 T@Tid) ) (!  (=> (and (and (and (not (= td@@121 NIL)) (not (= td@@121 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@121)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@121)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@121)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (and (=> (and (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q))))) (and (=> (= (ControlFlow 0 56) (- 0 62)) (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 56) (- 0 61)) (forall ((i@@43 Int) ) (!  (=> (and (<= H@8 i@@43) (<= i@@43 (- T@6 1))) (and (= (select status@10 i@@43) IN_Q) (not (= (select items@6 i@@43) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@44 Int) ) (!  (=> (and (<= H@8 i@@44) (<= i@@44 (- T@6 1))) (and (= (select status@10 i@@44) IN_Q) (not (= (select items@6 i@@44) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 56) (- 0 60)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@122 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@122 NIL)) (not (= td@@122 ptTid))) (select steal_in_cs@11 td@@122)) (= H@8 (select h_ss@7 td@@122))) (< H@8 (select t_ss@7 td@@122))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@123 T@Tid) ) (!  (=> (and (and (and (not (= td@@123 NIL)) (not (= td@@123 ptTid))) (select steal_in_cs@11 td@@123)) (not (= H@8 (select h_ss@7 td@@123)))) (> H@8 (select h_ss@7 td@@123)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@124 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@124 NIL)) (not (= td@@124 ptTid))) (select steal_in_cs@11 td@@124)) (= H@8 (select h_ss@7 td@@124))) (< H@8 (select t_ss@7 td@@124))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@125 T@Tid) ) (!  (=> (and (and (and (not (= td@@125 NIL)) (not (= td@@125 ptTid))) (select steal_in_cs@11 td@@125)) (not (= H@8 (select h_ss@7 td@@125)))) (> H@8 (select h_ss@7 td@@125)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 56) (- 0 59)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (and (=> (= (ControlFlow 0 56) (- 0 58)) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (=> (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (=> (and (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6))) (=> (=> (and (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6)) (=> (= (ControlFlow 0 56) (- 0 55)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8) (= (select status@10 H@8) IN_Q))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (and (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (forall ((i@@45 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@45) (<= i@@45 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@45) IN_Q) (not (= (select Civl_global_old_items@1 i@@45) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@126 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@126 NIL)) (not (= td@@126 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@126)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@126))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@126))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@127 T@Tid) ) (!  (=> (and (and (and (not (= td@@127 NIL)) (not (= td@@127 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@127)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@127)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@127)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) Civl_global_old_take_in_cs@1) (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))) (and (=> (= (ControlFlow 0 48) (- 0 54)) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 48) (- 0 53)) (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 48) (- 0 52)) (forall ((i@@46 Int) ) (!  (=> (and (<= H@8 i@@46) (<= i@@46 (- T@6 1))) (and (= (select status@10 i@@46) IN_Q) (not (= (select items@6 i@@46) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@47 Int) ) (!  (=> (and (<= H@8 i@@47) (<= i@@47 (- T@6 1))) (and (= (select status@10 i@@47) IN_Q) (not (= (select items@6 i@@47) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@128 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@128 NIL)) (not (= td@@128 ptTid))) (select steal_in_cs@11 td@@128)) (= H@8 (select h_ss@7 td@@128))) (< H@8 (select t_ss@7 td@@128))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@129 T@Tid) ) (!  (=> (and (and (and (not (= td@@129 NIL)) (not (= td@@129 ptTid))) (select steal_in_cs@11 td@@129)) (not (= H@8 (select h_ss@7 td@@129)))) (> H@8 (select h_ss@7 td@@129)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@130 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@130 NIL)) (not (= td@@130 ptTid))) (select steal_in_cs@11 td@@130)) (= H@8 (select h_ss@7 td@@130))) (< H@8 (select t_ss@7 td@@130))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@131 T@Tid) ) (!  (=> (and (and (and (not (= td@@131 NIL)) (not (= td@@131 ptTid))) (select steal_in_cs@11 td@@131)) (not (= H@8 (select h_ss@7 td@@131)))) (> H@8 (select h_ss@7 td@@131)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 48) (- 0 50)) (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@6) (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6))) (=> (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@6) (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6)) (=> (= (ControlFlow 0 48) (- 0 47)) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (and (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (forall ((i@@48 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@48) (<= i@@48 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@48) IN_Q) (not (= (select Civl_global_old_items@1 i@@48) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@132 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@132 NIL)) (not (= td@@132 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@132)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@132))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@132))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@133 T@Tid) ) (!  (=> (and (and (and (not (= td@@133 NIL)) (not (= td@@133 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@133)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@133)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@133)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1)) (and (=> (= (ControlFlow 0 31) (- 0 46)) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 45)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (and (=> (= (ControlFlow 0 31) (- 0 44)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 43)) (forall ((i@@49 Int) ) (!  (=> (and (<= H@8 i@@49) (<= i@@49 (- T@6 1))) (and (= (select status@10 i@@49) IN_Q) (not (= (select items@6 i@@49) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@50 Int) ) (!  (=> (and (<= H@8 i@@50) (<= i@@50 (- T@6 1))) (and (= (select status@10 i@@50) IN_Q) (not (= (select items@6 i@@50) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 31) (- 0 42)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@134 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@134 NIL)) (not (= td@@134 ptTid))) (select steal_in_cs@11 td@@134)) (= H@8 (select h_ss@7 td@@134))) (< H@8 (select t_ss@7 td@@134))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@135 T@Tid) ) (!  (=> (and (and (and (not (= td@@135 NIL)) (not (= td@@135 ptTid))) (select steal_in_cs@11 td@@135)) (not (= H@8 (select h_ss@7 td@@135)))) (> H@8 (select h_ss@7 td@@135)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select t_ss@7 ptTid) T@6)))) (and (=> (= (ControlFlow 0 31) (- 0 41)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@136 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@136 NIL)) (not (= td@@136 ptTid))) (select steal_in_cs@11 td@@136)) (= H@8 (select h_ss@7 td@@136))) (< H@8 (select t_ss@7 td@@136))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@137 T@Tid) ) (!  (=> (and (and (and (not (= td@@137 NIL)) (not (= td@@137 ptTid))) (select steal_in_cs@11 td@@137)) (not (= H@8 (select h_ss@7 td@@137)))) (> H@8 (select h_ss@7 td@@137)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (<= H@8 T@6)))) (and (=> (= (ControlFlow 0 31) (- 0 40)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@138 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@138 NIL)) (not (= td@@138 ptTid))) (select steal_in_cs@11 td@@138)) (= H@8 (select h_ss@7 td@@138))) (< H@8 (select t_ss@7 td@@138))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@139 T@Tid) ) (!  (=> (and (and (and (not (= td@@139 NIL)) (not (= td@@139 ptTid))) (select steal_in_cs@11 td@@139)) (not (= H@8 (select h_ss@7 td@@139)))) (> H@8 (select h_ss@7 td@@139)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (not (= (select items@6 T@6) EMPTY))))) (and (=> (= (ControlFlow 0 31) (- 0 39)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@140 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@140 NIL)) (not (= td@@140 ptTid))) (select steal_in_cs@11 td@@140)) (= H@8 (select h_ss@7 td@@140))) (< H@8 (select t_ss@7 td@@140))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@141 T@Tid) ) (!  (=> (and (and (and (not (= td@@141 NIL)) (not (= td@@141 ptTid))) (select steal_in_cs@11 td@@141)) (not (= H@8 (select h_ss@7 td@@141)))) (> H@8 (select h_ss@7 td@@141)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= (select status@10 T@6) IN_Q)))) (and (=> (= (ControlFlow 0 31) (- 0 38)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@142 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@142 NIL)) (not (= td@@142 ptTid))) (select steal_in_cs@11 td@@142)) (= H@8 (select h_ss@7 td@@142))) (< H@8 (select t_ss@7 td@@142))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@143 T@Tid) ) (!  (=> (and (and (and (not (= td@@143 NIL)) (not (= td@@143 ptTid))) (select steal_in_cs@11 td@@143)) (not (= H@8 (select h_ss@7 td@@143)))) (> H@8 (select h_ss@7 td@@143)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@6 (not take_in_cs@6)))) (and (=> (= (ControlFlow 0 31) (- 0 37)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@144 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@144 NIL)) (not (= td@@144 ptTid))) (select steal_in_cs@11 td@@144)) (= H@8 (select h_ss@7 td@@144))) (< H@8 (select t_ss@7 td@@144))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@145 T@Tid) ) (!  (=> (and (and (and (not (= td@@145 NIL)) (not (= td@@145 ptTid))) (select steal_in_cs@11 td@@145)) (not (= H@8 (select h_ss@7 td@@145)))) (> H@8 (select h_ss@7 td@@145)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@6 (not put_in_cs@6)))) (and (=> (= (ControlFlow 0 31) (- 0 36)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@146 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@146 NIL)) (not (= td@@146 ptTid))) (select steal_in_cs@11 td@@146)) (= H@8 (select h_ss@7 td@@146))) (< H@8 (select t_ss@7 td@@146))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@147 T@Tid) ) (!  (=> (and (and (and (not (= td@@147 NIL)) (not (= td@@147 ptTid))) (select steal_in_cs@11 td@@147)) (not (= H@8 (select h_ss@7 td@@147)))) (> H@8 (select h_ss@7 td@@147)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid))))) (and (=> (= (ControlFlow 0 31) (- 0 35)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@148 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@148 NIL)) (not (= td@@148 ptTid))) (select steal_in_cs@11 td@@148)) (= H@8 (select h_ss@7 td@@148))) (< H@8 (select t_ss@7 td@@148))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@149 T@Tid) ) (!  (=> (and (and (and (not (= td@@149 NIL)) (not (= td@@149 ptTid))) (select steal_in_cs@11 td@@149)) (not (= H@8 (select h_ss@7 td@@149)))) (> H@8 (select h_ss@7 td@@149)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@150 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@150 NIL)) (not (= td@@150 ptTid))) (select steal_in_cs@11 td@@150)) (= H@8 (select h_ss@7 td@@150))) (< H@8 (select t_ss@7 td@@150))) (not (= (select items@6 H@8) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |97|
)))) (and (=> (= (ControlFlow 0 31) (- 0 34)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@151 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@151 NIL)) (not (= td@@151 ptTid))) (select steal_in_cs@11 td@@151)) (= H@8 (select h_ss@7 td@@151))) (< H@8 (select t_ss@7 td@@151))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@152 T@Tid) ) (!  (=> (and (and (and (not (= td@@152 NIL)) (not (= td@@152 ptTid))) (select steal_in_cs@11 td@@152)) (not (= H@8 (select h_ss@7 td@@152)))) (> H@8 (select h_ss@7 td@@152)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@153 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@153 NIL)) (not (= td@@153 ptTid))) (select steal_in_cs@11 td@@153)) (= H@8 (select h_ss@7 td@@153))) (< H@8 (select t_ss@7 td@@153))) (= (select status@10 H@8) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |98|
)))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (or (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@154 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@154 NIL)) (not (= td@@154 ptTid))) (select steal_in_cs@11 td@@154)) (= H@8 (select h_ss@7 td@@154))) (< H@8 (select t_ss@7 td@@154))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@155 T@Tid) ) (!  (=> (and (and (and (not (= td@@155 NIL)) (not (= td@@155 ptTid))) (select steal_in_cs@11 td@@155)) (not (= H@8 (select h_ss@7 td@@155)))) (> H@8 (select h_ss@7 td@@155)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@156 T@Tid) ) (!  (=> (and (and (and (not (= td@@156 NIL)) (not (= td@@156 ptTid))) (select steal_in_cs@11 td@@156)) (not (= H@8 (select h_ss@7 td@@156)))) (> H@8 (select h_ss@7 td@@156)))
 :qid |wsqbpl.44:14|
 :skolemid |99|
)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@157 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@157 NIL)) (not (= td@@157 ptTid))) (select steal_in_cs@11 td@@157)) (= H@8 (select h_ss@7 td@@157))) (< H@8 (select t_ss@7 td@@157))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@158 T@Tid) ) (!  (=> (and (and (and (not (= td@@158 NIL)) (not (= td@@158 ptTid))) (select steal_in_cs@11 td@@158)) (not (= H@8 (select h_ss@7 td@@158)))) (> H@8 (select h_ss@7 td@@158)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@159 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@159 NIL)) (not (= td@@159 ptTid))) (select steal_in_cs@11 td@@159)) (= H@8 (select h_ss@7 td@@159))) (< H@8 (select t_ss@7 td@@159))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@160 T@Tid) ) (!  (=> (and (and (and (not (= td@@160 NIL)) (not (= td@@160 ptTid))) (select steal_in_cs@11 td@@160)) (not (= H@8 (select h_ss@7 td@@160)))) (> H@8 (select h_ss@7 td@@160)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 31) (- 0 30)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8)))))))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (forall ((i@@51 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@51) (<= i@@51 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@51) IN_Q) (not (= (select Civl_global_old_items@1 i@@51) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@161 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@161 NIL)) (not (= td@@161 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@161)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@161))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@161))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@162 T@Tid) ) (!  (=> (and (and (and (not (= td@@162 NIL)) (not (= td@@162 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@162)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@162)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@162)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid)))) (=> (and (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((i@@52 Int) ) (!  (=> (and (<= H@8 i@@52) (<= i@@52 (- T@6 1))) (and (= (select status@10 i@@52) IN_Q) (not (= (select items@6 i@@52) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@53 Int) ) (!  (=> (and (<= H@8 i@@53) (<= i@@53 (- T@6 1))) (and (= (select status@10 i@@53) IN_Q) (not (= (select items@6 i@@53) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@163 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@163 NIL)) (not (= td@@163 ptTid))) (select steal_in_cs@11 td@@163)) (= H@8 (select h_ss@7 td@@163))) (< H@8 (select t_ss@7 td@@163))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@164 T@Tid) ) (!  (=> (and (and (and (not (= td@@164 NIL)) (not (= td@@164 ptTid))) (select steal_in_cs@11 td@@164)) (not (= H@8 (select h_ss@7 td@@164)))) (> H@8 (select h_ss@7 td@@164)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@165 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@165 NIL)) (not (= td@@165 ptTid))) (select steal_in_cs@11 td@@165)) (= H@8 (select h_ss@7 td@@165))) (< H@8 (select t_ss@7 td@@165))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@166 T@Tid) ) (!  (=> (and (and (and (not (= td@@166 NIL)) (not (= td@@166 ptTid))) (select steal_in_cs@11 td@@166)) (not (= H@8 (select h_ss@7 td@@166)))) (> H@8 (select h_ss@7 td@@166)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 26) (- 0 25)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (and (forall ((i@@54 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@54) (<= i@@54 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@54) IN_Q) (not (= (select Civl_global_old_items@1 i@@54) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@167 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@167 NIL)) (not (= td@@167 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@167)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@167))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@167))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@168 T@Tid) ) (!  (=> (and (and (and (not (= td@@168 NIL)) (not (= td@@168 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@168)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@168)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@168)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((i@@55 Int) ) (!  (=> (and (and (>= i@@55 Civl_global_old_T@1) (not Civl_global_old_put_in_cs@1)) (not Civl_global_old_take_in_cs@1)) (and (= (select Civl_global_old_status@3 i@@55) NOT_IN_Q) (= (select Civl_global_old_items@1 i@@55) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (and (and (forall ((i@@56 Int) ) (!  (=> (and (<= H@8 i@@56) (<= i@@56 (- T@6 1))) (and (= (select status@10 i@@56) IN_Q) (not (= (select items@6 i@@56) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (forall ((i@@57 Int) ) (!  (=> (and (<= H@8 i@@57) (<= i@@57 (- T@6 1))) (and (= (select status@10 i@@57) IN_Q) (not (= (select items@6 i@@57) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@169 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@169 NIL)) (not (= td@@169 ptTid))) (select steal_in_cs@11 td@@169)) (= H@8 (select h_ss@7 td@@169))) (< H@8 (select t_ss@7 td@@169))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@170 T@Tid) ) (!  (=> (and (and (and (not (= td@@170 NIL)) (not (= td@@170 ptTid))) (select steal_in_cs@11 td@@170)) (not (= H@8 (select h_ss@7 td@@170)))) (> H@8 (select h_ss@7 td@@170)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@171 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@171 NIL)) (not (= td@@171 ptTid))) (select steal_in_cs@11 td@@171)) (= H@8 (select h_ss@7 td@@171))) (< H@8 (select t_ss@7 td@@171))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@172 T@Tid) ) (!  (=> (and (and (and (not (= td@@172 NIL)) (not (= td@@172 ptTid))) (select steal_in_cs@11 td@@172)) (not (= H@8 (select h_ss@7 td@@172)))) (> H@8 (select h_ss@7 td@@172)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 22) (- 0 21)) (forall ((i@@58 Int) ) (!  (=> (and (and (>= i@@58 T@6) (not put_in_cs@6)) (not take_in_cs@6)) (and (= (select status@10 i@@58) NOT_IN_Q) (= (select items@6 i@@58) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (forall ((i@@59 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@59) (<= i@@59 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@59) IN_Q) (not (= (select Civl_global_old_items@1 i@@59) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@173 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@173 NIL)) (not (= td@@173 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@173)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@173))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@173))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@174 T@Tid) ) (!  (=> (and (and (and (not (= td@@174 NIL)) (not (= td@@174 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@174)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@174)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@174)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((i@@60 Int) ) (!  (=> (and (and (>= i@@60 Civl_global_old_T@1) (not Civl_global_old_put_in_cs@1)) (not Civl_global_old_take_in_cs@1)) (and (= (select Civl_global_old_status@3 i@@60) NOT_IN_Q) (= (select Civl_global_old_items@1 i@@60) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (and (and (and (forall ((i@@61 Int) ) (!  (=> (and (<= H@8 i@@61) (<= i@@61 (- T@6 1))) (and (= (select status@10 i@@61) IN_Q) (not (= (select items@6 i@@61) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (and (forall ((i@@62 Int) ) (!  (=> (and (<= H@8 i@@62) (<= i@@62 (- T@6 1))) (and (= (select status@10 i@@62) IN_Q) (not (= (select items@6 i@@62) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@6)) (not put_in_cs@6)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@175 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@175 NIL)) (not (= td@@175 ptTid))) (select steal_in_cs@11 td@@175)) (= H@8 (select h_ss@7 td@@175))) (< H@8 (select t_ss@7 td@@175))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@176 T@Tid) ) (!  (=> (and (and (and (not (= td@@176 NIL)) (not (= td@@176 ptTid))) (select steal_in_cs@11 td@@176)) (not (= H@8 (select h_ss@7 td@@176)))) (> H@8 (select h_ss@7 td@@176)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@177 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@177 NIL)) (not (= td@@177 ptTid))) (select steal_in_cs@11 td@@177)) (= H@8 (select h_ss@7 td@@177))) (< H@8 (select t_ss@7 td@@177))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@178 T@Tid) ) (!  (=> (and (and (and (not (= td@@178 NIL)) (not (= td@@178 ptTid))) (select steal_in_cs@11 td@@178)) (not (= H@8 (select h_ss@7 td@@178)))) (> H@8 (select h_ss@7 td@@178)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((i@@63 Int) ) (!  (=> (and (and (>= i@@63 T@6) (not put_in_cs@6)) (not take_in_cs@6)) (and (= (select status@10 i@@63) NOT_IN_Q) (= (select items@6 i@@63) EMPTY)))
 :qid |wsqbpl.58:12|
 :skolemid |3|
))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (and (forall ((i@@64 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@64) (<= i@@64 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@64) IN_Q) (not (= (select Civl_global_old_items@1 i@@64) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@179 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@179 NIL)) (not (= td@@179 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@179)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@179))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@179))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@180 T@Tid) ) (!  (=> (and (and (and (not (= td@@180 NIL)) (not (= td@@180 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@180)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@180)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@180)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (and (and (and (forall ((i@@65 Int) ) (!  (=> (and (<= H@8 i@@65) (<= i@@65 (- T@6 1))) (and (= (select status@10 i@@65) IN_Q) (not (= (select items@6 i@@65) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q)))) (=> (and (and (and (and (forall ((i@@66 Int) ) (!  (=> (and (<= H@8 i@@66) (<= i@@66 (- T@6 1))) (and (= (select status@10 i@@66) IN_Q) (not (= (select items@6 i@@66) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 15) (- 0 14)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@181 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@181 NIL)) (not (= td@@181 ptTid))) (select steal_in_cs@11 td@@181)) (= H@8 (select h_ss@7 td@@181))) (< H@8 (select t_ss@7 td@@181))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@182 T@Tid) ) (!  (=> (and (and (and (not (= td@@182 NIL)) (not (= td@@182 ptTid))) (select steal_in_cs@11 td@@182)) (not (= H@8 (select h_ss@7 td@@182)))) (> H@8 (select h_ss@7 td@@182)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (forall ((i@@67 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@67) (<= i@@67 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@67) IN_Q) (not (= (select Civl_global_old_items@1 i@@67) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@183 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@183 NIL)) (not (= td@@183 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@183)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@183))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@183))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@184 T@Tid) ) (!  (=> (and (and (and (not (= td@@184 NIL)) (not (= td@@184 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@184)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@184)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@184)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (and (and (forall ((i@@68 Int) ) (!  (=> (and (<= H@8 i@@68) (<= i@@68 (- T@6 1))) (and (= (select status@10 i@@68) IN_Q) (not (= (select items@6 i@@68) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (forall ((i@@69 Int) ) (!  (=> (and (<= H@8 i@@69) (<= i@@69 (- T@6 1))) (and (= (select status@10 i@@69) IN_Q) (not (= (select items@6 i@@69) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (= (ControlFlow 0 12) (- 0 11)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@185 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@185 NIL)) (not (= td@@185 ptTid))) (select steal_in_cs@11 td@@185)) (= H@8 (select h_ss@7 td@@185))) (< H@8 (select t_ss@7 td@@185))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@186 T@Tid) ) (!  (=> (and (and (and (not (= td@@186 NIL)) (not (= td@@186 ptTid))) (select steal_in_cs@11 td@@186)) (not (= H@8 (select h_ss@7 td@@186)))) (> H@8 (select h_ss@7 td@@186)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (forall ((i@@70 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@70) (<= i@@70 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@70) IN_Q) (not (= (select Civl_global_old_items@1 i@@70) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@187 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@187 NIL)) (not (= td@@187 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@187)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@187))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@187))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@188 T@Tid) ) (!  (=> (and (and (and (not (= td@@188 NIL)) (not (= td@@188 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@188)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@188)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@188)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (and (forall ((i@@71 Int) ) (!  (=> (and (<= H@8 i@@71) (<= i@@71 (- T@6 1))) (and (= (select status@10 i@@71) IN_Q) (not (= (select items@6 i@@71) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q)))) (=> (and (and (forall ((i@@72 Int) ) (!  (=> (and (<= H@8 i@@72) (<= i@@72 (- T@6 1))) (and (= (select status@10 i@@72) IN_Q) (not (= (select items@6 i@@72) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 8) (- 0 7)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@189 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@189 NIL)) (not (= td@@189 ptTid))) (select steal_in_cs@11 td@@189)) (= H@8 (select h_ss@7 td@@189))) (< H@8 (select t_ss@7 td@@189))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@190 T@Tid) ) (!  (=> (and (and (and (not (= td@@190 NIL)) (not (= td@@190 ptTid))) (select steal_in_cs@11 td@@190)) (not (= H@8 (select h_ss@7 td@@190)))) (> H@8 (select h_ss@7 td@@190)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (and (forall ((i@@73 Int) ) (!  (=> (and (<= Civl_global_old_H@1 i@@73) (<= i@@73 (- Civl_global_old_T@1 1))) (and (= (select Civl_global_old_status@3 i@@73) IN_Q) (not (= (select Civl_global_old_items@1 i@@73) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (and (and (and (and (and (=> (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (and (and (and (= (select Civl_global_old_t_ss@1 ptTid) Civl_global_old_T@1) (<= Civl_global_old_H@1 Civl_global_old_T@1)) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))) (= (select Civl_global_old_status@3 Civl_global_old_T@1) IN_Q))) (=> Civl_global_old_put_in_cs@1 (not Civl_global_old_take_in_cs@1))) (=> Civl_global_old_take_in_cs@1 (not Civl_global_old_put_in_cs@1))) (=> (and Civl_global_old_take_in_cs@1 (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 ptTid)))) (forall ((td@@191 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@191 NIL)) (not (= td@@191 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@191)) (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@191))) (< Civl_global_old_H@1 (select Civl_global_old_t_ss@1 td@@191))) (and (not (= (select Civl_global_old_items@1 Civl_global_old_H@1) EMPTY)) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@192 T@Tid) ) (!  (=> (and (and (and (not (= td@@192 NIL)) (not (= td@@192 ptTid))) (select Civl_global_old_steal_in_cs@1 td@@192)) (not (= Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@192)))) (> Civl_global_old_H@1 (select Civl_global_old_h_ss@1 td@@192)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (and (forall ((i@@74 Int) ) (!  (=> (and (<= H@8 i@@74) (<= i@@74 (- T@6 1))) (and (= (select status@10 i@@74) IN_Q) (not (= (select items@6 i@@74) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)))) (=> (and (and (forall ((i@@75 Int) ) (!  (=> (and (<= H@8 i@@75) (<= i@@75 (- T@6 1))) (and (= (select status@10 i@@75) IN_Q) (not (= (select items@6 i@@75) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 NIL)) (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 ptTid)))) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (= (ControlFlow 0 5) (- 0 4)) (and (and (and (and (and (=> (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (and (and (and (= (select t_ss@7 ptTid) T@6) (<= H@8 T@6)) (not (= (select items@6 T@6) EMPTY))) (= (select status@10 T@6) IN_Q))) (=> put_in_cs@6 (not take_in_cs@6))) (=> take_in_cs@6 (not put_in_cs@6))) (=> (and take_in_cs@6 (not (= H@8 (select h_ss@7 ptTid)))) (> H@8 (select h_ss@7 ptTid)))) (forall ((td@@193 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@193 NIL)) (not (= td@@193 ptTid))) (select steal_in_cs@11 td@@193)) (= H@8 (select h_ss@7 td@@193))) (< H@8 (select t_ss@7 td@@193))) (and (not (= (select items@6 H@8) EMPTY)) (= (select status@10 H@8) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@194 T@Tid) ) (!  (=> (and (and (and (not (= td@@194 NIL)) (not (= td@@194 ptTid))) (select steal_in_cs@11 td@@194)) (not (= H@8 (select h_ss@7 td@@194)))) (> H@8 (select h_ss@7 td@@194)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))))))))))
(let ((anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@1) (=> (and (= T@6 T@1) (= items@6 items@1)) (=> (and (and (and (and (= status@10 status@1) (= take_in_cs@6 take_in_cs@1)) (and (= put_in_cs@6 put_in_cs@1) (= steal_in_cs@11 steal_in_cs@1))) (and (and (= h_ss@7 h_ss@1) (= t_ss@7 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@6 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 242) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 242) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 242) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 242) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 242) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 242) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 242) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 242) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 242) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 242) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 242) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 242) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 242) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 242) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 242) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 242) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 242) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 242) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 242) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon5_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 243) 240) anon5_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 243) 241) anon5_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 243) 242) anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@3) (=> (and (= T@6 T@3) (= items@6 items@3)) (=> (and (and (and (and (= status@10 status@3) (= take_in_cs@6 take_in_cs@3)) (and (= put_in_cs@6 put_in_cs@3) (= steal_in_cs@11 steal_in_cs@9))) (and (and (= h_ss@7 h_ss@4) (= t_ss@7 t_ss@4)) (and (= Civl_global_old_H@1 H@3) (= Civl_global_old_T@1 T@3)))) (and (and (and (= Civl_global_old_items@1 items@3) (= Civl_global_old_status@3 status@3)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@3) (= Civl_global_old_put_in_cs@1 put_in_cs@3))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@4)) (and (= Civl_global_old_t_ss@1 t_ss@4) (= Civl_linear_tid_available@6 Civl_linear_tid_available@4))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 202) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 202) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 202) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 202) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 202) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 202) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 202) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 202) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 202) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 202) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 202) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 202) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 202) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 202) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 202) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 202) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 202) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 202) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 202) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_stealExitCS$0$anon0_correct  (=> (= steal_in_cs@9 (store steal_in_cs@4 tid false)) (and (and (=> (= (ControlFlow 0 203) 200) anon6_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 203) 201) anon6_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 203) 202) anon6_Then$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Then_correct  (=> (>= H@1 T@2) (and (=> (= (ControlFlow 0 204) (- 0 206)) (select steal_in_cs@4 tid)) (=> (select steal_in_cs@4 tid) (and (=> (= (ControlFlow 0 204) (- 0 205)) (and (not (= tid NIL)) (not (= tid ptTid)))) (=> (and (not (= tid NIL)) (not (= tid ptTid))) (=> (= (ControlFlow 0 204) 203) inline$atomic_stealExitCS$0$anon0_correct))))))))
(let ((anon7_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@6) (=> (and (= T@6 T@4) (= items@6 items@4)) (=> (and (and (and (and (= status@10 status@6) (= take_in_cs@6 take_in_cs@4)) (and (= put_in_cs@6 put_in_cs@4) (= steal_in_cs@11 steal_in_cs@8))) (and (and (= h_ss@7 h_ss@5) (= t_ss@7 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@6 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 174) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 174) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 174) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 174) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 174) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 174) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 174) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 174) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 174) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 174) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 174) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 174) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 174) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 174) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 174) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 174) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 174) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 174) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 174) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_Then_correct  (=> inline$atomic_CAS_H_steal$0$result@2 (and (and (=> (= (ControlFlow 0 185) 184) anon7_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 185) 179) anon7_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 185) 174) anon7_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon7_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@6) (=> (and (= T@6 T@4) (= items@6 items@4)) (=> (and (and (and (and (= status@10 status@6) (= take_in_cs@6 take_in_cs@4)) (and (= put_in_cs@6 put_in_cs@4) (= steal_in_cs@11 steal_in_cs@8))) (and (and (= h_ss@7 h_ss@5) (= t_ss@7 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@6 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 171) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 171) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 171) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 171) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 171) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 171) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 171) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 171) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 171) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 171) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 171) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 171) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 171) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 171) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 171) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 171) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 171) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 171) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 171) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_Else_correct  (=> (not inline$atomic_CAS_H_steal$0$result@2) (and (and (=> (= (ControlFlow 0 173) 167) anon7_Else_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 173) 171) anon7_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 173) 172) anon7_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Else_correct  (=> (and (not (= H@4 H@1)) (= steal_in_cs@7 (store steal_in_cs@5 tid false))) (=> (and (and (= H@6 H@4) (= status@6 status@4)) (and (= steal_in_cs@8 steal_in_cs@7) (= inline$atomic_CAS_H_steal$0$result@2 false))) (and (=> (= (ControlFlow 0 187) 185) anon7_Then_correct) (=> (= (ControlFlow 0 187) 173) anon7_Else_correct))))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Then_correct  (=> (and (and (and (= H@4 H@1) (= status@5 (store status@4 H@4 NOT_IN_Q))) (and (= H@5 (+ H@4 1)) (= steal_in_cs@6 (store steal_in_cs@5 tid false)))) (and (and (= H@6 H@5) (= status@6 status@5)) (and (= steal_in_cs@8 steal_in_cs@6) (= inline$atomic_CAS_H_steal$0$result@2 true)))) (and (=> (= (ControlFlow 0 186) 185) anon7_Then_correct) (=> (= (ControlFlow 0 186) 173) anon7_Else_correct)))))
(let ((inline$atomic_CAS_H_steal$0$Entry_correct  (=> (= inline$atomic_CAS_H_steal$0$val@1 (+ H@1 1)) (and (=> (= (ControlFlow 0 188) 186) inline$atomic_CAS_H_steal$0$anon3_Then_correct) (=> (= (ControlFlow 0 188) 187) inline$atomic_CAS_H_steal$0$anon3_Else_correct)))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 189) (- 0 197)) (and (and (and (not (= tid NIL)) (not (= tid ptTid))) (select steal_in_cs@4 tid)) (= (select h_ss@4 tid) H@1))) (=> (and (and (and (not (= tid NIL)) (not (= tid ptTid))) (select steal_in_cs@4 tid)) (= (select h_ss@4 tid) H@1)) (and (=> (= (ControlFlow 0 189) (- 0 196)) (forall ((i@@76 Int) ) (!  (=> (and (<= H@3 i@@76) (<= i@@76 (- T@3 1))) (and (= (select status@3 i@@76) IN_Q) (not (= (select items@3 i@@76) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@77 Int) ) (!  (=> (and (<= H@3 i@@77) (<= i@@77 (- T@3 1))) (and (= (select status@3 i@@77) IN_Q) (not (= (select items@3 i@@77) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 189) (- 0 195)) (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@195 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@195 NIL)) (not (= td@@195 ptTid))) (select steal_in_cs@4 td@@195)) (= H@3 (select h_ss@4 td@@195))) (< H@3 (select t_ss@4 td@@195))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@196 T@Tid) ) (!  (=> (and (and (and (not (= td@@196 NIL)) (not (= td@@196 ptTid))) (select steal_in_cs@4 td@@196)) (not (= H@3 (select h_ss@4 td@@196)))) (> H@3 (select h_ss@4 td@@196)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@197 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@197 NIL)) (not (= td@@197 ptTid))) (select steal_in_cs@4 td@@197)) (= H@3 (select h_ss@4 td@@197))) (< H@3 (select t_ss@4 td@@197))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@198 T@Tid) ) (!  (=> (and (and (and (not (= td@@198 NIL)) (not (= td@@198 ptTid))) (select steal_in_cs@4 td@@198)) (not (= H@3 (select h_ss@4 td@@198)))) (> H@3 (select h_ss@4 td@@198)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 189) (- 0 194)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 189) (- 0 193)) (=> (and (and (= H@3 H@3) (= H@3 H@1)) (= (select h_ss@4 tid) H@1)) (not (= inline$atomic_readItems$0$y@2 EMPTY)))) (=> (=> (and (and (= H@3 H@3) (= H@3 H@1)) (= (select h_ss@4 tid) H@1)) (not (= inline$atomic_readItems$0$y@2 EMPTY))) (and (=> (= (ControlFlow 0 189) (- 0 192)) (=> (and (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= H@1 H@3)) (< H@3 T@3))) (=> (=> (and (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= H@1 H@3)) (< H@3 T@3)) (and (=> (= (ControlFlow 0 189) (- 0 191)) (=> (= H@1 H@3) (= (select status@3 H@3) IN_Q))) (=> (=> (= H@1 H@3) (= (select status@3 H@3) IN_Q)) (=> (and (or false true) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (not (= tid NIL)) (not (= tid ptTid))) (select steal_in_cs@5 tid)) (= (select h_ss@5 tid) H@1)) (forall ((i@@78 Int) ) (!  (=> (and (<= H@4 i@@78) (<= i@@78 (- T@4 1))) (and (= (select status@4 i@@78) IN_Q) (not (= (select items@4 i@@78) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (and (and (and (= (select t_ss@5 ptTid) T@4) (<= H@4 T@4)) (not (= (select items@4 T@4) EMPTY))) (= (select status@4 T@4) IN_Q))) (=> put_in_cs@4 (not take_in_cs@4))) (=> take_in_cs@4 (not put_in_cs@4))) (=> (and take_in_cs@4 (not (= H@4 (select h_ss@5 ptTid)))) (> H@4 (select h_ss@5 ptTid)))) (forall ((td@@199 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@199 NIL)) (not (= td@@199 ptTid))) (select steal_in_cs@5 td@@199)) (= H@4 (select h_ss@5 td@@199))) (< H@4 (select t_ss@5 td@@199))) (and (not (= (select items@4 H@4) EMPTY)) (= (select status@4 H@4) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@200 T@Tid) ) (!  (=> (and (and (and (not (= td@@200 NIL)) (not (= td@@200 ptTid))) (select steal_in_cs@5 td@@200)) (not (= H@4 (select h_ss@5 td@@200)))) (> H@4 (select h_ss@5 td@@200)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= H@3 H@4) (=> (and (and (= H@3 H@4) (= H@4 H@1)) (= (select h_ss@5 tid) H@1)) (not (= inline$atomic_readItems$0$y@2 EMPTY)))) (and (=> (and (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (= H@1 H@4)) (< H@4 T@4)) (=> (= H@1 H@4) (= (select status@4 H@4) IN_Q))))) (and (=> (= (ControlFlow 0 189) (- 0 190)) (and (not (= tid NIL)) (not (= tid ptTid)))) (=> (and (not (= tid NIL)) (not (= tid ptTid))) (=> (= (ControlFlow 0 189) 188) inline$atomic_CAS_H_steal$0$Entry_correct))))))))))))))))))))))
(let ((anon6_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@3) (=> (and (= T@6 T@3) (= items@6 items@3)) (=> (and (and (and (and (= status@10 status@3) (= take_in_cs@6 take_in_cs@3)) (and (= put_in_cs@6 put_in_cs@3) (= steal_in_cs@11 steal_in_cs@4))) (and (and (= h_ss@7 h_ss@4) (= t_ss@7 t_ss@4)) (and (= Civl_global_old_H@1 H@3) (= Civl_global_old_T@1 T@3)))) (and (and (and (= Civl_global_old_items@1 items@3) (= Civl_global_old_status@3 status@3)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@3) (= Civl_global_old_put_in_cs@1 put_in_cs@3))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@4)) (and (= Civl_global_old_t_ss@1 t_ss@4) (= Civl_linear_tid_available@6 Civl_linear_tid_available@4))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 164) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 164) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 164) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 164) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 164) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readItems$0$anon0_correct  (=> (and (= inline$atomic_readItems$0$y@2 (select items@3 H@1)) (= inline$atomic_readItems$0$b@2 (select status@3 H@1))) (and (and (=> (= (ControlFlow 0 198) 189) anon3_0_correct) (=> (= (ControlFlow 0 198) 164) anon6_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 198) 165) anon6_Else$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon6_Else_correct  (=> (and (> T@2 H@1) (= (ControlFlow 0 199) 198)) inline$atomic_readItems$0$anon0_correct)))
(let ((anon5_LoopBody_0_correct  (and (=> (= (ControlFlow 0 207) (- 0 214)) (select steal_in_cs@3 tid)) (=> (select steal_in_cs@3 tid) (and (=> (= (ControlFlow 0 207) (- 0 213)) (and (and (and (and (not (= tid NIL)) (not (= tid ptTid))) (>= H@2 H@1)) (select steal_in_cs@3 tid)) (= (select h_ss@3 tid) H@1))) (=> (and (and (and (and (not (= tid NIL)) (not (= tid ptTid))) (>= H@2 H@1)) (select steal_in_cs@3 tid)) (= (select h_ss@3 tid) H@1)) (and (=> (= (ControlFlow 0 207) (- 0 212)) (forall ((i@@79 Int) ) (!  (=> (and (<= H@2 i@@79) (<= i@@79 (- T@2 1))) (and (= (select status@2 i@@79) IN_Q) (not (= (select items@2 i@@79) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@80 Int) ) (!  (=> (and (<= H@2 i@@80) (<= i@@80 (- T@2 1))) (and (= (select status@2 i@@80) IN_Q) (not (= (select items@2 i@@80) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 207) (- 0 211)) (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@2) (<= H@2 T@2)) (not (= (select items@2 T@2) EMPTY))) (= (select status@2 T@2) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@3 ptTid)))) (> H@2 (select h_ss@3 ptTid)))) (forall ((td@@201 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@201 NIL)) (not (= td@@201 ptTid))) (select steal_in_cs@3 td@@201)) (= H@2 (select h_ss@3 td@@201))) (< H@2 (select t_ss@3 td@@201))) (and (not (= (select items@2 H@2) EMPTY)) (= (select status@2 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@202 T@Tid) ) (!  (=> (and (and (and (not (= td@@202 NIL)) (not (= td@@202 ptTid))) (select steal_in_cs@3 td@@202)) (not (= H@2 (select h_ss@3 td@@202)))) (> H@2 (select h_ss@3 td@@202)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (and (and (and (= (select t_ss@3 ptTid) T@2) (<= H@2 T@2)) (not (= (select items@2 T@2) EMPTY))) (= (select status@2 T@2) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@3 ptTid)))) (> H@2 (select h_ss@3 ptTid)))) (forall ((td@@203 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@203 NIL)) (not (= td@@203 ptTid))) (select steal_in_cs@3 td@@203)) (= H@2 (select h_ss@3 td@@203))) (< H@2 (select t_ss@3 td@@203))) (and (not (= (select items@2 H@2) EMPTY)) (= (select status@2 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@204 T@Tid) ) (!  (=> (and (and (and (not (= td@@204 NIL)) (not (= td@@204 ptTid))) (select steal_in_cs@3 td@@204)) (not (= H@2 (select h_ss@3 td@@204)))) (> H@2 (select h_ss@3 td@@204)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 207) (- 0 210)) (and (<= H@2 H@2) (= T@2 (select t_ss@3 tid)))) (=> (and (<= H@2 H@2) (= T@2 (select t_ss@3 tid))) (and (=> (= (ControlFlow 0 207) (- 0 209)) (=> (and (and (and (< H@1 T@2) take_in_cs@2) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= H@1 H@2)) (< H@2 T@2))) (=> (=> (and (and (and (< H@1 T@2) take_in_cs@2) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= H@1 H@2)) (< H@2 T@2)) (and (=> (= (ControlFlow 0 207) (- 0 208)) (>= H@2 H@1)) (=> (>= H@2 H@1) (=> (or false true) (=> (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))) (select steal_in_cs@4 tid)) (=> (and (and (and (and (and (not (= tid NIL)) (not (= tid ptTid))) (>= H@3 H@1)) (select steal_in_cs@4 tid)) (= (select h_ss@4 tid) H@1)) (forall ((i@@81 Int) ) (!  (=> (and (<= H@3 i@@81) (<= i@@81 (- T@3 1))) (and (= (select status@3 i@@81) IN_Q) (not (= (select items@3 i@@81) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (=> (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (and (and (and (= (select t_ss@4 ptTid) T@3) (<= H@3 T@3)) (not (= (select items@3 T@3) EMPTY))) (= (select status@3 T@3) IN_Q))) (=> put_in_cs@3 (not take_in_cs@3))) (=> take_in_cs@3 (not put_in_cs@3))) (=> (and take_in_cs@3 (not (= H@3 (select h_ss@4 ptTid)))) (> H@3 (select h_ss@4 ptTid)))) (forall ((td@@205 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@205 NIL)) (not (= td@@205 ptTid))) (select steal_in_cs@4 td@@205)) (= H@3 (select h_ss@4 td@@205))) (< H@3 (select t_ss@4 td@@205))) (and (not (= (select items@3 H@3) EMPTY)) (= (select status@3 H@3) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@206 T@Tid) ) (!  (=> (and (and (and (not (= td@@206 NIL)) (not (= td@@206 ptTid))) (select steal_in_cs@4 td@@206)) (not (= H@3 (select h_ss@4 td@@206)))) (> H@3 (select h_ss@4 td@@206)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (and (<= H@2 H@3) (= T@2 (select t_ss@4 tid))) (and (=> (and (and (and (< H@1 T@2) take_in_cs@3) (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= H@1 H@3)) (< H@3 T@3)) (>= H@3 H@1)))) (and (=> (= (ControlFlow 0 207) 204) anon6_Then_correct) (=> (= (ControlFlow 0 207) 199) anon6_Else_correct))))))))))))))))))))))
(let ((anon5_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@2) (=> (and (= T@6 T@2) (= items@6 items@2)) (=> (and (and (and (and (= status@10 status@2) (= take_in_cs@6 take_in_cs@2)) (and (= put_in_cs@6 put_in_cs@2) (= steal_in_cs@11 steal_in_cs@3))) (and (and (= h_ss@7 h_ss@3) (= t_ss@7 t_ss@3)) (and (= Civl_global_old_H@1 H@2) (= Civl_global_old_T@1 T@2)))) (and (and (and (= Civl_global_old_items@1 items@2) (= Civl_global_old_status@3 status@2)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@2) (= Civl_global_old_put_in_cs@1 put_in_cs@2))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@2) (= Civl_global_old_h_ss@1 h_ss@3)) (and (= Civl_global_old_t_ss@1 t_ss@2) (= Civl_linear_tid_available@6 Civl_linear_tid_available@3))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 162) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 162) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 162) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 162) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 162) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 162) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 162) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 162) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 162) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 162) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 162) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readT_steal$0$anon0_correct  (=> (and (= t_ss@3 (store t_ss@2 tid T@2)) (= steal_in_cs@3 (store steal_in_cs@2 tid true))) (and (and (=> (= (ControlFlow 0 215) 207) anon5_LoopBody_0_correct) (=> (= (ControlFlow 0 215) 162) anon5_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 215) 163) anon5_LoopBody_1$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody_1_correct  (and (=> (= (ControlFlow 0 216) (- 0 235)) (>= H@1 H@1)) (=> (>= H@1 H@1) (and (=> (= (ControlFlow 0 216) (- 0 234)) (not (select steal_in_cs@1 tid))) (=> (not (select steal_in_cs@1 tid)) (and (=> (= (ControlFlow 0 216) (- 0 233)) (= (select h_ss@2 tid) H@1)) (=> (= (select h_ss@2 tid) H@1) (and (=> (= (ControlFlow 0 216) (- 0 232)) (forall ((i@@82 Int) ) (!  (=> (and (<= H@1 i@@82) (<= i@@82 (- T@1 1))) (and (= (select status@1 i@@82) IN_Q) (not (= (select items@1 i@@82) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@83 Int) ) (!  (=> (and (<= H@1 i@@83) (<= i@@83 (- T@1 1))) (and (= (select status@1 i@@83) IN_Q) (not (= (select items@1 i@@83) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 216) (- 0 231)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@207 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@207 NIL)) (not (= td@@207 ptTid))) (select steal_in_cs@1 td@@207)) (= H@1 (select h_ss@2 td@@207))) (< H@1 (select t_ss@1 td@@207))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@208 T@Tid) ) (!  (=> (and (and (and (not (= td@@208 NIL)) (not (= td@@208 ptTid))) (select steal_in_cs@1 td@@208)) (not (= H@1 (select h_ss@2 td@@208)))) (> H@1 (select h_ss@2 td@@208)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (= (select t_ss@1 ptTid) T@1)))) (and (=> (= (ControlFlow 0 216) (- 0 230)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@209 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@209 NIL)) (not (= td@@209 ptTid))) (select steal_in_cs@1 td@@209)) (= H@1 (select h_ss@2 td@@209))) (< H@1 (select t_ss@1 td@@209))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@210 T@Tid) ) (!  (=> (and (and (and (not (= td@@210 NIL)) (not (= td@@210 ptTid))) (select steal_in_cs@1 td@@210)) (not (= H@1 (select h_ss@2 td@@210)))) (> H@1 (select h_ss@2 td@@210)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (<= H@1 T@1)))) (and (=> (= (ControlFlow 0 216) (- 0 229)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@211 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@211 NIL)) (not (= td@@211 ptTid))) (select steal_in_cs@1 td@@211)) (= H@1 (select h_ss@2 td@@211))) (< H@1 (select t_ss@1 td@@211))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@212 T@Tid) ) (!  (=> (and (and (and (not (= td@@212 NIL)) (not (= td@@212 ptTid))) (select steal_in_cs@1 td@@212)) (not (= H@1 (select h_ss@2 td@@212)))) (> H@1 (select h_ss@2 td@@212)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (not (= (select items@1 T@1) EMPTY))))) (and (=> (= (ControlFlow 0 216) (- 0 228)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@213 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@213 NIL)) (not (= td@@213 ptTid))) (select steal_in_cs@1 td@@213)) (= H@1 (select h_ss@2 td@@213))) (< H@1 (select t_ss@1 td@@213))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@214 T@Tid) ) (!  (=> (and (and (and (not (= td@@214 NIL)) (not (= td@@214 ptTid))) (select steal_in_cs@1 td@@214)) (not (= H@1 (select h_ss@2 td@@214)))) (> H@1 (select h_ss@2 td@@214)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (= (select status@1 T@1) IN_Q)))) (and (=> (= (ControlFlow 0 216) (- 0 227)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@215 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@215 NIL)) (not (= td@@215 ptTid))) (select steal_in_cs@1 td@@215)) (= H@1 (select h_ss@2 td@@215))) (< H@1 (select t_ss@1 td@@215))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@216 T@Tid) ) (!  (=> (and (and (and (not (= td@@216 NIL)) (not (= td@@216 ptTid))) (select steal_in_cs@1 td@@216)) (not (= H@1 (select h_ss@2 td@@216)))) (> H@1 (select h_ss@2 td@@216)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> put_in_cs@1 (not take_in_cs@1)))) (and (=> (= (ControlFlow 0 216) (- 0 226)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@217 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@217 NIL)) (not (= td@@217 ptTid))) (select steal_in_cs@1 td@@217)) (= H@1 (select h_ss@2 td@@217))) (< H@1 (select t_ss@1 td@@217))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@218 T@Tid) ) (!  (=> (and (and (and (not (= td@@218 NIL)) (not (= td@@218 ptTid))) (select steal_in_cs@1 td@@218)) (not (= H@1 (select h_ss@2 td@@218)))) (> H@1 (select h_ss@2 td@@218)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> take_in_cs@1 (not put_in_cs@1)))) (and (=> (= (ControlFlow 0 216) (- 0 225)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@219 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@219 NIL)) (not (= td@@219 ptTid))) (select steal_in_cs@1 td@@219)) (= H@1 (select h_ss@2 td@@219))) (< H@1 (select t_ss@1 td@@219))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@220 T@Tid) ) (!  (=> (and (and (and (not (= td@@220 NIL)) (not (= td@@220 ptTid))) (select steal_in_cs@1 td@@220)) (not (= H@1 (select h_ss@2 td@@220)))) (> H@1 (select h_ss@2 td@@220)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid))))) (and (=> (= (ControlFlow 0 216) (- 0 224)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@221 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@221 NIL)) (not (= td@@221 ptTid))) (select steal_in_cs@1 td@@221)) (= H@1 (select h_ss@2 td@@221))) (< H@1 (select t_ss@1 td@@221))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@222 T@Tid) ) (!  (=> (and (and (and (not (= td@@222 NIL)) (not (= td@@222 ptTid))) (select steal_in_cs@1 td@@222)) (not (= H@1 (select h_ss@2 td@@222)))) (> H@1 (select h_ss@2 td@@222)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@223 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@223 NIL)) (not (= td@@223 ptTid))) (select steal_in_cs@1 td@@223)) (= H@1 (select h_ss@2 td@@223))) (< H@1 (select t_ss@1 td@@223))) (not (= (select items@1 H@1) EMPTY)))
 :qid |wsqbpl.43:14|
 :skolemid |100|
)))) (and (=> (= (ControlFlow 0 216) (- 0 223)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@224 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@224 NIL)) (not (= td@@224 ptTid))) (select steal_in_cs@1 td@@224)) (= H@1 (select h_ss@2 td@@224))) (< H@1 (select t_ss@1 td@@224))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@225 T@Tid) ) (!  (=> (and (and (and (not (= td@@225 NIL)) (not (= td@@225 ptTid))) (select steal_in_cs@1 td@@225)) (not (= H@1 (select h_ss@2 td@@225)))) (> H@1 (select h_ss@2 td@@225)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@226 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@226 NIL)) (not (= td@@226 ptTid))) (select steal_in_cs@1 td@@226)) (= H@1 (select h_ss@2 td@@226))) (< H@1 (select t_ss@1 td@@226))) (= (select status@1 H@1) IN_Q))
 :qid |wsqbpl.43:14|
 :skolemid |101|
)))) (and (=> (= (ControlFlow 0 216) (- 0 222)) (or (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@227 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@227 NIL)) (not (= td@@227 ptTid))) (select steal_in_cs@1 td@@227)) (= H@1 (select h_ss@2 td@@227))) (< H@1 (select t_ss@1 td@@227))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@228 T@Tid) ) (!  (=> (and (and (and (not (= td@@228 NIL)) (not (= td@@228 ptTid))) (select steal_in_cs@1 td@@228)) (not (= H@1 (select h_ss@2 td@@228)))) (> H@1 (select h_ss@2 td@@228)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (forall ((td@@229 T@Tid) ) (!  (=> (and (and (and (not (= td@@229 NIL)) (not (= td@@229 ptTid))) (select steal_in_cs@1 td@@229)) (not (= H@1 (select h_ss@2 td@@229)))) (> H@1 (select h_ss@2 td@@229)))
 :qid |wsqbpl.44:14|
 :skolemid |102|
)))) (and (=> (= (ControlFlow 0 216) (- 0 221)) (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@230 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@230 NIL)) (not (= td@@230 ptTid))) (select steal_in_cs@1 td@@230)) (= H@1 (select h_ss@2 td@@230))) (< H@1 (select t_ss@1 td@@230))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@231 T@Tid) ) (!  (=> (and (and (and (not (= td@@231 NIL)) (not (= td@@231 ptTid))) (select steal_in_cs@1 td@@231)) (not (= H@1 (select h_ss@2 td@@231)))) (> H@1 (select h_ss@2 td@@231)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@2 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@2 ptTid)))) (> H@1 (select h_ss@2 ptTid)))) (forall ((td@@232 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@232 NIL)) (not (= td@@232 ptTid))) (select steal_in_cs@1 td@@232)) (= H@1 (select h_ss@2 td@@232))) (< H@1 (select t_ss@1 td@@232))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@233 T@Tid) ) (!  (=> (and (and (and (not (= td@@233 NIL)) (not (= td@@233 ptTid))) (select steal_in_cs@1 td@@233)) (not (= H@1 (select h_ss@2 td@@233)))) (> H@1 (select h_ss@2 td@@233)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 216) (- 0 220)) (<= H@1 H@1)) (=> (<= H@1 H@1) (=> (and (or false true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (>= H@2 H@1) (not (select steal_in_cs@2 tid))) (and (= (select h_ss@3 tid) H@1) (forall ((i@@84 Int) ) (!  (=> (and (<= H@2 i@@84) (<= i@@84 (- T@2 1))) (and (= (select status@2 i@@84) IN_Q) (not (= (select items@2 i@@84) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)))) (=> (and (and (and (and (and (and (=> (and take_in_cs@2 (< (select h_ss@3 ptTid) (select t_ss@2 ptTid))) (and (and (and (= (select t_ss@2 ptTid) T@2) (<= H@2 T@2)) (not (= (select items@2 T@2) EMPTY))) (= (select status@2 T@2) IN_Q))) (=> put_in_cs@2 (not take_in_cs@2))) (=> take_in_cs@2 (not put_in_cs@2))) (=> (and take_in_cs@2 (not (= H@2 (select h_ss@3 ptTid)))) (> H@2 (select h_ss@3 ptTid)))) (forall ((td@@234 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@234 NIL)) (not (= td@@234 ptTid))) (select steal_in_cs@2 td@@234)) (= H@2 (select h_ss@3 td@@234))) (< H@2 (select t_ss@2 td@@234))) (and (not (= (select items@2 H@2) EMPTY)) (= (select status@2 H@2) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@235 T@Tid) ) (!  (=> (and (and (and (not (= td@@235 NIL)) (not (= td@@235 ptTid))) (select steal_in_cs@2 td@@235)) (not (= H@2 (select h_ss@3 td@@235)))) (> H@2 (select h_ss@3 td@@235)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (<= H@1 H@2)) (and (=> (= (ControlFlow 0 216) (- 0 219)) (not (select steal_in_cs@2 tid))) (=> (not (select steal_in_cs@2 tid)) (and (=> (= (ControlFlow 0 216) (- 0 218)) (and (not (= tid NIL)) (not (= tid ptTid)))) (=> (and (not (= tid NIL)) (not (= tid ptTid))) (and (=> (= (ControlFlow 0 216) (- 0 217)) (not (= tid NIL))) (=> (not (= tid NIL)) (=> (= (ControlFlow 0 216) 215) inline$atomic_readT_steal$0$anon0_correct))))))))))))))))))))))))))))))))))
(let ((anon5_LoopBody$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@1) (=> (and (= T@6 T@1) (= items@6 items@1)) (=> (and (and (and (and (= status@10 status@1) (= take_in_cs@6 take_in_cs@1)) (and (= put_in_cs@6 put_in_cs@1) (= steal_in_cs@11 steal_in_cs@1))) (and (and (= h_ss@7 h_ss@2) (= t_ss@7 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@6 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 157) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 157) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 157) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 157) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 157) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 157) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 157) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 157) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 157) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 157) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 157) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readH_steal$0$anon0_correct  (=> (= h_ss@2 (store h_ss@1 tid H@1)) (and (and (=> (= (ControlFlow 0 236) 216) anon5_LoopBody_1_correct) (=> (= (ControlFlow 0 236) 157) anon5_LoopBody$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 236) 161) anon5_LoopBody$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody_correct  (and (=> (= (ControlFlow 0 237) (- 0 239)) (not (select steal_in_cs@1 tid))) (=> (not (select steal_in_cs@1 tid)) (and (=> (= (ControlFlow 0 237) (- 0 238)) (and (not (= tid NIL)) (not (= tid ptTid)))) (=> (and (not (= tid NIL)) (not (= tid ptTid))) (=> (= (ControlFlow 0 237) 236) inline$atomic_readH_steal$0$anon0_correct)))))))
(let ((anon5_LoopHead_correct  (=> (and (and (not (= tid NIL)) (not (= tid ptTid))) (forall ((i@@85 Int) ) (!  (=> (and (<= H@1 i@@85) (<= i@@85 (- T@1 1))) (and (= (select status@1 i@@85) IN_Q) (not (= (select items@1 i@@85) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (and (and (and (and (and (and (and (=> (and take_in_cs@1 (< (select h_ss@1 ptTid) (select t_ss@1 ptTid))) (and (and (and (= (select t_ss@1 ptTid) T@1) (<= H@1 T@1)) (not (= (select items@1 T@1) EMPTY))) (= (select status@1 T@1) IN_Q))) (=> put_in_cs@1 (not take_in_cs@1))) (=> take_in_cs@1 (not put_in_cs@1))) (=> (and take_in_cs@1 (not (= H@1 (select h_ss@1 ptTid)))) (> H@1 (select h_ss@1 ptTid)))) (forall ((td@@236 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@236 NIL)) (not (= td@@236 ptTid))) (select steal_in_cs@1 td@@236)) (= H@1 (select h_ss@1 td@@236))) (< H@1 (select t_ss@1 td@@236))) (and (not (= (select items@1 H@1) EMPTY)) (= (select status@1 H@1) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@237 T@Tid) ) (!  (=> (and (and (and (not (= td@@237 NIL)) (not (= td@@237 ptTid))) (select steal_in_cs@1 td@@237)) (not (= H@1 (select h_ss@1 td@@237)))) (> H@1 (select h_ss@1 td@@237)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (not (select steal_in_cs@1 tid))) (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 244) 243) anon5_LoopDone_correct) (=> (= (ControlFlow 0 244) 237) anon5_LoopBody_correct))))))
(let ((anon0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 245) (- 0 249)) (and (not (= tid NIL)) (not (= tid ptTid)))) (=> (and (not (= tid NIL)) (not (= tid ptTid))) (and (=> (= (ControlFlow 0 245) (- 0 248)) (forall ((i@@86 Int) ) (!  (=> (and (<= H@0 i@@86) (<= i@@86 (- T@0 1))) (and (= (select status@0 i@@86) IN_Q) (not (= (select items@0 i@@86) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
))) (=> (forall ((i@@87 Int) ) (!  (=> (and (<= H@0 i@@87) (<= i@@87 (- T@0 1))) (and (= (select status@0 i@@87) IN_Q) (not (= (select items@0 i@@87) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (=> (= (ControlFlow 0 245) (- 0 247)) (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@238 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@238 NIL)) (not (= td@@238 ptTid))) (select steal_in_cs@0 td@@238)) (= H@0 (select h_ss@0 td@@238))) (< H@0 (select t_ss@0 td@@238))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@239 T@Tid) ) (!  (=> (and (and (and (not (= td@@239 NIL)) (not (= td@@239 ptTid))) (select steal_in_cs@0 td@@239)) (not (= H@0 (select h_ss@0 td@@239)))) (> H@0 (select h_ss@0 td@@239)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
)))) (=> (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@240 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@240 NIL)) (not (= td@@240 ptTid))) (select steal_in_cs@0 td@@240)) (= H@0 (select h_ss@0 td@@240))) (< H@0 (select t_ss@0 td@@240))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@241 T@Tid) ) (!  (=> (and (and (and (not (= td@@241 NIL)) (not (= td@@241 ptTid))) (select steal_in_cs@0 td@@241)) (not (= H@0 (select h_ss@0 td@@241)))) (> H@0 (select h_ss@0 td@@241)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (and (=> (= (ControlFlow 0 245) (- 0 246)) (not (select steal_in_cs@0 tid))) (=> (not (select steal_in_cs@0 tid)) (=> (= (ControlFlow 0 245) 244) anon5_LoopHead_correct)))))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@0) (=> (and (= T@6 T@0) (= items@6 items@0)) (=> (and (and (and (and (= status@10 status@0) (= take_in_cs@6 take_in_cs@0)) (and (= put_in_cs@6 put_in_cs@0) (= steal_in_cs@11 steal_in_cs@0))) (and (and (= h_ss@7 h_ss@0) (= t_ss@7 t_ss@0)) (and (= Civl_global_old_H@1 H@0) (= Civl_global_old_T@1 T@0)))) (and (and (and (= Civl_global_old_items@1 items@0) (= Civl_global_old_status@3 status@0)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@0) (= Civl_global_old_put_in_cs@1 put_in_cs@0))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@0) (= Civl_global_old_h_ss@1 h_ss@0)) (and (= Civl_global_old_t_ss@1 t_ss@0) (= Civl_linear_tid_available@6 Civl_linear_tid_available@0))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 156) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 156) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 156) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 156) 56) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 156) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 67) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 156) 73) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 156) 79) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 156) 99) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 156) 106) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 156) 114) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 156) 135) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@2| Int) ) (!  (and (= (select status@0 |Civl_i#0@@2|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@2| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@0 status@0))))) (=> (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@3| Int) ) (!  (and (= (select status@0 |Civl_i#0@@3|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@3| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@0 status@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= status@0 status@0) (and (= task task) (= taskstatus taskstatus)))))))))
(let ((anon0_correct  (=> (and (and (forall ((i@@88 Int) ) (!  (=> (and (<= H@0 i@@88) (<= i@@88 (- T@0 1))) (and (= (select status@0 i@@88) IN_Q) (not (= (select items@0 i@@88) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= tid NIL)) (not (= tid ptTid)))) (not (select steal_in_cs@0 tid))) (=> (and (and (and (and (and (and (=> (and take_in_cs@0 (< (select h_ss@0 ptTid) (select t_ss@0 ptTid))) (and (and (and (= (select t_ss@0 ptTid) T@0) (<= H@0 T@0)) (not (= (select items@0 T@0) EMPTY))) (= (select status@0 T@0) IN_Q))) (=> put_in_cs@0 (not take_in_cs@0))) (=> take_in_cs@0 (not put_in_cs@0))) (=> (and take_in_cs@0 (not (= H@0 (select h_ss@0 ptTid)))) (> H@0 (select h_ss@0 ptTid)))) (forall ((td@@242 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@242 NIL)) (not (= td@@242 ptTid))) (select steal_in_cs@0 td@@242)) (= H@0 (select h_ss@0 td@@242))) (< H@0 (select t_ss@0 td@@242))) (and (not (= (select items@0 H@0) EMPTY)) (= (select status@0 H@0) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@243 T@Tid) ) (!  (=> (and (and (and (not (= td@@243 NIL)) (not (= td@@243 ptTid))) (select steal_in_cs@0 td@@243)) (not (= H@0 (select h_ss@0 td@@243)))) (> H@0 (select h_ss@0 td@@243)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Bool)) false)))) (and (and (=> (= (ControlFlow 0 250) 245) anon0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 250) 156) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 250) 2) Civl_RefinementChecker_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (forall ((i@@89 Int) ) (!  (=> (and (<= H i@@89) (<= i@@89 (- T 1))) (and (= (select status i@@89) IN_Q) (not (= (select items i@@89) EMPTY))))
 :qid |wsqbpl.53:14|
 :skolemid |2|
)) (and (not (= tid NIL)) (not (= tid ptTid)))) (not (select steal_in_cs tid))) (=> (and (and (and (and (and (and (=> (and take_in_cs (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T) (<= H T)) (not (= (select items T) EMPTY))) (= (select status T) IN_Q))) (=> put_in_cs (not take_in_cs))) (=> take_in_cs (not put_in_cs))) (=> (and take_in_cs (not (= H (select h_ss ptTid)))) (> H (select h_ss ptTid)))) (forall ((td@@244 T@Tid) ) (!  (=> (and (and (and (and (not (= td@@244 NIL)) (not (= td@@244 ptTid))) (select steal_in_cs td@@244)) (= H (select h_ss td@@244))) (< H (select t_ss td@@244))) (and (not (= (select items H) EMPTY)) (= (select status H) IN_Q)))
 :qid |wsqbpl.43:14|
 :skolemid |0|
))) (forall ((td@@245 T@Tid) ) (!  (=> (and (and (and (not (= td@@245 NIL)) (not (= td@@245 ptTid))) (select steal_in_cs td@@245)) (not (= H (select h_ss td@@245)))) (> H (select h_ss td@@245)))
 :qid |wsqbpl.44:14|
 :skolemid |1|
))) (= (ControlFlow 0 251) 250)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun Trigger_atomic_put_i (Int) Bool)
(declare-fun inline$atomic_put$0$i@0 () Int)
(declare-fun status () (Array Int Bool))
(declare-fun status@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_put$0$anon0_correct  (=> (and (and (Trigger_atomic_put_i inline$atomic_put$0$i@0) (= (select status inline$atomic_put$0$i@0) NOT_IN_Q)) (and (= status@0 (store status inline$atomic_put$0$i@0 IN_Q)) (= (ControlFlow 0 3) 2))) inline$atomic_put$0$Return_correct)))
(let ((inline$atomic_put$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$atomic_put$0$anon0_correct)))
inline$atomic_put$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun status () (Array Int Bool))
(declare-fun inline$atomic_take$0$i@0 () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun Trigger_atomic_take_i (Int) Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_take$0$anon2_Then_correct  (=> (= (select status inline$atomic_take$0$i@0) IN_Q) (=> (and (= status@0 (store status inline$atomic_take$0$i@0 NOT_IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_take$0$Return_correct))))
(let ((inline$atomic_take$0$anon0_correct  (=> (Trigger_atomic_take_i inline$atomic_take$0$i@0) (and (=> (= (ControlFlow 0 4) 3) inline$atomic_take$0$anon2_Then_correct) (=> (= (ControlFlow 0 4) 2) inline$atomic_take$0$Return_correct)))))
(let ((inline$atomic_take$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_take$0$anon0_correct)))
inline$atomic_take$0$Entry_correct)))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun status () (Array Int Bool))
(declare-fun inline$atomic_steal$0$i@0 () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun Trigger_atomic_steal_i (Int) Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_steal$0$anon2_Then_correct  (=> (= (select status inline$atomic_steal$0$i@0) IN_Q) (=> (and (= status@0 (store status inline$atomic_steal$0$i@0 NOT_IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_steal$0$Return_correct))))
(let ((inline$atomic_steal$0$anon0_correct  (=> (Trigger_atomic_steal_i inline$atomic_steal$0$i@0) (and (=> (= (ControlFlow 0 4) 3) inline$atomic_steal$0$anon2_Then_correct) (=> (= (ControlFlow 0 4) 2) inline$atomic_steal$0$Return_correct)))))
(let ((inline$atomic_steal$0$Entry_correct  (=> (= (ControlFlow 0 5) 4) inline$atomic_steal$0$anon0_correct)))
inline$atomic_steal$0$Entry_correct)))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun h_ss () (Array T@Tid Int))
(declare-fun H () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readH_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readH_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readH_take$0$anon0_correct  (=> (and (= h_ss@0 (store h_ss tid H)) (= (ControlFlow 0 3) 2)) inline$atomic_readH_take$0$Return_correct)))
(let ((inline$atomic_readH_take$0$Entry_correct  (=> (and (= tid ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_readH_take$0$anon0_correct)))
inline$atomic_readH_take$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun h_ss () (Array T@Tid Int))
(declare-fun H () Int)
(declare-fun steal_in_cs () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readH_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readH_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readH_steal$0$anon0_correct  (=> (and (= h_ss@0 (store h_ss tid H)) (= (ControlFlow 0 3) 2)) inline$atomic_readH_steal$0$Return_correct)))
(let ((inline$atomic_readH_steal$0$Entry_correct  (=> (not (select steal_in_cs tid)) (=> (and (and (not (= tid NIL)) (not (= tid ptTid))) (= (ControlFlow 0 4) 3)) inline$atomic_readH_steal$0$anon0_correct))))
inline$atomic_readH_steal$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readT_take_init)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_readT_take_init$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readT_take_init$0$Entry_correct  (=> (= tid ptTid) (=> (and (not (= tid NIL)) (= (ControlFlow 0 3) 2)) inline$atomic_readT_take_init$0$Return_correct))))
inline$atomic_readT_take_init$0$Entry_correct)))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readT_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_readT_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readT_put$0$Entry_correct  (=> (= tid ptTid) (=> (and (not (= tid NIL)) (= (ControlFlow 0 3) 2)) inline$atomic_readT_put$0$Return_correct))))
inline$atomic_readT_put$0$Entry_correct)))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun t_ss () (Array T@Tid Int))
(declare-fun T () Int)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun steal_in_cs () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readT_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readT_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readT_steal$0$anon0_correct  (=> (= t_ss@0 (store t_ss tid T)) (=> (and (= steal_in_cs@0 (store steal_in_cs tid true)) (= (ControlFlow 0 3) 2)) inline$atomic_readT_steal$0$Return_correct))))
(let ((inline$atomic_readT_steal$0$Entry_correct  (=> (not (select steal_in_cs tid)) (=> (and (and (not (= tid NIL)) (not (= tid ptTid))) (and (not (= tid NIL)) (= (ControlFlow 0 4) 3))) inline$atomic_readT_steal$0$anon0_correct))))
inline$atomic_readT_steal$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun inline$atomic_readItems$0$y@1 () Int)
(declare-fun items () (Array Int Int))
(declare-fun ind () Int)
(declare-fun inline$atomic_readItems$0$b@1 () Bool)
(declare-fun status () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readItems)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readItems$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readItems$0$anon0_correct  (=> (= inline$atomic_readItems$0$y@1 (select items ind)) (=> (and (= inline$atomic_readItems$0$b@1 (select status ind)) (= (ControlFlow 0 3) 2)) inline$atomic_readItems$0$Return_correct))))
(let ((inline$atomic_readItems$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$atomic_readItems$0$anon0_correct)))
inline$atomic_readItems$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun T@0 () Int)
(declare-fun T () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeT_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_put$0$anon0_correct  (=> (and (= T@0 (+ T 1)) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_put$0$Return_correct)))
(let ((inline$atomic_writeT_put$0$Entry_correct  (=> (and (= tid ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeT_put$0$anon0_correct)))
inline$atomic_writeT_put$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun t_ss () (Array T@Tid Int))
(declare-fun val () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeT_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_take$0$anon0_correct  (=> (and (= t_ss@0 (store t_ss tid val)) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_take$0$Return_correct)))
(let ((inline$atomic_writeT_take$0$Entry_correct  (=> (and (= tid ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeT_take$0$anon0_correct)))
inline$atomic_writeT_take$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun take_in_cs () Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_take_abort)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_writeT_take_abort$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_take_abort$0$Entry_correct  (=> take_in_cs (=> (and (= tid ptTid) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_take_abort$0$Return_correct))))
inline$atomic_writeT_take_abort$0$Entry_correct)))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_take_eq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_writeT_take_eq$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_take_eq$0$Entry_correct  (=> (and (= tid ptTid) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_take_eq$0$Return_correct)))
inline$atomic_writeT_take_eq$0$Entry_correct)))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_takeExitCS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_takeExitCS$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_takeExitCS$0$Entry_correct  (=> (and (= tid ptTid) (= (ControlFlow 0 3) 2)) inline$atomic_takeExitCS$0$Return_correct)))
inline$atomic_takeExitCS$0$Entry_correct)))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun steal_in_cs () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_stealExitCS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_stealExitCS$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_stealExitCS$0$anon0_correct  (=> (and (= steal_in_cs@0 (store steal_in_cs tid false)) (= (ControlFlow 0 3) 2)) inline$atomic_stealExitCS$0$Return_correct)))
(let ((inline$atomic_stealExitCS$0$Entry_correct  (=> (select steal_in_cs tid) (=> (and (and (not (= tid NIL)) (not (= tid ptTid))) (= (ControlFlow 0 4) 3)) inline$atomic_stealExitCS$0$anon0_correct))))
inline$atomic_stealExitCS$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun items@0 () (Array Int Int))
(declare-fun items () (Array Int Int))
(declare-fun idx () Int)
(declare-fun val () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeItems)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeItems$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeItems$0$anon0_correct  (=> (= items@0 (store items idx val)) (=> (and (= status@0 (store status idx IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_writeItems$0$Return_correct))))
(let ((inline$atomic_writeItems$0$Entry_correct  (=> (not (= val EMPTY)) (=> (and (= tid ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeItems$0$anon0_correct))))
inline$atomic_writeItems$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun items@0 () (Array Int Int))
(declare-fun items () (Array Int Int))
(declare-fun idx () Int)
(declare-fun val () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeItems_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeItems_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeItems_put$0$anon0_correct  (=> (= items@0 (store items idx val)) (=> (and (= status@0 (store status idx IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_writeItems_put$0$Return_correct))))
(let ((inline$atomic_writeItems_put$0$Entry_correct  (=> (not (= val EMPTY)) (=> (and (= tid ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeItems_put$0$anon0_correct))))
inline$atomic_writeItems_put$0$Entry_correct))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun H () Int)
(declare-fun prevVal () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(declare-fun H@0 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_CAS_H_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_CAS_H_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_CAS_H_take$0$anon3_Else_correct  (=> (and (not (= H prevVal)) (= (ControlFlow 0 4) 2)) inline$atomic_CAS_H_take$0$Return_correct)))
(let ((inline$atomic_CAS_H_take$0$anon3_Then_correct  (=> (and (and (= H prevVal) (= status@0 (store status H NOT_IN_Q))) (and (= H@0 (+ H 1)) (= (ControlFlow 0 3) 2))) inline$atomic_CAS_H_take$0$Return_correct)))
(let ((inline$atomic_CAS_H_take$0$Entry_correct  (=> (= tid ptTid) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_CAS_H_take$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_CAS_H_take$0$anon3_Else_correct)))))
inline$atomic_CAS_H_take$0$Entry_correct)))))
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
(declare-fun EMPTY () Int)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(declare-fun Identity () (Array Int Int))
(declare-fun NOT_IN_Q () Bool)
(declare-fun IN_Q () Bool)
(assert (distinct NIL ptTid)
)
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |8|
)))
(assert (= NOT_IN_Q false))
(assert (= IN_Q true))
(assert (not (= ptTid NIL)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid () T@Tid)
(declare-fun H () Int)
(declare-fun prevVal () Int)
(declare-fun steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun steal_in_cs () (Array T@Tid Bool))
(declare-fun status@0 () (Array Int Bool))
(declare-fun status () (Array Int Bool))
(declare-fun H@0 () Int)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_CAS_H_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_CAS_H_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Else_correct  (=> (not (= H prevVal)) (=> (and (= steal_in_cs@1 (store steal_in_cs tid false)) (= (ControlFlow 0 4) 2)) inline$atomic_CAS_H_steal$0$Return_correct))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Then_correct  (=> (= H prevVal) (=> (and (and (= status@0 (store status H NOT_IN_Q)) (= H@0 (+ H 1))) (and (= steal_in_cs@0 (store steal_in_cs tid false)) (= (ControlFlow 0 3) 2))) inline$atomic_CAS_H_steal$0$Return_correct))))
(let ((inline$atomic_CAS_H_steal$0$Entry_correct  (=> (and (not (= tid NIL)) (not (= tid ptTid))) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_CAS_H_steal$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_CAS_H_steal$0$anon3_Else_correct)))))
inline$atomic_CAS_H_steal$0$Entry_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
