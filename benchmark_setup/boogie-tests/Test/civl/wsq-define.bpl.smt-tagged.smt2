(set-logic AUFLIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun steal_in_cs@4 () (Array T@Tid Bool))
(declare-fun put_in_cs@4 () Bool)
(declare-fun take_in_cs@4 () Bool)
(declare-fun items@5 () (Array Int Int))
(declare-fun status@6 () (Array Int Bool))
(declare-fun H@4 () Int)
(declare-fun T@5 () Int)
(declare-fun tid@@0 () T@Tid)
(declare-fun h_ss@4 () (Array T@Tid Int))
(declare-fun t_ss@4 () (Array T@Tid Int))
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
(declare-fun Civl_global_old_steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun Civl_global_old_put_in_cs@0 () Bool)
(declare-fun Civl_global_old_take_in_cs@0 () Bool)
(declare-fun Civl_global_old_items@0 () (Array Int Int))
(declare-fun Civl_global_old_status@1 () (Array Int Bool))
(declare-fun Civl_global_old_H@0 () Int)
(declare-fun Civl_global_old_T@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 () Int)
(declare-fun Civl_global_old_h_ss@0 () (Array T@Tid Int))
(declare-fun Civl_global_old_t_ss@0 () (Array T@Tid Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 () Int)
(declare-fun steal_in_cs@3 () (Array T@Tid Bool))
(declare-fun put_in_cs@3 () Bool)
(declare-fun take_in_cs@3 () Bool)
(declare-fun items@4 () (Array Int Int))
(declare-fun status@5 () (Array Int Bool))
(declare-fun H@3 () Int)
(declare-fun T@4 () Int)
(declare-fun h_ss@3 () (Array T@Tid Int))
(declare-fun t_ss@3 () (Array T@Tid Int))
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
(declare-fun steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun put_in_cs@1 () Bool)
(declare-fun take_in_cs@1 () Bool)
(declare-fun items@2 () (Array Int Int))
(declare-fun H@1 () Int)
(declare-fun T@1 () Int)
(declare-fun h_ss@1 () (Array T@Tid Int))
(declare-fun t_ss@1 () (Array T@Tid Int))
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
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(declare-fun put_in_cs@@2 () Bool)
(declare-fun take_in_cs@@2 () Bool)
(declare-fun items@@4 () (Array Int Int))
(declare-fun status@@4 () (Array Int Bool))
(declare-fun H@@2 () Int)
(declare-fun T@@3 () Int)
(declare-fun h_ss@@0 () (Array T@Tid Int))
(declare-fun t_ss@@0 () (Array T@Tid Int))
(set-info :boogie-vc-id Civl_put_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 171) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 128) (- 0 136)) (or (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)) (= tid@@0 ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)))) (and (=> (= (ControlFlow 0 128) (- 0 135)) (or (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)) (= tid@@0 ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (= tid@@0 ptTid))) (and (=> (= (ControlFlow 0 128) (- 0 134)) (or (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)) (= tid@@0 ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (not take_in_cs@4))) (and (=> (= (ControlFlow 0 128) (- 0 133)) (or (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)) (= tid@@0 ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (not put_in_cs@4))) (and (=> (= (ControlFlow 0 128) (- 0 132)) (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)) (= tid@@0 ptTid)) (not take_in_cs@4)) (not put_in_cs@4))) (=> (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@5 status@6 H@4 (- T@5 1)) (= tid@@0 ptTid)) (not take_in_cs@4)) (not put_in_cs@4)) (and (=> (= (ControlFlow 0 128) (- 0 131)) (or (ideasInv put_in_cs@4 items@5 status@6 H@4 T@5 take_in_cs@4 steal_in_cs@4 h_ss@4 t_ss@4) (ideasInv put_in_cs@4 items@5 status@6 H@4 T@5 take_in_cs@4 steal_in_cs@4 h_ss@4 t_ss@4))) (and (=> (= (ControlFlow 0 128) (- 0 130)) (ideasInv put_in_cs@4 items@5 status@6 H@4 T@5 take_in_cs@4 steal_in_cs@4 h_ss@4 t_ss@4)) (=> (ideasInv put_in_cs@4 items@5 status@6 H@4 T@5 take_in_cs@4 steal_in_cs@4 h_ss@4 t_ss@4) (and (=> (= (ControlFlow 0 128) (- 0 129)) (or (emptyInv put_in_cs@4 take_in_cs@4 items@5 status@6 T@5) (emptyInv put_in_cs@4 take_in_cs@4 items@5 status@6 T@5))) (=> (= (ControlFlow 0 128) (- 0 127)) (emptyInv put_in_cs@4 take_in_cs@4 items@5 status@6 T@5))))))))))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (= t_ss@4 t_ss@2) (= h_ss@4 h_ss@2)) (=> (and (and (and (= steal_in_cs@4 steal_in_cs@2) (= put_in_cs@4 false)) (and (= take_in_cs@4 take_in_cs@2) (= status@6 status@3))) (and (and (= items@5 items@3) (= T@5 T@3)) (and (= H@4 H@2) (= (ControlFlow 0 137) 128)))) GeneratedUnifiedExit_correct))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 123) (- 0 125)) (or Civl_pc@1 (or (= status@3 status@3) (exists ((|Civl_i#0| Int) ) (!  (and (= (select status@3 |Civl_i#0|) NOT_IN_Q) (= status@3 (store status@3 |Civl_i#0| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
))))) (=> (or Civl_pc@1 (or (= status@3 status@3) (exists ((|Civl_i#0@@0| Int) ) (!  (and (= (select status@3 |Civl_i#0@@0|) NOT_IN_Q) (= status@3 (store status@3 |Civl_i#0@@0| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)))) (and (=> (= (ControlFlow 0 123) (- 0 124)) (=> Civl_pc@1 (= status@3 status@3))) (=> (=> Civl_pc@1 (= status@3 status@3)) (=> (and (and (= Civl_pc@3  (=> (= status@3 status@3) Civl_pc@1)) (= Civl_ok@2  (or (exists ((|Civl_i#0@@1| Int) ) (!  (and (= (select status@3 |Civl_i#0@@1|) NOT_IN_Q) (= status@3 (store status@3 |Civl_i#0@@1| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)) Civl_ok@1))) (= (ControlFlow 0 123) (- 0 122))) Civl_ok@2)))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@0)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) Civl_global_old_put_in_cs@0) (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@0)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i Civl_global_old_T@0) (and (= (select Civl_global_old_status@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) NOT_IN_Q) (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 108) (- 0 118)) (or (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4))) (and (=> (= (ControlFlow 0 108) (- 0 117)) (or (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4))) (and (=> (= (ControlFlow 0 108) (- 0 116)) (or (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 108) (- 0 115)) (or (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (not take_in_cs@3))) (and (=> (= (ControlFlow 0 108) (- 0 114)) (or (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) put_in_cs@3)) (and (=> (= (ControlFlow 0 108) (- 0 113)) (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3)) (=> (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (and (=> (= (ControlFlow 0 108) (- 0 112)) (or (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))) (and (=> (= (ControlFlow 0 108) (- 0 111)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 108) (- 0 110)) (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0) (and (=> (= (ControlFlow 0 108) (- 0 109)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4)) (=> (= (ControlFlow 0 108) (- 0 107)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 T@4) (and (= (select status@5 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) NOT_IN_Q) (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) Civl_global_old_put_in_cs@0) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@0)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Civl_global_old_T@0) (and (= (select Civl_global_old_status@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) NOT_IN_Q) (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 97) (- 0 106)) (or (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)))) (and (=> (= (ControlFlow 0 97) (- 0 105)) (or (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 97) (- 0 104)) (or (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (not take_in_cs@3))) (and (=> (= (ControlFlow 0 97) (- 0 103)) (or (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) put_in_cs@3)) (and (=> (= (ControlFlow 0 97) (- 0 102)) (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3)) (=> (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) put_in_cs@3) (and (=> (= (ControlFlow 0 97) (- 0 101)) (or (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))) (and (=> (= (ControlFlow 0 97) (- 0 100)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 97) (- 0 99)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@4)) (and (=> (= (ControlFlow 0 97) (- 0 98)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@4)) (=> (= (ControlFlow 0 97) (- 0 96)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 T@4) (and (= (select status@5 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) NOT_IN_Q) (= (select items@4 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (= Civl_global_old_T@0 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (not Civl_global_old_put_in_cs@0)))) (and (=> (= (ControlFlow 0 89) (- 0 95)) (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 89) (- 0 94)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 89) (- 0 93)) (= T@4 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (=> (= T@4 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)) (and (=> (= (ControlFlow 0 89) (- 0 92)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (and (=> (= (ControlFlow 0 89) (- 0 91)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4) (and (=> (= (ControlFlow 0 89) (- 0 90)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 89) (- 0 88)) (not put_in_cs@3))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (and (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@0) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@0 Civl_global_old_T@0))) (=> (> Civl_global_old_T@0 Civl_global_old_H@0) (not (= (select Civl_global_old_items@0 Civl_global_old_T@0) EMPTY))))) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)) (not Civl_global_old_put_in_cs@0)) Civl_global_old_take_in_cs@0)) (and (=> (= (ControlFlow 0 82) (- 0 87)) (>= H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (>= H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0) (and (=> (= (ControlFlow 0 82) (- 0 86)) (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 82) (- 0 85)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 82) (- 0 84)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 T@4)))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@4 T@4))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (=> (> T@4 H@3) (not (= (select items@4 T@4) EMPTY)))) (=> (=> (> T@4 H@3) (not (= (select items@4 T@4) EMPTY))) (=> (= (ControlFlow 0 82) (- 0 81)) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)) (not put_in_cs@3)) take_in_cs@3))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@0) (not Civl_global_old_put_in_cs@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (and (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@0) (=> (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0))))) (and (=> (= (ControlFlow 0 71) (- 0 80)) (and (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (not put_in_cs@3)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@3) (not put_in_cs@3)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 71) (- 0 79)) (or (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))) (and (=> (= (ControlFlow 0 71) (- 0 78)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 71) (- 0 77)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (and (=> (= (ControlFlow 0 71) (- 0 76)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3) (and (=> (= (ControlFlow 0 71) (- 0 75)) (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 71) (- 0 74)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (and (=> (= (ControlFlow 0 71) (- 0 73)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4) (and (=> (= (ControlFlow 0 71) (- 0 72)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@3) (=> (= (ControlFlow 0 71) (- 0 70)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (= (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0) (=> (= (select Civl_global_old_items@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)))) (and (=> (= (ControlFlow 0 65) (- 0 69)) (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 T@4) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (= (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 65) (- 0 67)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (and (=> (= (ControlFlow 0 65) (- 0 66)) (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@4 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@3 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 65) (- 0 64)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@0) (=> (= (select Civl_global_old_items@0 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> Civl_global_old_H@0 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@0)))) (and (=> (= (ControlFlow 0 59) (- 0 63)) (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 59) (- 0 61)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@4) (and (=> (= (ControlFlow 0 59) (- 0 60)) (=> (= (select items@4 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@3 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (=> (=> (= (select items@4 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@3 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1))) (=> (= (ControlFlow 0 59) (- 0 58)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@4)))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (= (ControlFlow 0 56) (- 0 55)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0) (= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (and (=> (and (and Civl_global_old_take_in_cs@0 (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@0)) (< Civl_global_old_H@0 Civl_global_old_T@0)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@0) (= (select Civl_global_old_status@1 Civl_global_old_H@0) IN_Q))))) (and (=> (= (ControlFlow 0 48) (- 0 54)) (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 48) (- 0 53)) (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1))) (=> (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (and (=> (= (ControlFlow 0 48) (- 0 52)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 48) (- 0 51)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3)) (=> (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (and (=> (= (ControlFlow 0 48) (- 0 50)) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (=> (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (=> (and (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4))) (=> (=> (and (and take_in_cs@3 (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4)) (=> (= (ControlFlow 0 48) (- 0 47)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3) (= (select status@5 H@3) IN_Q)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (and (and (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select Civl_global_old_t_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) Civl_global_old_take_in_cs@0) (< (select Civl_global_old_h_ss@0 ptTid) (select Civl_global_old_t_ss@0 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@0)) (< Civl_global_old_H@0 Civl_global_old_T@0)) (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))) (and (=> (= (ControlFlow 0 40) (- 0 46)) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 40) (- 0 45)) (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 40) (- 0 44)) (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1))) (=> (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (and (=> (= (ControlFlow 0 40) (- 0 43)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 40) (- 0 42)) (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@3) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4))) (=> (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@3) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@3)) (< H@3 T@4)) (=> (= (ControlFlow 0 40) (- 0 39)) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (>= Civl_global_old_H@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (and (and (= (select Civl_global_old_h_ss@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1))) (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@0))) (and (=> (= (ControlFlow 0 32) (- 0 38)) (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (>= H@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 32) (- 0 37)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (and (=> (= (ControlFlow 0 32) (- 0 36)) (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (= (select h_ss@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 32) (- 0 35)) (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1))) (=> (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (or (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (=> (= (ControlFlow 0 32) (- 0 31)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@3))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1))) (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 27) (- 0 29)) (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1))) (=> (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (=> (= (ControlFlow 0 27) (- 0 26)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (emptyInv Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_T@0))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (=> (= (ControlFlow 0 23) (- 0 22)) (emptyInv put_in_cs@3 take_in_cs@3 items@4 status@5 T@4))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (and (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0) (emptyInv Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_T@0))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@3)) (not put_in_cs@3)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3) (=> (= (ControlFlow 0 19) (- 0 18)) (emptyInv put_in_cs@3 take_in_cs@3 items@4 status@5 T@4))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q)))) (=> (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 16) (- 0 15)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@0)) (not Civl_global_old_put_in_cs@0)) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3))) (=> (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (=> (= (ControlFlow 0 13) (- 0 12)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q)))) (=> (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 9) (- 0 8)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (and (and (queueInv Civl_global_old_steal_in_cs@0 Civl_global_old_put_in_cs@0 Civl_global_old_take_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 (- Civl_global_old_T@0 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select Civl_global_old_steal_in_cs@0 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (ideasInv Civl_global_old_put_in_cs@0 Civl_global_old_items@0 Civl_global_old_status@1 Civl_global_old_H@0 Civl_global_old_T@0 Civl_global_old_take_in_cs@0 Civl_global_old_steal_in_cs@0 Civl_global_old_h_ss@0 Civl_global_old_t_ss@0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)))) (=> (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@4 status@5 H@3 (- T@4 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select steal_in_cs@3 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (= (ControlFlow 0 6) (- 0 5)) (ideasInv put_in_cs@3 items@4 status@5 H@3 T@4 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@3))))))))
(let ((anon0_0$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@3 H@2) (=> (and (= T@4 T@3) (= items@4 items@3)) (=> (and (and (and (and (= status@5 status@3) (= take_in_cs@3 take_in_cs@2)) (and (= put_in_cs@3 false) (= steal_in_cs@3 steal_in_cs@2))) (and (and (= h_ss@3 h_ss@2) (= t_ss@3 t_ss@2)) (and (= Civl_global_old_H@0 H@2) (= Civl_global_old_T@0 T@2)))) (and (and (and (= Civl_global_old_items@0 items@3) (= Civl_global_old_status@1 status@3)) (and (= Civl_global_old_take_in_cs@0 take_in_cs@2) (= Civl_global_old_put_in_cs@0 put_in_cs@2))) (and (and (= Civl_global_old_steal_in_cs@0 steal_in_cs@2) (= Civl_global_old_h_ss@0 h_ss@2)) (and (= Civl_global_old_t_ss@0 t_ss@2) (= Civl_linear_tid_available@3 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 126) 6) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 126) 9) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 126) 13) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 16) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 19) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 23) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 27) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 32) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 40) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 126) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 126) 56) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 59) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 65) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 126) 71) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 126) 82) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 126) 89) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 126) 97) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 108) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_writeT_put$0$anon0_correct  (=> (= T@3 (+ T@2 1)) (and (and (=> (= (ControlFlow 0 138) 123) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 138) 137) Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 138) 126) anon0_0$2_@2_Civl_NoninterferenceChecker_correct)))))
(let ((inline$atomic_writeT_put$0$Entry_correct  (=> (and (= inline$atomic_writeT_put$0$val@0 (+ T@0 1)) (= (ControlFlow 0 139) 138)) inline$atomic_writeT_put$0$anon0_correct)))
(let ((anon0_0_correct  (=> (and (= Civl_pc@1  (=> (= status@2 status@1) Civl_pc@0)) (= Civl_ok@1  (or (exists ((|Civl_i#0@@2| Int) ) (!  (and (= (select status@1 |Civl_i#0@@2|) NOT_IN_Q) (= status@2 (store status@1 |Civl_i#0@@2| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)) Civl_ok@0))) (and (=> (= (ControlFlow 0 140) (- 0 152)) (or (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1))) (and (=> (= (ControlFlow 0 140) (- 0 151)) (or (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) (= T@0 T@1))) (and (=> (= (ControlFlow 0 140) (- 0 150)) (or (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) (= tid@@0 ptTid))) (and (=> (= (ControlFlow 0 140) (- 0 149)) (or (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) (not take_in_cs@1))) (and (=> (= (ControlFlow 0 140) (- 0 148)) (or (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) put_in_cs@1)) (and (=> (= (ControlFlow 0 140) (- 0 147)) (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1)) (=> (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@2 status@2 H@1 T@1) (= T@0 T@1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) (and (=> (= (ControlFlow 0 140) (- 0 146)) (or (ideasInv put_in_cs@1 items@2 status@2 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1) (ideasInv put_in_cs@1 items@2 status@2 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1))) (and (=> (= (ControlFlow 0 140) (- 0 145)) (ideasInv put_in_cs@1 items@2 status@2 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1)) (=> (ideasInv put_in_cs@1 items@2 status@2 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1) (and (=> (= (ControlFlow 0 140) (- 0 144)) (= (select items@2 T@0) task)) (=> (= (select items@2 T@0) task) (and (=> (= (ControlFlow 0 140) (- 0 143)) (and (<= H@1 H@1) (= T@1 T@1))) (=> (and (<= H@1 H@1) (= T@1 T@1)) (and (=> (= (ControlFlow 0 140) (- 0 142)) (forall ((i@@3 Int) ) (!  (=> (> i@@3 T@1) (and (= (select status@2 i@@3) NOT_IN_Q) (= (select items@2 i@@3) EMPTY)))
 :qid |wsqdefinebpl.114:29|
 :skolemid |7|
))) (=> (forall ((i@@4 Int) ) (!  (=> (> i@@4 T@1) (and (= (select status@2 i@@4) NOT_IN_Q) (= (select items@2 i@@4) EMPTY)))
 :qid |wsqdefinebpl.114:29|
 :skolemid |7|
)) (=> (and (or Civl_pc@1 true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (and (queueInv steal_in_cs@2 put_in_cs@2 take_in_cs@2 items@3 status@3 H@2 T@2) (= T@0 T@2)) (= tid@@0 ptTid)) (not take_in_cs@2)) put_in_cs@2) (and (ideasInv put_in_cs@2 items@3 status@3 H@2 T@2 take_in_cs@2 steal_in_cs@2 h_ss@2 t_ss@2) (= (select items@3 T@0) task))) (and (and (<= H@1 H@2) (= T@1 T@2)) (forall ((i@@5 Int) ) (!  (=> (> i@@5 T@2) (and (= (select status@3 i@@5) NOT_IN_Q) (= (select items@3 i@@5) EMPTY)))
 :qid |wsqdefinebpl.114:29|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 140) (- 0 141)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (=> (= (ControlFlow 0 140) 139) inline$atomic_writeT_put$0$Entry_correct))))))))))))))))))))))))
(let ((anon0_1$3_@2_Civl_NoninterferenceChecker_correct  (=> (= H@3 H@1) (=> (and (= T@4 T@1) (= items@4 items@2)) (=> (and (and (and (and (= status@5 status@2) (= take_in_cs@3 take_in_cs@1)) (and (= put_in_cs@3 put_in_cs@1) (= steal_in_cs@3 steal_in_cs@1))) (and (and (= h_ss@3 h_ss@1) (= t_ss@3 t_ss@1)) (and (= Civl_global_old_H@0 H@1) (= Civl_global_old_T@0 T@1)))) (and (and (and (= Civl_global_old_items@0 items@1) (= Civl_global_old_status@1 status@1)) (and (= Civl_global_old_take_in_cs@0 take_in_cs@1) (= Civl_global_old_put_in_cs@0 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@0 steal_in_cs@1) (= Civl_global_old_h_ss@0 h_ss@1)) (and (= Civl_global_old_t_ss@0 t_ss@1) (= Civl_linear_tid_available@3 Civl_linear_tid_available@1))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 120) 6) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 120) 9) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 120) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 120) 13) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 120) 16) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 120) 19) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 120) 23) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 120) 27) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 120) 32) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 120) 40) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 120) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 120) 56) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 120) 59) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 120) 65) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 120) 71) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 120) 82) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 120) 89) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 120) 97) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 120) 108) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon0$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@3 H@0) (=> (and (= T@4 T@0) (= items@4 items@0)) (=> (and (and (and (and (= status@5 status@0) (= take_in_cs@3 take_in_cs@0)) (and (= put_in_cs@3 true) (= steal_in_cs@3 steal_in_cs@0))) (and (and (= h_ss@3 h_ss@0) (= t_ss@3 t_ss@0)) (and (= Civl_global_old_H@0 H@0) (= Civl_global_old_T@0 T@0)))) (and (and (and (= Civl_global_old_items@0 items@0) (= Civl_global_old_status@1 status@0)) (and (= Civl_global_old_take_in_cs@0 take_in_cs@0) (= Civl_global_old_put_in_cs@0 put_in_cs@0))) (and (and (= Civl_global_old_steal_in_cs@0 steal_in_cs@0) (= Civl_global_old_h_ss@0 h_ss@0)) (and (= Civl_global_old_t_ss@0 t_ss@0) (= Civl_linear_tid_available@3 Civl_linear_tid_available@0))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 119) 6) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 119) 9) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 11) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 119) 13) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 16) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 19) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 23) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 27) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 32) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 40) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 119) 48) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 119) 56) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 59) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 65) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 119) 71) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 119) 82) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 119) 89) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 119) 97) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 108) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or Civl_pc@2 (or (= status@4 Civl_global_old_status@0) (exists ((|Civl_i#0@@3| Int) ) (!  (and (= (select Civl_global_old_status@0 |Civl_i#0@@3|) NOT_IN_Q) (= status@4 (store Civl_global_old_status@0 |Civl_i#0@@3| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
))))) (=> (or Civl_pc@2 (or (= status@4 Civl_global_old_status@0) (exists ((|Civl_i#0@@4| Int) ) (!  (and (= (select Civl_global_old_status@0 |Civl_i#0@@4|) NOT_IN_Q) (= status@4 (store Civl_global_old_status@0 |Civl_i#0@@4| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> Civl_pc@2 (= status@4 Civl_global_old_status@0)))))))
(let ((anon0_1$3_@2_Civl_RefinementChecker_correct  (=> (and (and (= status@4 status@2) (= Civl_global_old_status@0 status@1)) (and (= Civl_pc@2 Civl_pc@0) (= (ControlFlow 0 121) 2))) Civl_RefinementChecker_correct)))
(let ((inline$GhostReadStatus$0$anon0_correct  (=> (= inline$GhostReadStatus$0$oldStatus@1 (select status@2 T@1)) (and (and (=> (= (ControlFlow 0 153) 140) anon0_0_correct) (=> (= (ControlFlow 0 153) 120) anon0_1$3_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 153) 121) anon0_1$3_@2_Civl_RefinementChecker_correct)))))
(let ((inline$atomic_writeItems_put$0$anon0_correct  (=> (= items@2 (store items@1 T@0 task)) (=> (and (= status@2 (store status@1 T@0 IN_Q)) (= (ControlFlow 0 154) 153)) inline$GhostReadStatus$0$anon0_correct))))
(let ((anon0_1_correct  (=> (and (= Civl_pc@0  (=> (= status@0 status@0) false)) (= Civl_ok@0  (or (exists ((|Civl_i#0@@5| Int) ) (!  (and (= (select status@0 |Civl_i#0@@5|) NOT_IN_Q) (= status@0 (store status@0 |Civl_i#0@@5| IN_Q)))
 :qid |unknown.0:0|
 :skolemid |29|
)) false))) (and (=> (= (ControlFlow 0 155) (- 0 167)) (or (and (and (and (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) true) (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)))) (and (=> (= (ControlFlow 0 155) (- 0 166)) (or (and (and (and (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) true) (= tid@@0 ptTid))) (and (=> (= (ControlFlow 0 155) (- 0 165)) (or (and (and (and (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) true) (not take_in_cs@0))) (and (=> (= (ControlFlow 0 155) (- 0 164)) (or (and (and (and (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) true) true)) (and (=> (= (ControlFlow 0 155) (- 0 163)) (and (and (and (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) true)) (=> (and (and (and (queueInv steal_in_cs@0 true take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) true) (and (=> (= (ControlFlow 0 155) (- 0 162)) (or (ideasInv true items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0) (ideasInv true items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0))) (and (=> (= (ControlFlow 0 155) (- 0 161)) (ideasInv true items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0)) (=> (ideasInv true items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0) (and (=> (= (ControlFlow 0 155) (- 0 160)) (and (= tid@@0 ptTid) (= T@0 T@0))) (=> (and (= tid@@0 ptTid) (= T@0 T@0)) (and (=> (= (ControlFlow 0 155) (- 0 159)) (and (<= H@0 H@0) (= T@0 T@0))) (=> (and (<= H@0 H@0) (= T@0 T@0)) (and (=> (= (ControlFlow 0 155) (- 0 158)) (forall ((i@@6 Int) ) (!  (=> (>= i@@6 T@0) (and (= (select status@0 i@@6) NOT_IN_Q) (= (select items@0 i@@6) EMPTY)))
 :qid |wsqdefinebpl.103:29|
 :skolemid |6|
))) (=> (forall ((i@@7 Int) ) (!  (=> (>= i@@7 T@0) (and (= (select status@0 i@@7) NOT_IN_Q) (= (select items@0 i@@7) EMPTY)))
 :qid |wsqdefinebpl.103:29|
 :skolemid |6|
)) (=> (and (or Civl_pc@0 true) (= Civl_linear_tid_available@1 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1)) (= tid@@0 ptTid)) (not take_in_cs@1)) put_in_cs@1) (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1)) (and (= tid@@0 ptTid) (= T@0 T@1))) (and (and (<= H@0 H@1) (= T@0 T@1)) (forall ((i@@8 Int) ) (!  (=> (>= i@@8 T@1) (and (= (select status@1 i@@8) NOT_IN_Q) (= (select items@1 i@@8) EMPTY)))
 :qid |wsqdefinebpl.103:29|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 155) (- 0 157)) (not (= task EMPTY))) (=> (not (= task EMPTY)) (and (=> (= (ControlFlow 0 155) (- 0 156)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (=> (= (ControlFlow 0 155) 154) inline$atomic_writeItems_put$0$anon0_correct)))))))))))))))))))))))))
(let ((anon0$2_@2_Civl_RefinementChecker_correct  (=> (and (and (= status@4 status@0) (= Civl_global_old_status@0 status@0)) (and (= Civl_pc@2 false) (= (ControlFlow 0 4) 2))) Civl_RefinementChecker_correct)))
(let ((anon0_correct  (=> (and (and (and (and (and (and (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not (= task EMPTY))) (not take_in_cs@0)) (not put_in_cs@0)) (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0)) (and (emptyInv put_in_cs@0 take_in_cs@0 items@0 status@0 T@0) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 168) (- 0 170)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (and (=> (= (ControlFlow 0 168) (- 0 169)) (not (= tid@@0 NIL))) (=> (not (= tid@@0 NIL)) (and (and (=> (= (ControlFlow 0 168) 155) anon0_1_correct) (=> (= (ControlFlow 0 168) 119) anon0$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 168) 4) anon0$2_@2_Civl_RefinementChecker_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and (and (queueInv steal_in_cs@@1 put_in_cs@@2 take_in_cs@@2 items@@4 status@@4 H@@2 (- T@@3 1)) (= tid@@0 ptTid)) (not (= task EMPTY))) (not take_in_cs@@2)) (not put_in_cs@@2)) (ideasInv put_in_cs@@2 items@@4 status@@4 H@@2 T@@3 take_in_cs@@2 steal_in_cs@@1 h_ss@@0 t_ss@@0)) (and (emptyInv put_in_cs@@2 take_in_cs@@2 items@@4 status@@4 T@@3) (= (ControlFlow 0 171) 168))) anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun steal_in_cs@9 () (Array T@Tid Bool))
(declare-fun put_in_cs@9 () Bool)
(declare-fun take_in_cs@10 () Bool)
(declare-fun items@9 () (Array Int Int))
(declare-fun status@13 () (Array Int Bool))
(declare-fun H@11 () Int)
(declare-fun T@9 () Int)
(declare-fun tid@@0 () T@Tid)
(declare-fun task@4 () Int)
(declare-fun taskstatus@4 () Bool)
(declare-fun h_ss@10 () (Array T@Tid Int))
(declare-fun t_ss@10 () (Array T@Tid Int))
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
(declare-fun Civl_global_old_steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun Civl_global_old_put_in_cs@1 () Bool)
(declare-fun Civl_global_old_take_in_cs@1 () Bool)
(declare-fun Civl_global_old_items@1 () (Array Int Int))
(declare-fun Civl_global_old_status@3 () (Array Int Bool))
(declare-fun Civl_global_old_H@1 () Int)
(declare-fun Civl_global_old_T@1 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 () Int)
(declare-fun Civl_global_old_h_ss@1 () (Array T@Tid Int))
(declare-fun Civl_global_old_t_ss@1 () (Array T@Tid Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 () Int)
(declare-fun steal_in_cs@8 () (Array T@Tid Bool))
(declare-fun put_in_cs@8 () Bool)
(declare-fun take_in_cs@9 () Bool)
(declare-fun items@8 () (Array Int Int))
(declare-fun status@12 () (Array Int Bool))
(declare-fun H@10 () Int)
(declare-fun T@8 () Int)
(declare-fun h_ss@9 () (Array T@Tid Int))
(declare-fun t_ss@9 () (Array T@Tid Int))
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
(declare-fun steal_in_cs@3 () (Array T@Tid Bool))
(declare-fun put_in_cs@3 () Bool)
(declare-fun items@3 () (Array Int Int))
(declare-fun T@3 () Int)
(declare-fun h_ss@4 () (Array T@Tid Int))
(declare-fun t_ss@4 () (Array T@Tid Int))
(declare-fun take_in_cs@3 () Bool)
(declare-fun h_ss@3 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@4 () (Array T@Tid Bool))
(declare-fun steal_in_cs@2 () (Array T@Tid Bool))
(declare-fun put_in_cs@2 () Bool)
(declare-fun take_in_cs@2 () Bool)
(declare-fun items@2 () (Array Int Int))
(declare-fun H@2 () Int)
(declare-fun t_ss@3 () (Array T@Tid Int))
(declare-fun h_ss@2 () (Array T@Tid Int))
(declare-fun T@2 () Int)
(declare-fun t_ss@2 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun put_in_cs@0 () Bool)
(declare-fun take_in_cs@0 () Bool)
(declare-fun items@0 () (Array Int Int))
(declare-fun status@0 () (Array Int Bool))
(declare-fun H@0 () Int)
(declare-fun T@0 () Int)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun task () Int)
(declare-fun taskstatus () Bool)
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(declare-fun put_in_cs@@2 () Bool)
(declare-fun take_in_cs@@2 () Bool)
(declare-fun items@@4 () (Array Int Int))
(declare-fun status@@4 () (Array Int Bool))
(declare-fun H@@2 () Int)
(declare-fun T@@3 () Int)
(declare-fun h_ss@@0 () (Array T@Tid Int))
(declare-fun t_ss@@0 () (Array T@Tid Int))
(set-info :boogie-vc-id Civl_take_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 224) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 145) (- 0 147)) (or false (or (= status@10 Civl_global_old_status@2) (or (exists ((|Civl_i#0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0|) IN_Q) (= status@10 (store Civl_global_old_status@2 |Civl_i#0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@10 Civl_global_old_status@2))))) (=> (or false (or (= status@10 Civl_global_old_status@2) (or (exists ((|Civl_i#0@@0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@0|) IN_Q) (= status@10 (store Civl_global_old_status@2 |Civl_i#0@@0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@10 Civl_global_old_status@2)))) (and (=> (= (ControlFlow 0 145) (- 0 146)) (=> false (and (= status@10 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2))))) (=> (=> false (and (= status@10 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)))) (=> (and (and (= Civl_pc@0  (=> (= status@10 Civl_global_old_status@2) false)) (= Civl_ok@0  (or (or (exists ((|Civl_i#0@@1| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@1|) IN_Q) (= status@10 (store Civl_global_old_status@2 |Civl_i#0@@1| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@10 Civl_global_old_status@2)) (and (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)) false)))) (= (ControlFlow 0 145) (- 0 144))) Civl_ok@0)))))))
(let ((anon7_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@1) (=> (and (= Civl_global_old_status@2 status@1) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 task@0)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 215) 145))) Civl_ReturnChecker_correct)))))
(let ((anon8_Then$1_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@4) (=> (and (= Civl_global_old_status@2 status@4) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 EMPTY)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 179) 145))) Civl_ReturnChecker_correct)))))
(let ((anon9_Then$1_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@5) (=> (and (= Civl_global_old_status@2 status@5) (= Civl_old_task@2 inline$atomic_readItems$0$y@2)) (=> (and (and (= Civl_old_taskstatus@2 inline$atomic_readItems$0$b@2) (= task@2 inline$atomic_readItems$0$y@2)) (and (= taskstatus@2 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 165) 145))) Civl_ReturnChecker_correct)))))
(let ((anon10_Then_@2_Civl_ReturnChecker_correct  (=> (= status@10 status@8) (=> (and (= Civl_global_old_status@2 status@6) (= Civl_old_task@2 inline$atomic_readItems$0$y@2)) (=> (and (and (= Civl_old_taskstatus@2 inline$atomic_readItems$0$b@2) (= task@2 inline$atomic_readItems$0$y@2)) (and (= taskstatus@2 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 148) 145))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 140) (- 0 141)) (and (and (and (and (queueInv steal_in_cs@9 put_in_cs@9 take_in_cs@10 items@9 status@13 H@11 (- T@9 1)) (= tid@@0 ptTid)) (not take_in_cs@10)) (not put_in_cs@9)) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q)))) (=> (and (and (and (and (queueInv steal_in_cs@9 put_in_cs@9 take_in_cs@10 items@9 status@13 H@11 (- T@9 1)) (= tid@@0 ptTid)) (not take_in_cs@10)) (not put_in_cs@9)) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q))) (=> (= (ControlFlow 0 140) (- 0 139)) (ideasInv put_in_cs@9 items@9 status@13 H@11 T@9 take_in_cs@10 steal_in_cs@9 h_ss@10 t_ss@10))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= t_ss@10 t_ss@8) (= h_ss@10 h_ss@8)) (and (= steal_in_cs@9 steal_in_cs@7) (= put_in_cs@9 put_in_cs@7))) (=> (and (and (and (= take_in_cs@10 take_in_cs@8) (= status@13 status@11)) (and (= items@9 items@7) (= T@9 T@7))) (and (and (= H@11 H@9) (= taskstatus@4 taskstatus@3)) (and (= task@4 task@3) (= (ControlFlow 0 142) 140)))) GeneratedUnifiedExit_correct))))
(let ((anon7_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@1) (= T@7 T@1)) (and (= items@7 items@1) (= status@11 status@1))) (=> (and (and (and (= take_in_cs@8 take_in_cs@1) (= put_in_cs@7 put_in_cs@1)) (and (= steal_in_cs@7 steal_in_cs@1) (= h_ss@8 h_ss@1))) (and (and (= t_ss@8 t_ss@1) (= task@3 task@0)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 216) 142)))) Civl_UnifiedReturn_correct))))
(let ((anon8_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@4) (= T@7 H@3)) (and (= items@7 items@4) (= status@11 status@4))) (=> (and (and (and (= take_in_cs@8 false) (= put_in_cs@7 put_in_cs@4)) (and (= steal_in_cs@7 steal_in_cs@4) (= h_ss@8 h_ss@5))) (and (and (= t_ss@8 t_ss@5) (= task@3 EMPTY)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 180) 142)))) Civl_UnifiedReturn_correct))))
(let ((anon9_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@5) (= T@7 T@5)) (and (= items@7 items@5) (= status@11 status@5))) (=> (and (and (and (= take_in_cs@8 false) (= put_in_cs@7 put_in_cs@5)) (and (= steal_in_cs@7 steal_in_cs@5) (= h_ss@8 h_ss@6))) (and (and (= t_ss@8 t_ss@6) (= task@3 inline$atomic_readItems$0$y@2)) (and (= taskstatus@3 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 166) 142)))) Civl_UnifiedReturn_correct))))
(let ((anon10_Then_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@9 H@8) (= T@7 T@6)) (and (= items@7 items@6) (= status@11 status@8))) (=> (and (and (and (= take_in_cs@8 take_in_cs@7) (= put_in_cs@7 put_in_cs@6)) (and (= steal_in_cs@7 steal_in_cs@6) (= h_ss@8 h_ss@7))) (and (and (= t_ss@8 t_ss@7) (= task@3 inline$atomic_readItems$0$y@2)) (and (= taskstatus@3 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 143) 142)))) Civl_UnifiedReturn_correct))))
(let ((anon10_Else_@2_anon7_LoopHead_correct  (and (=> (= (ControlFlow 0 133) (- 0 134)) (and (and (and (queueInv steal_in_cs@6 put_in_cs@6 take_in_cs@7 items@6 status@8 H@8 (- T@6 1)) (= tid@@0 ptTid)) (not take_in_cs@7)) (not put_in_cs@6))) (=> (and (and (and (queueInv steal_in_cs@6 put_in_cs@6 take_in_cs@7 items@6 status@8 H@8 (- T@6 1)) (= tid@@0 ptTid)) (not take_in_cs@7)) (not put_in_cs@6)) (=> (= (ControlFlow 0 133) (- 0 132)) (ideasInv put_in_cs@6 items@6 status@8 H@8 T@6 take_in_cs@7 steal_in_cs@6 h_ss@7 t_ss@7))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 121) (- 0 122)) (= status@9 Civl_global_old_status@1)) (=> (= status@9 Civl_global_old_status@1) (=> (= (ControlFlow 0 121) (- 0 120)) (=> false (and (= task@1 Civl_old_task@1) (= taskstatus@1 Civl_old_taskstatus@1))))))))
(let ((anon10_Else_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@8) (=> (and (= Civl_global_old_status@1 status@6) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 inline$atomic_readItems$0$y@2)) (and (= Civl_old_taskstatus@1 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 136) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon9_Else$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@5) (=> (and (= Civl_global_old_status@1 status@5) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 inline$atomic_readItems$0$y@2)) (and (= Civl_old_taskstatus@1 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 131) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon8_Else$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@4) (=> (and (= Civl_global_old_status@1 status@4) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 129) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_1$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@3) (=> (and (= Civl_global_old_status@1 status@3) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 127) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_2$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@2) (=> (and (= Civl_global_old_status@1 status@2) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 125) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody$2_@2_Civl_UnchangedChecker_correct  (=> (= status@9 status@1) (=> (and (= Civl_global_old_status@1 status@1) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 123) 121))) Civl_UnchangedChecker_correct)))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 107) (- 0 117)) (or (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8))) (and (=> (= (ControlFlow 0 107) (- 0 116)) (or (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8))) (and (=> (= (ControlFlow 0 107) (- 0 115)) (or (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 107) (- 0 114)) (or (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (not take_in_cs@9))) (and (=> (= (ControlFlow 0 107) (- 0 113)) (or (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) put_in_cs@8)) (and (=> (= (ControlFlow 0 107) (- 0 112)) (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8)) (=> (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (and (=> (= (ControlFlow 0 107) (- 0 111)) (or (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))) (and (=> (= (ControlFlow 0 107) (- 0 110)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 107) (- 0 109)) (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0) (and (=> (= (ControlFlow 0 107) (- 0 108)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8)) (=> (= (ControlFlow 0 107) (- 0 106)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 T@8) (and (= (select status@12 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) NOT_IN_Q) (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 96) (- 0 105)) (or (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)))) (and (=> (= (ControlFlow 0 96) (- 0 104)) (or (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 96) (- 0 103)) (or (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (not take_in_cs@9))) (and (=> (= (ControlFlow 0 96) (- 0 102)) (or (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) put_in_cs@8)) (and (=> (= (ControlFlow 0 96) (- 0 101)) (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8)) (=> (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) put_in_cs@8) (and (=> (= (ControlFlow 0 96) (- 0 100)) (or (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))) (and (=> (= (ControlFlow 0 96) (- 0 99)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 96) (- 0 98)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@8)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@8)) (=> (= (ControlFlow 0 96) (- 0 95)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 T@8) (and (= (select status@12 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) NOT_IN_Q) (= (select items@8 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (= Civl_global_old_T@1 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (not Civl_global_old_put_in_cs@1)))) (and (=> (= (ControlFlow 0 88) (- 0 94)) (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 88) (- 0 93)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 88) (- 0 92)) (= T@8 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (=> (= T@8 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)) (and (=> (= (ControlFlow 0 88) (- 0 91)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (and (=> (= (ControlFlow 0 88) (- 0 90)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8) (and (=> (= (ControlFlow 0 88) (- 0 89)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 88) (- 0 87)) (not put_in_cs@8))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (and (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 Civl_global_old_T@1))) (=> (> Civl_global_old_T@1 Civl_global_old_H@1) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))))) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (not Civl_global_old_put_in_cs@1)) Civl_global_old_take_in_cs@1)) (and (=> (= (ControlFlow 0 81) (- 0 86)) (>= H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (>= H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0) (and (=> (= (ControlFlow 0 81) (- 0 85)) (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 81) (- 0 84)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 81) (- 0 83)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 T@8)))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@8 T@8))) (and (=> (= (ControlFlow 0 81) (- 0 82)) (=> (> T@8 H@10) (not (= (select items@8 T@8) EMPTY)))) (=> (=> (> T@8 H@10) (not (= (select items@8 T@8) EMPTY))) (=> (= (ControlFlow 0 81) (- 0 80)) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)) (not put_in_cs@8)) take_in_cs@9))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (and (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0))))) (and (=> (= (ControlFlow 0 70) (- 0 79)) (and (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (not put_in_cs@8)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@9) (not put_in_cs@8)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 70) (- 0 78)) (or (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))) (and (=> (= (ControlFlow 0 70) (- 0 77)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 70) (- 0 76)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (and (=> (= (ControlFlow 0 70) (- 0 75)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10) (and (=> (= (ControlFlow 0 70) (- 0 74)) (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 70) (- 0 73)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (and (=> (= (ControlFlow 0 70) (- 0 72)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8) (and (=> (= (ControlFlow 0 70) (- 0 71)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@10) (=> (= (ControlFlow 0 70) (- 0 69)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 64) (- 0 68)) (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 T@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (= (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 64) (- 0 67)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 64) (- 0 66)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (and (=> (= (ControlFlow 0 64) (- 0 65)) (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@10 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 64) (- 0 63)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> Civl_global_old_H@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 58) (- 0 62)) (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (and (=> (= (ControlFlow 0 58) (- 0 61)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 58) (- 0 60)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@8) (and (=> (= (ControlFlow 0 58) (- 0 59)) (=> (= (select items@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@10 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (=> (=> (= (select items@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@10 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1))) (=> (= (ControlFlow 0 58) (- 0 57)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@8)))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (= (ControlFlow 0 55) (- 0 54)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (and (=> (and (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q))))) (and (=> (= (ControlFlow 0 47) (- 0 53)) (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 47) (- 0 52)) (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1))) (=> (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (and (=> (= (ControlFlow 0 47) (- 0 51)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 47) (- 0 50)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10)) (=> (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (and (=> (= (ControlFlow 0 47) (- 0 49)) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (=> (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (=> (and (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8))) (=> (=> (and (and take_in_cs@9 (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8)) (=> (= (ControlFlow 0 47) (- 0 46)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10) (= (select status@12 H@10) IN_Q)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (and (and (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) Civl_global_old_take_in_cs@1) (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))) (and (=> (= (ControlFlow 0 39) (- 0 45)) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 39) (- 0 44)) (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 39) (- 0 43)) (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1))) (=> (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (and (=> (= (ControlFlow 0 39) (- 0 42)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (and (=> (= (ControlFlow 0 39) (- 0 41)) (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@9) (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8))) (=> (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@9) (< (select h_ss@9 ptTid) (select t_ss@9 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@10)) (< H@10 T@8)) (=> (= (ControlFlow 0 39) (- 0 38)) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (and (and (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1))) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1))) (and (=> (= (ControlFlow 0 31) (- 0 37)) (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (>= H@10 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 36)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (and (=> (= (ControlFlow 0 31) (- 0 35)) (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (= (select h_ss@9 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 34)) (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1))) (=> (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (or (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (=> (= (ControlFlow 0 31) (- 0 30)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@10))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1))) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 26) (- 0 28)) (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1))) (=> (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (=> (= (ControlFlow 0 26) (- 0 25)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (emptyInv Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_T@1))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (=> (= (ControlFlow 0 22) (- 0 21)) (emptyInv put_in_cs@8 take_in_cs@9 items@8 status@12 T@8))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (emptyInv Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_T@1))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@9)) (not put_in_cs@8)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9)) (=> (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9) (=> (= (ControlFlow 0 18) (- 0 17)) (emptyInv put_in_cs@8 take_in_cs@9 items@8 status@12 T@8))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q)))) (=> (and (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 15) (- 0 14)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8))) (=> (and (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@9)) (not put_in_cs@8)) (=> (= (ControlFlow 0 12) (- 0 11)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q)))) (=> (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 8) (- 0 7)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@8 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)))) (=> (and (and (queueInv steal_in_cs@8 put_in_cs@8 take_in_cs@9 items@8 status@12 H@10 (- T@8 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select steal_in_cs@8 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (= (ControlFlow 0 5) (- 0 4)) (ideasInv put_in_cs@8 items@8 status@12 H@10 T@8 take_in_cs@9 steal_in_cs@8 h_ss@9 t_ss@9))))))))
(let ((anon7_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@1) (=> (and (= T@8 T@1) (= items@8 items@1)) (=> (and (and (and (and (= status@12 status@1) (= take_in_cs@9 take_in_cs@1)) (and (= put_in_cs@8 put_in_cs@1) (= steal_in_cs@8 steal_in_cs@1))) (and (and (= h_ss@9 h_ss@1) (= t_ss@9 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@8 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 217) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 217) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 217) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 217) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 217) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 217) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 217) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 217) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 217) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 217) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 217) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 217) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 217) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 217) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 217) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 217) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 217) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 217) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 217) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 218) 215) anon7_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 218) 216) anon7_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 218) 217) anon7_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon8_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@4) (=> (and (= T@8 H@3) (= items@8 items@4)) (=> (and (and (and (and (= status@12 status@4) (= take_in_cs@9 false)) (and (= put_in_cs@8 put_in_cs@4) (= steal_in_cs@8 steal_in_cs@4))) (and (and (= h_ss@9 h_ss@5) (= t_ss@9 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@8 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 181) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 181) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 181) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 181) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 181) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 181) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 181) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 181) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 181) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 181) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 181) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 181) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 181) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 181) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 181) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 181) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 181) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 181) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 181) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon8_Then_correct  (=> (< t@1 H@3) (and (=> (= (ControlFlow 0 182) (- 0 184)) take_in_cs@4) (=> take_in_cs@4 (and (=> (= (ControlFlow 0 182) (- 0 183)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (and (and (=> (= (ControlFlow 0 182) 179) anon8_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 182) 180) anon8_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 182) 181) anon8_Then$1_@2_Civl_NoninterferenceChecker_correct)))))))))
(let ((anon9_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@5) (=> (and (= T@8 T@5) (= items@8 items@5)) (=> (and (and (and (and (= status@12 status@5) (= take_in_cs@9 false)) (and (= put_in_cs@8 put_in_cs@5) (= steal_in_cs@8 steal_in_cs@5))) (and (and (= h_ss@9 h_ss@6) (= t_ss@9 t_ss@6)) (and (= Civl_global_old_H@1 H@5) (= Civl_global_old_T@1 T@5)))) (and (and (and (= Civl_global_old_items@1 items@5) (= Civl_global_old_status@3 status@5)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@5) (= Civl_global_old_put_in_cs@1 put_in_cs@5))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@6)) (and (= Civl_global_old_t_ss@1 t_ss@6) (= Civl_linear_tid_available@8 Civl_linear_tid_available@6))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 167) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 167) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 167) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 167) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 167) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 167) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 167) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 167) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 167) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 167) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 167) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 167) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 167) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 167) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 167) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 167) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 167) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 167) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 167) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon9_Then_correct  (=> (> t@1 H@3) (and (=> (= (ControlFlow 0 168) (- 0 169)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (and (and (=> (= (ControlFlow 0 168) 165) anon9_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 168) 166) anon9_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 168) 167) anon9_Then$1_@2_Civl_NoninterferenceChecker_correct)))))))
(let ((anon10_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@8) (=> (and (= T@8 T@6) (= items@8 items@6)) (=> (and (and (and (and (= status@12 status@8) (= take_in_cs@9 take_in_cs@7)) (and (= put_in_cs@8 put_in_cs@6) (= steal_in_cs@8 steal_in_cs@6))) (and (and (= h_ss@9 h_ss@7) (= t_ss@9 t_ss@7)) (and (= Civl_global_old_H@1 H@6) (= Civl_global_old_T@1 T@6)))) (and (and (and (= Civl_global_old_items@1 items@6) (= Civl_global_old_status@3 status@6)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@6) (= Civl_global_old_put_in_cs@1 put_in_cs@6))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@6) (= Civl_global_old_h_ss@1 h_ss@7)) (and (= Civl_global_old_t_ss@1 t_ss@7) (= Civl_linear_tid_available@8 Civl_linear_tid_available@7))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 138) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 138) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 138) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 138) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 138) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 138) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 138) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 138) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 138) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 138) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 138) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 138) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 138) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 138) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 138) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 138) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 138) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 138) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 138) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon10_Then_correct  (=> inline$atomic_CAS_H_take$0$result@2 (and (and (=> (= (ControlFlow 0 149) 148) anon10_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 149) 143) anon10_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 149) 138) anon10_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon10_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@8) (=> (and (= T@8 T@6) (= items@8 items@6)) (=> (and (and (and (and (= status@12 status@8) (= take_in_cs@9 take_in_cs@7)) (and (= put_in_cs@8 put_in_cs@6) (= steal_in_cs@8 steal_in_cs@6))) (and (and (= h_ss@9 h_ss@7) (= t_ss@9 t_ss@7)) (and (= Civl_global_old_H@1 H@6) (= Civl_global_old_T@1 T@6)))) (and (and (and (= Civl_global_old_items@1 items@6) (= Civl_global_old_status@3 status@6)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@6) (= Civl_global_old_put_in_cs@1 put_in_cs@6))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@6) (= Civl_global_old_h_ss@1 h_ss@7)) (and (= Civl_global_old_t_ss@1 t_ss@7) (= Civl_linear_tid_available@8 Civl_linear_tid_available@7))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 135) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 135) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 135) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 135) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 135) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 135) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 135) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 135) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 135) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 135) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 135) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 135) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 135) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 135) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 135) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 135) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 135) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 135) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 135) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon10_Else_correct  (=> (not inline$atomic_CAS_H_take$0$result@2) (and (and (=> (= (ControlFlow 0 137) 133) anon10_Else_@2_anon7_LoopHead_correct) (=> (= (ControlFlow 0 137) 135) anon10_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 137) 136) anon10_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$atomic_CAS_H_take$0$anon3_Else_correct  (=> (not (= H@6 H@3)) (=> (and (and (= H@8 H@6) (= status@8 status@6)) (and (= take_in_cs@7 false) (= inline$atomic_CAS_H_take$0$result@2 false))) (and (=> (= (ControlFlow 0 151) 149) anon10_Then_correct) (=> (= (ControlFlow 0 151) 137) anon10_Else_correct))))))
(let ((inline$atomic_CAS_H_take$0$anon3_Then_correct  (=> (= H@6 H@3) (=> (and (= status@7 (store status@6 H@6 NOT_IN_Q)) (= H@7 (+ H@6 1))) (=> (and (and (= H@8 H@7) (= status@8 status@7)) (and (= take_in_cs@7 false) (= inline$atomic_CAS_H_take$0$result@2 true))) (and (=> (= (ControlFlow 0 150) 149) anon10_Then_correct) (=> (= (ControlFlow 0 150) 137) anon10_Else_correct)))))))
(let ((inline$atomic_CAS_H_take$0$Entry_correct  (=> (= inline$atomic_CAS_H_take$0$val@1 (+ H@3 1)) (and (=> (= (ControlFlow 0 152) 150) inline$atomic_CAS_H_take$0$anon3_Then_correct) (=> (= (ControlFlow 0 152) 151) inline$atomic_CAS_H_take$0$anon3_Else_correct)))))
(let ((anon5_0_correct  (and (=> (= (ControlFlow 0 153) (- 0 161)) (and (and (and (queueInv steal_in_cs@5 put_in_cs@5 take_in_cs@5 items@5 status@5 H@5 (- inline$atomic_writeT_take_eq$0$val@1 1)) (= tid@@0 ptTid)) (= (select h_ss@6 tid@@0) H@3)) (= (select t_ss@6 tid@@0) t@1))) (=> (and (and (and (queueInv steal_in_cs@5 put_in_cs@5 take_in_cs@5 items@5 status@5 H@5 (- inline$atomic_writeT_take_eq$0$val@1 1)) (= tid@@0 ptTid)) (= (select h_ss@6 tid@@0) H@3)) (= (select t_ss@6 tid@@0) t@1)) (and (=> (= (ControlFlow 0 153) (- 0 160)) (ideasInv put_in_cs@5 items@5 status@5 H@5 inline$atomic_writeT_take_eq$0$val@1 take_in_cs@5 steal_in_cs@5 h_ss@6 t_ss@6)) (=> (ideasInv put_in_cs@5 items@5 status@5 H@5 inline$atomic_writeT_take_eq$0$val@1 take_in_cs@5 steal_in_cs@5 h_ss@6 t_ss@6) (and (=> (= (ControlFlow 0 153) (- 0 159)) (= inline$atomic_writeT_take_eq$0$val@1 (+ H@3 1))) (=> (= inline$atomic_writeT_take_eq$0$val@1 (+ H@3 1)) (and (=> (= (ControlFlow 0 153) (- 0 158)) (<= H@5 H@5)) (=> (<= H@5 H@5) (and (=> (= (ControlFlow 0 153) (- 0 157)) (= inline$atomic_writeT_take_eq$0$val@1 inline$atomic_writeT_take_eq$0$val@1)) (=> (= inline$atomic_writeT_take_eq$0$val@1 inline$atomic_writeT_take_eq$0$val@1) (and (=> (= (ControlFlow 0 153) (- 0 156)) (= inline$atomic_readItems$0$y@2 (select items@5 t@1))) (=> (= inline$atomic_readItems$0$y@2 (select items@5 t@1)) (and (=> (= (ControlFlow 0 153) (- 0 155)) (not put_in_cs@5)) (=> (not put_in_cs@5) (=> (and (or false true) (= Civl_linear_tid_available@7 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (queueInv steal_in_cs@6 put_in_cs@6 take_in_cs@6 items@6 status@6 H@6 (- T@6 1)) (= tid@@0 ptTid)) (= (select h_ss@7 tid@@0) H@3)) (= (select t_ss@7 tid@@0) t@1)) (and (ideasInv put_in_cs@6 items@6 status@6 H@6 T@6 take_in_cs@6 steal_in_cs@6 h_ss@7 t_ss@7) (= T@6 (+ H@3 1)))) (and (and (<= H@5 H@6) (= inline$atomic_writeT_take_eq$0$val@1 T@6)) (and (= inline$atomic_readItems$0$y@2 (select items@6 t@1)) (not put_in_cs@6)))) (and (=> (= (ControlFlow 0 153) (- 0 154)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (=> (= (ControlFlow 0 153) 152) inline$atomic_CAS_H_take$0$Entry_correct)))))))))))))))))))))
(let ((anon9_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@5) (=> (and (= T@8 inline$atomic_writeT_take_eq$0$val@1) (= items@8 items@5)) (=> (and (and (and (and (= status@12 status@5) (= take_in_cs@9 take_in_cs@5)) (and (= put_in_cs@8 put_in_cs@5) (= steal_in_cs@8 steal_in_cs@5))) (and (and (= h_ss@9 h_ss@6) (= t_ss@9 t_ss@6)) (and (= Civl_global_old_H@1 H@5) (= Civl_global_old_T@1 T@5)))) (and (and (and (= Civl_global_old_items@1 items@5) (= Civl_global_old_status@3 status@5)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@5) (= Civl_global_old_put_in_cs@1 put_in_cs@5))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@6)) (and (= Civl_global_old_t_ss@1 t_ss@6) (= Civl_linear_tid_available@8 Civl_linear_tid_available@6))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 130) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 130) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 130) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 130) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 130) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 130) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 130) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 130) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 130) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 130) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 130) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 130) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 130) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 130) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 130) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 130) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 130) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 130) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 130) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_writeT_take_eq$0$Entry_correct  (=> (= inline$atomic_writeT_take_eq$0$val@1 (+ H@3 1)) (and (and (=> (= (ControlFlow 0 162) 153) anon5_0_correct) (=> (= (ControlFlow 0 162) 130) anon9_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 162) 131) anon9_Else$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon9_Else_correct  (=> (>= H@3 t@1) (and (=> (= (ControlFlow 0 163) (- 0 164)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (=> (= (ControlFlow 0 163) 162) inline$atomic_writeT_take_eq$0$Entry_correct))))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 170) (- 0 176)) (>= H@4 H@3)) (=> (>= H@4 H@3) (and (=> (= (ControlFlow 0 170) (- 0 175)) (and (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@4 status@4 H@4 T@4) (= tid@@0 ptTid)) take_in_cs@4) (= (select h_ss@5 tid@@0) H@3)) (= (select t_ss@5 tid@@0) t@1))) (=> (and (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@4 status@4 H@4 T@4) (= tid@@0 ptTid)) take_in_cs@4) (= (select h_ss@5 tid@@0) H@3)) (= (select t_ss@5 tid@@0) t@1)) (and (=> (= (ControlFlow 0 170) (- 0 174)) (ideasInv put_in_cs@4 items@4 status@4 H@4 T@4 take_in_cs@4 steal_in_cs@4 h_ss@5 t_ss@5)) (=> (ideasInv put_in_cs@4 items@4 status@4 H@4 T@4 take_in_cs@4 steal_in_cs@4 h_ss@5 t_ss@5) (and (=> (= (ControlFlow 0 170) (- 0 173)) (and (= t@1 T@4) (= inline$atomic_readItems$0$y@2 (select items@4 T@4)))) (=> (and (= t@1 T@4) (= inline$atomic_readItems$0$y@2 (select items@4 T@4))) (and (=> (= (ControlFlow 0 170) (- 0 172)) (=> (> T@4 H@4) (not (= (select items@4 T@4) EMPTY)))) (=> (=> (> T@4 H@4) (not (= (select items@4 T@4) EMPTY))) (and (=> (= (ControlFlow 0 170) (- 0 171)) (and (and (and (<= H@4 H@4) (= T@4 T@4)) (not put_in_cs@4)) take_in_cs@4)) (=> (and (and (and (<= H@4 H@4) (= T@4 T@4)) (not put_in_cs@4)) take_in_cs@4) (=> (or false true) (=> (and (= Civl_linear_tid_available@6 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))) (>= H@5 H@3)) (=> (and (and (and (and (and (and (and (queueInv steal_in_cs@5 put_in_cs@5 take_in_cs@5 items@5 status@5 H@5 T@5) (= tid@@0 ptTid)) take_in_cs@5) (= (select h_ss@6 tid@@0) H@3)) (= (select t_ss@6 tid@@0) t@1)) (ideasInv put_in_cs@5 items@5 status@5 H@5 T@5 take_in_cs@5 steal_in_cs@5 h_ss@6 t_ss@6)) (and (and (= t@1 T@5) (= inline$atomic_readItems$0$y@2 (select items@5 T@5))) (=> (> T@5 H@5) (not (= (select items@5 T@5) EMPTY))))) (and (and (and (<= H@4 H@5) (= T@4 T@5)) (not put_in_cs@5)) take_in_cs@5)) (and (=> (= (ControlFlow 0 170) 168) anon9_Then_correct) (=> (= (ControlFlow 0 170) 163) anon9_Else_correct)))))))))))))))))))
(let ((anon8_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@4) (=> (and (= T@8 T@4) (= items@8 items@4)) (=> (and (and (and (and (= status@12 status@4) (= take_in_cs@9 take_in_cs@4)) (and (= put_in_cs@8 put_in_cs@4) (= steal_in_cs@8 steal_in_cs@4))) (and (and (= h_ss@9 h_ss@5) (= t_ss@9 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@8 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 128) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 128) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 128) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 128) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 128) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 128) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 128) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 128) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 128) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 128) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 128) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 128) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 128) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 128) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 128) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 128) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 128) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 128) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 128) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readItems$0$anon0_correct  (=> (and (= inline$atomic_readItems$0$y@2 (select items@4 t@1)) (= inline$atomic_readItems$0$b@2 (select status@4 t@1))) (and (and (=> (= (ControlFlow 0 177) 170) anon3_0_correct) (=> (= (ControlFlow 0 177) 128) anon8_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 177) 129) anon8_Else$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon8_Else_correct  (=> (and (<= H@3 t@1) (= (ControlFlow 0 178) 177)) inline$atomic_readItems$0$anon0_correct)))
(let ((anon7_LoopBody_0_correct  (and (=> (= (ControlFlow 0 185) (- 0 195)) (and (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 true items@3 status@3 H@3 T@3) (= tid@@0 ptTid)) true) (not put_in_cs@3)) (= (select h_ss@4 tid@@0) H@3)) (= (select t_ss@4 tid@@0) t@1))) (=> (and (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 true items@3 status@3 H@3 T@3) (= tid@@0 ptTid)) true) (not put_in_cs@3)) (= (select h_ss@4 tid@@0) H@3)) (= (select t_ss@4 tid@@0) t@1)) (and (=> (= (ControlFlow 0 185) (- 0 194)) (or (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 true steal_in_cs@3 h_ss@4 t_ss@4) (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 true steal_in_cs@3 h_ss@4 t_ss@4))) (and (=> (= (ControlFlow 0 185) (- 0 193)) (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 true steal_in_cs@3 h_ss@4 t_ss@4)) (=> (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 true steal_in_cs@3 h_ss@4 t_ss@4) (and (=> (= (ControlFlow 0 185) (- 0 192)) (= t@1 T@3)) (=> (= t@1 T@3) (and (=> (= (ControlFlow 0 185) (- 0 191)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 185) (- 0 190)) (=> (= (select items@3 t@1) EMPTY) (> H@3 t@1))) (=> (=> (= (select items@3 t@1) EMPTY) (> H@3 t@1)) (and (=> (= (ControlFlow 0 185) (- 0 189)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 185) (- 0 188)) (= T@3 T@3)) (=> (= T@3 T@3) (and (=> (= (ControlFlow 0 185) (- 0 187)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 185) (- 0 186)) (= H@3 H@3)) (=> (= H@3 H@3) (=> (and (or false true) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (and (queueInv steal_in_cs@4 put_in_cs@4 take_in_cs@4 items@4 status@4 H@4 T@4) (= tid@@0 ptTid)) take_in_cs@4) (not put_in_cs@4)) (= (select h_ss@5 tid@@0) H@3)) (= (select t_ss@5 tid@@0) t@1)) (and (and (and (ideasInv put_in_cs@4 items@4 status@4 H@4 T@4 take_in_cs@4 steal_in_cs@4 h_ss@5 t_ss@5) (= t@1 T@4)) (and (<= H@3 H@4) (=> (= (select items@4 t@1) EMPTY) (> H@4 t@1)))) (and (and (<= H@3 H@4) (= T@3 T@4)) (and (<= H@3 H@4) (= H@3 H@3))))) (and (=> (= (ControlFlow 0 185) 182) anon8_Then_correct) (=> (= (ControlFlow 0 185) 178) anon8_Else_correct)))))))))))))))))))))))))
(let ((anon7_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@3) (=> (and (= T@8 T@3) (= items@8 items@3)) (=> (and (and (and (and (= status@12 status@3) (= take_in_cs@9 true)) (and (= put_in_cs@8 put_in_cs@3) (= steal_in_cs@8 steal_in_cs@3))) (and (and (= h_ss@9 h_ss@4) (= t_ss@9 t_ss@4)) (and (= Civl_global_old_H@1 H@3) (= Civl_global_old_T@1 T@3)))) (and (and (and (= Civl_global_old_items@1 items@3) (= Civl_global_old_status@3 status@3)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@3) (= Civl_global_old_put_in_cs@1 put_in_cs@3))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@3) (= Civl_global_old_h_ss@1 h_ss@3)) (and (= Civl_global_old_t_ss@1 t_ss@4) (= Civl_linear_tid_available@8 Civl_linear_tid_available@4))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 126) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 126) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 126) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 126) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 126) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 126) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 126) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 126) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 126) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readH_take$0$anon0_correct  (=> (= h_ss@4 (store h_ss@3 tid@@0 H@3)) (and (and (=> (= (ControlFlow 0 196) 185) anon7_LoopBody_0_correct) (=> (= (ControlFlow 0 196) 126) anon7_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 196) 127) anon7_LoopBody_1$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_1_correct  (and (=> (= (ControlFlow 0 197) (- 0 203)) (and (and (and (and (queueInv steal_in_cs@2 put_in_cs@2 take_in_cs@2 items@2 status@2 H@2 t@1) (= tid@@0 ptTid)) (not take_in_cs@2)) (not put_in_cs@2)) (= (select t_ss@3 tid@@0) t@1))) (=> (and (and (and (and (queueInv steal_in_cs@2 put_in_cs@2 take_in_cs@2 items@2 status@2 H@2 t@1) (= tid@@0 ptTid)) (not take_in_cs@2)) (not put_in_cs@2)) (= (select t_ss@3 tid@@0) t@1)) (and (=> (= (ControlFlow 0 197) (- 0 202)) (ideasInv put_in_cs@2 items@2 status@2 H@2 t@1 take_in_cs@2 steal_in_cs@2 h_ss@2 t_ss@3)) (=> (ideasInv put_in_cs@2 items@2 status@2 H@2 t@1 take_in_cs@2 steal_in_cs@2 h_ss@2 t_ss@3) (and (=> (= (ControlFlow 0 197) (- 0 201)) (= t@1 t@1)) (=> (= t@1 t@1) (and (=> (= (ControlFlow 0 197) (- 0 200)) (=> (= (select items@2 t@1) EMPTY) (> H@2 t@1))) (=> (=> (= (select items@2 t@1) EMPTY) (> H@2 t@1)) (and (=> (= (ControlFlow 0 197) (- 0 199)) (and (<= H@2 H@2) (= t@1 t@1))) (=> (and (<= H@2 H@2) (= t@1 t@1)) (=> (and (or false true) (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (and (queueInv steal_in_cs@3 put_in_cs@3 take_in_cs@3 items@3 status@3 H@3 T@3) (= tid@@0 ptTid)) (not take_in_cs@3)) (not put_in_cs@3)) (= (select t_ss@4 tid@@0) t@1)) (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 take_in_cs@3 steal_in_cs@3 h_ss@3 t_ss@4)) (and (and (= t@1 T@3) (=> (= (select items@3 t@1) EMPTY) (> H@3 t@1))) (and (<= H@2 H@3) (= t@1 T@3)))) (and (=> (= (ControlFlow 0 197) (- 0 198)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (=> (= (ControlFlow 0 197) 196) inline$atomic_readH_take$0$anon0_correct)))))))))))))))))
(let ((anon7_LoopBody_2$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@2) (=> (and (= T@8 t@1) (= items@8 items@2)) (=> (and (and (and (and (= status@12 status@2) (= take_in_cs@9 take_in_cs@2)) (and (= put_in_cs@8 put_in_cs@2) (= steal_in_cs@8 steal_in_cs@2))) (and (and (= h_ss@9 h_ss@2) (= t_ss@9 t_ss@3)) (and (= Civl_global_old_H@1 H@2) (= Civl_global_old_T@1 T@2)))) (and (and (and (= Civl_global_old_items@1 items@2) (= Civl_global_old_status@3 status@2)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@2) (= Civl_global_old_put_in_cs@1 put_in_cs@2))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@2) (= Civl_global_old_h_ss@1 h_ss@2)) (and (= Civl_global_old_t_ss@1 t_ss@2) (= Civl_linear_tid_available@8 Civl_linear_tid_available@3))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 124) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 124) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 124) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 124) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 124) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 124) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 124) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 124) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 124) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_writeT_take$0$anon0_correct  (=> (= t_ss@3 (store t_ss@2 tid@@0 t@1)) (and (and (=> (= (ControlFlow 0 204) 197) anon7_LoopBody_1_correct) (=> (= (ControlFlow 0 204) 124) anon7_LoopBody_2$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 204) 125) anon7_LoopBody_2$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon7_LoopBody_2_correct  (and (=> (= (ControlFlow 0 205) (- 0 211)) (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1)) (= tid@@0 ptTid)) (not take_in_cs@1)) (not put_in_cs@1))) (=> (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1)) (= tid@@0 ptTid)) (not take_in_cs@1)) (not put_in_cs@1)) (and (=> (= (ControlFlow 0 205) (- 0 210)) (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1)) (=> (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1) (and (=> (= (ControlFlow 0 205) (- 0 209)) (= T@1 T@1)) (=> (= T@1 T@1) (and (=> (= (ControlFlow 0 205) (- 0 208)) (=> (= (select items@1 (- T@1 1)) EMPTY) (> H@1 (- T@1 1)))) (=> (=> (= (select items@1 (- T@1 1)) EMPTY) (> H@1 (- T@1 1))) (and (=> (= (ControlFlow 0 205) (- 0 207)) (and (<= H@1 H@1) (= T@1 T@1))) (=> (and (<= H@1 H@1) (= T@1 T@1)) (=> (and (or false true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (and (and (queueInv steal_in_cs@2 put_in_cs@2 take_in_cs@2 items@2 status@2 H@2 (- T@2 1)) (= tid@@0 ptTid)) (not take_in_cs@2)) (not put_in_cs@2)) (ideasInv put_in_cs@2 items@2 status@2 H@2 T@2 take_in_cs@2 steal_in_cs@2 h_ss@2 t_ss@2)) (and (= T@1 T@2) (=> (= (select items@2 (- T@1 1)) EMPTY) (> H@2 (- T@1 1))))) (and (and (<= H@1 H@2) (= T@1 T@2)) (= t@1 (- T@1 1)))) (and (=> (= (ControlFlow 0 205) (- 0 206)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (=> (= (ControlFlow 0 205) 204) inline$atomic_writeT_take$0$anon0_correct)))))))))))))))))
(let ((anon7_LoopBody$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@1) (=> (and (= T@8 T@1) (= items@8 items@1)) (=> (and (and (and (and (= status@12 status@1) (= take_in_cs@9 take_in_cs@1)) (and (= put_in_cs@8 put_in_cs@1) (= steal_in_cs@8 steal_in_cs@1))) (and (and (= h_ss@9 h_ss@1) (= t_ss@9 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@8 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 119) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 119) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 119) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 119) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 119) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 119) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 119) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 119) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 119) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 212) (- 0 214)) (= tid@@0 ptTid)) (=> (= tid@@0 ptTid) (and (=> (= (ControlFlow 0 212) (- 0 213)) (not (= tid@@0 NIL))) (=> (not (= tid@@0 NIL)) (and (and (=> (= (ControlFlow 0 212) 205) anon7_LoopBody_2_correct) (=> (= (ControlFlow 0 212) 119) anon7_LoopBody$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 212) 123) anon7_LoopBody$2_@2_Civl_UnchangedChecker_correct))))))))
(let ((anon7_LoopHead_correct  (=> (and (and (and (and (and (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1)) (= tid@@0 ptTid)) (not take_in_cs@1)) (not put_in_cs@1)) (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1)) (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 219) 218) anon7_LoopDone_correct) (=> (= (ControlFlow 0 219) 212) anon7_LoopBody_correct)))))
(let ((anon0_@2_anon7_LoopHead_correct  (and (=> (= (ControlFlow 0 220) (- 0 222)) (and (and (and (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) (not put_in_cs@0))) (=> (and (and (and (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) (not put_in_cs@0)) (and (=> (= (ControlFlow 0 220) (- 0 221)) (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0)) (=> (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0) (=> (= (ControlFlow 0 220) 219) anon7_LoopHead_correct)))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= H@10 H@0) (=> (and (= T@8 T@0) (= items@8 items@0)) (=> (and (and (and (and (= status@12 status@0) (= take_in_cs@9 take_in_cs@0)) (and (= put_in_cs@8 put_in_cs@0) (= steal_in_cs@8 steal_in_cs@0))) (and (and (= h_ss@9 h_ss@0) (= t_ss@9 t_ss@0)) (and (= Civl_global_old_H@1 H@0) (= Civl_global_old_T@1 T@0)))) (and (and (and (= Civl_global_old_items@1 items@0) (= Civl_global_old_status@3 status@0)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@0) (= Civl_global_old_put_in_cs@1 put_in_cs@0))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@0) (= Civl_global_old_h_ss@1 h_ss@0)) (and (= Civl_global_old_t_ss@1 t_ss@0) (= Civl_linear_tid_available@8 Civl_linear_tid_available@0))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 118) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 118) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 118) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 118) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 118) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 118) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 118) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 118) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 118) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@2| Int) ) (!  (and (= (select status@0 |Civl_i#0@@2|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@2| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@0 status@0))))) (=> (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@3| Int) ) (!  (and (= (select status@0 |Civl_i#0@@3|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@3| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |30|
)) (= status@0 status@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= status@0 status@0) (and (= task task) (= taskstatus taskstatus)))))))))
(let ((anon0_correct  (=> (and (and (and (and (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (= tid@@0 ptTid)) (not take_in_cs@0)) (not put_in_cs@0)) (and (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))))) (and (and (=> (= (ControlFlow 0 223) 220) anon0_@2_anon7_LoopHead_correct) (=> (= (ControlFlow 0 223) 118) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 223) 2) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (queueInv steal_in_cs@@1 put_in_cs@@2 take_in_cs@@2 items@@4 status@@4 H@@2 (- T@@3 1)) (= tid@@0 ptTid)) (not take_in_cs@@2)) (not put_in_cs@@2)) (and (ideasInv put_in_cs@@2 items@@4 status@@4 H@@2 T@@3 take_in_cs@@2 steal_in_cs@@1 h_ss@@0 t_ss@@0) (= (ControlFlow 0 224) 223))) anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun steal_in_cs@12 () (Array T@Tid Bool))
(declare-fun put_in_cs@7 () Bool)
(declare-fun take_in_cs@7 () Bool)
(declare-fun items@7 () (Array Int Int))
(declare-fun status@11 () (Array Int Bool))
(declare-fun H@9 () Int)
(declare-fun T@7 () Int)
(declare-fun tid@@0 () T@Tid)
(declare-fun task@4 () Int)
(declare-fun taskstatus@4 () Bool)
(declare-fun h_ss@8 () (Array T@Tid Int))
(declare-fun t_ss@8 () (Array T@Tid Int))
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
(declare-fun Civl_global_old_steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun Civl_global_old_put_in_cs@1 () Bool)
(declare-fun Civl_global_old_take_in_cs@1 () Bool)
(declare-fun Civl_global_old_items@1 () (Array Int Int))
(declare-fun Civl_global_old_status@3 () (Array Int Bool))
(declare-fun Civl_global_old_H@1 () Int)
(declare-fun Civl_global_old_T@1 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 () Int)
(declare-fun Civl_global_old_h_ss@1 () (Array T@Tid Int))
(declare-fun Civl_global_old_t_ss@1 () (Array T@Tid Int))
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 () Int)
(declare-fun steal_in_cs@11 () (Array T@Tid Bool))
(declare-fun put_in_cs@6 () Bool)
(declare-fun take_in_cs@6 () Bool)
(declare-fun items@6 () (Array Int Int))
(declare-fun status@10 () (Array Int Bool))
(declare-fun H@8 () Int)
(declare-fun T@6 () Int)
(declare-fun h_ss@7 () (Array T@Tid Int))
(declare-fun t_ss@7 () (Array T@Tid Int))
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
(declare-fun put_in_cs@2 () Bool)
(declare-fun take_in_cs@2 () Bool)
(declare-fun items@2 () (Array Int Int))
(declare-fun t_ss@3 () (Array T@Tid Int))
(declare-fun steal_in_cs@2 () (Array T@Tid Bool))
(declare-fun t_ss@2 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@3 () (Array T@Tid Bool))
(declare-fun h_ss@2 () (Array T@Tid Int))
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun put_in_cs@0 () Bool)
(declare-fun take_in_cs@0 () Bool)
(declare-fun items@0 () (Array Int Int))
(declare-fun status@0 () (Array Int Bool))
(declare-fun H@0 () Int)
(declare-fun T@0 () Int)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun Civl_linear_tid_available@0 () (Array T@Tid Bool))
(declare-fun task () Int)
(declare-fun taskstatus () Bool)
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(declare-fun put_in_cs@@2 () Bool)
(declare-fun take_in_cs@@2 () Bool)
(declare-fun items@@4 () (Array Int Int))
(declare-fun status@@4 () (Array Int Bool))
(declare-fun H@@2 () Int)
(declare-fun T@@3 () Int)
(declare-fun h_ss@@0 () (Array T@Tid Int))
(declare-fun t_ss@@0 () (Array T@Tid Int))
(set-info :boogie-vc-id Civl_steal_3)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 204) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 143) (- 0 145)) (or false (or (= status@8 Civl_global_old_status@2) (or (exists ((|Civl_i#0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0|) IN_Q) (= status@8 (store Civl_global_old_status@2 |Civl_i#0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@8 Civl_global_old_status@2))))) (=> (or false (or (= status@8 Civl_global_old_status@2) (or (exists ((|Civl_i#0@@0| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@0|) IN_Q) (= status@8 (store Civl_global_old_status@2 |Civl_i#0@@0| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@8 Civl_global_old_status@2)))) (and (=> (= (ControlFlow 0 143) (- 0 144)) (=> false (and (= status@8 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2))))) (=> (=> false (and (= status@8 Civl_global_old_status@2) (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)))) (=> (and (and (= Civl_pc@0  (=> (= status@8 Civl_global_old_status@2) false)) (= Civl_ok@0  (or (or (exists ((|Civl_i#0@@1| Int) ) (!  (and (= (select Civl_global_old_status@2 |Civl_i#0@@1|) IN_Q) (= status@8 (store Civl_global_old_status@2 |Civl_i#0@@1| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@8 Civl_global_old_status@2)) (and (and (= task@2 Civl_old_task@2) (= taskstatus@2 Civl_old_taskstatus@2)) false)))) (= (ControlFlow 0 143) (- 0 142))) Civl_ok@0)))))))
(let ((anon5_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= status@8 status@1) (=> (and (= Civl_global_old_status@2 status@1) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 task@0)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 193) 143))) Civl_ReturnChecker_correct)))))
(let ((anon6_Then$1_@2_Civl_ReturnChecker_correct  (=> (= status@8 status@3) (=> (and (= Civl_global_old_status@2 status@3) (= Civl_old_task@2 task@0)) (=> (and (and (= Civl_old_taskstatus@2 taskstatus@0) (= task@2 EMPTY)) (and (= taskstatus@2 taskstatus@0) (= (ControlFlow 0 162) 143))) Civl_ReturnChecker_correct)))))
(let ((anon7_Then_@2_Civl_ReturnChecker_correct  (=> (= status@8 status@6) (=> (and (= Civl_global_old_status@2 status@4) (= Civl_old_task@2 inline$atomic_readItems$0$y@2)) (=> (and (and (= Civl_old_taskstatus@2 inline$atomic_readItems$0$b@2) (= task@2 inline$atomic_readItems$0$y@2)) (and (= taskstatus@2 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 146) 143))) Civl_ReturnChecker_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 138) (- 0 139)) (and (and (queueInv steal_in_cs@12 put_in_cs@7 take_in_cs@7 items@7 status@11 H@9 (- T@7 1)) (not (select steal_in_cs@12 tid@@0))) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q)))) (=> (and (and (queueInv steal_in_cs@12 put_in_cs@7 take_in_cs@7 items@7 status@11 H@9 (- T@7 1)) (not (select steal_in_cs@12 tid@@0))) (=> (not (= task@4 EMPTY)) (= taskstatus@4 IN_Q))) (=> (= (ControlFlow 0 138) (- 0 137)) (ideasInv put_in_cs@7 items@7 status@11 H@9 T@7 take_in_cs@7 steal_in_cs@12 h_ss@8 t_ss@8))))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= t_ss@8 t_ss@6) (= h_ss@8 h_ss@6)) (and (= steal_in_cs@12 steal_in_cs@10) (= put_in_cs@7 put_in_cs@5))) (=> (and (and (and (= take_in_cs@7 take_in_cs@5) (= status@11 status@9)) (and (= items@7 items@5) (= T@7 T@5))) (and (and (= H@9 H@7) (= taskstatus@4 taskstatus@3)) (and (= task@4 task@3) (= (ControlFlow 0 140) 138)))) GeneratedUnifiedExit_correct))))
(let ((anon5_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@7 H@1) (= T@5 T@1)) (and (= items@5 items@1) (= status@9 status@1))) (=> (and (and (and (= take_in_cs@5 take_in_cs@1) (= put_in_cs@5 put_in_cs@1)) (and (= steal_in_cs@10 steal_in_cs@1) (= h_ss@6 h_ss@1))) (and (and (= t_ss@6 t_ss@1) (= task@3 task@0)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 194) 140)))) Civl_UnifiedReturn_correct))))
(let ((anon6_Then$1_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@7 H@3) (= T@5 T@3)) (and (= items@5 items@3) (= status@9 status@3))) (=> (and (and (and (= take_in_cs@5 take_in_cs@3) (= put_in_cs@5 put_in_cs@3)) (and (= steal_in_cs@10 steal_in_cs@9) (= h_ss@6 h_ss@4))) (and (and (= t_ss@6 t_ss@4) (= task@3 EMPTY)) (and (= taskstatus@3 taskstatus@0) (= (ControlFlow 0 163) 140)))) Civl_UnifiedReturn_correct))))
(let ((anon7_Then_@2_Civl_UnifiedReturn_correct  (=> (and (and (= H@7 H@6) (= T@5 T@4)) (and (= items@5 items@4) (= status@9 status@6))) (=> (and (and (and (= take_in_cs@5 take_in_cs@4) (= put_in_cs@5 put_in_cs@4)) (and (= steal_in_cs@10 steal_in_cs@8) (= h_ss@6 h_ss@5))) (and (and (= t_ss@6 t_ss@5) (= task@3 inline$atomic_readItems$0$y@2)) (and (= taskstatus@3 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 141) 140)))) Civl_UnifiedReturn_correct))))
(let ((anon7_Else_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 129) (- 0 132)) (stealerTid tid@@0)) (=> (stealerTid tid@@0) (and (=> (= (ControlFlow 0 129) (- 0 131)) (queueInv steal_in_cs@8 put_in_cs@4 take_in_cs@4 items@4 status@6 H@6 (- T@4 1))) (=> (queueInv steal_in_cs@8 put_in_cs@4 take_in_cs@4 items@4 status@6 H@6 (- T@4 1)) (and (=> (= (ControlFlow 0 129) (- 0 130)) (ideasInv put_in_cs@4 items@4 status@6 H@6 T@4 take_in_cs@4 steal_in_cs@8 h_ss@5 t_ss@5)) (=> (ideasInv put_in_cs@4 items@4 status@6 H@6 T@4 take_in_cs@4 steal_in_cs@8 h_ss@5 t_ss@5) (=> (= (ControlFlow 0 129) (- 0 128)) (not (select steal_in_cs@8 tid@@0)))))))))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 121) (- 0 122)) (= status@7 Civl_global_old_status@1)) (=> (= status@7 Civl_global_old_status@1) (=> (= (ControlFlow 0 121) (- 0 120)) (=> false (and (= task@1 Civl_old_task@1) (= taskstatus@1 Civl_old_taskstatus@1))))))))
(let ((anon7_Else_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@6) (=> (and (= Civl_global_old_status@1 status@4) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 inline$atomic_readItems$0$y@2)) (and (= Civl_old_taskstatus@1 inline$atomic_readItems$0$b@2) (= (ControlFlow 0 134) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon6_Else$2_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@3) (=> (and (= Civl_global_old_status@1 status@3) (= task@1 inline$atomic_readItems$0$y@2)) (=> (and (and (= taskstatus@1 inline$atomic_readItems$0$b@2) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 127) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody_1$2_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@2) (=> (and (= Civl_global_old_status@1 status@2) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 125) 121))) Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody$2_@2_Civl_UnchangedChecker_correct  (=> (= status@7 status@1) (=> (and (= Civl_global_old_status@1 status@1) (= task@1 task@0)) (=> (and (and (= taskstatus@1 taskstatus@0) (= Civl_old_task@1 task@0)) (and (= Civl_old_taskstatus@1 taskstatus@0) (= (ControlFlow 0 123) 121))) Civl_UnchangedChecker_correct)))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |12|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))) (and (=> (= (ControlFlow 0 107) (- 0 117)) (or (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6))) (and (=> (= (ControlFlow 0 107) (- 0 116)) (or (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6))) (and (=> (= (ControlFlow 0 107) (- 0 115)) (or (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 107) (- 0 114)) (or (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (not take_in_cs@6))) (and (=> (= (ControlFlow 0 107) (- 0 113)) (or (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) put_in_cs@6)) (and (=> (= (ControlFlow 0 107) (- 0 112)) (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6)) (=> (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (and (=> (= (ControlFlow 0 107) (- 0 111)) (or (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))) (and (=> (= (ControlFlow 0 107) (- 0 110)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 107) (- 0 109)) (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0)) (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0) inline$Civl_NoninterferenceChecker_impl_put_3$0$task@0) (and (=> (= (ControlFlow 0 107) (- 0 108)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6)) (=> (= (ControlFlow 0 107) (- 0 106)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 Int) ) (!  (=> (> inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0 T@6) (and (= (select status@10 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) NOT_IN_Q) (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@0) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |7|
)))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |11|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) Civl_global_old_put_in_cs@1) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 Civl_global_old_T@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 Civl_global_old_T@1)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1 Civl_global_old_T@1) (and (= (select Civl_global_old_status@3 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) NOT_IN_Q) (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@1) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
)))) (and (=> (= (ControlFlow 0 96) (- 0 105)) (or (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)))) (and (=> (= (ControlFlow 0 96) (- 0 104)) (or (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid))) (and (=> (= (ControlFlow 0 96) (- 0 103)) (or (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (not take_in_cs@6))) (and (=> (= (ControlFlow 0 96) (- 0 102)) (or (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) put_in_cs@6)) (and (=> (= (ControlFlow 0 96) (- 0 101)) (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6)) (=> (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) put_in_cs@6) (and (=> (= (ControlFlow 0 96) (- 0 100)) (or (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))) (and (=> (= (ControlFlow 0 96) (- 0 99)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 96) (- 0 98)) (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_put_3$0$tid@0 ptTid) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$t@0 T@6)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_put_3$0$oldT@0 T@6)) (=> (= (ControlFlow 0 96) (- 0 95)) (forall ((inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 Int) ) (!  (=> (>= inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2 T@6) (and (= (select status@10 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) NOT_IN_Q) (= (select items@6 inline$Civl_NoninterferenceChecker_impl_put_3$0$i@@2) EMPTY)))
 :qid |unknown.0:0|
 :skolemid |6|
))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (= Civl_global_old_T@1 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (not Civl_global_old_put_in_cs@1)))) (and (=> (= (ControlFlow 0 88) (- 0 94)) (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 88) (- 0 93)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 88) (- 0 92)) (= T@6 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1))) (=> (= T@6 (+ inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 1)) (and (=> (= (ControlFlow 0 88) (- 0 91)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (and (=> (= (ControlFlow 0 88) (- 0 90)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6) (and (=> (= (ControlFlow 0 88) (- 0 89)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 88) (- 0 87)) (not put_in_cs@6))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (and (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select Civl_global_old_items@1 Civl_global_old_T@1))) (=> (> Civl_global_old_T@1 Civl_global_old_H@1) (not (= (select Civl_global_old_items@1 Civl_global_old_T@1) EMPTY))))) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (not Civl_global_old_put_in_cs@1)) Civl_global_old_take_in_cs@1)) (and (=> (= (ControlFlow 0 81) (- 0 86)) (>= H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (=> (>= H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0) (and (=> (= (ControlFlow 0 81) (- 0 85)) (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 81) (- 0 84)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 81) (- 0 83)) (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 T@6)))) (=> (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$task@0 (select items@6 T@6))) (and (=> (= (ControlFlow 0 81) (- 0 82)) (=> (> T@6 H@8) (not (= (select items@6 T@6) EMPTY)))) (=> (=> (> T@6 H@8) (not (= (select items@6 T@6) EMPTY))) (=> (= (ControlFlow 0 81) (- 0 80)) (and (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)) (not put_in_cs@6)) take_in_cs@6))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) Civl_global_old_take_in_cs@1) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (and (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0))))) (and (=> (= (ControlFlow 0 70) (- 0 79)) (and (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (not put_in_cs@6)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) take_in_cs@6) (not put_in_cs@6)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 70) (- 0 78)) (or (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))) (and (=> (= (ControlFlow 0 70) (- 0 77)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 70) (- 0 76)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (and (=> (= (ControlFlow 0 70) (- 0 75)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8) (and (=> (= (ControlFlow 0 70) (- 0 74)) (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 70) (- 0 73)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (and (=> (= (ControlFlow 0 70) (- 0 72)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6) (and (=> (= (ControlFlow 0 70) (- 0 71)) (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0 H@8) (=> (= (ControlFlow 0 70) (- 0 69)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 inline$Civl_NoninterferenceChecker_impl_take_3$0$h@0)))))))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (=> (and (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (= (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 64) (- 0 68)) (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 T@6) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (= (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (and (=> (= (ControlFlow 0 64) (- 0 67)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 64) (- 0 66)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (and (=> (= (ControlFlow 0 64) (- 0 65)) (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0))) (=> (=> (= (select items@6 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0) EMPTY) (> H@8 inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0)) (=> (= (ControlFlow 0 64) (- 0 63)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@3 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (and (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 Civl_global_old_T@1) (=> (= (select Civl_global_old_items@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> Civl_global_old_H@1 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 Civl_global_old_T@1)))) (and (=> (= (ControlFlow 0 58) (- 0 62)) (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (and (=> (= (ControlFlow 0 58) (- 0 61)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 58) (- 0 60)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6)) (=> (= inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 T@6) (and (=> (= (ControlFlow 0 58) (- 0 59)) (=> (= (select items@6 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)))) (=> (=> (= (select items@6 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1)) EMPTY) (> H@8 (- inline$Civl_NoninterferenceChecker_impl_take_3$0$t@0 1))) (=> (= (ControlFlow 0 58) (- 0 57)) (and (<= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$oldT@0 T@6)))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_take_3$0$Civl_partition_tid@@4 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_impl_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (= (ControlFlow 0 55) (- 0 54)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (and (=> (and (and Civl_global_old_take_in_cs@1 (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1) (= (select Civl_global_old_status@3 Civl_global_old_H@1) IN_Q))))) (and (=> (= (ControlFlow 0 47) (- 0 53)) (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 47) (- 0 52)) (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1))) (=> (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (and (=> (= (ControlFlow 0 47) (- 0 51)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 47) (- 0 50)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8)) (=> (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (and (=> (= (ControlFlow 0 47) (- 0 49)) (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY)))) (=> (=> (and (and (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (not (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$task@0 EMPTY))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (=> (and (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6))) (=> (=> (and (and take_in_cs@6 (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6)) (=> (= (ControlFlow 0 47) (- 0 46)) (=> (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8) (= (select status@10 H@8) IN_Q)))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct  (=> (and (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (and (and (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1))) (and (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select Civl_global_old_t_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) Civl_global_old_take_in_cs@1) (< (select Civl_global_old_h_ss@1 ptTid) (select Civl_global_old_t_ss@1 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 Civl_global_old_H@1)) (< Civl_global_old_H@1 Civl_global_old_T@1)) (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)))) (and (=> (= (ControlFlow 0 39) (- 0 45)) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 39) (- 0 44)) (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))) (=> (and (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (and (=> (= (ControlFlow 0 39) (- 0 43)) (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1))) (=> (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (and (=> (= (ControlFlow 0 39) (- 0 42)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (and (=> (= (ControlFlow 0 39) (- 0 41)) (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (=> (and (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0 (select t_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@6) (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6))) (=> (=> (and (and (and (< inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 inline$Civl_NoninterferenceChecker_impl_steal_3$0$t@0) take_in_cs@6) (< (select h_ss@7 ptTid) (select t_ss@7 ptTid))) (= inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0 H@8)) (< H@8 T@6)) (=> (= (ControlFlow 0 39) (- 0 38)) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@1 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (=> (and (>= Civl_global_old_H@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (and (and (= (select Civl_global_old_h_ss@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1))) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 Civl_global_old_H@1))) (and (=> (= (ControlFlow 0 31) (- 0 37)) (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (>= H@8 inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 36)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0))) (=> (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (and (=> (= (ControlFlow 0 31) (- 0 35)) (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0)) (=> (= (select h_ss@7 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) inline$Civl_NoninterferenceChecker_impl_steal_3$0$h@0) (and (=> (= (ControlFlow 0 31) (- 0 34)) (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1))) (=> (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (or (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (=> (= (ControlFlow 0 31) (- 0 30)) (<= inline$Civl_NoninterferenceChecker_impl_steal_3$0$oldH@0 H@8))))))))))))))))))
(let ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_steal_3$0$Civl_partition_tid@@2 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (=> (and (and (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1))) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)) (=> (stealerTid inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0) (and (=> (= (ControlFlow 0 26) (- 0 28)) (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1))) (=> (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (=> (= (ControlFlow 0 26) (- 0 25)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_impl_steal_3$0$tid@0)))))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (emptyInv Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_T@1))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (=> (= (ControlFlow 0 22) (- 0 21)) (emptyInv put_in_cs@6 take_in_cs@6 items@6 status@10 T@6))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_put_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (and (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1) (emptyInv Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_T@1))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_put_3$0$tid@0 ptTid)) (not (= inline$Civl_NoninterferenceChecker_proc_put_3$0$task@0 EMPTY))) (not take_in_cs@6)) (not put_in_cs@6)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7)) (=> (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7) (=> (= (ControlFlow 0 18) (- 0 17)) (emptyInv put_in_cs@6 take_in_cs@6 items@6 status@10 T@6))))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q)))) (=> (and (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (not (= inline$Civl_NoninterferenceChecker_proc_take_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 15) (- 0 14)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_take_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not Civl_global_old_take_in_cs@1)) (not Civl_global_old_put_in_cs@1)) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6))) (=> (and (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (= inline$Civl_NoninterferenceChecker_proc_take_3$0$tid@0 ptTid)) (not take_in_cs@6)) (not put_in_cs@6)) (=> (= (ControlFlow 0 12) (- 0 11)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |28|
)) (=> (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q)))) (=> (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (not (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$task@0 EMPTY)) (= inline$Civl_NoninterferenceChecker_proc_steal_3$0$taskstatus@0 IN_Q))) (=> (= (ControlFlow 0 8) (- 0 7)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))))))))
(let ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 (Array T@Tid Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array T@Tid Bool)) false) inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)) (= ((_ map =>) Civl_linear_tid_available@6 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_steal_3$0$Civl_partition_tid@@0 ((as const (Array T@Tid Int)) 1))) ((as const (Array T@Tid Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |27|
)) (=> (and (and (and (queueInv Civl_global_old_steal_in_cs@1 Civl_global_old_put_in_cs@1 Civl_global_old_take_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 (- Civl_global_old_T@1 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select Civl_global_old_steal_in_cs@1 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (ideasInv Civl_global_old_put_in_cs@1 Civl_global_old_items@1 Civl_global_old_status@3 Civl_global_old_H@1 Civl_global_old_T@1 Civl_global_old_take_in_cs@1 Civl_global_old_steal_in_cs@1 Civl_global_old_h_ss@1 Civl_global_old_t_ss@1)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)))) (=> (and (and (queueInv steal_in_cs@11 put_in_cs@6 take_in_cs@6 items@6 status@10 H@8 (- T@6 1)) (stealerTid inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0)) (not (select steal_in_cs@11 inline$Civl_NoninterferenceChecker_proc_steal_3$0$tid@0))) (=> (= (ControlFlow 0 5) (- 0 4)) (ideasInv put_in_cs@6 items@6 status@10 H@8 T@6 take_in_cs@6 steal_in_cs@11 h_ss@7 t_ss@7))))))))
(let ((anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@1) (=> (and (= T@6 T@1) (= items@6 items@1)) (=> (and (and (and (and (= status@10 status@1) (= take_in_cs@6 take_in_cs@1)) (and (= put_in_cs@6 put_in_cs@1) (= steal_in_cs@11 steal_in_cs@1))) (and (and (= h_ss@7 h_ss@1) (= t_ss@7 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@6 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 195) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 195) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 195) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 195) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 195) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 195) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 195) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 195) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 195) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 195) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 195) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 195) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 195) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 195) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 195) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 195) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 195) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 195) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 195) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon5_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 196) 193) anon5_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 196) 194) anon5_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 196) 195) anon5_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Then$1_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@3) (=> (and (= T@6 T@3) (= items@6 items@3)) (=> (and (and (and (and (= status@10 status@3) (= take_in_cs@6 take_in_cs@3)) (and (= put_in_cs@6 put_in_cs@3) (= steal_in_cs@11 steal_in_cs@9))) (and (and (= h_ss@7 h_ss@4) (= t_ss@7 t_ss@4)) (and (= Civl_global_old_H@1 H@3) (= Civl_global_old_T@1 T@3)))) (and (and (and (= Civl_global_old_items@1 items@3) (= Civl_global_old_status@3 status@3)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@3) (= Civl_global_old_put_in_cs@1 put_in_cs@3))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@4)) (and (= Civl_global_old_t_ss@1 t_ss@4) (= Civl_linear_tid_available@6 Civl_linear_tid_available@4))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 164) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 164) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 164) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 164) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 164) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 164) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 164) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 164) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 164) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_stealExitCS$0$anon0_correct  (=> (= steal_in_cs@9 (store steal_in_cs@4 tid@@0 false)) (and (and (=> (= (ControlFlow 0 165) 162) anon6_Then$1_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 165) 163) anon6_Then$1_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 165) 164) anon6_Then$1_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon6_Then_correct  (=> (>= H@1 T@2) (and (=> (= (ControlFlow 0 166) (- 0 168)) (select steal_in_cs@4 tid@@0)) (=> (select steal_in_cs@4 tid@@0) (and (=> (= (ControlFlow 0 166) (- 0 167)) (stealerTid tid@@0)) (=> (stealerTid tid@@0) (=> (= (ControlFlow 0 166) 165) inline$atomic_stealExitCS$0$anon0_correct))))))))
(let ((anon7_Then_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@6) (=> (and (= T@6 T@4) (= items@6 items@4)) (=> (and (and (and (and (= status@10 status@6) (= take_in_cs@6 take_in_cs@4)) (and (= put_in_cs@6 put_in_cs@4) (= steal_in_cs@11 steal_in_cs@8))) (and (and (= h_ss@7 h_ss@5) (= t_ss@7 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@6 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 136) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 136) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 136) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 136) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 136) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 136) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 136) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 136) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 136) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 136) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 136) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 136) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 136) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 136) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 136) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 136) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 136) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 136) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 136) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_Then_correct  (=> inline$atomic_CAS_H_steal$0$result@2 (and (and (=> (= (ControlFlow 0 147) 146) anon7_Then_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 147) 141) anon7_Then_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 147) 136) anon7_Then_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon7_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@6) (=> (and (= T@6 T@4) (= items@6 items@4)) (=> (and (and (and (and (= status@10 status@6) (= take_in_cs@6 take_in_cs@4)) (and (= put_in_cs@6 put_in_cs@4) (= steal_in_cs@11 steal_in_cs@8))) (and (and (= h_ss@7 h_ss@5) (= t_ss@7 t_ss@5)) (and (= Civl_global_old_H@1 H@4) (= Civl_global_old_T@1 T@4)))) (and (and (and (= Civl_global_old_items@1 items@4) (= Civl_global_old_status@3 status@4)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@4) (= Civl_global_old_put_in_cs@1 put_in_cs@4))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@5) (= Civl_global_old_h_ss@1 h_ss@5)) (and (= Civl_global_old_t_ss@1 t_ss@5) (= Civl_linear_tid_available@6 Civl_linear_tid_available@5))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 133) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 133) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 133) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 133) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 133) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 133) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 133) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 133) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 133) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 133) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 133) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 133) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 133) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 133) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 133) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 133) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 133) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 133) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 133) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((anon7_Else_correct  (=> (not inline$atomic_CAS_H_steal$0$result@2) (and (and (=> (= (ControlFlow 0 135) 129) anon7_Else_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 135) 133) anon7_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 135) 134) anon7_Else_@2_Civl_UnchangedChecker_correct)))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Else_correct  (=> (and (not (= H@4 H@1)) (= steal_in_cs@7 (store steal_in_cs@5 tid@@0 false))) (=> (and (and (= H@6 H@4) (= status@6 status@4)) (and (= steal_in_cs@8 steal_in_cs@7) (= inline$atomic_CAS_H_steal$0$result@2 false))) (and (=> (= (ControlFlow 0 149) 147) anon7_Then_correct) (=> (= (ControlFlow 0 149) 135) anon7_Else_correct))))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Then_correct  (=> (and (and (and (= H@4 H@1) (= status@5 (store status@4 H@4 NOT_IN_Q))) (and (= H@5 (+ H@4 1)) (= steal_in_cs@6 (store steal_in_cs@5 tid@@0 false)))) (and (and (= H@6 H@5) (= status@6 status@5)) (and (= steal_in_cs@8 steal_in_cs@6) (= inline$atomic_CAS_H_steal$0$result@2 true)))) (and (=> (= (ControlFlow 0 148) 147) anon7_Then_correct) (=> (= (ControlFlow 0 148) 135) anon7_Else_correct)))))
(let ((inline$atomic_CAS_H_steal$0$Entry_correct  (=> (= inline$atomic_CAS_H_steal$0$val@1 (+ H@1 1)) (and (=> (= (ControlFlow 0 150) 148) inline$atomic_CAS_H_steal$0$anon3_Then_correct) (=> (= (ControlFlow 0 150) 149) inline$atomic_CAS_H_steal$0$anon3_Else_correct)))))
(let ((anon3_0_correct  (and (=> (= (ControlFlow 0 151) (- 0 159)) (and (and (stealerTid tid@@0) (select steal_in_cs@4 tid@@0)) (= (select h_ss@4 tid@@0) H@1))) (=> (and (and (stealerTid tid@@0) (select steal_in_cs@4 tid@@0)) (= (select h_ss@4 tid@@0) H@1)) (and (=> (= (ControlFlow 0 151) (- 0 158)) (queueInv steal_in_cs@4 put_in_cs@3 take_in_cs@3 items@3 status@3 H@3 (- T@3 1))) (=> (queueInv steal_in_cs@4 put_in_cs@3 take_in_cs@3 items@3 status@3 H@3 (- T@3 1)) (and (=> (= (ControlFlow 0 151) (- 0 157)) (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 take_in_cs@3 steal_in_cs@4 h_ss@4 t_ss@4)) (=> (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 take_in_cs@3 steal_in_cs@4 h_ss@4 t_ss@4) (and (=> (= (ControlFlow 0 151) (- 0 156)) (<= H@3 H@3)) (=> (<= H@3 H@3) (and (=> (= (ControlFlow 0 151) (- 0 155)) (=> (and (and (= H@3 H@3) (= H@3 H@1)) (= (select h_ss@4 tid@@0) H@1)) (not (= inline$atomic_readItems$0$y@2 EMPTY)))) (=> (=> (and (and (= H@3 H@3) (= H@3 H@1)) (= (select h_ss@4 tid@@0) H@1)) (not (= inline$atomic_readItems$0$y@2 EMPTY))) (and (=> (= (ControlFlow 0 151) (- 0 154)) (=> (and (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= H@1 H@3)) (< H@3 T@3))) (=> (=> (and (and take_in_cs@3 (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= H@1 H@3)) (< H@3 T@3)) (and (=> (= (ControlFlow 0 151) (- 0 153)) (=> (= H@1 H@3) (= (select status@3 H@3) IN_Q))) (=> (=> (= H@1 H@3) (= (select status@3 H@3) IN_Q)) (=> (and (or false true) (= Civl_linear_tid_available@5 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (=> (and (and (and (and (stealerTid tid@@0) (select steal_in_cs@5 tid@@0)) (= (select h_ss@5 tid@@0) H@1)) (and (queueInv steal_in_cs@5 put_in_cs@4 take_in_cs@4 items@4 status@4 H@4 (- T@4 1)) (ideasInv put_in_cs@4 items@4 status@4 H@4 T@4 take_in_cs@4 steal_in_cs@5 h_ss@5 t_ss@5))) (and (and (<= H@3 H@4) (=> (and (and (= H@3 H@4) (= H@4 H@1)) (= (select h_ss@5 tid@@0) H@1)) (not (= inline$atomic_readItems$0$y@2 EMPTY)))) (and (=> (and (and take_in_cs@4 (< (select h_ss@5 ptTid) (select t_ss@5 ptTid))) (= H@1 H@4)) (< H@4 T@4)) (=> (= H@1 H@4) (= (select status@4 H@4) IN_Q))))) (and (=> (= (ControlFlow 0 151) (- 0 152)) (stealerTid tid@@0)) (=> (stealerTid tid@@0) (=> (= (ControlFlow 0 151) 150) inline$atomic_CAS_H_steal$0$Entry_correct)))))))))))))))))))))
(let ((anon6_Else$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@3) (=> (and (= T@6 T@3) (= items@6 items@3)) (=> (and (and (and (and (= status@10 status@3) (= take_in_cs@6 take_in_cs@3)) (and (= put_in_cs@6 put_in_cs@3) (= steal_in_cs@11 steal_in_cs@4))) (and (and (= h_ss@7 h_ss@4) (= t_ss@7 t_ss@4)) (and (= Civl_global_old_H@1 H@3) (= Civl_global_old_T@1 T@3)))) (and (and (and (= Civl_global_old_items@1 items@3) (= Civl_global_old_status@3 status@3)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@3) (= Civl_global_old_put_in_cs@1 put_in_cs@3))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@4) (= Civl_global_old_h_ss@1 h_ss@4)) (and (= Civl_global_old_t_ss@1 t_ss@4) (= Civl_linear_tid_available@6 Civl_linear_tid_available@4))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 126) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 126) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 126) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 126) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 126) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 126) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 126) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 126) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 126) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 126) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 126) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readItems$0$anon0_correct  (=> (and (= inline$atomic_readItems$0$y@2 (select items@3 H@1)) (= inline$atomic_readItems$0$b@2 (select status@3 H@1))) (and (and (=> (= (ControlFlow 0 160) 151) anon3_0_correct) (=> (= (ControlFlow 0 160) 126) anon6_Else$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 160) 127) anon6_Else$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon6_Else_correct  (=> (and (> T@2 H@1) (= (ControlFlow 0 161) 160)) inline$atomic_readItems$0$anon0_correct)))
(let ((anon5_LoopBody_0_correct  (and (=> (= (ControlFlow 0 169) (- 0 176)) (select steal_in_cs@3 tid@@0)) (=> (select steal_in_cs@3 tid@@0) (and (=> (= (ControlFlow 0 169) (- 0 175)) (and (and (and (stealerTid tid@@0) (>= H@2 H@1)) (select steal_in_cs@3 tid@@0)) (= (select h_ss@3 tid@@0) H@1))) (=> (and (and (and (stealerTid tid@@0) (>= H@2 H@1)) (select steal_in_cs@3 tid@@0)) (= (select h_ss@3 tid@@0) H@1)) (and (=> (= (ControlFlow 0 169) (- 0 174)) (queueInv steal_in_cs@3 put_in_cs@2 take_in_cs@2 items@2 status@2 H@2 (- T@2 1))) (=> (queueInv steal_in_cs@3 put_in_cs@2 take_in_cs@2 items@2 status@2 H@2 (- T@2 1)) (and (=> (= (ControlFlow 0 169) (- 0 173)) (ideasInv put_in_cs@2 items@2 status@2 H@2 T@2 take_in_cs@2 steal_in_cs@3 h_ss@3 t_ss@3)) (=> (ideasInv put_in_cs@2 items@2 status@2 H@2 T@2 take_in_cs@2 steal_in_cs@3 h_ss@3 t_ss@3) (and (=> (= (ControlFlow 0 169) (- 0 172)) (and (<= H@2 H@2) (= T@2 (select t_ss@3 tid@@0)))) (=> (and (<= H@2 H@2) (= T@2 (select t_ss@3 tid@@0))) (and (=> (= (ControlFlow 0 169) (- 0 171)) (=> (and (and (and (< H@1 T@2) take_in_cs@2) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= H@1 H@2)) (< H@2 T@2))) (=> (=> (and (and (and (< H@1 T@2) take_in_cs@2) (< (select h_ss@3 ptTid) (select t_ss@3 ptTid))) (= H@1 H@2)) (< H@2 T@2)) (and (=> (= (ControlFlow 0 169) (- 0 170)) (>= H@2 H@1)) (=> (>= H@2 H@1) (=> (or false true) (=> (and (= Civl_linear_tid_available@4 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))) (select steal_in_cs@4 tid@@0)) (=> (and (and (and (and (and (stealerTid tid@@0) (>= H@3 H@1)) (select steal_in_cs@4 tid@@0)) (= (select h_ss@4 tid@@0) H@1)) (and (queueInv steal_in_cs@4 put_in_cs@3 take_in_cs@3 items@3 status@3 H@3 (- T@3 1)) (ideasInv put_in_cs@3 items@3 status@3 H@3 T@3 take_in_cs@3 steal_in_cs@4 h_ss@4 t_ss@4))) (and (and (<= H@2 H@3) (= T@2 (select t_ss@4 tid@@0))) (and (=> (and (and (and (< H@1 T@2) take_in_cs@3) (< (select h_ss@4 ptTid) (select t_ss@4 ptTid))) (= H@1 H@3)) (< H@3 T@3)) (>= H@3 H@1)))) (and (=> (= (ControlFlow 0 169) 166) anon6_Then_correct) (=> (= (ControlFlow 0 169) 161) anon6_Else_correct)))))))))))))))))))))
(let ((anon5_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@2) (=> (and (= T@6 T@2) (= items@6 items@2)) (=> (and (and (and (and (= status@10 status@2) (= take_in_cs@6 take_in_cs@2)) (and (= put_in_cs@6 put_in_cs@2) (= steal_in_cs@11 steal_in_cs@3))) (and (and (= h_ss@7 h_ss@3) (= t_ss@7 t_ss@3)) (and (= Civl_global_old_H@1 H@2) (= Civl_global_old_T@1 T@2)))) (and (and (and (= Civl_global_old_items@1 items@2) (= Civl_global_old_status@3 status@2)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@2) (= Civl_global_old_put_in_cs@1 put_in_cs@2))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@2) (= Civl_global_old_h_ss@1 h_ss@3)) (and (= Civl_global_old_t_ss@1 t_ss@2) (= Civl_linear_tid_available@6 Civl_linear_tid_available@3))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 124) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 124) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 124) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 124) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 124) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 124) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 124) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 124) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 124) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 124) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 124) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readT_steal$0$anon0_correct  (=> (and (= t_ss@3 (store t_ss@2 tid@@0 T@2)) (= steal_in_cs@3 (store steal_in_cs@2 tid@@0 true))) (and (and (=> (= (ControlFlow 0 177) 169) anon5_LoopBody_0_correct) (=> (= (ControlFlow 0 177) 124) anon5_LoopBody_1$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 177) 125) anon5_LoopBody_1$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody_1_correct  (and (=> (= (ControlFlow 0 178) (- 0 188)) (>= H@1 H@1)) (=> (>= H@1 H@1) (and (=> (= (ControlFlow 0 178) (- 0 187)) (not (select steal_in_cs@1 tid@@0))) (=> (not (select steal_in_cs@1 tid@@0)) (and (=> (= (ControlFlow 0 178) (- 0 186)) (= (select h_ss@2 tid@@0) H@1)) (=> (= (select h_ss@2 tid@@0) H@1) (and (=> (= (ControlFlow 0 178) (- 0 185)) (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1))) (=> (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1)) (and (=> (= (ControlFlow 0 178) (- 0 184)) (or (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@2 t_ss@1) (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@2 t_ss@1))) (and (=> (= (ControlFlow 0 178) (- 0 183)) (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@2 t_ss@1)) (=> (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@2 t_ss@1) (and (=> (= (ControlFlow 0 178) (- 0 182)) (<= H@1 H@1)) (=> (<= H@1 H@1) (=> (and (and (and (or false true) (= Civl_linear_tid_available@3 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false)))) (and (>= H@2 H@1) (not (select steal_in_cs@2 tid@@0)))) (and (and (= (select h_ss@3 tid@@0) H@1) (queueInv steal_in_cs@2 put_in_cs@2 take_in_cs@2 items@2 status@2 H@2 (- T@2 1))) (and (ideasInv put_in_cs@2 items@2 status@2 H@2 T@2 take_in_cs@2 steal_in_cs@2 h_ss@3 t_ss@2) (<= H@1 H@2)))) (and (=> (= (ControlFlow 0 178) (- 0 181)) (not (select steal_in_cs@2 tid@@0))) (=> (not (select steal_in_cs@2 tid@@0)) (and (=> (= (ControlFlow 0 178) (- 0 180)) (stealerTid tid@@0)) (=> (stealerTid tid@@0) (and (=> (= (ControlFlow 0 178) (- 0 179)) (not (= tid@@0 NIL))) (=> (not (= tid@@0 NIL)) (=> (= (ControlFlow 0 178) 177) inline$atomic_readT_steal$0$anon0_correct)))))))))))))))))))))))
(let ((anon5_LoopBody$2_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@1) (=> (and (= T@6 T@1) (= items@6 items@1)) (=> (and (and (and (and (= status@10 status@1) (= take_in_cs@6 take_in_cs@1)) (and (= put_in_cs@6 put_in_cs@1) (= steal_in_cs@11 steal_in_cs@1))) (and (and (= h_ss@7 h_ss@2) (= t_ss@7 t_ss@1)) (and (= Civl_global_old_H@1 H@1) (= Civl_global_old_T@1 T@1)))) (and (and (and (= Civl_global_old_items@1 items@1) (= Civl_global_old_status@3 status@1)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@1) (= Civl_global_old_put_in_cs@1 put_in_cs@1))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@1) (= Civl_global_old_h_ss@1 h_ss@1)) (and (= Civl_global_old_t_ss@1 t_ss@1) (= Civl_linear_tid_available@6 Civl_linear_tid_available@2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 119) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 119) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 119) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 119) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 119) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 119) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 119) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 119) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 119) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 119) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 119) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((inline$atomic_readH_steal$0$anon0_correct  (=> (= h_ss@2 (store h_ss@1 tid@@0 H@1)) (and (and (=> (= (ControlFlow 0 189) 178) anon5_LoopBody_1_correct) (=> (= (ControlFlow 0 189) 119) anon5_LoopBody$2_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 189) 123) anon5_LoopBody$2_@2_Civl_UnchangedChecker_correct)))))
(let ((anon5_LoopBody_correct  (and (=> (= (ControlFlow 0 190) (- 0 192)) (not (select steal_in_cs@1 tid@@0))) (=> (not (select steal_in_cs@1 tid@@0)) (and (=> (= (ControlFlow 0 190) (- 0 191)) (stealerTid tid@@0)) (=> (stealerTid tid@@0) (=> (= (ControlFlow 0 190) 189) inline$atomic_readH_steal$0$anon0_correct)))))))
(let ((anon5_LoopHead_correct  (=> (and (stealerTid tid@@0) (queueInv steal_in_cs@1 put_in_cs@1 take_in_cs@1 items@1 status@1 H@1 (- T@1 1))) (=> (and (and (ideasInv put_in_cs@1 items@1 status@1 H@1 T@1 take_in_cs@1 steal_in_cs@1 h_ss@1 t_ss@1) (not (select steal_in_cs@1 tid@@0))) (and (or false true) (= Civl_linear_tid_available@2 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))))) (and (=> (= (ControlFlow 0 197) 196) anon5_LoopDone_correct) (=> (= (ControlFlow 0 197) 190) anon5_LoopBody_correct))))))
(let ((anon0_@2_anon5_LoopHead_correct  (and (=> (= (ControlFlow 0 198) (- 0 202)) (stealerTid tid@@0)) (=> (stealerTid tid@@0) (and (=> (= (ControlFlow 0 198) (- 0 201)) (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1))) (=> (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (and (=> (= (ControlFlow 0 198) (- 0 200)) (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0)) (=> (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0) (and (=> (= (ControlFlow 0 198) (- 0 199)) (not (select steal_in_cs@0 tid@@0))) (=> (not (select steal_in_cs@0 tid@@0)) (=> (= (ControlFlow 0 198) 197) anon5_LoopHead_correct)))))))))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= H@8 H@0) (=> (and (= T@6 T@0) (= items@6 items@0)) (=> (and (and (and (and (= status@10 status@0) (= take_in_cs@6 take_in_cs@0)) (and (= put_in_cs@6 put_in_cs@0) (= steal_in_cs@11 steal_in_cs@0))) (and (and (= h_ss@7 h_ss@0) (= t_ss@7 t_ss@0)) (and (= Civl_global_old_H@1 H@0) (= Civl_global_old_T@1 T@0)))) (and (and (and (= Civl_global_old_items@1 items@0) (= Civl_global_old_status@3 status@0)) (and (= Civl_global_old_take_in_cs@1 take_in_cs@0) (= Civl_global_old_put_in_cs@1 put_in_cs@0))) (and (and (= Civl_global_old_steal_in_cs@1 steal_in_cs@0) (= Civl_global_old_h_ss@1 h_ss@0)) (and (= Civl_global_old_t_ss@1 t_ss@0) (= Civl_linear_tid_available@6 Civl_linear_tid_available@0))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 118) 5) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L0_correct) (=> (= (ControlFlow 0 118) 8) inline$Civl_NoninterferenceChecker_proc_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 10) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 118) 12) inline$Civl_NoninterferenceChecker_proc_take_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 15) inline$Civl_NoninterferenceChecker_proc_take_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 18) inline$Civl_NoninterferenceChecker_proc_put_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 22) inline$Civl_NoninterferenceChecker_proc_put_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 26) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 31) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 39) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L2_correct)) (=> (= (ControlFlow 0 118) 47) inline$Civl_NoninterferenceChecker_impl_steal_3$0$L3_correct)) (=> (= (ControlFlow 0 118) 55) inline$Civl_NoninterferenceChecker_impl_take_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 58) inline$Civl_NoninterferenceChecker_impl_take_3$0$L1_correct)) (=> (= (ControlFlow 0 118) 64) inline$Civl_NoninterferenceChecker_impl_take_3$0$L2_correct)) (=> (= (ControlFlow 0 118) 70) inline$Civl_NoninterferenceChecker_impl_take_3$0$L3_correct)) (=> (= (ControlFlow 0 118) 81) inline$Civl_NoninterferenceChecker_impl_take_3$0$L4_correct)) (=> (= (ControlFlow 0 118) 88) inline$Civl_NoninterferenceChecker_impl_take_3$0$L5_correct)) (=> (= (ControlFlow 0 118) 96) inline$Civl_NoninterferenceChecker_impl_put_3$0$L0_correct)) (=> (= (ControlFlow 0 118) 107) inline$Civl_NoninterferenceChecker_impl_put_3$0$L1_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@2| Int) ) (!  (and (= (select status@0 |Civl_i#0@@2|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@2| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@0 status@0))))) (=> (or false (or (= status@0 status@0) (or (exists ((|Civl_i#0@@3| Int) ) (!  (and (= (select status@0 |Civl_i#0@@3|) IN_Q) (= status@0 (store status@0 |Civl_i#0@@3| NOT_IN_Q)))
 :qid |unknown.0:0|
 :skolemid |31|
)) (= status@0 status@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (= status@0 status@0) (and (= task task) (= taskstatus taskstatus)))))))))
(let ((anon0_correct  (=> (and (and (and (queueInv steal_in_cs@0 put_in_cs@0 take_in_cs@0 items@0 status@0 H@0 (- T@0 1)) (stealerTid tid@@0)) (not (select steal_in_cs@0 tid@@0))) (and (ideasInv put_in_cs@0 items@0 status@0 H@0 T@0 take_in_cs@0 steal_in_cs@0 h_ss@0 t_ss@0) (= Civl_linear_tid_available@0 ((_ map or) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Bool)) false))))) (and (and (=> (= (ControlFlow 0 203) 198) anon0_@2_anon5_LoopHead_correct) (=> (= (ControlFlow 0 203) 118) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 203) 2) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (queueInv steal_in_cs@@1 put_in_cs@@2 take_in_cs@@2 items@@4 status@@4 H@@2 (- T@@3 1)) (stealerTid tid@@0)) (not (select steal_in_cs@@1 tid@@0))) (and (ideasInv put_in_cs@@2 items@@4 status@@4 H@@2 T@@3 take_in_cs@@2 steal_in_cs@@1 h_ss@@0 t_ss@@0) (= (ControlFlow 0 204) 203))) anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun Trigger_atomic_put_i (Int) Bool)
(declare-fun inline$atomic_put$0$i@0 () Int)
(declare-fun status@@4 () (Array Int Bool))
(declare-fun status@0 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_put$0$anon0_correct  (=> (and (and (Trigger_atomic_put_i inline$atomic_put$0$i@0) (= (select status@@4 inline$atomic_put$0$i@0) NOT_IN_Q)) (and (= status@0 (store status@@4 inline$atomic_put$0$i@0 IN_Q)) (= (ControlFlow 0 3) 2))) inline$atomic_put$0$Return_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun status@@4 () (Array Int Bool))
(declare-fun inline$atomic_take$0$i@0 () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun Trigger_atomic_take_i (Int) Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_take$0$anon2_Then_correct  (=> (= (select status@@4 inline$atomic_take$0$i@0) IN_Q) (=> (and (= status@0 (store status@@4 inline$atomic_take$0$i@0 NOT_IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_take$0$Return_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun status@@4 () (Array Int Bool))
(declare-fun inline$atomic_steal$0$i@0 () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun Trigger_atomic_steal_i (Int) Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_steal$0$anon2_Then_correct  (=> (= (select status@@4 inline$atomic_steal$0$i@0) IN_Q) (=> (and (= status@0 (store status@@4 inline$atomic_steal$0$i@0 NOT_IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_steal$0$Return_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun h_ss@@0 () (Array T@Tid Int))
(declare-fun H@@2 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readH_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readH_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readH_take$0$anon0_correct  (=> (and (= h_ss@0 (store h_ss@@0 tid@@0 H@@2)) (= (ControlFlow 0 3) 2)) inline$atomic_readH_take$0$Return_correct)))
(let ((inline$atomic_readH_take$0$Entry_correct  (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_readH_take$0$anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun h_ss@0 () (Array T@Tid Int))
(declare-fun h_ss@@0 () (Array T@Tid Int))
(declare-fun H@@2 () Int)
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readH_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readH_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readH_steal$0$anon0_correct  (=> (and (= h_ss@0 (store h_ss@@0 tid@@0 H@@2)) (= (ControlFlow 0 3) 2)) inline$atomic_readH_steal$0$Return_correct)))
(let ((inline$atomic_readH_steal$0$Entry_correct  (=> (not (select steal_in_cs@@1 tid@@0)) (=> (and (stealerTid tid@@0) (= (ControlFlow 0 4) 3)) inline$atomic_readH_steal$0$anon0_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readT_take_init)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_readT_take_init$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readT_take_init$0$Entry_correct  (=> (= tid@@0 ptTid) (=> (and (not (= tid@@0 NIL)) (= (ControlFlow 0 3) 2)) inline$atomic_readT_take_init$0$Return_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readT_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_readT_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readT_put$0$Entry_correct  (=> (= tid@@0 ptTid) (=> (and (not (= tid@@0 NIL)) (= (ControlFlow 0 3) 2)) inline$atomic_readT_put$0$Return_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@@0 () (Array T@Tid Int))
(declare-fun T@@3 () Int)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readT_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readT_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readT_steal$0$anon0_correct  (=> (= t_ss@0 (store t_ss@@0 tid@@0 T@@3)) (=> (and (= steal_in_cs@0 (store steal_in_cs@@1 tid@@0 true)) (= (ControlFlow 0 3) 2)) inline$atomic_readT_steal$0$Return_correct))))
(let ((inline$atomic_readT_steal$0$Entry_correct  (=> (and (and (not (select steal_in_cs@@1 tid@@0)) (stealerTid tid@@0)) (and (not (= tid@@0 NIL)) (= (ControlFlow 0 4) 3))) inline$atomic_readT_steal$0$anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun inline$atomic_readItems$0$y@1 () Int)
(declare-fun items@@4 () (Array Int Int))
(declare-fun ind () Int)
(declare-fun inline$atomic_readItems$0$b@1 () Bool)
(declare-fun status@@4 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_readItems)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_readItems$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_readItems$0$anon0_correct  (=> (= inline$atomic_readItems$0$y@1 (select items@@4 ind)) (=> (and (= inline$atomic_readItems$0$b@1 (select status@@4 ind)) (= (ControlFlow 0 3) 2)) inline$atomic_readItems$0$Return_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun T@0 () Int)
(declare-fun T@@3 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeT_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_put$0$anon0_correct  (=> (and (= T@0 (+ T@@3 1)) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_put$0$Return_correct)))
(let ((inline$atomic_writeT_put$0$Entry_correct  (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeT_put$0$anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun t_ss@0 () (Array T@Tid Int))
(declare-fun t_ss@@0 () (Array T@Tid Int))
(declare-fun val () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeT_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_take$0$anon0_correct  (=> (and (= t_ss@0 (store t_ss@@0 tid@@0 val)) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_take$0$Return_correct)))
(let ((inline$atomic_writeT_take$0$Entry_correct  (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeT_take$0$anon0_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun take_in_cs@@2 () Bool)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_take_abort)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_writeT_take_abort$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_take_abort$0$Entry_correct  (=> take_in_cs@@2 (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_take_abort$0$Return_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeT_take_eq)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_writeT_take_eq$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeT_take_eq$0$Entry_correct  (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 3) 2)) inline$atomic_writeT_take_eq$0$Return_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_takeExitCS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((inline$atomic_takeExitCS$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_takeExitCS$0$Entry_correct  (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 3) 2)) inline$atomic_takeExitCS$0$Return_correct)))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_stealExitCS)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_stealExitCS$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_stealExitCS$0$anon0_correct  (=> (and (= steal_in_cs@0 (store steal_in_cs@@1 tid@@0 false)) (= (ControlFlow 0 3) 2)) inline$atomic_stealExitCS$0$Return_correct)))
(let ((inline$atomic_stealExitCS$0$Entry_correct  (=> (select steal_in_cs@@1 tid@@0) (=> (and (stealerTid tid@@0) (= (ControlFlow 0 4) 3)) inline$atomic_stealExitCS$0$anon0_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun items@0 () (Array Int Int))
(declare-fun items@@4 () (Array Int Int))
(declare-fun idx () Int)
(declare-fun val () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status@@4 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeItems)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeItems$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeItems$0$anon0_correct  (=> (= items@0 (store items@@4 idx val)) (=> (and (= status@0 (store status@@4 idx IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_writeItems$0$Return_correct))))
(let ((inline$atomic_writeItems$0$Entry_correct  (=> (not (= val EMPTY)) (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeItems$0$anon0_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun items@0 () (Array Int Int))
(declare-fun items@@4 () (Array Int Int))
(declare-fun idx () Int)
(declare-fun val () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status@@4 () (Array Int Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_writeItems_put)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$atomic_writeItems_put$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_writeItems_put$0$anon0_correct  (=> (= items@0 (store items@@4 idx val)) (=> (and (= status@0 (store status@@4 idx IN_Q)) (= (ControlFlow 0 3) 2)) inline$atomic_writeItems_put$0$Return_correct))))
(let ((inline$atomic_writeItems_put$0$Entry_correct  (=> (not (= val EMPTY)) (=> (and (= tid@@0 ptTid) (= (ControlFlow 0 4) 3)) inline$atomic_writeItems_put$0$anon0_correct))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun H@@2 () Int)
(declare-fun prevVal () Int)
(declare-fun status@0 () (Array Int Bool))
(declare-fun status@@4 () (Array Int Bool))
(declare-fun H@0 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_CAS_H_take)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_CAS_H_take$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_CAS_H_take$0$anon3_Else_correct  (=> (and (not (= H@@2 prevVal)) (= (ControlFlow 0 4) 2)) inline$atomic_CAS_H_take$0$Return_correct)))
(let ((inline$atomic_CAS_H_take$0$anon3_Then_correct  (=> (and (and (= H@@2 prevVal) (= status@0 (store status@@4 H@@2 NOT_IN_Q))) (and (= H@0 (+ H@@2 1)) (= (ControlFlow 0 3) 2))) inline$atomic_CAS_H_take$0$Return_correct)))
(let ((inline$atomic_CAS_H_take$0$Entry_correct  (=> (= tid@@0 ptTid) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_CAS_H_take$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_CAS_H_take$0$anon3_Else_correct)))))
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
(declare-fun IN_Q () Bool)
(declare-fun EMPTY () Int)
(declare-fun NOT_IN_Q () Bool)
(declare-sort T@Tid 0)
(declare-fun NIL () T@Tid)
(declare-fun ptTid () T@Tid)
(define-fun takeInv ((items (Array Int Int)) (status (Array Int Bool)) (H Int) (T Int) (t Int) (h Int) ) Bool (forall ((i Int) ) (!  (=> (and (<= h i) (<= i t)) (and (and (= (select status i) IN_Q) (not (= (select items i) EMPTY))) (= t T)))
 :qid |wsqdefinebpl.68:12|
 :skolemid |5|
)))
(define-fun putInv ((items@@0 (Array Int Int)) (status@@0 (Array Int Bool)) (H@@0 Int) (T@@0 Int) ) Bool (forall ((i@@0 Int) ) (!  (=> (and (<= H@@0 i@@0) (< i@@0 T@@0)) (and (= (select status@@0 i@@0) IN_Q) (not (= (select items@@0 i@@0) EMPTY))))
 :qid |wsqdefinebpl.63:12|
 :skolemid |4|
)))
(define-fun emptyInv ((put_in_cs Bool) (take_in_cs Bool) (items@@1 (Array Int Int)) (status@@1 (Array Int Bool)) (T@@1 Int) ) Bool (forall ((i@@1 Int) ) (!  (=> (and (and (>= i@@1 T@@1) (not put_in_cs)) (not take_in_cs)) (and (= (select status@@1 i@@1) NOT_IN_Q) (= (select items@@1 i@@1) EMPTY)))
 :qid |wsqdefinebpl.58:12|
 :skolemid |3|
)))
(define-fun queueInv ((steal_in_cs (Array T@Tid Bool)) (put_in_cs@@0 Bool) (take_in_cs@@0 Bool) (items@@2 (Array Int Int)) (status@@2 (Array Int Bool)) (_H Int) (_T Int) ) Bool (forall ((i@@2 Int) ) (!  (=> (and (<= _H i@@2) (<= i@@2 _T)) (and (= (select status@@2 i@@2) IN_Q) (not (= (select items@@2 i@@2) EMPTY))))
 :qid |wsqdefinebpl.53:14|
 :skolemid |2|
)))
(define-fun stealerTid ((tid T@Tid) ) Bool  (and (not (= tid NIL)) (not (= tid ptTid))))
(define-fun ideasInv ((put_in_cs@@1 Bool) (items@@3 (Array Int Int)) (status@@3 (Array Int Bool)) (H@@1 Int) (T@@2 Int) (take_in_cs@@1 Bool) (steal_in_cs@@0 (Array T@Tid Bool)) (h_ss (Array T@Tid Int)) (t_ss (Array T@Tid Int)) ) Bool  (and (and (and (and (and (=> (and take_in_cs@@1 (< (select h_ss ptTid) (select t_ss ptTid))) (and (and (and (= (select t_ss ptTid) T@@2) (<= H@@1 T@@2)) (not (= (select items@@3 T@@2) EMPTY))) (= (select status@@3 T@@2) IN_Q))) (=> put_in_cs@@1 (not take_in_cs@@1))) (=> take_in_cs@@1 (not put_in_cs@@1))) (=> (and take_in_cs@@1 (not (= H@@1 (select h_ss ptTid)))) (> H@@1 (select h_ss ptTid)))) (forall ((td T@Tid) ) (!  (=> (and (and (and (stealerTid td) (select steal_in_cs@@0 td)) (= H@@1 (select h_ss td))) (< H@@1 (select t_ss td))) (and (not (= (select items@@3 H@@1) EMPTY)) (= (select status@@3 H@@1) IN_Q)))
 :qid |wsqdefinebpl.43:14|
 :skolemid |0|
))) (forall ((td@@0 T@Tid) ) (!  (=> (and (and (stealerTid td@@0) (select steal_in_cs@@0 td@@0)) (not (= H@@1 (select h_ss td@@0)))) (> H@@1 (select h_ss td@@0)))
 :qid |wsqdefinebpl.44:14|
 :skolemid |1|
))))
(declare-fun Identity () (Array Int Int))
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
(declare-fun tid@@0 () T@Tid)
(declare-fun H@@2 () Int)
(declare-fun prevVal () Int)
(declare-fun steal_in_cs@1 () (Array T@Tid Bool))
(declare-fun steal_in_cs@@1 () (Array T@Tid Bool))
(declare-fun status@0 () (Array Int Bool))
(declare-fun status@@4 () (Array Int Bool))
(declare-fun H@0 () Int)
(declare-fun steal_in_cs@0 () (Array T@Tid Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_atomic_CAS_H_steal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$atomic_CAS_H_steal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array T@Tid Bool)) false) tid@@0 true) ((as const (Array T@Tid Int)) 1) ((as const (Array T@Tid Int)) 0))) ((as const (Array T@Tid Bool)) true)))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Else_correct  (=> (not (= H@@2 prevVal)) (=> (and (= steal_in_cs@1 (store steal_in_cs@@1 tid@@0 false)) (= (ControlFlow 0 4) 2)) inline$atomic_CAS_H_steal$0$Return_correct))))
(let ((inline$atomic_CAS_H_steal$0$anon3_Then_correct  (=> (= H@@2 prevVal) (=> (and (and (= status@0 (store status@@4 H@@2 NOT_IN_Q)) (= H@0 (+ H@@2 1))) (and (= steal_in_cs@0 (store steal_in_cs@@1 tid@@0 false)) (= (ControlFlow 0 3) 2))) inline$atomic_CAS_H_steal$0$Return_correct))))
(let ((inline$atomic_CAS_H_steal$0$Entry_correct  (=> (stealerTid tid@@0) (and (=> (= (ControlFlow 0 5) 3) inline$atomic_CAS_H_steal$0$anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) inline$atomic_CAS_H_steal$0$anon3_Else_correct)))))
inline$atomic_CAS_H_steal$0$Entry_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
