#pragma once
#include "table.h"

void proof_check_total(ZProof *proof, ZProofStep step);
void proof_check_trichotomy(ZProof *proof, ZProofStep step);
void proof_check_singleton_add_eq(ZProof *proof, ZProofStep step);
void proof_check_mul_single(ZProof *proof, ZProofStep step);
void proof_check_total_int(ZProof *proof, ZProofStep step);
void proof_check_res_mul(ZProof *proof, ZProofStep step);
void proof_check_consolidate_zk(ZProof *proof, ZProofStep step);
void proof_check_sum_flatten_zk(ZProof *proof, ZProofStep step);
void proof_check_farkas(ZProof *proof, ZProofStep step);
void proof_check_sum_cong(ZProof *proof, ZProofStep step);
void proof_check_binop_cong(ZProof *proof, ZProofStep step);
void proof_check_mul_cong(ZProof *proof, ZProofStep step);
