; Can you prove that 1 + 1 is 2?

(set-option :produce-proofs true)
(set-option :proof-level lowlevel)
(set-logic QF_LIA)
(assert (not (= (+ 1 1) 2)))
(check-sat)
(get-proof)
