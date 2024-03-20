#pragma once

#include "table.h"

void proof_check_cnf_and_pos(Proof *proof, ProofStep step);
void proof_check_cnf_neg(Proof *proof, ProofStep step);
void proof_check_cnf_or(Proof *proof, ProofStep step);
void proof_check_cnf_or_neg(Proof *proof, ProofStep step);
void proof_check_cnf_implies_pos(Proof *proof, ProofStep step);
void proof_check_cnf_implies_neg1(Proof *proof, ProofStep step);
void proof_check_cnf_implies_neg2(Proof *proof, ProofStep step);
void proof_check_cnf_equiv_xor_pos1(Proof *proof, ProofStep step);
void proof_check_cnf_equiv_xor_pos2(Proof *proof, ProofStep step);
void proof_check_cnf_equiv_xor_neg1(Proof *proof, ProofStep step);
void proof_check_cnf_equiv_xor_neg2(Proof *proof, ProofStep step);
