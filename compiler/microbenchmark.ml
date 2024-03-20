open Maps
open Ir

let res_prog = {
  vars = [];
  premises = map_of_bindings [
      "prem1", (Or [True]);
      "prem2", (Or [Not True]);
    ];
  cmd_list = [
    {
      name = "resolution";
      expr_args = [
        (Not True);
        Or [];
        Or [];
      ];
      hyp_args = [
        Premise "prem1";
        Premise "prem2"
      ];
      result = (Or []);
      backptr = None
    }
  ]
}

let factoring_prog = {
  vars = [];
  premises = map_of_bindings [
      "prem1", (Or [True; True; True; True]);
    ];
  cmd_list = [
    {
      name = "factoring";
      expr_args = [
      ];
      hyp_args = [
        Premise "prem1";
      ];
      result = (Or [True]);
      backptr = None
    }
  ]
}

let or_nil_prog = {
  vars = [];
  premises = map_of_bindings [
      "prem1", (Or [])
    ];
  cmd_list = [
    {
      name = "or_nil";
      expr_args = [];
      hyp_args = [
        Premise "prem1"
      ];
      result = False;
      backptr = None
    }
  ]
}

let or_single_prog = {
  vars = [];
  premises = map_of_bindings [
      "prem1", (True)
    ];
  cmd_list = [
    {
      name = "or_single";
      expr_args = [];
      hyp_args = [
        Premise "prem1"
      ];
      result = Or [True];
      backptr = None
    }
  ]
}

let or_single_rev_prog = {
  vars = [];
  premises = map_of_bindings [
      "prem1", (Or [True])
    ];
  cmd_list = [
    {
      name = "or_single_rev";
      expr_args = [];
      hyp_args = [
        Premise "prem1"
      ];
      result = True;
      backptr = None
    }
  ]
}

let true_pos_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "true+";
      expr_args = [];
      hyp_args = [];
      result = Or [True];
      backptr = None
    }
  ]
}

let false_neg_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "false-";
      expr_args = [];
      hyp_args = [];
      result = Or [Not False];
      backptr = None
    }
  ]
}

let not_pos_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "not+";
      expr_args = [];
      hyp_args = [];
      result = Or [Not True; True];
      backptr = None
    }
  ]
}


let and_pos_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "and+";
      expr_args = [
        And [True];
        And [Not True]
      ];
      hyp_args = [];
      result = Or [And [True]; Not True];
      backptr = None
    }
  ]
}

let and_neg_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "and-";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Not (And [True]); True];
      backptr = None
    }
  ]
}

let or_pos_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "or+";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Or [True]; Not True];
      backptr = None
    }
  ]
}

let or_neg_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "or-";
      expr_args = [
        Not (Or [True])
      ];
      hyp_args = [];
      result = Or [Not (Or [True]); True];
      backptr = None
    }
  ]
}

let impl_pos1_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=>+1";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Impl (False, True); False];
      backptr = None
    }
  ]
}

let impl_pos2_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=>+2";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Impl (False, True); Not True];
      backptr = None
    }
  ]
}

let impl_neg_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=>-";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Not (Impl (False, True)); Not False; True];
      backptr = None
    }
  ]
}

let eq_pos1_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=+1";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Eq (False, True); False; True];
      backptr = None
    }
  ]
}

let eq_pos2_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=+2";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Eq (False, True); Not False; Not True];
      backptr = None
    }
  ]
}

let eq_neg1_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=-1";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Not (Eq (False, True)); False; Not True];
      backptr = None
    }
  ]
}

let eq_neg2_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "=-2";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Not (Eq (False, True)); Not False; True];
      backptr = None
    }
  ]
}

let refl_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "refl";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Eq (True, True)];
      backptr = None
    }
  ]
}

let symm_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "symm";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Eq (True, False); Not (Eq (False, True))];
      backptr = None
    }
  ]
}

let trans_prog = {
  vars = [];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "trans";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [Eq (True, False); Not (Eq (True, True)); Not (Eq (True, False))];
      backptr = None
    }
  ]
}

let nary_cong_prog = {
  vars = ["f"];
  premises = map_of_bindings [

    ];
  cmd_list = [
    {
      name = "cong";
      expr_args = [

      ];
      hyp_args = [];
      result = (Or [
          Eq (NaryApp ("f", [True]), NaryApp ("f", [False]));
          Not (Eq (True, False))]);
      backptr = None
    }
  ];
}

let const = Resolute.const_varname

let total_int_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "total-int";
      expr_args = [
      ];
      hyp_args = [];
      result = (Or [
          Leq (Var const, Mul (1, Var const));
          Leq (Mul (2, Var const), Var const)
        ]);
      backptr = None
    }
  ];
}

let total_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "total";
      expr_args = [
      ];
      hyp_args = [];
      result = (Or [
          Leq (Var const, Var const);
          Lt (Var const, Var const)
        ]);
      backptr = None
    }
  ];
}

let trichotomy_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "trichotomy";
      expr_args = [
      ];
      hyp_args = [];
      result = (Or [
          Lt (Var const, Var const);
          Eq (Var const, Var const);
          Lt (Var const, Var const)
        ]);
      backptr = None
    }
  ];
}

let add_single_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "add_single";
      expr_args = [
      ];
      hyp_args = [];
      result = Eq (Add [Var const], Var const);
      backptr = None
    }
  ];
}

let mul_single_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "mul_single";
      expr_args = [
      ];
      hyp_args = [];
      result = Eq (Mul (1, Var const), Var const);
      backptr = None
    }
  ];
}

let consolidate_prog = {
  vars = [const; "x"];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "consolidate";
      expr_args = [
        Add [Mul (4, Var "x")];
        Add [Mul (1, Var const); Mul (2, Var const)];
        Add [Mul (3, Var const)];
      ];
      hyp_args = [];
      result = Eq (
          Add [Mul (1, Var const); Mul (2, Var const); Mul (4, Var "x")],
          Add [Mul (3, Var const); Mul (4, Var "x")]
        );
      backptr = None
    }
  ];
}

let multiply_prog = {
  vars = [const; "x"];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "multiply";
      expr_args = [
      ];
      hyp_args = [];
      result = Eq (
          Mul (2, Add [Mul (4, Var const)]),
          Add [Mul (8, Var const)]
        );
      backptr = None
    }
  ];
}

let flatten_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "flatten";
      expr_args = [
        Add [Var const];
        Add [Add [Var const]];
      ];
      hyp_args = [];
      result = Eq (
          Add [Var const; Add [Var const]],
          Add [Var const; Var const]
        );
      backptr = None
    }
  ];
}

let farkas_prog = {
  vars = [const];
  premises = map_of_bindings [
      "prem1", Eq (Add [], Add [Mul (1, Var const)])
    ];
  cmd_list = [
    {
      name = "farkas";
      expr_args = [
      ];
      hyp_args = [Premise "prem1"];
      result = Or [];
      backptr = None
    }
  ];
}

let binop_cong_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "binop_cong";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [
          Eq (Eq (True, True), Eq (True, True));
          Not (Eq (True, True));
          Not (Eq (True, True))
        ];
      backptr = None
    }
  ];
}

let not_cong_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "not_cong";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [
          Eq (Not True, Not False);
          Not (Eq (True, False));
        ];
      backptr = None
    }
  ];
}

let mul_cong_prog = {
  vars = [const];
  premises = map_of_bindings [
    ];
  cmd_list = [
    {
      name = "mul_cong";
      expr_args = [
      ];
      hyp_args = [];
      result = Or [
          Eq (Mul (1, Var const), Mul (1, Var const));
          Not (Eq (Var const, Var const));
        ];
      backptr = None
    }
  ];
}

let micro_programs = [
  "resolution", res_prog;
  "factoring", factoring_prog;
  "or_nil", or_nil_prog;
  "or_single", or_single_prog;
  "or_single_rev", or_single_rev_prog;
  "true_pos", true_pos_prog;
  "false_neg", false_neg_prog;
  "not_pos", not_pos_prog;
  "and_pos", and_pos_prog;
  "and_neg", and_neg_prog;
  "or_pos", or_pos_prog;
  "or_neg", or_neg_prog;
  "impl_pos1", impl_pos1_prog;
  "impl_pos2", impl_pos2_prog;
  "impl_neg", impl_neg_prog;
  "eq_pos1", eq_pos1_prog;
  "eq_pos2", eq_pos2_prog;
  "eq_neg1", eq_neg1_prog;
  "eq_neg2", eq_neg2_prog;
  "refl", refl_prog;
  "symm", symm_prog;
  "trans", trans_prog;
  "nary_cong", nary_cong_prog;

  "total-int", total_int_prog;
  "total", total_prog;
  "trichotomy", trichotomy_prog;
  "add_single", add_single_prog;
  "mul_single", mul_single_prog;
  "consolidate", consolidate_prog;
  "multiply", multiply_prog;
  "flatten", flatten_prog;
  "farkas", farkas_prog;
  "binop_cong", binop_cong_prog;
  "not_cong", not_cong_prog;
  "mul_cong", mul_cong_prog
]
