(set-logic ALIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun history@@4 () T@history)
(set-info :boogie-vc-id CheckInitInv)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (Inv network@@1 nodes@@1 history@@4))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (= network@@1 (|lambda#0| false)) (= nodes@@1 (|lambda#1| 0 0 1 0))) (and (= history@@4 (history 1 (|lambda#2| 0))) (= (ControlFlow 0 3) 2))) anon0_correct)))
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


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun nodes@0 () (Array Int T@node))
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun second_me () Int)
(declare-fun second_n () T@node)
(declare-fun inline$AtomicGetNode$0$n@1 () T@node)
(declare-fun first_me () Int)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicGetNode_AtomicSetNode)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSetNode$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= nodes@0 (store nodes@@1 second_me second_n)) (= inline$AtomicGetNode$0$n@1 (select nodes@0 first_me)))))))
(let ((inline$AtomicSetNode$0$anon0_correct  (=> (and (= nodes@0 (store nodes@@1 second_me second_n)) (= (ControlFlow 0 3) 2)) inline$AtomicSetNode$0$Return_correct)))
(let ((inline$AtomicGetNode$0$anon0_correct  (=> (and (= inline$AtomicGetNode$0$n@1 (select nodes@@1 first_me)) (= (ControlFlow 0 4) 3)) inline$AtomicSetNode$0$anon0_correct)))
(let ((inline$AtomicGetNode$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |13|
)) (= (ControlFlow 0 5) 4)) inline$AtomicGetNode$0$anon0_correct)))
inline$AtomicGetNode$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$AtomicGetNode$0$n@1 () T@node)
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun second_me () Int)
(declare-fun nodes@0 () (Array Int T@node))
(declare-fun first_me () Int)
(declare-fun first_n () T@node)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSetNode_AtomicGetNode)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicGetNode$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= inline$AtomicGetNode$0$n@1 (select nodes@@1 second_me)) (= nodes@0 (store nodes@@1 first_me first_n)))))))
(let ((inline$AtomicGetNode$0$anon0_correct  (=> (and (= inline$AtomicGetNode$0$n@1 (select nodes@0 second_me)) (= (ControlFlow 0 3) 2)) inline$AtomicGetNode$0$Return_correct)))
(let ((inline$AtomicSetNode$0$anon0_correct  (=> (and (= nodes@0 (store nodes@@1 first_me first_n)) (= (ControlFlow 0 4) 3)) inline$AtomicGetNode$0$anon0_correct)))
(let ((inline$AtomicSetNode$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |14|
)) (= (ControlFlow 0 5) 4)) inline$AtomicSetNode$0$anon0_correct)))
inline$AtomicSetNode$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun nodes@1 () (Array Int T@node))
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun second_me () Int)
(declare-fun second_n () T@node)
(declare-fun first_me () Int)
(declare-fun first_n () T@node)
(declare-fun nodes@0 () (Array Int T@node))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSetNode_AtomicSetNode)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSetNode$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= nodes@1 (store (store nodes@@1 second_me second_n) first_me first_n))))))
(let ((inline$AtomicSetNode$1$anon0_correct  (=> (and (= nodes@1 (store nodes@0 second_me second_n)) (= (ControlFlow 0 3) 2)) inline$AtomicSetNode$1$Return_correct)))
(let ((inline$AtomicSetNode$0$anon0_correct  (=> (and (= nodes@0 (store nodes@@1 first_me first_n)) (= (ControlFlow 0 4) 3)) inline$AtomicSetNode$1$anon0_correct)))
(let ((inline$AtomicSetNode$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |15|
)) (= (ControlFlow 0 5) 4)) inline$AtomicSetNode$0$anon0_correct)))
inline$AtomicSetNode$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun inline$AtomicRecv$0$m@0 () T@msg)
(declare-fun first_me () Int)
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun second_me () Int)
(declare-fun second_dst () Int)
(declare-fun second_payload () T@lockMsg)
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicRecv_AtomicSendInternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSendInternal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (select network@0 inline$AtomicRecv$0$m@0) (= (|dst#msg| inline$AtomicRecv$0$m@0) first_me)) (= network@0 (store network@@1 (msg second_me second_dst second_payload) true)))))))
(let ((inline$AtomicSendInternal$0$anon0_correct  (=> (and (= network@0 (store network@@1 (msg second_me second_dst second_payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendInternal$0$Return_correct)))
(let ((inline$AtomicRecv$0$anon0_correct  (=> (and (and (select network@@1 inline$AtomicRecv$0$m@0) (= (|dst#msg| inline$AtomicRecv$0$m@0) first_me)) (= (ControlFlow 0 4) 3)) inline$AtomicSendInternal$0$anon0_correct)))
(let ((inline$AtomicRecv$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |16|
)) (= (ControlFlow 0 5) 4)) inline$AtomicRecv$0$anon0_correct)))
inline$AtomicRecv$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun inline$AtomicRecv$0$m@0 () T@msg)
(declare-fun first_me () Int)
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun second_me () Int)
(declare-fun second_dst () Int)
(declare-fun second_payload () T@lockMsg)
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun external () (Array T@msg Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicRecv_AtomicSendExternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSendExternal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (and (and (select network@0 inline$AtomicRecv$0$m@0) (= (|dst#msg| inline$AtomicRecv$0$m@0) first_me)) (= network@0 (store network@@1 (msg second_me second_dst second_payload) true))) (= external@0 (store external (msg second_me second_dst second_payload) true)))))))
(let ((inline$AtomicSendExternal$0$anon0_correct  (=> (= network@0 (store network@@1 (msg second_me second_dst second_payload) true)) (=> (and (= external@0 (store external (msg second_me second_dst second_payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendExternal$0$Return_correct))))
(let ((inline$AtomicRecv$0$anon0_correct  (=> (and (and (select network@@1 inline$AtomicRecv$0$m@0) (= (|dst#msg| inline$AtomicRecv$0$m@0) first_me)) (= (ControlFlow 0 4) 3)) inline$AtomicSendExternal$0$anon0_correct)))
(let ((inline$AtomicRecv$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |17|
)) (= (ControlFlow 0 5) 4)) inline$AtomicRecv$0$anon0_correct)))
inline$AtomicRecv$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@1 () (Array T@msg Bool))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun second_me () Int)
(declare-fun second_dst () Int)
(declare-fun second_payload () T@lockMsg)
(declare-fun first_me () Int)
(declare-fun first_dst () Int)
(declare-fun first_payload () T@lockMsg)
(declare-fun network@0 () (Array T@msg Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSendInternal_AtomicSendInternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSendInternal$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (= network@1 (store (store network@@1 (msg second_me second_dst second_payload) true) (msg first_me first_dst first_payload) true))))))
(let ((inline$AtomicSendInternal$1$anon0_correct  (=> (and (= network@1 (store network@0 (msg second_me second_dst second_payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendInternal$1$Return_correct)))
(let ((inline$AtomicSendInternal$0$anon0_correct  (=> (and (= network@0 (store network@@1 (msg first_me first_dst first_payload) true)) (= (ControlFlow 0 4) 3)) inline$AtomicSendInternal$1$anon0_correct)))
(let ((inline$AtomicSendInternal$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |18|
)) (= (ControlFlow 0 5) 4)) inline$AtomicSendInternal$0$anon0_correct)))
inline$AtomicSendInternal$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun external () (Array T@msg Bool))
(declare-fun second_me () Int)
(declare-fun second_dst () Int)
(declare-fun second_payload () T@lockMsg)
(declare-fun network@1 () (Array T@msg Bool))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun first_me () Int)
(declare-fun first_dst () Int)
(declare-fun first_payload () T@lockMsg)
(declare-fun network@0 () (Array T@msg Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSendInternal_AtomicSendExternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSendExternal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= external@0 (store external (msg second_me second_dst second_payload) true)) (= network@1 (store (store network@@1 (msg second_me second_dst second_payload) true) (msg first_me first_dst first_payload) true)))))))
(let ((inline$AtomicSendExternal$0$anon0_correct  (=> (= network@1 (store network@0 (msg second_me second_dst second_payload) true)) (=> (and (= external@0 (store external (msg second_me second_dst second_payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendExternal$0$Return_correct))))
(let ((inline$AtomicSendInternal$0$anon0_correct  (=> (and (= network@0 (store network@@1 (msg first_me first_dst first_payload) true)) (= (ControlFlow 0 4) 3)) inline$AtomicSendExternal$0$anon0_correct)))
(let ((inline$AtomicSendInternal$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |19|
)) (= (ControlFlow 0 5) 4)) inline$AtomicSendInternal$0$anon0_correct)))
inline$AtomicSendInternal$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@1 () (Array T@msg Bool))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun second_me () Int)
(declare-fun second_dst () Int)
(declare-fun second_payload () T@lockMsg)
(declare-fun first_me () Int)
(declare-fun first_dst () Int)
(declare-fun first_payload () T@lockMsg)
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun external () (Array T@msg Bool))
(declare-fun network@0 () (Array T@msg Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSendExternal_AtomicSendInternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSendInternal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= network@1 (store (store network@@1 (msg second_me second_dst second_payload) true) (msg first_me first_dst first_payload) true)) (= external@0 (store external (msg first_me first_dst first_payload) true)))))))
(let ((inline$AtomicSendInternal$0$anon0_correct  (=> (and (= network@1 (store network@0 (msg second_me second_dst second_payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendInternal$0$Return_correct)))
(let ((inline$AtomicSendExternal$0$anon0_correct  (=> (= network@0 (store network@@1 (msg first_me first_dst first_payload) true)) (=> (and (= external@0 (store external (msg first_me first_dst first_payload) true)) (= (ControlFlow 0 4) 3)) inline$AtomicSendInternal$0$anon0_correct))))
(let ((inline$AtomicSendExternal$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |20|
)) (= (ControlFlow 0 5) 4)) inline$AtomicSendExternal$0$anon0_correct)))
inline$AtomicSendExternal$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@1 () (Array T@msg Bool))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun second_me () Int)
(declare-fun second_dst () Int)
(declare-fun second_payload () T@lockMsg)
(declare-fun first_me () Int)
(declare-fun first_dst () Int)
(declare-fun first_payload () T@lockMsg)
(declare-fun external@1 () (Array T@msg Bool))
(declare-fun external () (Array T@msg Bool))
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun external@0 () (Array T@msg Bool))
(set-info :boogie-vc-id Civl_CommutativityChecker_AtomicSendExternal_AtomicSendExternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((inline$AtomicSendExternal$1$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> true (and (= network@1 (store (store network@@1 (msg second_me second_dst second_payload) true) (msg first_me first_dst first_payload) true)) (= external@1 (store (store external (msg second_me second_dst second_payload) true) (msg first_me first_dst first_payload) true)))))))
(let ((inline$AtomicSendExternal$1$anon0_correct  (=> (= network@1 (store network@0 (msg second_me second_dst second_payload) true)) (=> (and (= external@1 (store external@0 (msg second_me second_dst second_payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendExternal$1$Return_correct))))
(let ((inline$AtomicSendExternal$0$anon0_correct  (=> (= network@0 (store network@@1 (msg first_me first_dst first_payload) true)) (=> (and (= external@0 (store external (msg first_me first_dst first_payload) true)) (= (ControlFlow 0 4) 3)) inline$AtomicSendExternal$1$anon0_correct))))
(let ((inline$AtomicSendExternal$0$Entry_correct  (=> (and (exists ((Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) first_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) (store ((as const (Array Int Bool)) false) second_me true) ((_ map (= (Int Int) Bool)) Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |21|
)) (= (ControlFlow 0 5) 4)) inline$AtomicSendExternal$0$anon0_correct)))
inline$AtomicSendExternal$0$Entry_correct)))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun network@1 () (Array T@msg Bool))
(declare-fun nodes@1 () (Array Int T@node))
(declare-fun history@1 () T@history)
(declare-fun inline$Civl_NoninterferenceChecker_impl_Accept_2$0$me@0 () Int)
(declare-fun Civl_linear_me_available@0 () (Array Int Bool))
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun nodes@0 () (Array Int T@node))
(declare-fun history@0 () T@history)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Accept_2$0$me@0 () Int)
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun dst@0 () Int)
(declare-fun dst () Int)
(declare-fun epoch@0 () Int)
(declare-fun epoch@@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun me () Int)
(declare-fun inline$AtomicSendInternal$0$payload@0 () T@lockMsg)
(declare-fun inline$AtomicSetNode$0$n@0 () T@node)
(declare-fun nextNode (Int) Int)
(declare-fun inline$AtomicGetNode$0$n@1 () T@node)
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun history@@4 () T@history)
(set-info :boogie-vc-id Civl_Grant_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (Inv network@1 nodes@1 history@1))))
(let ((inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_Accept_2$0$Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (Inv network@0 nodes@0 history@0) (= (ControlFlow 0 16) (- 0 15))) (Inv network@1 nodes@1 history@1)))))
(let ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (Inv network@0 nodes@0 history@0) (= (ControlFlow 0 14) (- 0 13))) (Inv network@1 nodes@1 history@1)))))
(let ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (|held#node| (select nodes@0 inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0)) (Inv network@0 nodes@0 history@0)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (|held#node| (select nodes@1 inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0))) (=> (|held#node| (select nodes@1 inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0)) (=> (= (ControlFlow 0 11) (- 0 10)) (Inv network@1 nodes@1 history@1))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (Inv network@0 nodes@0 history@0) (= (ControlFlow 0 8) (- 0 7))) (Inv network@1 nodes@1 history@1)))))
(let ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@0 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (Inv network@0 nodes@0 history@0) (= (ControlFlow 0 6) (- 0 5))) (Inv network@1 nodes@1 history@1)))))
(let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or false (or (and (= external@0 external@0) (= history@1 history@0)) (and (= history@1 (addHistory history@0 dst@0)) (= external@0 external@0))))) (=> (or false (or (and (= external@0 external@0) (= history@1 history@0)) (and (= history@1 (addHistory history@0 dst@0)) (= external@0 external@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (and (and (= external@0 external@0) (= history@1 history@0)) (and (= dst@0 dst) (= epoch@0 epoch@@0))))) (=> (=> false (and (and (= external@0 external@0) (= history@1 history@0)) (and (= dst@0 dst) (= epoch@0 epoch@@0)))) (=> (and (and (= Civl_pc@0  (=> (and (= external@0 external@0) (= history@1 history@0)) false)) (= Civl_ok@0  (or (and (= history@1 (addHistory history@0 dst@0)) (= external@0 external@0)) (and (and (= dst@0 dst) (= epoch@0 epoch@@0)) false)))) (= (ControlFlow 0 2) (- 0 1))) Civl_ok@0)))))))
(let ((inline$AtomicSendInternal$0$anon0_correct  (=> (= network@1 (store network@0 (msg me dst@0 inline$AtomicSendInternal$0$payload@0) true)) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 19) 2) Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 19) 6) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct)) (=> (= (ControlFlow 0 19) 8) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct)) (=> (= (ControlFlow 0 19) 9) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 11) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct)) (=> (= (ControlFlow 0 19) 14) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct)) (=> (= (ControlFlow 0 19) 16) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct)) (=> (= (ControlFlow 0 19) 18) GeneratedUnifiedExit_correct)))))
(let ((inline$AtomicSendInternal$0$Entry_correct  (=> (and (= inline$AtomicSendInternal$0$payload@0 (transfer (+ epoch@0 1))) (= (ControlFlow 0 20) 19)) inline$AtomicSendInternal$0$anon0_correct)))
(let ((inline$AtomicSetNode$0$anon0_correct  (=> (and (= nodes@1 (store nodes@0 me inline$AtomicSetNode$0$n@0)) (= (ControlFlow 0 21) 20)) inline$AtomicSendInternal$0$Entry_correct)))
(let ((inline$AtomicSetNode$0$Entry_correct  (=> (and (= inline$AtomicSetNode$0$n@0 (node false epoch@0)) (= (ControlFlow 0 22) 21)) inline$AtomicSetNode$0$anon0_correct)))
(let ((inline$AtomicAddHistory$0$anon0_correct  (=> (and (= history@1 (addHistory history@0 dst@0)) (= (ControlFlow 0 23) 22)) inline$AtomicSetNode$0$Entry_correct)))
(let ((anon0$1_correct  (=> (= dst@0 (nextNode me)) (=> (and (= epoch@0 (|epoch#node| inline$AtomicGetNode$0$n@1)) (= (ControlFlow 0 24) 23)) inline$AtomicAddHistory$0$anon0_correct))))
(let ((inline$AtomicGetNode$0$anon0_correct  (=> (and (= inline$AtomicGetNode$0$n@1 (select nodes@0 me)) (= (ControlFlow 0 25) 24)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (|held#node| (select nodes@0 me)) (Inv network@0 nodes@0 history@0)) (and (= Civl_linear_me_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Bool)) false))) (= (ControlFlow 0 26) 25))) inline$AtomicGetNode$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (|held#node| (select nodes@@1 me)) (=> (and (Inv network@@1 nodes@@1 history@@4) (= (ControlFlow 0 27) 26)) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun external@3 () (Array T@msg Bool))
(declare-fun external@1 () (Array T@msg Bool))
(declare-fun history@1 () T@history)
(declare-fun epoch@2 () Int)
(declare-fun me () Int)
(declare-fun dst () Int)
(declare-fun epoch@0 () Int)
(declare-fun Civl_pc@0 () Bool)
(declare-fun Civl_ok@0 () Bool)
(declare-fun external@2 () (Array T@msg Bool))
(declare-fun epoch@1 () Int)
(declare-fun network@5 () (Array T@msg Bool))
(declare-fun nodes@5 () (Array Int T@node))
(declare-fun history@3 () T@history)
(declare-fun nodes@3 () (Array Int T@node))
(declare-fun network@3 () (Array T@msg Bool))
(declare-fun network@1 () (Array T@msg Bool))
(declare-fun nodes@1 () (Array Int T@node))
(declare-fun network@2 () (Array T@msg Bool))
(declare-fun nodes@2 () (Array Int T@node))
(declare-fun inline$Civl_NoninterferenceChecker_impl_Accept_2$0$me@0 () Int)
(declare-fun Civl_linear_me_available@3 () (Array Int Bool))
(declare-fun Civl_global_old_network@1 () (Array T@msg Bool))
(declare-fun Civl_global_old_nodes@1 () (Array Int T@node))
(declare-fun Civl_global_old_history@1 () T@history)
(declare-fun network@4 () (Array T@msg Bool))
(declare-fun nodes@4 () (Array Int T@node))
(declare-fun history@2 () T@history)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0 () Int)
(declare-fun inline$Civl_NoninterferenceChecker_proc_Accept_2$0$me@0 () Int)
(declare-fun Civl_linear_me_available@2 () (Array Int Bool))
(declare-fun inline$AtomicSendExternal$0$payload@0 () T@lockMsg)
(declare-fun inline$AtomicSetNode$0$n@0 () T@node)
(declare-fun inline$AtomicRecv$0$m@1 () T@msg)
(declare-fun inline$AtomicGetNode$0$n@2 () T@node)
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun nodes@0 () (Array Int T@node))
(declare-fun history@0 () T@history)
(declare-fun Civl_linear_me_available@0 () (Array Int Bool))
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun epoch@@0 () Int)
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun history@@4 () T@history)
(set-info :boogie-vc-id Civl_Accept_2)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 50) (let ((Civl_ReturnChecker_correct  (and (=> (= (ControlFlow 0 30) (- 0 32)) (or false (or (and (= external@3 external@1) (= history@1 history@1)) (and (and (and (EpochInHistory (- epoch@2 1) history@1) (= me (select (|locks#history| history@1) (- epoch@2 1)))) (= external@3 (store external@1 (msg me dst (locked epoch@2)) true))) (= history@1 history@1))))) (=> (or false (or (and (= external@3 external@1) (= history@1 history@1)) (and (and (and (EpochInHistory (- epoch@2 1) history@1) (= me (select (|locks#history| history@1) (- epoch@2 1)))) (= external@3 (store external@1 (msg me dst (locked epoch@2)) true))) (= history@1 history@1)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (=> false (and (and (= external@3 external@1) (= history@1 history@1)) (= epoch@2 epoch@0)))) (=> (=> false (and (and (= external@3 external@1) (= history@1 history@1)) (= epoch@2 epoch@0))) (=> (and (and (= Civl_pc@0  (=> (and (= external@3 external@1) (= history@1 history@1)) false)) (= Civl_ok@0  (or (and (and (and (EpochInHistory (- epoch@2 1) history@1) (= me (select (|locks#history| history@1) (- epoch@2 1)))) (= external@3 (store external@1 (msg me dst (locked epoch@2)) true))) (= history@1 history@1)) (and (= epoch@2 epoch@0) false)))) (= (ControlFlow 0 30) (- 0 29))) Civl_ok@0)))))))
(let ((anon3_LoopDone_@2_Civl_ReturnChecker_correct  (=> (= external@3 external@1) (=> (and (= epoch@2 epoch@0) (= (ControlFlow 0 42) 30)) Civl_ReturnChecker_correct))))
(let ((anon4_Then$2_@2_Civl_ReturnChecker_correct  (=> (= external@3 external@2) (=> (and (= epoch@2 epoch@1) (= (ControlFlow 0 33) 30)) Civl_ReturnChecker_correct))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 26) (- 0 25)) (Inv network@5 nodes@5 history@3))))
(let ((Civl_UnifiedReturn_correct  (=> (and (and (= history@3 history@1) (= nodes@5 nodes@3)) (and (= network@5 network@3) (= (ControlFlow 0 27) 26))) GeneratedUnifiedExit_correct)))
(let ((anon3_LoopDone_@2_Civl_UnifiedReturn_correct  (=> (= network@3 network@1) (=> (and (= nodes@3 nodes@1) (= (ControlFlow 0 43) 27)) Civl_UnifiedReturn_correct))))
(let ((anon4_Then$2_@2_Civl_UnifiedReturn_correct  (=> (= network@3 network@2) (=> (and (= nodes@3 nodes@2) (= (ControlFlow 0 28) 27)) Civl_UnifiedReturn_correct))))
(let ((Civl_UnchangedChecker_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (= external@1 external@1) (= history@1 history@1))) (=> (and (= external@1 external@1) (= history@1 history@1)) (=> (= (ControlFlow 0 21) (- 0 20)) (=> false (= epoch@1 epoch@0)))))))
(let ((anon4_Else_@2_anon3_LoopHead_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (Inv network@1 nodes@1 history@1))))
(let ((inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_impl_Accept_2$0$Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |22|
)) (=> (and (Inv Civl_global_old_network@1 Civl_global_old_nodes@1 Civl_global_old_history@1) (= (ControlFlow 0 15) (- 0 14))) (Inv network@4 nodes@4 history@2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |24|
)) (=> (and (Inv Civl_global_old_network@1 Civl_global_old_nodes@1 Civl_global_old_history@1) (= (ControlFlow 0 13) (- 0 12))) (Inv network@4 nodes@4 history@2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |23|
)) (=> (and (|held#node| (select Civl_global_old_nodes@1 inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0)) (Inv Civl_global_old_network@1 Civl_global_old_nodes@1 Civl_global_old_history@1)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (|held#node| (select nodes@4 inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0))) (=> (|held#node| (select nodes@4 inline$Civl_NoninterferenceChecker_proc_Grant_2$0$me@0)) (=> (= (ControlFlow 0 10) (- 0 9)) (Inv network@4 nodes@4 history@2))))))))
(let ((Civl_NoninterferenceChecker$1_correct true))
(let ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |26|
)) (=> (and (Inv Civl_global_old_network@1 Civl_global_old_nodes@1 Civl_global_old_history@1) (= (ControlFlow 0 7) (- 0 6))) (Inv network@4 nodes@4 history@2)))))
(let ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct  (=> (exists ((inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me@@0 (Array Int Int)) ) (!  (and (= ((_ map =>) (store ((as const (Array Int Bool)) false) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$me@0 true) ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)) (= ((_ map =>) Civl_linear_me_available@3 ((_ map (= (Int Int) Bool)) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$Civl_partition_me@@0 ((as const (Array Int Int)) 1))) ((as const (Array Int Bool)) true)))
 :qid |unknown.0:0|
 :skolemid |25|
)) (=> (and (Inv Civl_global_old_network@1 Civl_global_old_nodes@1 Civl_global_old_history@1) (= (ControlFlow 0 5) (- 0 4))) (Inv network@4 nodes@4 history@2)))))
(let ((anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct  (=> (= network@4 network@1) (=> (and (= nodes@4 nodes@1) (= history@2 history@1)) (=> (and (and (= Civl_global_old_network@1 network@1) (= Civl_global_old_nodes@1 nodes@1)) (and (= Civl_global_old_history@1 history@1) (= Civl_linear_me_available@3 Civl_linear_me_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 44) 5) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct) (=> (= (ControlFlow 0 44) 7) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct)) (=> (= (ControlFlow 0 44) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 44) 10) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct)) (=> (= (ControlFlow 0 44) 13) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct)) (=> (= (ControlFlow 0 44) 15) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct)))))))
(let ((anon3_LoopDone_correct  (=> (not true) (and (and (=> (= (ControlFlow 0 45) 42) anon3_LoopDone_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 45) 43) anon3_LoopDone_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 45) 44) anon3_LoopDone_@2_Civl_NoninterferenceChecker_correct)))))
(let ((anon4_Then$2_@2_Civl_NoninterferenceChecker_correct  (=> (= network@4 network@2) (=> (and (= nodes@4 nodes@2) (= history@2 history@1)) (=> (and (and (= Civl_global_old_network@1 network@1) (= Civl_global_old_nodes@1 nodes@1)) (and (= Civl_global_old_history@1 history@1) (= Civl_linear_me_available@3 Civl_linear_me_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 24) 5) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct) (=> (= (ControlFlow 0 24) 7) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct)) (=> (= (ControlFlow 0 24) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 24) 10) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct)) (=> (= (ControlFlow 0 24) 13) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct)) (=> (= (ControlFlow 0 24) 15) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct)))))))
(let ((inline$AtomicSendExternal$0$anon0_correct  (=> (and (= network@2 (store network@1 (msg me dst inline$AtomicSendExternal$0$payload@0) true)) (= external@2 (store external@1 (msg me dst inline$AtomicSendExternal$0$payload@0) true))) (and (and (=> (= (ControlFlow 0 34) 33) anon4_Then$2_@2_Civl_ReturnChecker_correct) (=> (= (ControlFlow 0 34) 28) anon4_Then$2_@2_Civl_UnifiedReturn_correct)) (=> (= (ControlFlow 0 34) 24) anon4_Then$2_@2_Civl_NoninterferenceChecker_correct)))))
(let ((inline$AtomicSendExternal$0$Entry_correct  (=> (and (= inline$AtomicSendExternal$0$payload@0 (locked epoch@1)) (= (ControlFlow 0 35) 34)) inline$AtomicSendExternal$0$anon0_correct)))
(let ((inline$AtomicSetNode$0$anon0_correct  (=> (and (= nodes@2 (store nodes@1 me inline$AtomicSetNode$0$n@0)) (= (ControlFlow 0 36) 35)) inline$AtomicSendExternal$0$Entry_correct)))
(let ((inline$AtomicSetNode$0$Entry_correct  (=> (and (= inline$AtomicSetNode$0$n@0 (node true epoch@1)) (= (ControlFlow 0 37) 36)) inline$AtomicSetNode$0$anon0_correct)))
(let ((anon4_Then_correct  (=> (and (and (is-transfer (|payload#msg| inline$AtomicRecv$0$m@1)) (> epoch@1 (|epoch#node| inline$AtomicGetNode$0$n@2))) (= (ControlFlow 0 38) 37)) inline$AtomicSetNode$0$Entry_correct)))
(let ((anon4_Else_@2_Civl_NoninterferenceChecker_correct  (=> (= network@4 network@1) (=> (and (= nodes@4 nodes@1) (= history@2 history@1)) (=> (and (and (= Civl_global_old_network@1 network@1) (= Civl_global_old_nodes@1 nodes@1)) (and (= Civl_global_old_history@1 history@1) (= Civl_linear_me_available@3 Civl_linear_me_available@2))) (and (and (and (and (and (=> (= (ControlFlow 0 19) 5) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct) (=> (= (ControlFlow 0 19) 7) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct)) (=> (= (ControlFlow 0 19) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 19) 10) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct)) (=> (= (ControlFlow 0 19) 13) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct)) (=> (= (ControlFlow 0 19) 15) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct)))))))
(let ((anon4_Else_correct  (=> (not (and (is-transfer (|payload#msg| inline$AtomicRecv$0$m@1)) (> epoch@1 (|epoch#node| inline$AtomicGetNode$0$n@2)))) (and (and (=> (= (ControlFlow 0 23) 18) anon4_Else_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 23) 19) anon4_Else_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 23) 21) Civl_UnchangedChecker_correct)))))
(let ((anon3_LoopBody$2_correct  (=> (= epoch@1 (|epoch#transfer| (|payload#msg| inline$AtomicRecv$0$m@1))) (and (=> (= (ControlFlow 0 39) 38) anon4_Then_correct) (=> (= (ControlFlow 0 39) 23) anon4_Else_correct)))))
(let ((inline$AtomicGetNode$0$anon0_correct  (=> (and (= inline$AtomicGetNode$0$n@2 (select nodes@1 me)) (= (ControlFlow 0 40) 39)) anon3_LoopBody$2_correct)))
(let ((inline$AtomicRecv$0$anon0_correct  (=> (and (and (select network@1 inline$AtomicRecv$0$m@1) (= (|dst#msg| inline$AtomicRecv$0$m@1) me)) (= (ControlFlow 0 41) 40)) inline$AtomicGetNode$0$anon0_correct)))
(let ((anon3_LoopHead_correct  (=> (Inv network@1 nodes@1 history@1) (=> (and (or false true) (= Civl_linear_me_available@2 ((_ map or) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Bool)) false)))) (and (=> (= (ControlFlow 0 46) 45) anon3_LoopDone_correct) (=> (= (ControlFlow 0 46) 41) inline$AtomicRecv$0$anon0_correct))))))
(let ((anon0_@2_anon3_LoopHead_correct  (and (=> (= (ControlFlow 0 47) (- 0 48)) (Inv network@0 nodes@0 history@0)) (=> (Inv network@0 nodes@0 history@0) (=> (= (ControlFlow 0 47) 46) anon3_LoopHead_correct)))))
(let ((anon0_@2_Civl_NoninterferenceChecker_correct  (=> (= network@4 network@0) (=> (and (= nodes@4 nodes@0) (= history@2 history@0)) (=> (and (and (= Civl_global_old_network@1 network@0) (= Civl_global_old_nodes@1 nodes@0)) (and (= Civl_global_old_history@1 history@0) (= Civl_linear_me_available@3 Civl_linear_me_available@0))) (and (and (and (and (and (=> (= (ControlFlow 0 16) 5) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L0_correct) (=> (= (ControlFlow 0 16) 7) inline$Civl_NoninterferenceChecker_proc_Accept_2$0$L1_correct)) (=> (= (ControlFlow 0 16) 8) Civl_NoninterferenceChecker$1_correct)) (=> (= (ControlFlow 0 16) 10) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L0_correct)) (=> (= (ControlFlow 0 16) 13) inline$Civl_NoninterferenceChecker_proc_Grant_2$0$L1_correct)) (=> (= (ControlFlow 0 16) 15) inline$Civl_NoninterferenceChecker_impl_Accept_2$0$L0_correct)))))))
(let ((Civl_RefinementChecker_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or false (or (and (= external@0 external@0) (= history@0 history@0)) (and (and (and (EpochInHistory (- epoch@@0 1) history@0) (= me (select (|locks#history| history@0) (- epoch@@0 1)))) (= external@0 (store external@0 (msg me dst (locked epoch@@0)) true))) (= history@0 history@0))))) (=> (or false (or (and (= external@0 external@0) (= history@0 history@0)) (and (and (and (EpochInHistory (- epoch@@0 1) history@0) (= me (select (|locks#history| history@0) (- epoch@@0 1)))) (= external@0 (store external@0 (msg me dst (locked epoch@@0)) true))) (= history@0 history@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (and (and (= external@0 external@0) (= history@0 history@0)) (= epoch@@0 epoch@@0))))))))
(let ((anon0_correct  (=> (and (Inv network@0 nodes@0 history@0) (= Civl_linear_me_available@0 ((_ map or) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Bool)) false)))) (and (and (=> (= (ControlFlow 0 49) 47) anon0_@2_anon3_LoopHead_correct) (=> (= (ControlFlow 0 49) 16) anon0_@2_Civl_NoninterferenceChecker_correct)) (=> (= (ControlFlow 0 49) 2) Civl_RefinementChecker_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (Inv network@@1 nodes@@1 history@@4) (= (ControlFlow 0 50) 49)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun inline$AtomicGetNode$0$n@1 () T@node)
(declare-fun nodes@@1 () (Array Int T@node))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicGetNode)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicGetNode$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicGetNode$0$anon0_correct  (=> (and (= inline$AtomicGetNode$0$n@1 (select nodes@@1 me)) (= (ControlFlow 0 3) 2)) inline$AtomicGetNode$0$Return_correct)))
(let ((inline$AtomicGetNode$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicGetNode$0$anon0_correct)))
inline$AtomicGetNode$0$Entry_correct))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun nodes@0 () (Array Int T@node))
(declare-fun nodes@@1 () (Array Int T@node))
(declare-fun n@@0 () T@node)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSetNode)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicSetNode$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicSetNode$0$anon0_correct  (=> (and (= nodes@0 (store nodes@@1 me n@@0)) (= (ControlFlow 0 3) 2)) inline$AtomicSetNode$0$Return_correct)))
(let ((inline$AtomicSetNode$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicSetNode$0$anon0_correct)))
inline$AtomicSetNode$0$Entry_correct))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun inline$AtomicRecv$0$m@0 () T@msg)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicRecv)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicRecv$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicRecv$0$anon0_correct  (=> (and (and (select network@@1 inline$AtomicRecv$0$m@0) (= (|dst#msg| inline$AtomicRecv$0$m@0) me)) (= (ControlFlow 0 3) 2)) inline$AtomicRecv$0$Return_correct)))
(let ((inline$AtomicRecv$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicRecv$0$anon0_correct)))
inline$AtomicRecv$0$Entry_correct))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun dst () Int)
(declare-fun payload () T@lockMsg)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSendInternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicSendInternal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicSendInternal$0$anon0_correct  (=> (and (= network@0 (store network@@1 (msg me dst payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendInternal$0$Return_correct)))
(let ((inline$AtomicSendInternal$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicSendInternal$0$anon0_correct)))
inline$AtomicSendInternal$0$Entry_correct))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun network@0 () (Array T@msg Bool))
(declare-fun network@@1 () (Array T@msg Bool))
(declare-fun dst () Int)
(declare-fun payload () T@lockMsg)
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun external () (Array T@msg Bool))
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicSendExternal)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicSendExternal$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicSendExternal$0$anon0_correct  (=> (= network@0 (store network@@1 (msg me dst payload) true)) (=> (and (= external@0 (store external (msg me dst payload) true)) (= (ControlFlow 0 3) 2)) inline$AtomicSendExternal$0$Return_correct))))
(let ((inline$AtomicSendExternal$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicSendExternal$0$anon0_correct)))
inline$AtomicSendExternal$0$Entry_correct))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun history@0 () T@history)
(declare-fun history@@4 () T@history)
(declare-fun inline$AtomicGrant$0$dst@0 () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicGrant)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicGrant$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicGrant$0$anon0_correct  (=> (and (= history@0 (addHistory history@@4 inline$AtomicGrant$0$dst@0)) (= (ControlFlow 0 3) 2)) inline$AtomicGrant$0$Return_correct)))
(let ((inline$AtomicGrant$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicGrant$0$anon0_correct)))
inline$AtomicGrant$0$Entry_correct))))
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
(declare-datatypes ((T@history 0)) (((history (|len#history| Int) (|locks#history| (Array Int Int)) ) ) ))
(declare-datatypes ((T@node 0)) (((node (|held#node| Bool) (|epoch#node| Int) ) ) ))
(declare-datatypes ((T@lockMsg 0)) (((transfer (|epoch#transfer| Int) ) (locked (|epoch#locked| Int) ) ) ))
(declare-datatypes ((T@msg 0)) (((msg (|src#msg| Int) (|dst#msg| Int) (|payload#msg| T@lockMsg) ) ) ))
(declare-fun addHistory (T@history Int) T@history)
(declare-fun Inv ((Array T@msg Bool) (Array Int T@node) T@history) Bool)
(declare-fun InvNode (T@history T@node) Bool)
(declare-fun InvMsg ((Array T@msg Bool) (Array Int T@node) T@history T@msg) Bool)
(declare-fun Identity () (Array Int Int))
(declare-fun |lambda#0| (Bool) (Array T@msg Bool))
(declare-fun |lambda#2| (Int) (Array Int Int))
(declare-fun EpochInHistory (Int T@history) Bool)
(declare-fun |lambda#1| (Int Int Int Int) (Array Int T@node))
(assert (forall ((h T@history) (l Int) ) (! (= (addHistory h l) (history (+ (|len#history| h) 1) (store (|locks#history| h) (|len#history| h) l)))
 :qid |leasebpl.33:21|
 :skolemid |0|
 :pattern ( (addHistory h l))
)))
(assert (forall ((network (Array T@msg Bool)) (nodes (Array Int T@node)) (history@@0 T@history) ) (! (= (Inv network nodes history@@0)  (and (and (and (and (and (<= 0 (|len#history| history@@0)) (forall ((i Int) ) (! (InvNode history@@0 (select nodes i))
 :qid |leasebpl.117:12|
 :skolemid |4|
))) (forall ((i1 Int) (i2 Int) ) (!  (=> (and (|held#node| (select nodes i1)) (|held#node| (select nodes i2))) (= i1 i2))
 :qid |leasebpl.118:12|
 :skolemid |5|
))) (forall ((i1@@0 Int) (m2 T@msg) ) (!  (=> (and (|held#node| (select nodes i1@@0)) (and (and (select network m2) (is-transfer (|payload#msg| m2))) (> (|epoch#transfer| (|payload#msg| m2)) (|epoch#node| (select nodes (|dst#msg| m2)))))) false)
 :qid |leasebpl.119:12|
 :skolemid |6|
))) (forall ((m1 T@msg) (m2@@0 T@msg) ) (!  (=> (and (and (and (select network m1) (is-transfer (|payload#msg| m1))) (> (|epoch#transfer| (|payload#msg| m1)) (|epoch#node| (select nodes (|dst#msg| m1))))) (and (and (select network m2@@0) (is-transfer (|payload#msg| m2@@0))) (> (|epoch#transfer| (|payload#msg| m2@@0)) (|epoch#node| (select nodes (|dst#msg| m2@@0)))))) (= m1 m2@@0))
 :qid |leasebpl.120:12|
 :skolemid |7|
))) (forall ((m T@msg) ) (!  (=> (select network m) (InvMsg network nodes history@@0 m))
 :qid |leasebpl.121:12|
 :skolemid |8|
))))
 :qid |leasebpl.114:14|
 :skolemid |9|
 :pattern ( (Inv network nodes history@@0))
)))
(assert (forall ((history@@1 T@history) (n T@node) ) (! (= (InvNode history@@1 n)  (=> (|held#node| n) (= (|len#history| history@@1) (|epoch#node| n))))
 :qid |leasebpl.109:18|
 :skolemid |3|
 :pattern ( (InvNode history@@1 n))
)))
(assert (forall ((x Int) ) (! (= (select Identity x) x)
 :qid |LibraryDefinitionsbpl.43:15|
 :skolemid |10|
)))
(assert (forall ((|l#0| Bool) (m@@0 T@msg) ) (! (= (select (|lambda#0| |l#0|) m@@0) |l#0|)
 :qid |leasebpl.180:40|
 :skolemid |27|
 :pattern ( (select (|lambda#0| |l#0|) m@@0))
)))
(assert (forall ((|l#0@@0| Int) (i@@0 Int) ) (! (= (select (|lambda#2| |l#0@@0|) i@@0) |l#0@@0|)
 :qid |leasebpl.182:51|
 :skolemid |29|
 :pattern ( (select (|lambda#2| |l#0@@0|) i@@0))
)))
(assert (forall ((epoch Int) (history@@2 T@history) ) (! (= (EpochInHistory epoch history@@2)  (and (<= 0 epoch) (< epoch (|len#history| history@@2))))
 :qid |leasebpl.91:25|
 :skolemid |1|
 :pattern ( (EpochInHistory epoch history@@2))
)))
(assert (forall ((network@@0 (Array T@msg Bool)) (nodes@@0 (Array Int T@node)) (history@@3 T@history) (m@@1 T@msg) ) (! (= (InvMsg network@@0 nodes@@0 history@@3 m@@1)  (=> (is-transfer (|payload#msg| m@@1)) (and (and (EpochInHistory (- (|epoch#transfer| (|payload#msg| m@@1)) 1) history@@3) (= (|dst#msg| m@@1) (select (|locks#history| history@@3) (- (|epoch#transfer| (|payload#msg| m@@1)) 1)))) (=> (and (and (select network@@0 m@@1) (is-transfer (|payload#msg| m@@1))) (> (|epoch#transfer| (|payload#msg| m@@1)) (|epoch#node| (select nodes@@0 (|dst#msg| m@@1))))) (= (|len#history| history@@3) (|epoch#transfer| (|payload#msg| m@@1)))))))
 :qid |leasebpl.101:17|
 :skolemid |2|
 :pattern ( (InvMsg network@@0 nodes@@0 history@@3 m@@1))
)))
(assert (forall ((|l#0@@1| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (i@@1 Int) ) (! (= (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1) (node (= i@@1 |l#0@@1|) (ite (= i@@1 |l#1|) |l#2| |l#3|)))
 :qid |leasebpl.181:48|
 :skolemid |28|
 :pattern ( (select (|lambda#1| |l#0@@1| |l#1| |l#2| |l#3|) i@@1))
)))
; Valid

(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun me () Int)
(declare-fun inline$AtomicAccept$0$epoch@0 () Int)
(declare-fun history@@4 () T@history)
(declare-fun external@0 () (Array T@msg Bool))
(declare-fun external () (Array T@msg Bool))
(declare-fun dst () Int)
(set-info :boogie-vc-id Civl_LinearityChecker_AtomicAccept)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((inline$AtomicAccept$0$Return_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= ((_ map (<= (Int Int) Int)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0)) ((_ map (ite (Bool Int Int) Int)) (store ((as const (Array Int Bool)) false) me true) ((as const (Array Int Int)) 1) ((as const (Array Int Int)) 0))) ((as const (Array Int Bool)) true)))))
(let ((inline$AtomicAccept$0$anon0_correct  (=> (and (and (EpochInHistory (- inline$AtomicAccept$0$epoch@0 1) history@@4) (= me (select (|locks#history| history@@4) (- inline$AtomicAccept$0$epoch@0 1)))) (and (= external@0 (store external (msg me dst (locked inline$AtomicAccept$0$epoch@0)) true)) (= (ControlFlow 0 3) 2))) inline$AtomicAccept$0$Return_correct)))
(let ((inline$AtomicAccept$0$Entry_correct  (=> (= (ControlFlow 0 4) 3) inline$AtomicAccept$0$anon0_correct)))
inline$AtomicAccept$0$Entry_correct))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
