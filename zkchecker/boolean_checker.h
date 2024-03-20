#pragma once

#include "table.h"
void proof_check_split(ZProof *proof, ZProofStep step);
void proof_check_bool_resolution(ZProof *proof, ZProofStep step);
void proof_check_bool_factoring(ZProof *proof, ZProofStep step);
void proof_check_eq_resolve(ZProof *proof, ZProofStep step);
void proof_check_modus_ponens(ZProof *proof, ZProofStep step);
void proof_check_not_not_elim(ZProof *proof, ZProofStep step);
void proof_check_contra(ZProof *proof, ZProofStep step);
void proof_check_false_from_empty(ZProof *proof, ZProofStep step);
void proof_check_bool_and_elim(ZProof *proof, ZProofStep step);
void proof_check_bool_and_intro1(ZProof *proof, ZProofStep step);
void proof_check_bool_and_intro2(ZProof *proof, ZProofStep step);
void proof_check_bool_not_or_elim(ZProof *proof, ZProofStep step);
void proof_check_bool_or_single(ZProof *proof, ZProofStep step);
void proof_check_bool_or_single_rev(ZProof *proof, ZProofStep step);
void proof_check_bool_true_pos(ZProof *proof, ZProofStep step);
void proof_check_bool_false_neg(ZProof *proof, ZProofStep step);
void proof_check_bool_not_pos(ZProof *proof, ZProofStep step);
void proof_check_bool_not_neg(ZProof *proof, ZProofStep step);
void proof_check_bool_and_pos(ZProof *proof, ZProofStep step);
void proof_check_bool_and_neg(ZProof *proof, ZProofStep step);
void proof_check_bool_or_pos(ZProof *proof, ZProofStep step);
void proof_check_bool_or_neg(ZProof *proof, ZProofStep step);
void proof_check_bool_impl_pos1(ZProof *proof, ZProofStep step);
void proof_check_bool_impl_pos2(ZProof *proof, ZProofStep step);
void proof_check_bool_impl_neg(ZProof *proof, ZProofStep step);
void proof_check_bool_equiv_pos1(ZProof *proof, ZProofStep step);
void proof_check_bool_equiv_pos2(ZProof *proof, ZProofStep step);
void proof_check_bool_equiv_neg1(ZProof *proof, ZProofStep step);
void proof_check_bool_equiv_neg2(ZProof *proof, ZProofStep step);
void proof_check_bool_xor1_pos_res(ZProof *proof, ZProofStep step);
void proof_check_bool_xor1_neg_res(ZProof *proof, ZProofStep step);
void proof_check_xor_pos_res(ZProof *proof, ZProofStep step);
void proof_check_xor_neg_res(ZProof *proof, ZProofStep step);
void proof_check_not_cong(ZProof *proof, ZProofStep step);
