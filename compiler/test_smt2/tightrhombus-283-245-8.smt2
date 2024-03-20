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
	(<= 0 (- (* 283000000000 x) (* 245000000001 y)))
	(<= (- (* 283000000000 x) (* 245000000001 y)) 999999999)
	(<= 1 (- (* 283000000001 x) (* 245000000000 y)))
	(<= (- (* 283000000001 x) (* 245000000000 y)) 1000000000)))
(check-sat)
(get-proof)
