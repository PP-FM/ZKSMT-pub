#pragma once

#include "table.h"

void proof_check_total(Proof *proof, ProofStep step);
void proof_check_trichotomy(Proof *proof, ProofStep step);
void proof_check_singleton_add_eq(Proof *proof, ProofStep step);
void proof_check_mul_single(Proof *proof, ProofStep step);
void proof_check_total_int(Proof *proof, ProofStep step);
void proof_check_res_mul(Proof *proof, ProofStep step);
void proof_check_consolidate_eq(Proof *proof, ProofStep step);
void proof_check_sum_flatten_eq(Proof *proof, ProofStep step);
void proof_check_farkas(Proof *proof, ProofStep step);
void proof_check_sum_cong(Proof *proof, ProofStep step);
void proof_check_mul_comm(Proof *proof, ProofStep step);
void proof_check_binop_cong(Proof *proof, ProofStep step);
void proof_check_mul_cong(Proof *proof, ProofStep step);
