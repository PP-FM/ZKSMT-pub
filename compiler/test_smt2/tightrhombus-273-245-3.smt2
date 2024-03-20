(set-option :produce-proofs true)
(set-info :source |A tight rhombus without a feasible integer solution.  This
benchmark is designed to be hard for the algorithm by Dillig, Dillig, and Aiken.
Authors: The SMTInterpol team|)
(set-info :category "crafted")
(set-info :status unsat)
(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
(set-logic QF_LIA)
(declare-fun x () Int)
(declare-fun y () Int)
(assert (and 
	(<= 0 (- (* 2730000 x) (* 2450001 y)))
	(<= (- (* 2730000 x) (* 2450001 y)) 9999)
	(<= 1 (- (* 2730001 x) (* 2450000 y)))
	(<= (- (* 2730001 x) (* 2450000 y)) 10000)))
(check-sat)
;(get-proof)
(get-proof)
