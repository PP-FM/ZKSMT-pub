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
(declare-fun $generated@@44 (T@U T@U T@U) T@U)
(declare-fun $generated@@45 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@T T@T) T@T)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@51 (T@U T@U) T@U)
(declare-fun $generated@@52 (T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@55 (T@U T@U T@U) T@U)
(declare-fun $generated@@56 (T@U T@U T@U) T@U)
(declare-fun $generated@@57 (T@T T@T) T@T)
(declare-fun $generated@@58 (T@T) T@T)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@60 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@157 (Int) Int)
(declare-fun $generated@@159 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@164 (T@T T@U) T@U)
(declare-fun $generated@@165 () T@T)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (= ($generated@@1 ($generated@@48 $generated@@61 $generated@@62)) 6)) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@53 ($generated@@48 $generated@@63 $generated@@64)) $generated@@63)
 :pattern ( ($generated@@48 $generated@@63 $generated@@64))
))) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (! (= ($generated@@54 ($generated@@48 $generated@@65 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@48 $generated@@65 $generated@@66))
))) (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (let (($generated@@69 ($generated@@54 (type $generated@@67))))
(= (type ($generated@@52 $generated@@67 $generated@@68)) $generated@@69))
 :pattern ( ($generated@@52 $generated@@67 $generated@@68))
))) (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (let (($generated@@73 (type $generated@@72)))
(let (($generated@@74 (type $generated@@71)))
(= (type ($generated@@55 $generated@@70 $generated@@71 $generated@@72)) ($generated@@48 $generated@@74 $generated@@73))))
 :pattern ( ($generated@@55 $generated@@70 $generated@@71 $generated@@72))
))) (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (let (($generated@@78 ($generated@@54 (type $generated@@75))))
 (=> (= (type $generated@@77) $generated@@78) (= ($generated@@52 ($generated@@55 $generated@@75 $generated@@76 $generated@@77) $generated@@76) $generated@@77)))
 :weight 0
))) (and (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (or (= $generated@@81 $generated@@82) (= ($generated@@52 ($generated@@55 $generated@@80 $generated@@81 $generated@@79) $generated@@82) ($generated@@52 $generated@@80 $generated@@82)))
 :weight 0
)) (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (!  (or true (= ($generated@@52 ($generated@@55 $generated@@84 $generated@@85 $generated@@83) $generated@@86) ($generated@@52 $generated@@84 $generated@@86)))
 :weight 0
)))) (forall (($generated@@87 T@T) ) (= ($generated@@1 ($generated@@50 $generated@@87)) 7))) (forall (($generated@@88 T@T) ) (! (= ($generated@@46 ($generated@@50 $generated@@88)) $generated@@88)
 :pattern ( ($generated@@50 $generated@@88))
))) (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (let (($generated@@91 ($generated@@46 (type $generated@@90))))
(= (type ($generated@@51 $generated@@89 $generated@@90)) $generated@@91))
 :pattern ( ($generated@@51 $generated@@89 $generated@@90))
))) (= ($generated@@1 $generated@@49) 8)) (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= (type ($generated@@56 $generated@@92 $generated@@93 $generated@@94)) $generated@@49)
 :pattern ( ($generated@@56 $generated@@92 $generated@@93 $generated@@94))
))) (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (let (($generated@@98 ($generated@@46 (type $generated@@96))))
 (=> (= (type $generated@@97) $generated@@98) (= ($generated@@51 ($generated@@56 $generated@@95 $generated@@96 $generated@@97) $generated@@96) $generated@@97)))
 :weight 0
))) (and (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (or (= $generated@@101 $generated@@102) (= ($generated@@51 ($generated@@56 $generated@@100 $generated@@101 $generated@@99) $generated@@102) ($generated@@51 $generated@@100 $generated@@102)))
 :weight 0
)) (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or true (= ($generated@@51 ($generated@@56 $generated@@104 $generated@@105 $generated@@103) $generated@@106) ($generated@@51 $generated@@104 $generated@@106)))
 :weight 0
)))) (= ($generated@@1 $generated@@47) 9)) (forall (($generated@@107 T@T) ($generated@@108 T@T) ) (= ($generated@@1 ($generated@@57 $generated@@107 $generated@@108)) 10))) (forall (($generated@@109 T@T) ($generated@@110 T@T) ) (! (= ($generated@@58 ($generated@@57 $generated@@109 $generated@@110)) $generated@@109)
 :pattern ( ($generated@@57 $generated@@109 $generated@@110))
))) (forall (($generated@@111 T@T) ($generated@@112 T@T) ) (! (= ($generated@@59 ($generated@@57 $generated@@111 $generated@@112)) $generated@@112)
 :pattern ( ($generated@@57 $generated@@111 $generated@@112))
))) (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (let (($generated@@116 ($generated@@59 (type $generated@@113))))
(= (type ($generated@@44 $generated@@113 $generated@@114 $generated@@115)) $generated@@116))
 :pattern ( ($generated@@44 $generated@@113 $generated@@114 $generated@@115))
))) (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (let (($generated@@121 (type $generated@@120)))
(let (($generated@@122 (type $generated@@118)))
(= (type ($generated@@60 $generated@@117 $generated@@118 $generated@@119 $generated@@120)) ($generated@@57 $generated@@122 $generated@@121))))
 :pattern ( ($generated@@60 $generated@@117 $generated@@118 $generated@@119 $generated@@120))
))) (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (! (let (($generated@@127 ($generated@@59 (type $generated@@123))))
 (=> (= (type $generated@@126) $generated@@127) (= ($generated@@44 ($generated@@60 $generated@@123 $generated@@124 $generated@@125 $generated@@126) $generated@@124 $generated@@125) $generated@@126)))
 :weight 0
))) (and (and (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (or (= $generated@@130 $generated@@132) (= ($generated@@44 ($generated@@60 $generated@@129 $generated@@130 $generated@@131 $generated@@128) $generated@@132 $generated@@133) ($generated@@44 $generated@@129 $generated@@132 $generated@@133)))
 :weight 0
)) (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (or (= $generated@@137 $generated@@139) (= ($generated@@44 ($generated@@60 $generated@@135 $generated@@136 $generated@@137 $generated@@134) $generated@@138 $generated@@139) ($generated@@44 $generated@@135 $generated@@138 $generated@@139)))
 :weight 0
))) (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or true (= ($generated@@44 ($generated@@60 $generated@@141 $generated@@142 $generated@@143 $generated@@140) $generated@@144 $generated@@145) ($generated@@44 $generated@@141 $generated@@144 $generated@@145)))
 :weight 0
)))) (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 Bool) ) (! (= (type ($generated@@45 $generated@@146 $generated@@147 $generated@@148 $generated@@149)) ($generated@@57 $generated@@47 $generated@@4))
 :pattern ( ($generated@@45 $generated@@146 $generated@@147 $generated@@148 $generated@@149))
))))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 Bool) ($generated@@154 T@U) ($generated@@155 T@U) ) (! (let (($generated@@156 ($generated@@46 (type $generated@@155))))
 (=> (and (and (and (and (= (type $generated@@150) $generated@@47) (= (type $generated@@151) ($generated@@48 $generated@@47 $generated@@49))) (= (type $generated@@152) ($generated@@50 $generated@@4))) (= (type $generated@@154) $generated@@47)) (= (type $generated@@155) ($generated@@50 $generated@@156))) (= ($generated@@0 ($generated@@44 ($generated@@45 $generated@@150 $generated@@151 $generated@@152 $generated@@153) $generated@@154 $generated@@155))  (=> (and (not (= $generated@@154 $generated@@150)) ($generated@@0 ($generated@@51 ($generated@@52 $generated@@151 $generated@@154) $generated@@152))) $generated@@153))))
 :pattern ( ($generated@@44 ($generated@@45 $generated@@150 $generated@@151 $generated@@152 $generated@@153) $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@158 Int) ) (! (= ($generated@@157 $generated@@158) $generated@@158)
 :pattern ( ($generated@@157 $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ) (! (let (($generated@@161 (type $generated@@160)))
(= (type ($generated@@159 $generated@@160)) $generated@@161))
 :pattern ( ($generated@@159 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ) (! (= ($generated@@159 $generated@@162) $generated@@162)
 :pattern ( ($generated@@159 $generated@@162))
)))
(assert  (and (and (= ($generated@@1 $generated@@165) 11) (forall (($generated@@166 T@U) ) (! (= (type ($generated@@163 $generated@@166)) $generated@@165)
 :pattern ( ($generated@@163 $generated@@166))
))) (forall (($generated@@167 T@T) ($generated@@168 T@U) ) (! (= (type ($generated@@164 $generated@@167 $generated@@168)) $generated@@167)
 :pattern ( ($generated@@164 $generated@@167 $generated@@168))
))))
(assert (forall (($generated@@169 T@U) ) (! (let (($generated@@170 (type $generated@@169)))
(= ($generated@@164 $generated@@170 ($generated@@163 $generated@@169)) $generated@@169))
 :pattern ( ($generated@@163 $generated@@169))
)))
(assert (forall (($generated@@171 Int) ) (! (= ($generated@@163 ($generated@@8 ($generated@@157 $generated@@171))) ($generated@@159 ($generated@@163 ($generated@@8 $generated@@171))))
 :pattern ( ($generated@@163 ($generated@@8 ($generated@@157 $generated@@171))))
)))
(assert (forall (($generated@@172 T@U) ) (! (= ($generated@@163 ($generated@@159 $generated@@172)) ($generated@@159 ($generated@@163 $generated@@172)))
 :pattern ( ($generated@@163 ($generated@@159 $generated@@172)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@173 () Int)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 (T@U) Bool)
(declare-fun $generated@@179 (T@U) Bool)
(declare-fun $generated@@180 () Int)
(assert  (and (and (and (= (type $generated@@174) ($generated@@57 $generated@@47 $generated@@4)) (= (type $generated@@175) $generated@@47)) (= (type $generated@@176) ($generated@@48 $generated@@47 $generated@@49))) (= (type $generated@@177) ($generated@@50 $generated@@4))))
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@181 true))
(let (($generated@@182  (=> (and (< $generated@@173 ($generated@@157 0)) (= (ControlFlow 0 6) 4)) $generated@@181)))
(let (($generated@@183  (=> (and (<= ($generated@@157 0) $generated@@173) (= (ControlFlow 0 5) 4)) $generated@@181)))
(let (($generated@@184  (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= ($generated@@157 0) ($generated@@157 0))) (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@0 ($generated@@159 ($generated@@11 (< 0 256))))))))
(let (($generated@@185  (=> (= $generated@@174 ($generated@@45 $generated@@175 $generated@@176 $generated@@177 false)) (and (and (=> (= (ControlFlow 0 7) 2) $generated@@184) (=> (= (ControlFlow 0 7) 5) $generated@@183)) (=> (= (ControlFlow 0 7) 6) $generated@@182)))))
(let (($generated@@186  (=> (and (and ($generated@@178 $generated@@176) ($generated@@179 $generated@@176)) (and (= 0 $generated@@180) (= (ControlFlow 0 8) 7))) $generated@@185)))
$generated@@186)))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
