(set-logic UFLIRA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.case_split 3)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :smt.arith.solver 2)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun $generated (T@U) Int)
(declare-fun $generated@@0 (T@U) Bool)
(declare-fun $generated@@1 (T@T) Int)
(declare-fun $generated@@2 () T@T)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Int) T@U)
(declare-fun type (T@U) T@T)
(declare-fun $generated@@9 (Real) T@U)
(declare-fun $generated@@10 (T@U) Real)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (RoundingMode) T@U)
(declare-fun $generated@@13 (T@U) RoundingMode)
(declare-fun $generated@@14 (String) T@U)
(declare-fun $generated@@15 (T@U) String)
(declare-fun $generated@@16 ((RegEx String)) T@U)
(declare-fun $generated@@17 (T@U) (RegEx String))
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@U T@U) T@U)
(declare-fun $generated@@49 (T@U T@U) T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@51 (T@T) T@T)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@53 (T@U T@U T@U) T@U)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@55 (T@T) T@T)
(declare-fun $generated@@56 (T@U T@U T@U) T@U)
(declare-fun $generated@@106 (T@U T@U T@U) T@U)
(declare-fun $generated@@107 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@108 (T@T T@T) T@T)
(declare-fun $generated@@109 (T@T) T@T)
(declare-fun $generated@@110 (T@T) T@T)
(declare-fun $generated@@111 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@162 (T@U) T@U)
(declare-fun $generated@@169 (T@U) T@U)
(declare-fun $generated@@170 (T@T T@U) T@U)
(declare-fun $generated@@171 () T@T)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ($generated@@1 $generated@@2) 0) (= ($generated@@1 $generated@@3) 1)) (= ($generated@@1 $generated@@4) 2)) (= ($generated@@1 $generated@@5) 3)) (= ($generated@@1 $generated@@6) 4)) (= ($generated@@1 $generated@@7) 5)) (forall (($generated@@18 Int) ) (! (= ($generated ($generated@@8 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@8 $generated@@18))
))) (forall (($generated@@19 T@U) ) (!  (=> (= (type $generated@@19) $generated@@2) (= ($generated@@8 ($generated $generated@@19)) $generated@@19))
 :pattern ( ($generated $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= (type ($generated@@8 $generated@@20)) $generated@@2)
 :pattern ( ($generated@@8 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@10 ($generated@@9 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@9 $generated@@21))
))) (forall (($generated@@22 T@U) ) (!  (=> (= (type $generated@@22) $generated@@3) (= ($generated@@9 ($generated@@10 $generated@@22)) $generated@@22))
 :pattern ( ($generated@@10 $generated@@22))
))) (forall (($generated@@23 Real) ) (! (= (type ($generated@@9 $generated@@23)) $generated@@3)
 :pattern ( ($generated@@9 $generated@@23))
))) (forall (($generated@@24 Bool) ) (! (= ($generated@@0 ($generated@@11 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@11 $generated@@24))
))) (forall (($generated@@25 T@U) ) (!  (=> (= (type $generated@@25) $generated@@4) (= ($generated@@11 ($generated@@0 $generated@@25)) $generated@@25))
 :pattern ( ($generated@@0 $generated@@25))
))) (forall (($generated@@26 Bool) ) (! (= (type ($generated@@11 $generated@@26)) $generated@@4)
 :pattern ( ($generated@@11 $generated@@26))
))) (forall (($generated@@27 RoundingMode) ) (! (= ($generated@@13 ($generated@@12 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@12 $generated@@27))
))) (forall (($generated@@28 T@U) ) (!  (=> (= (type $generated@@28) $generated@@5) (= ($generated@@12 ($generated@@13 $generated@@28)) $generated@@28))
 :pattern ( ($generated@@13 $generated@@28))
))) (forall (($generated@@29 RoundingMode) ) (! (= (type ($generated@@12 $generated@@29)) $generated@@5)
 :pattern ( ($generated@@12 $generated@@29))
))) (forall (($generated@@30 String) ) (! (= ($generated@@15 ($generated@@14 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@14 $generated@@30))
))) (forall (($generated@@31 T@U) ) (!  (=> (= (type $generated@@31) $generated@@6) (= ($generated@@14 ($generated@@15 $generated@@31)) $generated@@31))
 :pattern ( ($generated@@15 $generated@@31))
))) (forall (($generated@@32 String) ) (! (= (type ($generated@@14 $generated@@32)) $generated@@6)
 :pattern ( ($generated@@14 $generated@@32))
))) (forall (($generated@@33 (RegEx String)) ) (! (= ($generated@@17 ($generated@@16 $generated@@33)) $generated@@33)
 :pattern ( ($generated@@16 $generated@@33))
))) (forall (($generated@@34 T@U) ) (!  (=> (= (type $generated@@34) $generated@@7) (= ($generated@@16 ($generated@@17 $generated@@34)) $generated@@34))
 :pattern ( ($generated@@17 $generated@@34))
))) (forall (($generated@@35 (RegEx String)) ) (! (= (type ($generated@@16 $generated@@35)) $generated@@7)
 :pattern ( ($generated@@16 $generated@@35))
))))
(assert (forall (($generated@@36 T@U) ) (! (UOrdering2 $generated@@36 $generated@@36)
 :no-pattern ($generated $generated@@36)
 :no-pattern ($generated@@0 $generated@@36)
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (let (($generated@@40 (type $generated@@37)))
 (=> (and (and (= (type $generated@@38) $generated@@40) (= (type $generated@@39) $generated@@40)) (and (UOrdering2 $generated@@37 $generated@@38) (UOrdering2 $generated@@38 $generated@@39))) (UOrdering2 $generated@@37 $generated@@39)))
 :pattern ( (UOrdering2 $generated@@37 $generated@@38) (UOrdering2 $generated@@38 $generated@@39))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ) (! (let (($generated@@43 (type $generated@@41)))
 (=> (= (type $generated@@42) $generated@@43) (=> (and (UOrdering2 $generated@@41 $generated@@42) (UOrdering2 $generated@@42 $generated@@41)) (= $generated@@41 $generated@@42))))
 :pattern ( (UOrdering2 $generated@@41 $generated@@42) (UOrdering2 $generated@@42 $generated@@41))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (= ($generated@@1 ($generated@@45 $generated@@57 $generated@@58)) 6)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@51 ($generated@@45 $generated@@59 $generated@@60)) $generated@@59)
 :pattern ( ($generated@@45 $generated@@59 $generated@@60))
))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@52 ($generated@@45 $generated@@61 $generated@@62)) $generated@@62)
 :pattern ( ($generated@@45 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@U) ($generated@@64 T@U) ) (! (let (($generated@@65 ($generated@@52 (type $generated@@63))))
(= (type ($generated@@49 $generated@@63 $generated@@64)) $generated@@65))
 :pattern ( ($generated@@49 $generated@@63 $generated@@64))
))) (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (let (($generated@@69 (type $generated@@68)))
(let (($generated@@70 (type $generated@@67)))
(= (type ($generated@@53 $generated@@66 $generated@@67 $generated@@68)) ($generated@@45 $generated@@70 $generated@@69))))
 :pattern ( ($generated@@53 $generated@@66 $generated@@67 $generated@@68))
))) (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (let (($generated@@74 ($generated@@52 (type $generated@@71))))
 (=> (= (type $generated@@73) $generated@@74) (= ($generated@@49 ($generated@@53 $generated@@71 $generated@@72 $generated@@73) $generated@@72) $generated@@73)))
 :weight 0
))) (and (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (or (= $generated@@77 $generated@@78) (= ($generated@@49 ($generated@@53 $generated@@76 $generated@@77 $generated@@75) $generated@@78) ($generated@@49 $generated@@76 $generated@@78)))
 :weight 0
)) (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (or true (= ($generated@@49 ($generated@@53 $generated@@80 $generated@@81 $generated@@79) $generated@@82) ($generated@@49 $generated@@80 $generated@@82)))
 :weight 0
)))) (= ($generated@@1 $generated@@46) 7)) (forall (($generated@@83 T@T) ) (= ($generated@@1 ($generated@@54 $generated@@83)) 8))) (forall (($generated@@84 T@T) ) (! (= ($generated@@55 ($generated@@54 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@54 $generated@@84))
))) (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (let (($generated@@87 ($generated@@55 (type $generated@@86))))
(= (type ($generated@@48 $generated@@85 $generated@@86)) $generated@@87))
 :pattern ( ($generated@@48 $generated@@85 $generated@@86))
))) (= ($generated@@1 $generated@@47) 9)) (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= (type ($generated@@56 $generated@@88 $generated@@89 $generated@@90)) $generated@@47)
 :pattern ( ($generated@@56 $generated@@88 $generated@@89 $generated@@90))
))) (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ) (! (let (($generated@@94 ($generated@@55 (type $generated@@92))))
 (=> (= (type $generated@@93) $generated@@94) (= ($generated@@48 ($generated@@56 $generated@@91 $generated@@92 $generated@@93) $generated@@92) $generated@@93)))
 :weight 0
))) (and (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (or (= $generated@@97 $generated@@98) (= ($generated@@48 ($generated@@56 $generated@@96 $generated@@97 $generated@@95) $generated@@98) ($generated@@48 $generated@@96 $generated@@98)))
 :weight 0
)) (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (or true (= ($generated@@48 ($generated@@56 $generated@@100 $generated@@101 $generated@@99) $generated@@102) ($generated@@48 $generated@@100 $generated@@102)))
 :weight 0
)))) (= (type $generated@@50) ($generated@@54 $generated@@4))))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and (and (= (type $generated@@103) ($generated@@45 $generated@@46 $generated@@47)) (= (type $generated@@104) ($generated@@45 $generated@@46 $generated@@47))) ($generated@@44 $generated@@103 $generated@@104)) (forall (($generated@@105 T@U) ) (!  (=> (and (= (type $generated@@105) $generated@@46) ($generated@@0 ($generated@@48 ($generated@@49 $generated@@103 $generated@@105) $generated@@50))) ($generated@@0 ($generated@@48 ($generated@@49 $generated@@104 $generated@@105) $generated@@50)))
 :pattern ( ($generated@@48 ($generated@@49 $generated@@104 $generated@@105) $generated@@50))
)))
 :pattern ( ($generated@@44 $generated@@103 $generated@@104))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@112 T@T) ($generated@@113 T@T) ) (= ($generated@@1 ($generated@@108 $generated@@112 $generated@@113)) 10)) (forall (($generated@@114 T@T) ($generated@@115 T@T) ) (! (= ($generated@@109 ($generated@@108 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@108 $generated@@114 $generated@@115))
))) (forall (($generated@@116 T@T) ($generated@@117 T@T) ) (! (= ($generated@@110 ($generated@@108 $generated@@116 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@108 $generated@@116 $generated@@117))
))) (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (let (($generated@@121 ($generated@@110 (type $generated@@118))))
(= (type ($generated@@106 $generated@@118 $generated@@119 $generated@@120)) $generated@@121))
 :pattern ( ($generated@@106 $generated@@118 $generated@@119 $generated@@120))
))) (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (let (($generated@@126 (type $generated@@125)))
(let (($generated@@127 (type $generated@@123)))
(= (type ($generated@@111 $generated@@122 $generated@@123 $generated@@124 $generated@@125)) ($generated@@108 $generated@@127 $generated@@126))))
 :pattern ( ($generated@@111 $generated@@122 $generated@@123 $generated@@124 $generated@@125))
))) (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (let (($generated@@132 ($generated@@110 (type $generated@@128))))
 (=> (= (type $generated@@131) $generated@@132) (= ($generated@@106 ($generated@@111 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@129 $generated@@130) $generated@@131)))
 :weight 0
))) (and (and (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (= $generated@@135 $generated@@137) (= ($generated@@106 ($generated@@111 $generated@@134 $generated@@135 $generated@@136 $generated@@133) $generated@@137 $generated@@138) ($generated@@106 $generated@@134 $generated@@137 $generated@@138)))
 :weight 0
)) (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (or (= $generated@@142 $generated@@144) (= ($generated@@106 ($generated@@111 $generated@@140 $generated@@141 $generated@@142 $generated@@139) $generated@@143 $generated@@144) ($generated@@106 $generated@@140 $generated@@143 $generated@@144)))
 :weight 0
))) (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (or true (= ($generated@@106 ($generated@@111 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@149 $generated@@150) ($generated@@106 $generated@@146 $generated@@149 $generated@@150)))
 :weight 0
)))) (forall (($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 Bool) ) (! (= (type ($generated@@107 $generated@@151 $generated@@152 $generated@@153 $generated@@154)) ($generated@@108 $generated@@46 $generated@@4))
 :pattern ( ($generated@@107 $generated@@151 $generated@@152 $generated@@153 $generated@@154))
))))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 Bool) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (let (($generated@@161 ($generated@@55 (type $generated@@160))))
 (=> (and (and (and (and (= (type $generated@@155) $generated@@46) (= (type $generated@@156) ($generated@@45 $generated@@46 $generated@@47))) (= (type $generated@@157) ($generated@@54 $generated@@4))) (= (type $generated@@159) $generated@@46)) (= (type $generated@@160) ($generated@@54 $generated@@161))) (= ($generated@@0 ($generated@@106 ($generated@@107 $generated@@155 $generated@@156 $generated@@157 $generated@@158) $generated@@159 $generated@@160))  (=> (and (not (= $generated@@159 $generated@@155)) ($generated@@0 ($generated@@48 ($generated@@49 $generated@@156 $generated@@159) $generated@@157))) $generated@@158))))
 :pattern ( ($generated@@106 ($generated@@107 $generated@@155 $generated@@156 $generated@@157 $generated@@158) $generated@@159 $generated@@160))
)))
(assert (forall (($generated@@163 T@U) ) (! (let (($generated@@164 (type $generated@@163)))
(= (type ($generated@@162 $generated@@163)) $generated@@164))
 :pattern ( ($generated@@162 $generated@@163))
)))
(assert (forall (($generated@@165 T@U) ) (! (= ($generated@@162 $generated@@165) $generated@@165)
 :pattern ( ($generated@@162 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (=> (and (and (and (and (= (type $generated@@166) ($generated@@45 $generated@@46 $generated@@47)) (= (type $generated@@167) ($generated@@45 $generated@@46 $generated@@47))) (= (type $generated@@168) ($generated@@45 $generated@@46 $generated@@47))) (not (= $generated@@166 $generated@@168))) (and ($generated@@44 $generated@@166 $generated@@167) ($generated@@44 $generated@@167 $generated@@168))) ($generated@@44 $generated@@166 $generated@@168))
 :pattern ( ($generated@@44 $generated@@166 $generated@@167) ($generated@@44 $generated@@167 $generated@@168))
)))
(assert  (and (and (= ($generated@@1 $generated@@171) 11) (forall (($generated@@172 T@U) ) (! (= (type ($generated@@169 $generated@@172)) $generated@@171)
 :pattern ( ($generated@@169 $generated@@172))
))) (forall (($generated@@173 T@T) ($generated@@174 T@U) ) (! (= (type ($generated@@170 $generated@@173 $generated@@174)) $generated@@173)
 :pattern ( ($generated@@170 $generated@@173 $generated@@174))
))))
(assert (forall (($generated@@175 T@U) ) (! (let (($generated@@176 (type $generated@@175)))
(= ($generated@@170 $generated@@176 ($generated@@169 $generated@@175)) $generated@@175))
 :pattern ( ($generated@@169 $generated@@175))
)))
(assert (forall (($generated@@177 T@U) ) (! (= ($generated@@169 ($generated@@162 $generated@@177)) ($generated@@162 ($generated@@169 $generated@@177)))
 :pattern ( ($generated@@169 ($generated@@162 $generated@@177)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 () Bool)
(declare-fun $generated@@182 (T@U) Bool)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 (T@U) Bool)
(declare-fun $generated@@185 () Bool)
(declare-fun $generated@@186 () Int)
(assert  (and (and (and (= (type $generated@@178) ($generated@@108 $generated@@46 $generated@@4)) (= (type $generated@@179) $generated@@46)) (= (type $generated@@180) ($generated@@45 $generated@@46 $generated@@47))) (= (type $generated@@183) ($generated@@45 $generated@@46 $generated@@47))))
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@187  (=> (and (= $generated@@178 ($generated@@107 $generated@@179 $generated@@180 $generated@@50 false)) (= $generated@@181 ($generated@@0 ($generated@@162 ($generated@@11 true))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) $generated@@181) (=> $generated@@181 (=> (and ($generated@@182 $generated@@183) ($generated@@184 $generated@@183)) (=> (and (and (forall (($generated@@188 T@U) ) (!  (=> (= (type $generated@@188) $generated@@46) (=> (and (not (= $generated@@188 $generated@@179)) ($generated@@0 ($generated@@48 ($generated@@49 $generated@@180 $generated@@188) $generated@@50))) (= ($generated@@49 $generated@@183 $generated@@188) ($generated@@49 $generated@@180 $generated@@188))))
 :pattern ( ($generated@@49 $generated@@183 $generated@@188))
)) ($generated@@44 $generated@@180 $generated@@183)) (and (= $generated@@185 ($generated@@0 ($generated@@162 ($generated@@11 false)))) (= (ControlFlow 0 2) (- 0 1)))) $generated@@185)))))))
(let (($generated@@189  (=> (and (and ($generated@@182 $generated@@180) ($generated@@184 $generated@@180)) (and (= 2 $generated@@186) (= (ControlFlow 0 4) 2))) $generated@@187)))
$generated@@189)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
