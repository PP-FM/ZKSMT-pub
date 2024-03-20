#pragma once
#include "table.h"

void proof_check_res_symm(ZProof *proof, ZProofStep step);
void proof_check_res_refl(ZProof *proof, ZProofStep step);
void proof_check_res_trans(ZProof *proof, ZProofStep step);
void proof_check_res_cong(ZProof *proof, ZProofStep step);
