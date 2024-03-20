#pragma once

#include "table.h"

void proof_check_symm(Proof *proof, ProofStep step);
void proof_check_neg_symm(Proof *proof, ProofStep step);
void proof_check_res_symm(Proof *proof, ProofStep step);
void proof_check_refl(Proof *proof, ProofStep step);
void proof_check_res_refl(Proof *proof, ProofStep step);
void proof_check_trans(Proof *proof, ProofStep step);
void proof_check_res_trans(Proof *proof, ProofStep step);
void proof_check_cong(Proof *proof, ProofStep step);
void proof_check_res_cong(Proof *proof, ProofStep step);
void proof_check_true_intro(Proof *proof, ProofStep step);
void proof_check_true_elim(Proof *proof, ProofStep step);
void proof_check_false_intro(Proof *proof, ProofStep step);
void proof_check_false_elim(Proof *proof, ProofStep step);
